%{
/*
 * Practical 12: Intermediate Code Generation (ICG) for Arithmetic Expressions
 * Student Name: Salim Ansari | PRN: 24070521005 | Batch: A1
 */
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}

%%
[A-Za-z_][A-Za-z0-9_]* { return ID; }
[0-9]+                 { yylval = atoi(yytext); return NUM; }
[+*/-]                 { return yytext[0]; }
.|\n                   { }
%%

int yywrap()
{
    return 1;
}
