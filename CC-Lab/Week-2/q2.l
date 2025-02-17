%{ 
#include <stdio.h>
%} 

%%
"a|b|c"	printf("Found a/b/c as literal string\n");
[abc]	printf("Found a or b or c\n");
[^ghi]	printf("Found something other than g, h & i\n");
[m-q]	printf("Found something from m to q\n"); 
[abc|-] printf("Found a or b or c or -\n");
[a-z]+	printf("Found a word\n"); 
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

 
