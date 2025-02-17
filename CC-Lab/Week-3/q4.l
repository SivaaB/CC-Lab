%{
#include <stdio.h>
#include <string.h>
int even_count = 0;
int odd_count = 0;
%}

%%
[ \t\n]+              { /* Ignore spaces, tabs, and newlines */ }
[0-9]+                {
                        int num = atoi(yytext);
                        if (num % 2 == 0) {
                            even_count++;
                            printf("EVEN Number: %s, Length: %d\n", yytext, strlen(yytext));
                        } else {
                            odd_count++;
                            printf("ODD Number: %s, Length: %d\n", yytext, strlen(yytext));
                        }
                    }
.                     { printf("MYSTERY CHAR: %s\n", yytext); }
%%


int main()
{
    yylex();

    if (even_count > 0 && odd_count > 0) {
        printf("The input contains both EVEN and ODD numbers.\n");
    } else if (even_count > 0) {
        printf("The input contains only EVEN numbers.\n");
    } else if (odd_count > 0) {
        printf("The input contains only ODD numbers.\n");
    } else {
        printf("No numbers found in the input.\n");
    }

    return 0;
}
