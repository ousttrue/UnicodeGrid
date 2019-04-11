'''
require
> pip insall clang
'''
import pathlib
import re
from typing import List, Optional, Dict, Tuple
from clang import cindex


def to_d(src: str) -> str:
    dst = (src
           .replace('&', '*')
           .replace('*const *', '**')
           )

    if src[0] == 'I':
        # is interface
        def repl(m):
            return m[0][1:]
        dst = re.sub(r'\*+', repl, dst)

    return dst


class ClangNamedType:
    def __init__(self, name, t) -> None:
        self.name = name
        self.type = t
        self.type_d = to_d(t)

    def __str__(self) -> str:
        return f'{self.type} {self.name}'


class ClangMethod:
    def __init__(self, cursor: cindex.Cursor) -> None:
        self.name = cursor.spelling
        self.result = cursor.result_type.spelling
        self.args: List[ClangNamedType] = []

        for x in cursor.get_children():
            if x.kind == cindex.CursorKind.PARM_DECL:
                self.args.append(ClangNamedType(
                    x.spelling, x.type.spelling))

    def __str__(self) -> str:
        return f'{self.result} {self.name}({", ".join(str(m) for m in self.args)});\n'


def get_token(node):

    tokens = list(node.get_tokens())
    result = [x.spelling for x in tokens]

    return ','.join(result)


def extract(x: cindex.Cursor) -> str:
    start = x.extent.start
    end = x.extent.end
    text = pathlib.Path(start.file.name).read_bytes()
    text = text[start.offset:end.offset]
    return text.decode('ascii')


class ClangInterface:
    @staticmethod
    def create(cursor: cindex.Cursor) -> Optional['ClangInterface']:
        name = cursor.spelling
        if name[0] != 'I':
            return None
        base = 'IUnknown'
        methods: List[ClangMethod] = []
        iid = ''

        if name == 'ID2D1Factory':
            a = 0

        for x in cursor.get_children():
            if x.kind == cindex.CursorKind.CXX_BASE_SPECIFIER:
                ref = next(y for y in x.get_children()
                           if y.kind == cindex.CursorKind.TYPE_REF)
                base = ref.spelling
                if base.startswith('struct '):
                    base = base[7:]
            elif x.kind == cindex.CursorKind.CXX_METHOD:
                if not any(y for y in methods if y.name == x.spelling):
                    methods.append(ClangMethod(x))
            elif x.kind == cindex.CursorKind.CXX_ACCESS_SPEC_DECL:
                pass
            elif x.kind == cindex.CursorKind.UNEXPOSED_ATTR:
                try:
                    iid = extract(x).split('"')[1].strip().split('-')
                    iid = f'0x{iid[0]}, 0x{iid[1]}, 0x{iid[2]}, [0x{iid[3][0:2]}, 0x{iid[3][2:4]}, 0x{iid[4][0:2]}, 0x{iid[4][2:4]}, 0x{iid[4][4:6]}, 0x{iid[4][6:8]}, 0x{iid[4][8:10]}, 0x{iid[4][10:12]}]'
                except:
                    pass
            else:
                print(x.kind)

        return ClangInterface(name, base, methods, iid)

    def __init__(self, name: str, base: str, methods: List[ClangMethod], iid: str) -> None:
        self.name = name
        self.base = base
        self.methods = methods
        self.guid = iid


class ClangStruct:
    def __init__(self, cursor: cindex.Cursor) -> None:
        self.name = cursor.spelling
        self.fields: List[ClangNamedType] = []
        for x in cursor.get_children():
            if x.kind == cindex.CursorKind.FIELD_DECL:
                self.fields.append(ClangNamedType(x.spelling, x.type.spelling))
                for y in x.get_children():
                    a = 0
            else:
                a = 0


class ClangEnum:
    def __init__(self, cursor: cindex.Cursor) -> None:
        self.name = cursor.spelling
        self.values: List[Tuple[str, int]] = []

        for x in cursor.get_children():
            self.values.append((x.spelling, x.enum_value))


class ClangHeader:
    def __init__(self) -> None:
        self.interface_list: List[ClangInterface] = []
        self.function_list: List[ClangMethod] = []
        self.struct_list: List[ClangStruct] = []
        self.typedef_list: List[Tuple[str, str]] = []
        self.enum_list: List[ClangEnum] = []
        self.const_list: List[Tuple[str, str]] = []
        self.include_list: List[str] = []
        self.iid_map: Dict[str, str] = {}

    def add_interface(self, interface: ClangInterface) -> None:
        def get_index() -> Optional[int]:
            for i, x in enumerate(self.interface_list):
                if x.name == interface.name:
                    return i
        index = get_index()
        if index == None:
            self.interface_list.append(interface)
            return

        if len(interface.methods) > len(self.interface_list[index].methods):
            self.interface_list[index] = interface


DEFAULT_DLL = pathlib.Path('C:/Program Files (x86)/LLVM/bin/libclang.dll')


def parse(dll: Optional[pathlib.Path], include_headers: List[str], *args) -> Dict[str, ClangHeader]:
    if not dll:
        dll = DEFAULT_DLL
    cindex.Config.set_library_file(str(dll))
    index = cindex.Index.create()

    headers: Dict[str, ClangHeader] = {}

    def get_or_create_header(location: pathlib.Path) -> ClangHeader:
        header = headers.get(location.name)
        if not header:
            header = ClangHeader()
            headers[location.name.lower()] = header
        return header

    skip_files: List[str] = []

    def header_from_cursor(cursor: cindex.Cursor) -> Optional[ClangHeader]:
        if not cursor.location.file:
            return None
        file = pathlib.Path(cursor.location.file.name).name.lower()
        if file not in include_headers:
            if file not in skip_files:
                skip_files.append(file)
                print(file)
            return None

        return get_or_create_header(
            pathlib.Path(cursor.location.file.name))

    def print_cursor(cursor: cindex.Cursor, level: int) -> None:
        print(f'{"  " * (level)}{cursor.kind}: {cursor.displayname}')

    def traverse(cursor: cindex.Cursor, level=0) -> None:
        header = header_from_cursor(cursor)

        if cursor.kind == cindex.CursorKind.UNEXPOSED_DECL:
            for child in cursor.get_children():
                traverse(child, level+1)
            return

        if cursor.kind == cindex.CursorKind.TYPEDEF_DECL:
            if not header:
                return
            dst = cursor.spelling.strip()
            if not dst:
                return
            if any(x for x in header.typedef_list if x[1] == dst):
                return
            if dst.startswith('PFN_'):
                header.typedef_list.append(('void*', dst))
            else:
                for x in cursor.get_children():
                    src = x.spelling.strip()
                    if src.startswith('struct '):
                        src = src[7:]
                    if not src:
                        continue
                    if src != dst:
                        header.typedef_list.append((src, dst))
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
                        header.add_interface(i)
                    else:
                        # print_cursor(cursor, level)
                        pass
            return

        if cursor.kind == cindex.CursorKind.FUNCTION_DECL:
            if header:
                if "operator" not in cursor.spelling:
                    header.function_list.append(ClangMethod(cursor))
            return

        if cursor.kind == cindex.CursorKind.ENUM_DECL:
            if header:
                if not any(cursor.spelling == x.name for x in header.enum_list):
                    header.enum_list.append(ClangEnum(cursor))
            return

        if cursor.kind == cindex.CursorKind.MACRO_DEFINITION:
            if header:
                ext = extract(cursor)
                splited = ext.split()
                if len(splited) > 1:
                    if splited[0].startswith('IID_'):
                        return
                    if splited[0] == 'INTERFACE':
                        return
                    kv = (splited[0], ext[len(splited[0]):].strip())
                    if '(' not in kv[0] and not kv[1][0].isalpha():
                        if not any(x for x in header.const_list if x[0] == kv[0]):
                            header.const_list.append(kv)

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
            if cursor.spelling == "DEFINE_GUID":
                if header:
                    ex = extract(cursor)
                    begin = ex.index('(') + 1
                    end = ex.index(')')
                    b = ex[begin:end].split(',')
                    if b[0].startswith("IID_"):
                        header.iid_map[b[0][4:]
                                       ] = f'{b[1]}, {b[2]}, {b[3]}, [{b[4]}, {b[5]}, {b[6]}, {b[7]}, {b[8]}, {b[9]}, {b[10]}, {b[11]}]'
            elif cursor.spelling == "DECLARE_INTERFACE":
                for child in cursor.get_children():
                    traverse(child, level+1)
            elif cursor.spelling == "DX_DECLARE_INTERFACE":
                for child in cursor.get_children():
                    traverse(child, level+1)
            return

        if cursor.kind == cindex.CursorKind.INCLUSION_DIRECTIVE:
            if header:
                header.include_list.append(cursor.spelling.lower())
            return

        print_cursor(cursor, level)
        return

    for path in args:
        translation_unit = index.parse(str(path),
                                       ['-x', 'c++'],
                                       options=cindex.TranslationUnit.PARSE_DETAILED_PROCESSING_RECORD)

        for child in translation_unit.cursor.get_children():
            traverse(child)
    return headers
