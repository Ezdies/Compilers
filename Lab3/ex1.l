%{
#include <stdio.h>
  int yywrap(void);
  int yylex(void);
%}
%%
"if"|"then"|"print"|"end" {
    printf("KEYWORD: %s \n", yytext);
}
[0-9]+ {
    printf("INTEGER: %s \n", yytext);
}
[a-zA-Z][^ \n]* {
    printf("IDENTIFIER: %s \n", yytext);
}
. { }
%%
int yywrap(void) { return 1; }
int main(void) { return yylex(); }
