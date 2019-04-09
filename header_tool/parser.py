import pathlib
import windowskits_parser
import dlang_generator

HERE = pathlib.Path(__file__).absolute().parent


def main() -> None:
    kit = windowskits_parser.kits[-1]
    headers = kit.parse()
    dlang_generator.generate(
        HERE.parent/'windowskits/source', kit.path.name, headers)


if __name__ == '__main__':
    main()
