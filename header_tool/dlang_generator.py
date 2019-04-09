import pathlib
from typing import Dict
from clang_parser import ClangHeader, ClangStruct, ClangEnum, ClangInterface


HEAD = (
    '''// this is generated
import core.sys.windows.windef;
import core.sys.windows.com;
import std.uuid;

extern(Windows){

alias IID = GUID;
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


def enum_begin(enum: ClangEnum) -> str:
    return f'''
enum {enum.name}
{{
'''


def enum_end(enum: ClangEnum) -> str:
    return f'''
}}
'''


def interface(i: ClangInterface) -> str:
    b = i.iid

    return f'''
interface {i.name}: {i.base}        
{{
    static immutable uuidof = GUID(0x{b[0:8]}, 0x{b[8:12]}, 0x{b[12:16]}, [0x{b[16:18]}, 0x{b[18:20]}, 0x{b[20:22]}, 0x{b[22:24]}, 0x{b[24:26]}, 0x{b[26:28]}, 0x{b[28:30]}, 0x{b[30:32]}]);
{"".join("    " + str(m) for m in i.methods)}}}
'''.replace('&', '*').replace('*const *', '**')


def generate(source: pathlib.Path, kit_name: str, headers: Dict[str, ClangHeader]) -> None:
    package_name = f'build_{kit_name.replace(".", "_")}'
    root = source / 'windowskits' / package_name
    root.mkdir(parents=True, exist_ok=True)

    #package = root / 'package.d'
    package = root.parent / f'{root.stem}.d'
    with package.open('w') as p:
        #p.write(f'module windowskits.{package_name};\n\n')
        p.write(HEAD)

        for k, v in headers.items():
            name = pathlib.Path(k).stem
            #p.write(f'public import {name};\n')

            dst = root / f'{name}.d'
            print(dst)

            # with dst.open('w') as d:
            for _ in range(1):
                d = p

                # d.write(HEAD)

                # alias
                for x in v.typedef_list:
                    d.write(f'alias {x[1]} = {x[0]};\n')

                # enum
                for x in v.enum_list:
                    d.write(enum_begin(x))
                    for y in x.values:
                        d.write(f'{y[0]} = {y[1]},\n')
                    d.write(enum_end(x))

                # struct
                for x in v.struct_list:
                    d.write(struct_begin(x))
                    d.write(struct_end(x))

                # interface
                for i in v.interface_list:
                    d.write(interface(i))
                d.write("\n")

                # function
                for f in v.function_list:
                    d.write(str(f)
                            .replace('&', '*')
                            )

                # d.write(TAIL)
        p.write(TAIL)
