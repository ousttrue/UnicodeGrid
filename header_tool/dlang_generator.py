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


def struct_begin(struct: ClangStruct) -> str:
    return f'''
struct {struct.name}
{{
'''


def struct_end(struct: ClangStruct) -> str:
    return f'''
}}
'''


def generate(source: pathlib.Path, kit_name: str, headers: Dict[str, ClangHeader]) -> None:
    package_name = f'build_{kit_name.replace(".", "_")}'
    root = source / 'windowskits' / package_name
    root.mkdir(parents=True, exist_ok=True)

    package = root / 'package.d'
    with package.open('w') as p:
        p.write(f'module windowskits.{package_name};\n\n')

        for k, v in headers.items():
            name = pathlib.Path(k).stem
            p.write(f'public import {name};\n')

            dst = root / f'{name}.d'
            print(dst)

            with dst.open('w') as d:

                d.write(HEAD)

                # alias
                for x in v.typedef_list:
                    d.write(f'alias {x[1]} = {x[0]};\n')

                # struct
                for x in v.struct_list:
                    d.write(struct_begin(x))
                    d.write(struct_end(x))

                # interface
                for i in v.interface_list:
                    d.write(str(i)
                            .replace('&', '*')
                            .replace('*const *', '**')
                            )
                d.write("\n")

                # function
                for f in v.function_list:
                    d.write(str(f)
                            .replace('&', '*')
                            )

                d.write(TAIL)
