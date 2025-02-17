%{
int display(int);
%}

%%
[0-9]+ {display(atoi(yytext));}
%%

int main()
{
    yyin = fopen("input12.txt","r");
    yylex();
}

int display(int a)
{
    printf("Found number %d whose length is %d",atoi(yytext), yyleng);
}
