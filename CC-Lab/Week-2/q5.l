%{
#include <stdio.h>
%}

letter [A-Za-z]
digit [0-9]

%%
{letter}+ printf("Found a word\n");
{digit}+ printf("Found a integer\n");
{digit}+(.{digit}+)?(E[+-]?{digit}+)? printf("Found unsigned decimal no\n");
{letter}({letter}|{digit})* printf("Found an identifier\n");
. printf("Mystery character\n");
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
