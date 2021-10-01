%{
/* Definition section */
#include<stdio.h>
#include<stdlib.h>
%}

%token A B NL

/* Rule Section */
%%
stmt: S NL { printf("Valid String!!\n");
			exit(0); }
;
S: A S B |
;
%%

int yyerror(char *msg)
{
printf("Invalid String!!\n");
exit(0);
}

//driver code
main()
{
printf("Enter the string to be checked.\n");
yyparse(); }
