%{
#include <stdio.h>
%}

letter [A-Za-z]
digit [0-9]

%%
[0-9]+ printf("Found number %s whose length is %d",yytext, yyleng);
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
