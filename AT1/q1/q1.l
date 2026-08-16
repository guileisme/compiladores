%{
int chars = 0;
int words = 0;
int lines = 0;
int inteiros = 0;
int floats = 0;
int pontuacoes = 0;
%}

%%

[[:punct:]]+         {pontuacoes++;chars += strlen(yytext);} // regra para pontuações
[a-zA-Z]+           {words++; chars += strlen(yytext);}
\n                  {chars++; lines++;}
.                   {chars++;}
[0-9]+                 {inteiros++;chars += strlen(yytext);} // regra para inteiros
[0-9]*\.[0-9]+       {floats++;chars += strlen(yytext);} // regra para floats

%%

int main (int argc, char **argv)
{
    yylex();
    printf("linhas: %1d \npalavras: %1d \ncaracteres: %1d\ninteiros: %1d \nfloats: %1d \npontuacoes: %1d \n", lines, words, chars, inteiros, floats, pontuacoes);
}
