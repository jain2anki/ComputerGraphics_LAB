%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B NL

%%
stmt: W X W NL {printf("Valid String\n");
            exit(0); }
    ;
W: As |
   Bs;
X: As |
   Bs;
As: A As |;
Bs: B Bs |;

%%

int yyerror(char *msg) {
    printf("Invalid string\n");
    exit(0);
}

main() {
    printf("Enter the string\n");
    yyparse();
}