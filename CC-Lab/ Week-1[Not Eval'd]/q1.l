%{
	#include <stdio.h> 
%}

digit [0-9]
letter [A-Za-z]
ident {letter}({letter}|{digit})*

%%
if {printf ("Keyword 'if'\n");}
while {printf ("Keyword 'while'\n");}
{ident} {printf("Identifier\n");}
.	{ECHO;}
%%

