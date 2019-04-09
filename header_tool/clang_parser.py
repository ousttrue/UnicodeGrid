'''
require
> pip insall clang
'''
import pathlib
from typing import List, Optional, Dict
from clang import cindex


class ClangMethodArgument:
    def __init__(self, name, t) -> None:
        self.name = name
        self.type = t

    def __str__(self) -> str:
        return f'{self.type} {self.name}'


class ClangMethod:
    def __init__(self, cursor: cindex.Cursor) -> None:
        self.name = cursor.spelling
        self.result = cursor.result_type.spelling
        self.args: List[ClangMethodArgument] = []

        for x in cursor.get_children():
            if x.kind == cindex.CursorKind.PARM_DECL:
                self.args.append(ClangMethodArgument(
                    x.spelling, x.type.spelling))

    def __str__(self) -> str:
        return f'{self.result} {self.name}({", ".join(str(m) for m in self.args)});\n'


def extract(x: cindex.Cursor) -> str:
    start = x.extent.start
    end = x.extent.end
    text = pathlib.Path(start.file.name).read_bytes()
    return text[start.offset:end.offset].decode('ascii')


class ClangInterface:
    @staticmethod
    def create(cursor: cindex.Cursor) -> Optional['ClangInterface']:
        name = cursor.spelling
        if name[0] != 'I':
            return None
        base = None
        methods: List[ClangMethod] = []
        uuid = None

        for x in cursor.get_children():
            if x.kind == cindex.CursorKind.CXX_BASE_SPECIFIER:
                ref = next(y for y in x.get_children()
                           if y.kind == cindex.CursorKind.TYPE_REF)
                base = ref.spelling
            elif x.kind == cindex.CursorKind.CXX_METHOD:
                methods.append(ClangMethod(x))
            elif x.kind == cindex.CursorKind.UNEXPOSED_ATTR:
                start = x.extent.start
                end = x.extent.end
                text = pathlib.Path(start.file.name).read_bytes()
                uuid = extract(x).split('"')[1]
            elif x.kind == cindex.CursorKind.CXX_ACCESS_SPEC_DECL:
                pass
            else:
                print(x.kind)

        if not uuid:
            return None
        if not base:
            return None

        return ClangInterface(uuid, name, base, methods)

    def __init__(self, uuid: str, name: str, base: str, methods: List[ClangMethod]) -> None:
        self.uuid = uuid
        self.name = name
        self.base = base
        self.methods = methods

    def __str__(self) -> str:
        '''
        for dlang
        '''
        return f'''
interface {self.name}: {self.base}        
{{
    static immutable uuidof = UUID("{self.uuid}");
{"".join("    " + str(m) for m in self.methods)}}}
'''


class ClangStruct:
    def __init__(self, cursor: cindex.Cursor) -> None:
        self.name = cursor.spelling

    def __str__(self) -> str:
        return self.name


class ClangHeader:
    def __init__(self) -> None:
        self.interface_list: List[ClangInterface] = []
        self.function_list: List[ClangMethod] = []
        self.struct_list: List[ClangStruct] = []


def parse(dll: pathlib.Path, path: pathlib.Path, include_headers: List[str]) -> Dict[str, ClangHeader]:
    cindex.Config.set_library_file(str(dll))
    index = cindex.Index.create()
    translation_unit = index.parse(str(path),
                                   ['-x', 'c++'],
                                   options=cindex.TranslationUnit.PARSE_DETAILED_PROCESSING_RECORD)

    headers: Dict[str, ClangHeader] = {}

    def get_or_create_header(location: pathlib.Path) -> ClangHeader:
        header = headers.get(location.name)
        if not header:
            header = ClangHeader()
            headers[location.name] = header
        return header

    def header_from_cursor(cursor: cindex.Cursor) -> Optional[ClangHeader]:
        if not cursor.location.file:
            return None
        file = pathlib.Path(cursor.location.file.name).name
        if file not in include_headers:
            return None

        return get_or_create_header(
            pathlib.Path(cursor.location.file.name))

    def print_cursor(cursor: cindex.Cursor, level: int) -> None:
        print(f'{"  " * (level)}{cursor.kind}: {cursor.displayname}')

    def traverse(cursor: cindex.Cursor, level=0) -> None:
        header = header_from_cursor(cursor)
        if not header:
            return

        if cursor.kind == cindex.CursorKind.UNEXPOSED_DECL:
            for child in cursor.get_children():
                traverse(child, level+1)
            return

        if cursor.kind == cindex.CursorKind.TYPEDEF_DECL:
            if cursor.spelling[0] != 'I':
                for x in cursor.get_children():
                    traverse(x)
            return

        if cursor.kind == cindex.CursorKind.STRUCT_DECL:
            if header:
                if cursor.spelling[0] != 'I':
                    # struct
                    if not any(cursor.spelling == x.name for x in header.struct_list):
                        header.struct_list.append(ClangStruct(cursor))
                else:
                    # interface
                    i = ClangInterface.create(cursor)
                    if i:
                        header.interface_list.append(i)
                    else:
                        #print_cursor(cursor, level)
                        pass
            return

        if cursor.kind == cindex.CursorKind.FUNCTION_DECL:
            if header:
                header.function_list.append(ClangMethod(cursor))
            return

        if cursor.kind == cindex.CursorKind.ENUM_DECL:
            # ToDo
            return

        if cursor.kind == cindex.CursorKind.MACRO_DEFINITION:
            # ToDo
            return

        if cursor.kind == cindex.CursorKind.VAR_DECL:
            return

        if cursor.kind == cindex.CursorKind.TYPE_REF:
            return

        if cursor.kind == cindex.CursorKind.PARM_DECL:
            return

        if cursor.kind == cindex.CursorKind.CLASS_DECL:
            return

        if cursor.kind == cindex.CursorKind.MACRO_INSTANTIATION:
            return

        if cursor.kind == cindex.CursorKind.INCLUSION_DIRECTIVE:
            return

        print_cursor(cursor, level)
        return

    for child in translation_unit.cursor.get_children():
        traverse(child)
    return headers
