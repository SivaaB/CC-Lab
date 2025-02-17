%{
#include <stdio.h>
%}

letter [A-Za-z]
digit [0-9]

%%
[0-9]+ printf("Found number %d whose length is %d",atoi(yytext), yyleng);
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

