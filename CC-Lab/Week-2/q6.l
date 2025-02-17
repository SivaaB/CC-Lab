%{
#include <stdio.h>
%}

letter [A-Za-z]
digit [0-9] 

%%
[abc]{2,5} printf("Found 2 to 5 occurrence of abc");
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
