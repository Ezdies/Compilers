%{
#include <stdio.h>
  int yywrap(void);
  int yylex(void);
  int seen = 0;
%}
%%
^a*b*\n { 
    int len = strlen(yytext) - 1;
    if(len == 0){

    }
    else if(len % 2 == 0 && yytext[len / 2 - 1] == 'a'
    && yytext[len / 2 - 1] == 'a'){ }
    else {
        printf("NO OK"); return 1;
    } }
\n { printf("NOT OK\n"); return 1; }
. { printf("NOT OK\n"); return 1; }
<<EOF>> {
    printf("OK");
    return 0;
}
%%
int yywrap(void) { return 1; }
int main(void) { return yylex(); }
