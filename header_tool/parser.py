import pathlib
from typing import List, Optional
from clang import cindex


WINDOWS_KITS_INCLUDE_DIR = pathlib.Path(
    'C:/Program Files (x86)/Windows Kits/10/Include')


HERE = pathlib.Path(__file__).absolute().parent


include_headers = [
    # 'd3d11.h',
    # 'd3dcommon.h',
    'dxgi.h',
    'dxgicommon.h',
    'dxgiformat.h',
    'dxgitype.h',
]


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
        return f'{self.result} {self.name}({", ".join(str(m) for m in self.args)})'


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
                uuid = text[start.offset:end.offset].decode(
                    'ascii').split('"')[1]
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
        cr = '\n'
        return f'''{self.uuid}
{self.name}: {self.base} {{
{cr.join('    ' + str(m) for m in self.methods)}
}} '''


class ClangParser:
    '''
    require
    > pip insall clang
    '''

    def __init__(self, dll: pathlib.Path = None) -> None:
        self.dll = dll if dll else pathlib.Path(
            'C:/Program Files (x86)/LLVM/bin/libclang.dll')
        self.interface_list: List[ClangInterface] = []
        self.function_list: List[ClangMethod] = []

    def parse(self, header: pathlib.Path) -> None:
        cindex.Config.set_library_file(str(self.dll))
        index = cindex.Index.create()
        translation_unit = index.parse(str(header), ['-x', 'c++'])

        for child in translation_unit.cursor.get_children():
            self.traverse(child)

    def print_cursor(self, cursor: cindex.Cursor, level: int) -> None:
        print(f'{"  " * (level)}{cursor.kind}: {cursor.displayname}')

    def traverse(self, cursor: cindex.Cursor, level=0) -> None:
        file = pathlib.Path(cursor.location.file.name).name
        if file not in include_headers:
            return

        if cursor.kind == cindex.CursorKind.UNEXPOSED_DECL:
            #print(f'{cursor.kind}: {cursor.spelling}')
            for child in cursor.get_children():
                self.traverse(child, level+1)

        elif cursor.kind == cindex.CursorKind.STRUCT_DECL:
            i = ClangInterface.create(cursor)
            if i:
                self.interface_list.append(i)

        elif cursor.kind == cindex.CursorKind.FUNCTION_DECL:
            self.function_list.append(ClangMethod(cursor))

        elif cursor.kind == cindex.CursorKind.VAR_DECL:
            pass

        else:
            self.print_cursor(cursor, level)


class Kit:
    def __init__(self, kit: pathlib.Path) -> None:
        self.kit = kit
        self.parser = ClangParser()

    def parse(self) -> None:
        header = self.kit/'um/d3d11.h'
        self.parser.parse(header)

    def generate(self, dst: pathlib.Path) -> None:
        root = dst / 'windowskits' / f'build_{self.kit.name.replace(".", "_")}'
        root.mkdir(parents=True, exist_ok=True)


def main() -> None:
    kits = [Kit(x) for x in sorted(WINDOWS_KITS_INCLUDE_DIR.iterdir())]
    kit = kits[-1]
    kit.parse()
    kit.generate(HERE.parent/'windowskits/source')

    for i in kit.parser.interface_list:
        print(i)

    for f in kit.parser.function_list:
        print(f)


if __name__ == '__main__':
    main()
