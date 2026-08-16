%%
"if"        printf("IF\n");
"else"      printf("ELSE\n");
"while"     printf("WHILE\n");
"return"    printf("RETURN\n");
[a-zA-Z_][a-zA-Z0-9_]*     printf("ID %s\n", yytext);
[0-9]+(\.[0-9]+)?          printf("NUMBER %s\n", yytext);
"//".*        ;
[ \t\n]+      ;
.             printf("SIMBOLO %s\n", yytext);

%%

int main(int argc, char **argv) {
    if (argc < 2) {
        printf("erro: informe o nome do arquivo de entrada\n");
        return 1;
    }
    FILE *f = fopen(argv[1], "r");
    if (f == NULL) {
        printf("erro: nao foi possivel abrir o arquivo %s\n", argv[1]);
        return 1;
    }
    yyin = f;
    yylex();
    fclose(f);
    return 0;
}
