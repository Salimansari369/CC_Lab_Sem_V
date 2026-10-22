/*
 * Practical 10: For Loop and Ternary Expression Validation
 * Student Name: Salim Ansari | PRN: 24070521005 | Batch: A1
 */

%{
#include "y.tab.h"
%}

%%
"for"                        { return FOR; }
[a-zA-Z_][a-zA-Z0-9_]*       { return ID; }
[0-9]+                       { return NUM; }
"<="|">="|"=="|"!="|"<"|">"  { return RELOP; }
"++"                         { return INC; }
"--"                         { return DEC; }
[ \t\n]+                     ;
.                            { return yytext[0]; }
%%

int yywrap() {
    return 1;
}
