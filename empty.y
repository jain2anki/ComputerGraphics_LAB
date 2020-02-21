%{
#include<stdio.h>
#include<stdlib.h>
%}

%token NL

%%
stmt: NL {printf("Valid String\n");
            exit(0); }
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