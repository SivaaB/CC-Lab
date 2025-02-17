%{
#include <stdio.h>
%}

%%
"\n" printf("I match a newline\n");
. printf("I am dot. I match anything except newline\n");
\. printf("I match dot\n");
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



