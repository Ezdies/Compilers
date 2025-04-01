%{
#include <stdio.h>
  int yywrap(void);
  int yylex(void);
  int seen = 0;
%}
%%
^a+b+\n { }
\n { printf("NOT OK\n"); return 1; }
. { printf("NOT OK\n"); return 1; }
<<EOF>> {
    printf("OK");
    return 0;
}
%%
int yywrap(void) { return 1; }
int main(void) { return yylex(); }
