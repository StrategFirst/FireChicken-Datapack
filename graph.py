from pathlib import Path
from parsimonious.grammar import Grammar

functions = list(Path(".").rglob("*.mcfunction"))

grammar = Grammar("""
file  = docs fcode code* lcode?
docs  = doc*
doc   = "#" ~".*" "\\n"
fcode = ~"[^#]" code
code  = ~".*" "\\n"
lcode = ~".*"
""")

x = {}
for func in functions:
    with open(func, mode="r") as src:
        print(func)
        code = src.read()
        u = grammar.parse(code)
        print(u)
        break
