/*
 * Practical 8: Postfix Expression Evaluation
 * Student Name: Salim Ansari | PRN: 24070521005 | Batch: A1
 */

%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}

%%
[0-9]+      { yylval = atoi(yytext); return NUMBER; }
[*/+\-^%]   { return yytext[0]; }
[ \t]       { ; }
\n          { return '\n'; }
.           { printf("Error\n"); }
%%

int yywrap() {
    return 1;
}
