# Practical 8: Postfix Expression Evaluation using YACC & LEX

> **Student Name:** Salim Ansari | **PRN:** 24070521005 | **Batch:** A1

## 📋 Description
A YACC & LEX program to evaluate postfix expressions (Reverse Polish Notation) supporting arithmetic operators (+, -, *, /, %, ^).

## 📁 Source Files
- [`exp8.l`](./exp8.l)
- [`exp8.y`](./exp8.y)

## 🚀 How to Run
```bash
# 1. Generate YACC parser files
bison -d -y exp8.y

# 2. Generate LEX scanner files
flex exp8.l

# 3. Compile both together with GCC (linking math library with -lm)
gcc y.tab.c lex.yy.c -lm -o exp8

# 4. Execute the binary
./exp8
```

## 🖥️ Output / Execution Screenshot
> *(Screenshots will be uploaded shortly)*
