from pathlib import Path
from parsimonious import IncompleteParseError, NodeVisitor, ParseError
from parsimonious.grammar import Grammar

functions = list(Path(".").rglob("*.mcfunction"))

grammar = Grammar("""
file  = docs mandatoryemptyline code

zzzz = (docs emptyline)? code


docs           = mandatory_docs optional_docs
mandatory_docs = description blank_doc_line input_doc_section blank_doc_line output_doc_section
optional_docs  = (blank_doc_line returns_doc_section)? (blank_doc_line reserve_doc_section)? (blank_doc_line claim_doc_section)?

input_doc_section = "# Input :" LB field_doc_section
output_doc_section = "# Output :" LB field_doc_section
returns_doc_section = "# Returns :" LB free_doc_section
reserve_doc_section = "# Reserve :" LB field_doc_section
claim_doc_section = "# Claim :" LB field_doc_section

field_doc_section = ("#     " namespace " " path " " kind " " type ~"[^\\n]*\\n"is)*
uuuu = ("#     " namespace " " path " " "(" kind ")" " " "[" type "]" (~".+"is)? LB )*
free_doc_section = ("#" "     " ~"[^\\n]+\\n"is)*

blank_doc_line = "#" LB
description = ("# " ~"[^\\n]+\\n"is)+

namespace = nspace_string
path = nspace_string
kind = nspace_string
type = nspace_string


code  = (emptyline / commentline / codeline)*

commentline = ~"#[^\\n]*\\n"is
codeline = ~"[^#][^\\n]*\\n"is


mandatoryemptyline = emptyline


nspace_string = ~"[^\\n ]+"
emptyline = LB
LB = ~"\\n"

""")


class IniVisitor(NodeVisitor):

    def visit_docs(self, node, visited_children):
        pass #print("###########################################################")
        pass #print(node.text)
        pass #print("###########################################################")

    def visit_description(self, node, visited_children):
        pass

    def visit_nspace_string(self, node, visited_children):
        pass #print("-------------------", node.text)


    def visit_input_doc_section(self, node, visited_children):
        pass #print(">>> input_doc_section")
        pass #print(node.text)
        pass #print("<<< input_doc_section")
        pass #print("\n")


    def visit_output_doc_section(self, node, visited_children):
        pass #print(">>> output_doc_section")
        pass #print(node.text)
        pass #print("<<< output_doc_section")
        pass #print("\n")


    def visit_returns_doc_section(self, node, visited_children):
        pass #print(">>> returns_doc_section")
        pass #print(node.text)
        pass #print("<<< returns_doc_section")
        pass #print("\n")


    def visit_reserve_doc_section(self, node, visited_children):
        pass #print(">>> reserve_doc_section")
        pass #print(node.text)
        pass #print("<<< reserve_doc_section")
        pass #print("\n")


    def visit_claim_doc_section(self, node, visited_children):
        pass #print(">>> claim_doc_section")
        pass #print(node.text)
        pass #print("<<< claim_doc_section")
        pass #print("\n")
    def generic_visit(self, node, visited_children):
        """ The generic visit method. """
        return visited_children or node
x = {}
for func in functions:
    with open(func, mode="r", encoding="utf-8") as src:
        code = src.read()
        try:
            u = grammar.parse(code)
            IniVisitor().visit(u)
        except IncompleteParseError as err:
            print(f"{func} is invalid : ")
        except ParseError as err:
            print(f"{func} is invalid : ")