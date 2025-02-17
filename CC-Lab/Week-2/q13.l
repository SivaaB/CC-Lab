%{
int display(int);
%}

%%
[0-9]+ {display(atoi(yytext));}
%%

int main()

{
    yyin = fopen("input13.txt","r");
    yyout = fopen("out13.txt", "w"); 
    yylex();
}

int display(int a)
{
    fprintf(yyout, "Found number %d whose length is %d",atoi(yytext), yyleng);
}
