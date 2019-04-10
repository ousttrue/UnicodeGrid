import pathlib
from typing import Dict, List, Tuple, IO, Any
from jinja2 import Template
from clang_parser import ClangHeader, ClangStruct, ClangEnum, ClangInterface, ClangMethod


IMPORT = '''
import core.sys.windows.windef;
import core.sys.windows.com;
'''

HEAD = '''
extern(Windows){

alias IID = GUID;
'''


TAIL = '''
}
'''


def typedef(s: IO[Any], values: List[Tuple[str, str]]) -> None:
    for v in values:
        s.write(f'alias {v[1]} = {v[0]};\n')


def enum(s: IO[Any], values: List[ClangEnum]) -> None:
    template = Template('''{% for enum in enum_list %}
enum {{ enum.name }} {
{%- for value in enum.values %}
    {{ value[0] }} = {{ value[1] }},
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


def interface(s: IO[Any], values: List[ClangInterface], iid_map: Dict[str, str]) -> None:

    for x in values:
        if x.name in iid_map:
            x.guid = f'static immutable uuidof = GUID({iid_map.get(x.name)});'

    template = Template('''{% for i in interface_list %}
interface {{ i.name }}: {{ i.base }} {
    {{ i.guid }}
{%- for m in i.methods %}
    {{ m.result }} {{ m.name }}(
    {%- for arg in m.args -%}
        {% if not loop.first %}, {% endif %}{{ arg.type_d }} {{ arg.name }}
    {%- endfor -%}
    );
{%- endfor %}
}
{% endfor %}''')

    s.write(template.render(interface_list=values))


def function(s: IO[Any], values: List[ClangMethod]) -> None:
    template = Template('''{% for f in function_list %}
{{ f.result }} {{ f.name }}(
    {%- for arg in f.args -%}
        {% if not loop.first %}, {% endif %}{{ arg.type_d }} {{ arg.name }}
    {%- endfor -%}
);
{% endfor %}''')

    s.write(template.render(function_list=values)
            .replace('&', '*')
            )


def const(s: IO[Any], values: List[Tuple[str, str]]) -> None:
    template = Template('''{% for c in const_list -%}
immutable {{ c[0] }} = {{ c[1] }};
{% endfor %}''')

    s.write(template.render(const_list=values))


def generate(source: pathlib.Path, kit_name: str, headers: Dict[str, ClangHeader]) -> None:
    package_name = f'build_{kit_name.replace(".", "_")}'
    root = source / 'windowskits' / package_name
    root.mkdir(parents=True, exist_ok=True)

    for k, v in headers.items():
        module_name = pathlib.Path(k).stem

        dst = root / f'{module_name}.d'
        print(dst)

        with dst.open('w') as d:
            d.write('// this is generated\n')
            d.write(f'module windowskits.{package_name}.{module_name};\n')

            d.write(IMPORT)
            for kk in headers.keys():
                if k == kk:
                    continue
                if kk in v.include_list:
                    d.write(
                        f'public import windowskits.{package_name}.{pathlib.Path(kk).stem};\n')

            d.write(HEAD)

            if module_name == 'd3d11':
                d.write('''
// union workaround
struct D3D11_AUTHENTICATED_PROTECTION_FLAGS
{
    UINT Value;
}

''')

            # alias
            typedef(d, v.typedef_list)

            # constant
            const(d, v.const_list)

            # enum
            enum(d, v.enum_list)

            # struct
            struct(d, v.struct_list)

            # interface
            interface(d, v.interface_list, v.iid_map)

            # function
            function(d, v.function_list)

            d.write(TAIL)
