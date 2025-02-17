%{
#include <stdio.h>
%}

letter [A-Za-z]
digit [0-9]

%%
if printf("keyword if \n");
[a-zA-z][a-zA-Z0-9]* printf("Identifier %s\n",yytext);
%%

int main()
{
        yylex();
        return 1;
}

int yywrap()

{
        return 1;
}

