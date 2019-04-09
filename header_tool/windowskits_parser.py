import pathlib
from typing import Dict
DEFAULT_DLL = pathlib.Path('C:/Program Files (x86)/LLVM/bin/libclang.dll')
from clang import cindex
from clang_parser import ClangHeader, ClangInterface, ClangMethod, ClangStruct


WINDOWS_KITS_INCLUDE_DIR = pathlib.Path(
    'C:/Program Files (x86)/Windows Kits/10/Include')


include_headers = [
    # 'd3d11.h',
    # 'd3dcommon.h',
    'dxgi.h',
    'dxgicommon.h',
    'dxgiformat.h',
    'dxgitype.h',
]


class Kit:
    def __init__(self, path: pathlib.Path) -> None:
        self.path = path

    def parse(self, dll=DEFAULT_DLL) -> Dict[str, ClangHeader]:
        path = self.path/'um/d3d11.h'

        cindex.Config.set_library_file(str(dll))
        index = cindex.Index.create()
        translation_unit = index.parse(str(path), ['-x', 'c++'])

        headers: Dict[str, ClangHeader] = {}

        def get_or_create_header(location: pathlib.Path) -> ClangHeader:
            header = headers.get(location.name)
            if not header:
                header = ClangHeader()
                headers[location.name] = header
            return header

        def print_cursor(cursor: cindex.Cursor, level: int) -> None:
            print(f'{"  " * (level)}{cursor.kind}: {cursor.displayname}')

        def traverse(cursor: cindex.Cursor, level=0) -> None:
            file = pathlib.Path(cursor.location.file.name).name
            if file not in include_headers:
                return

            header = get_or_create_header(
                pathlib.Path(cursor.location.file.name))

            if cursor.kind == cindex.CursorKind.UNEXPOSED_DECL:
                #print(f'{cursor.kind}: {cursor.spelling}')
                for child in cursor.get_children():
                    traverse(child, level+1)

            elif cursor.kind == cindex.CursorKind.STRUCT_DECL:
                i = ClangInterface.create(cursor)
                if i:
                    header.interface_list.append(i)

            elif cursor.kind == cindex.CursorKind.FUNCTION_DECL:
                header.function_list.append(ClangMethod(cursor))

            elif cursor.kind == cindex.CursorKind.VAR_DECL:
                pass

            elif cursor.kind == cindex.CursorKind.TYPEDEF_DECL:
                if cursor.spelling[0] != 'I':
                    for x in cursor.get_children():
                        if x.kind == cindex.CursorKind.STRUCT_DECL:
                            header.struct_list.append(ClangStruct(x))

            else:
                print_cursor(cursor, level)

        for child in translation_unit.cursor.get_children():
            traverse(child)
        return headers


kits = [Kit(x) for x in sorted(WINDOWS_KITS_INCLUDE_DIR.iterdir())]
