# Compiler Construction / Design Lab (Semester V)

[![Language](https://img.shields.io/badge/Language-C%20%2F%20Lex%20%2F%20Yacc-blue.svg)](https://en.wikipedia.org/wiki/Lex_(software))
[![Semester](https://img.shields.io/badge/Semester-V-brightgreen.svg)]()
[![Author](https://img.shields.io/badge/Author-Salim%20Ansari-orange.svg)](https://github.com/Salimansari369)

This repository contains all lab practicals, source codes (`.l`, `.y`), execution screenshots, and PDF reports for **Compiler Construction / Compiler Design Lab (Semester V)**.

---

## 👤 Student Profile
- **Name:** Salim Ansari
- **PRN:** `24070521005`
- **Batch:** A1
- **Institute:** Symbiosis Institute of Technology (SIT), Nagpur

---

## 📑 Index of Practicals

| Practical | Title / Aim | Source Files | Execution Preview | Lab PDF |
| :---: | :--- | :---: | :---: | :---: |
| **01** | Basic Lex matching (`hello`) & Single-line comment counter | [`1.1_basic_lex.l`](./Practical-01/1.1_basic_lex.l)<br>[`1.2_count_comments.l`](./Practical-01/1.2_count_comments.l) | [View](./Practical-01/output.png) | [PDF](./Practical-01/Practical-01.pdf) |
| **02** | Count comments, keywords, identifiers, words, spaces, & lines | [`count_tokens.l`](./Practical-02/count_tokens.l) | [View](./Practical-02/output.png) | [PDF](./Practical-02/Practical-02.pdf) |
| **03** | Count words starting with 'a'/'A' and numeric literals | [`count_words_and_numbers.l`](./Practical-03/count_words_and_numbers.l) | [View](./Practical-03/output.png) | [PDF](./Practical-03/Practical-03.pdf) |
| **04** | Arithmetic Expression Validator using YACC & LEX | [`parser.y`](./Practical-04/parser.y)<br>[`lexer.l`](./Practical-04/lexer.l) | [README](./Practical-04/README.md) | — |
| **05** | Case toggle: Uppercase to lowercase & lowercase to uppercase | [`toggle_case.l`](./Practical-05/toggle_case.l) | [View](./Practical-05/output.png) | [PDF](./Practical-05/Practical-05.pdf) |
| **06** | Decimal to Hexadecimal & Hexadecimal to Decimal conversion | [`decimal_to_hexadecimal.l`](./Practical-06/decimal_to_hexadecimal.l)<br>[`hexadecimal_to_decimal.l`](./Practical-06/hexadecimal_to_decimal.l) | [Part 1](./Practical-06/output_page_1.png)<br>[Part 2](./Practical-06/output_page_2.png) | [PDF](./Practical-06/Practical-06.pdf) |
| **07** | Pattern matching: Test input lines ending with 'com' / 'COM' | [`check_ends_with_com.l`](./Practical-07/check_ends_with_com.l) | [View](./Practical-07/output.png) | [PDF](./Practical-07/Practical-07.pdf) |

---

## 🛠️ Prerequisites & Installation

To run these programs on Linux / Ubuntu / WSL:

```bash
# Update package lists
sudo apt update

# Install GCC compiler, Flex (Lexical Analyzer), and Bison (YACC Parser)
sudo apt install build-essential flex bison -y
```

---

## ⚡ General Execution Guide

### 1. Running a LEX Program (`.l` file)
```bash
# Step 1: Generate lex.yy.c from the lex specification file
flex filename.l

# Step 2: Compile the generated C code with GCC
gcc lex.yy.c -o output

# Step 3: Run the executable
./output
```

### 2. Running a YACC + LEX Program (`.y` and `.l` files)
```bash
# Step 1: Generate y.tab.c and y.tab.h from the Yacc grammar file
bison -d -y parser.y

# Step 2: Generate lex.yy.c using Flex
flex lexer.l

# Step 3: Compile both C source files together
gcc y.tab.c lex.yy.c -o parser

# Step 4: Execute the parser binary
./parser
```

---

## 📜 License
This project is open-source and intended for academic and educational purposes.
