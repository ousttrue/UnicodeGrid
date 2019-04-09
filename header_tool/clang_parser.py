'''
require
> pip insall clang
'''
import pathlib
from typing import List, Optional
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
