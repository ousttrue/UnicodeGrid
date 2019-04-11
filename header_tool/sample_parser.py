from typing import Set
import pathlib
from clang import cindex
import clang_parser

HERE = pathlib.Path(__file__).absolute().parent


def to_s(cursor: cindex.Cursor) -> str:
    if cursor.kind == cindex.CursorKind.MACRO_DEFINITION:
        tokens = [x.spelling for x in cursor.get_tokens()]
        # return f'{tokens[0]} = {tokens[1:]}'
        return ''
    if cursor.kind == cindex.CursorKind.TYPEDEF_DECL:
        tokens = [x.spelling for x in cursor.get_tokens()]
        if len(tokens) == 3:
            return f'{tokens[2]} = {tokens[1]}'

    return f'[{cursor.hash}]{cursor.kind}'


class Parser:
    def __init__(self):
        self.used: Set[int] = set()

    def traverse(self, cursor: cindex.Cursor, level=0) -> None:
        if cursor.hash in self.used:
            return
        self.used.add(cursor.hash)

        display = to_s(cursor)
        if display:
            print(f'{"  "*level}{display}')

        for child in cursor.get_children():
            self.traverse(child, level+1)


def main():
    cindex.Config.set_library_file(str(clang_parser.DEFAULT_DLL))
    index = cindex.Index.create()
    translation_unit = index.parse(str(HERE/'sample.h'),
                                   ['-x', 'c++'],
                                   options=cindex.TranslationUnit.PARSE_DETAILED_PROCESSING_RECORD)

    parser = Parser()
    parser.traverse(translation_unit.cursor)


if __name__ == '__main__':
    main()
