/*
 * Practical 11: Variable Declaration Syntax Validation
 * Student Name: Salim Ansari | PRN: 24070521005 | Batch: A1
 */

%{
#include "y.tab.h"
%}

%%
"int"|"char"|"float"|"double"|"Int"|"Char"|"Float"|"Double" { return KW; }
[A-Za-z_][A-Za-z0-9_]*                                      { return ID; }
[0-9]+                                                      { return NUM; }
","                                                         { return CM; }
" "                                                         { return SP; }
";"                                                         { return SC; }
\n                                                          { /* ignore newlines */ }
.                                                           { /* ignore other characters */ }

%%
int yywrap() {
    return 1;
}
