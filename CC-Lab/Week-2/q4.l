%{
#include <stdio.h>
%}

word [a-z]+
number [0-9]+


%%
[abc]{2,5} printf("Found 2 to 5 occurrence of a or b or c");
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


