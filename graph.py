from pathlib import Path
from parsimonious import IncompleteParseError, NodeVisitor, ParseError
from parsimonious.grammar import Grammar

functions = list(Path(".").rglob("*.mcfunction"))
function_grammar = Grammar("""
file = (line LB)* (line)?
line = comment / knowncommand / unknowncommand / empty

comment = ~"#[^\\n]*"
empty = ~""
unknowncommand = ~"[^#\\n][^\\n]*"

LB = ~"\\n"
WORD = ~"[^\\n ]+"
TODO = ~"[^\\n]+"


knowncommand = function / schedule


         
function = "function" " " ~"[^\\n ]+" TODO?

schedule = "schedule" " " "function" " " WORD " " WORD (" " ("append"/"replace"))?
""")


class FunctionInfo(NodeVisitor):

    def __init__(self) -> None:
        self.fid: str = ""
        self.call_list: list[str] = []
        self.scheduled_call_list: list[str] = []

    # -- Parsing Method --
    def visit_unknowncommand(self, node, visited_children):
        pass

    def generic_visit(self, node, visited_children):
        """ The generic visit method. """
        return visited_children or node
    
    # -- Parsing Method --

    def visit_function(self, node, visited_children):
        if len(node.children) == 3:
            _, _, called = node.children
        elif len(node.children) == 4:
            _, _, called, _ = node.children

        self.call_list.append(called.text)

    def visit_schedule(self, node, visited_children):
        if len(node.children) == 8:
            _, _, _, _, called, _, _, _ = node.children
        elif len(node.children) == 9:
            _, _, _, _, called, _, _, _, _ = node.children

        self.scheduled_call_list.append(called.text)


for func in functions:
    with open(func, mode="r", encoding="utf-8") as src:
        code = src.read()
        try:
            u = FunctionInfo()
            u.visit(function_grammar.parse(code))
            print(func, u.call_list, u.scheduled_call_list)
        except IncompleteParseError as err:
            print(f"{func} is invalid : {err}")
        except ParseError as err:
            print(f"{func} is invalid : {err}")