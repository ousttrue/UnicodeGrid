import pathlib
from typing import Dict
from clang_parser import ClangHeader, ClangStruct


HEAD = (
    '''// this is generated
import core.sys.windows.windef;
import core.sys.windows.com;
import std.uuid;

extern(Windows){
'''
)

TAIL = (
    '''
}
'''
)


def struct_begin(struct: ClangStruct):
    pass


def struct_end(struct: ClangStruct):
    pass


def generate(dst: pathlib.Path, kit_name: str, headers: Dict[str, ClangHeader]) -> None:
    root = dst / 'windowskits' / f'build_{kit_name.replace(".", "_")}'
    root.mkdir(parents=True, exist_ok=True)

    for k, v in headers.items():
        dst = root / f'{pathlib.Path(k).stem}.d'
        print(dst)

        with dst.open('w') as s:

            s.write(HEAD)

            # struct
            for x in v.struct_list:
                struct_begin(x)
                struct_end(x)

            # interface
            for i in v.interface_list:
                s.write(str(i)
                        .replace('&', '*')
                        .replace('*const *', '**')
                        )
            s.write("\n")

            # function
            for f in v.function_list:
                s.write(str(f)
                        .replace('&', '*')
                        )

            s.write(TAIL)
