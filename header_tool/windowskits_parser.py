import pathlib
from typing import Dict
import clang_parser

DEFAULT_DLL = pathlib.Path('C:/Program Files (x86)/LLVM/bin/libclang.dll')
WINDOWS_KITS_INCLUDE_DIR = pathlib.Path(
    'C:/Program Files (x86)/Windows Kits/10/Include')


include_headers = [
    # 'd3d10_1.h',
    'd3d10.h',
    'd3d11.h',
    'd3dcommon.h',
    'dxgi.h',
    'dxgicommon.h',
    'dxgiformat.h',
    'dxgitype.h',
]


class Kit:
    def __init__(self, path: pathlib.Path) -> None:
        self.path = path

    def parse(self, dll=DEFAULT_DLL) -> Dict[str, clang_parser.ClangHeader]:
        path = self.path/'um/d3d11.h'

        return clang_parser.parse(dll, path, include_headers)


kits = [Kit(x) for x in sorted(WINDOWS_KITS_INCLUDE_DIR.iterdir())]
