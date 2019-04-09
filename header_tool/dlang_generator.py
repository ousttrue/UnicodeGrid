import pathlib
from typing import Dict, List, Tuple, IO, Any
from clang_parser import ClangHeader, ClangStruct, ClangEnum, ClangInterface, ClangMethod
from jinja2 import Template


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
    template = Template('''{% for enum in enum_list %}
enum {{ enum.name }} {
{%- for value in enum.values %}
    {{ value[0] }} = {{ value[1] }};
{%- endfor %}
}
{% endfor %}
''')

    s.write(template.render(enum_list=values))


def struct(s: IO[Any], values: List[ClangStruct]) -> None:
    template = Template('''{% for struct in struct_list %}
struct {{ struct.name }} {
{%- for value in struct.fields %}
    {{ value.type }} {{ value.name }};
{%- endfor %}
}
{% endfor %}''')

    s.write(template.render(struct_list=values))


def interface(s: IO[Any], values: List[ClangInterface]) -> None:
    template = Template('''{% for i in interface_list %}
interface {{ i.name }}: {{ i.base }} {
    static immutable uuidof = GUID({{ i.guid }});
{%- for m in i.methods %}
    {{ m.result }} {{ m.name }}(
    {%- for arg in m.args -%}
        {% if not loop.first %}, {% endif %}{{ arg.type }} {{ arg.name }}
    {%- endfor -%}
    );
{%- endfor %}
}
{% endfor %}''')

    s.write(template.render(interface_list=values)
            .replace('&', '*')
            .replace('*const *', '**')
            )


def function(s: IO[Any], values: List[ClangMethod]) -> None:
    template = Template('''{% for f in function_list %}
{{ f.result }} {{ f.name }}(
    {%- for arg in f.args -%}
        {% if not loop.first %}, {% endif %}{{ arg.type }} {{ arg.name }}
    {%- endfor -%}
);
{% endfor %}''')

    s.write(template.render(function_list=values)
            .replace('&', '*')
            )


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
                struct(d, v.struct_list)

                # interface
                interface(d, v.interface_list)

                # function
                function(d, v.function_list)

                d.write(TAIL)
