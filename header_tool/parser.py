import pathlib
from typing import List, Dict, Optional
from clang import cindex


WINDOWS_KITS_INCLUDE_DIR = pathlib.Path(
    'C:/Program Files (x86)/Windows Kits/10/Include')


HERE = pathlib.Path(__file__).absolute().parent


exclude_headers = [
    'apiquery2.h',

    'cguid.h',
    'combaseapi.h',
    'coml2api.h',
    'commdlg.h',
    'concurrencysal.h',
    'corecrt_malloc.h',
    'corecrt_search.h',
    'corecrt_wstdlib.h',
    'd3d11.h',
    'd3dcommon.h',
    'dde.h',
    'ddeml.h',
    'debugapi.h',
    'dlgs.h',
    'dpapi.h',
    # 'dxgi.h',
    # 'dxgicommon.h',
    # 'dxgiformat.h',
    # 'dxgitype.h',
    'enclaveapi.h',
    'errhandlingapi.h',
    'excpt.h',
    'fibersapi.h',
    'fileapi.h',
    'handleapi.h',
    'heapapi.h',
    'imm.h',
    'inaddr.h',
    'interlockedapi.h',
    'ioapiset.h',
    'jobapi.h',
    'jobapi2.h',
    'libloaderapi.h',
    'limits.h',
    'lzexpand.h',
    'mcx.h',
    'memoryapi.h',
    'minwinbase.h',
    'mmsyscom.h',
    'mmsystem.h',
    'msxml.h',
    'namedpipeapi.h',
    'namespaceapi.h',
    'nb30.h',
    'oaidl.h',
    'objbase.h',
    'objidl.h',
    'objidlbase.h',
    'ocidl.h',
    'ole2.h',
    'oleauto.h',
    'oleidl.h',
    'processenv.h',
    'processthreadsapi.h',
    'processtopologyapi.h',
    'profileapi.h',
    'propidl.h',
    'propidlbase.h',
    'prsht.h',
    'realtimeapiset.h',
    'rpc.h',
    'rpcndr.h',
    'rpcnsip.h',
    'rpcsal.h',
    'sal.h',
    'securityappcontainer.h',
    'securitybaseapi.h',
    'servprov.h',
    'shellapi.h',
    'stdarg.h',
    'stddef.h',
    'stdlib.h',
    'stralign.h',
    'synchapi.h',
    'sysinfoapi.h',
    'systemtopologyapi.h',
    'threadpoolapiset.h',
    'threadpoollegacyapiset.h',
    'unknwn.h',
    'unknwnbase.h',
    'urlmon.h',
    'utilapiset.h',
    'vadefs.h',
    'vcruntime.h',
    'verrsrc.h',
    'winbase.h',
    'wincon.h',
    'wincrypt.h',
    'windef.h',
    'winefs.h',
    'wingdi.h',
    'winioctl.h',
    'winnetwk.h',
    'winnls.h',
    'winperf.h',
    'winreg.h',
    'winscard.h',
    'winsmcrd.h',
    'winsock.h',
    'winspool.h',
    'winsvc.h',
    'winuser.h',
    'winver.h',
    'wow64apiset.h',
    'wtypes.h',
    'wtypesbase.h'
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
        self.interface_map: Dict[str, ClangInterface] = {}

    def parse(self, header: pathlib.Path) -> None:
        cindex.Config.set_library_file(str(self.dll))
        index = cindex.Index.create()
        translation_unit = index.parse(str(header), ['-x', 'c++'])

        for child in translation_unit.cursor.get_children():
            self.traverse(child)

    def print_cursor(self, cursor: cindex.Cursor, level: int) -> None:
        pass
        #print(f'{"  " * (level)}{cursor.kind}: {cursor.displayname}')

    def traverse(self, cursor: cindex.Cursor, level=0) -> None:
        file = pathlib.Path(cursor.location.file.name).name
        if file in exclude_headers:
            return

        if cursor.kind == cindex.CursorKind.UNEXPOSED_DECL:
            #print(f'{cursor.kind}: {cursor.spelling}')
            for child in cursor.get_children():
                self.traverse(child, level+1)

        elif cursor.kind == cindex.CursorKind.STRUCT_DECL:
            i = ClangInterface.create(cursor)
            if i:
                self.interface_map[cursor.spelling] = i

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

    for _, v in kit.parser.interface_map.items():
        print(v)


if __name__ == '__main__':
    main()
