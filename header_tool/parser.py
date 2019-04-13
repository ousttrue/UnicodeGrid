import pathlib
import clang_parser
import dlang_generator

HERE = pathlib.Path(__file__).absolute().parent


WINDOWS_KITS_INCLUDE_DIR = pathlib.Path(
    'C:/Program Files (x86)/Windows Kits/10/Include')


include_headers = [
    # 'winerror.h',
    # 'd3d10_1.h',
    'd2d1.h',
    # 'd2derr.h',
    # 'd2dbasetypes.h',
    'dcommon.h',
    # 'd3d9types.h',
    'd3d10.h',
    'd3d11.h',
    'd3dcommon.h',
    'dxgi.h',
    'dxgicommon.h',
    'dxgiformat.h',
    'dxgitype.h',
]

kits = [x for x in sorted(WINDOWS_KITS_INCLUDE_DIR.iterdir())]


def main() -> None:
    kit = kits[-1]
    headers = clang_parser.parse(
        kit/'um/d3d11.h', include_headers)
    dlang_generator.generate(
        HERE.parent/'windowskits/source', kit.name, headers)


if __name__ == '__main__':
    main()
