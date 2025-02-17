%{
#include <stdio.h>
#include <ctype.h>
int word_count = 0;
int char_count = 0;
int line_count = 0;
%}

%%
\n                  { line_count++; }          // Counts newlines
[a-zA-Z0-9_]+       { word_count++; char_count += yyleng; }  // Counts words and adds length to char count
[ \t]+               { char_count += yyleng; }  // Ignore spaces/tabs but still count the characters
.                    { char_count++; }          // Counts any other character
%%


int main()
{
    yylex();
    printf("Words: %d\n", word_count);
    printf("Characters: %d\n", char_count);
    printf("Lines: %d\n", line_count);
    return 0;
}
