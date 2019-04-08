import pathlib
from typing import List
from clang import cindex


WINDOWS_KITS_INCLUDE_DIR = pathlib.Path(
    'C:/Program Files (x86)/Windows Kits/10/Include')


class ClangParser:
    '''
    require
    > pip insall clang
    '''

    def __init__(self, dll: pathlib.Path = None) -> None:
        self.dll = dll if dll else pathlib.Path(
            'C:/Program Files (x86)/LLVM/bin/libclang.dll')
        self.exclude_headers: List[str] = [
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
        if file in self.exclude_headers:
            return

        if cursor.kind == cindex.CursorKind.UNEXPOSED_DECL:
            #print(f'{cursor.kind}: {cursor.spelling}')
            for child in cursor.get_children():
                self.traverse(child, level+1)
        else:
            self.print_cursor(cursor, level)


def process_header(header: pathlib.Path) -> None:
    parser = ClangParser()
    parser.parse(header)


def process_kit(kit: pathlib.Path) -> None:
    um = kit/'um'
    process_header(um/'d3d11.h')


def main() -> None:
    kit = sorted(WINDOWS_KITS_INCLUDE_DIR.iterdir())[-1]
    process_kit(kit)


if __name__ == '__main__':
    main()
