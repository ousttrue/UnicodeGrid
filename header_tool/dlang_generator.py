import pathlib
from typing import Dict, List, Tuple, IO, Any
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


def typedef(s: IO[Any], values: List[Tuple[str, str]]) -> None:
    for v in values:
        s.write(f'alias {v[1]} = {v[0]};\n')


def enum(s: IO[Any], values: List[ClangEnum]) -> None:
    for v in values:
        s.write(f'''
enum {v.name}
{{
''')
        for vv in v.values:
            s.write(f'{vv[0]} = {vv[1]},\n')

    s.write('}')


def struct_begin(struct: ClangStruct) -> str:
    return f'''
struct {struct.name}
{{
'''


def struct_end(_struct: ClangStruct) -> str:
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
                typedef(d, v.typedef_list)

                # enum
                enum(d, v.enum_list)

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

                d.write(TAIL)
