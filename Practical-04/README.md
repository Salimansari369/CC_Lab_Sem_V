# Practical 4: Basic YACC Arithmetic Expression Validator

> **Student Name:** Salim Ansari | **PRN:** 24070521005 | **Batch:** A1

## 📋 Description
A YACC & LEX program to check the syntax and validity of arithmetic expressions adhering to operator precedence rules (+, -, *, /, parentheses).

## 📁 Source Files
- [`lexer.l`](./lexer.l)
- [`parser.y`](./parser.y)

## 🚀 How to Run
```bash
# 1. Generate YACC parser files
bison -d -y parser.y

# 2. Generate LEX scanner files
flex lexer.l

# 3. Compile both together with GCC
gcc y.tab.c lex.yy.c -o parser

# 4. Execute the binary
./parser
```
