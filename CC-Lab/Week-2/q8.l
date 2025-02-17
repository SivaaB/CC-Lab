%{
#include <stdio.h>
%}

letter [A-Za-z]
digit [0-9]

%%
stop$ printf("Found stop at the end of the line \n");
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
