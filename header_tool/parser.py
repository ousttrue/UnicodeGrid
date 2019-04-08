import pathlib
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

    def parse(self, header: pathlib.Path) -> None:
        cindex.Config.set_library_file(str(self.dll))
        index = cindex.Index.create()
        translation_unit = index.parse(str(header), ['-x', 'c++'])
        self.traverse(translation_unit.cursor)

    def traverse(self, cursor: cindex.Cursor, level=0) -> None:
        if level == 0:
            for child in cursor.get_children():
                self.traverse(child, level+1)
        else:
            print(cursor)


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
