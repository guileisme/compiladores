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
