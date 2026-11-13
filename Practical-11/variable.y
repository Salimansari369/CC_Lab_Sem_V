/*
 * Practical 11: Variable Declaration Syntax Validation
 * Student Name: Salim Ansari | PRN: 24070521005 | Batch: A1
 */

%{
#include <stdio.h>
int yylex(void);
int yyerror(const char *s);
%}

%token KW ID SP SC NUM CM

%%
declaration : KW SP var SC
            ;

var : ID
    | var CM ID
    ;

%%
int yyerror(const char *s) {
    printf("Syntax error\n");
    return 1;
}

int main() {
    printf("declare a variable:\n");
    if (yyparse() == 0) {
        printf("Valid declaration\n");
    } else {
        printf("Invalid Declaration\n");
    }
    return 0;
}
