# MPL (My Programming Language) - Syntax & Lexical Analyzer

[cite_start]This repository contains the implementation of **MPL (My Programming Language)**, a custom programming language designed with a structured syntax similar to C but with enhanced readability features[cite: 9, 10]. [cite_start]The project includes a lexical analyzer (using Lex) and a syntax analyzer (using Yacc) to parse and validate MPL source code[cite: 46, 47, 53].

## Project Details
* [cite_start]**Course:** COM2043 Programming Language Concepts [cite: 4]
* [cite_start]**Semester:** 2025-2026 Fall [cite: 3]
* [cite_start]**Institution:** Ankara University, Computer Engineering Department [cite: 2, 3]
* [cite_start]**Author:** Zekeriya Burak Küçüksabancı (ID: 23290993) [cite: 5, 6]

## Language Features
MPL allows users to write structured programs with the following key characteristics:

* [cite_start]**Program Structure:** Blocks must start with `begin` and terminate with `end`[cite: 12].
* **Variable Declarations:** Uses the `var` keyword. [cite_start]Supports initialization by type (e.g., `var x = int;`) or value (e.g., `var y = 10;`)[cite: 13, 14].
* **Control Flow:**
    * **Conditionals:** `if` statements are closed with `ifend`. [cite_start]Optional `else` blocks are supported[cite: 16, 17].
    * [cite_start]**Loops:** `while` and `for` loops are explicitly closed with `loopend` to distinguish them from the main program termination[cite: 18, 19].
* **Operators:**
    * [cite_start]Uses verbal logical operators: `and`, `or`, `not` instead of symbols like `&&` or `||`[cite: 21, 22].
    * [cite_start]Supports standard arithmetic and comparison operators (`+`, `-`, `*`, `/`, `<`, `>`, `==`)[cite: 23].
* [cite_start]**Syntax:** All executable statements must end with a semicolon `;`[cite: 24].

## Grammar (BNF)
[cite_start]The language grammar is defined as follows[cite: 25]:

```bnf
<program> ::= "begin" <statement_list> "end" [cite: 26]
<statement> ::= <declaration> ";" | <assignment> ";" | <if_statement> | <while_statement> | <for_statement> [cite: 28-32]
<declaration> ::= "var" ID "=" <expression> | "var" ID "=" <type> [cite: 33, 34]
<if_statement> ::= "if" "(" <expression> ")" <statement_list> "ifend" 
                 | "if" "(" <expression> ")" <statement_list> "else" <statement_list> "ifend" [cite: 36, 37]
<while_statement> ::= "while" "(" <expression> ")" <statement_list> "loopend" [cite: 38]
<for_statement> ::= "for" "(" <for_init> ";" <expression> ";" <assignment_no_semi> ")" <statement_list> "loopend" [cite: 39]
