%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B NL

%%
stmt: S NL {printf("Valid String\n");
            exit(0); }
    ;
S: As S Bs |
;
As: A As |
;
Bs: B Bs |
;
%%

int yyerror(char *msg) {
    printf("Invalid string\n");
    exit(0);
}

main() {
    printf("Enter the string\n");
    yyparse();
}