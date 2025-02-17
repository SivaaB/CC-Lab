%{
#include <stdio.h>
#include <ctype.h>
int word_count = 0;
int char_count = 0;
int line_count = 0;
%}

%%
\n                  { line_count++; }
[a-zA-Z0-9_]{6,}     { word_count++; char_count += yyleng; }
[ \t]+               { char_count += yyleng; }
exit                { printf("Exiting...\n"); return 0; }
.                    { char_count++; }
%%

int main()
{
    yylex();
    printf("Words: %d\n", word_count);
    printf("Characters: %d\n", char_count);
    printf("Lines: %d\n", line_count);
    return 0;
}
