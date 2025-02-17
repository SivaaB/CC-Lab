%{ 
#include <stdio.h> 
%} 

%%
"+"	{printf("PLUS\n");}
"-"	{printf("MINUS\n");}
"*"	{printf("MUL\n");} 
"/"	{printf("DIV\n");}
"abs"	{printf("ABS\n");} 
[0-9]+	{printf("NUMBER\n");}
[\t]+
.	{printf("MYSTERY CHAR\n");}
%%

int main() 
{ 
	yylex();
	return 0; 
}
