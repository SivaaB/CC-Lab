%{
#include <stdio.h>
%}

word [a-z]+
number [0-9]+

%%
{word}/{number} printf("Found a word followed by a number\n");
{number} printf("Found number\n");
"\n" printf("Found newline\n");
. printf("Found something else\n");
%%

int main()
{
        printf ("Enter Input: ");
        yylex();
        return 0;
}

int yywrap()
{
        return 1;
}
