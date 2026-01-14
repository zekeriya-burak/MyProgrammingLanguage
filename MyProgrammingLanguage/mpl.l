%{
#include <stdio.h>
%}


%%

"begin"     { return T_BEGIN; }
"end"       { return T_END; }
"var"       { return T_VAR; }
"if"        { return T_IF; }
"else"      { return T_ELSE; }
"ifend"     { return T_IFEND; }
"while"     { return T_WHILE; }
"for"       { return T_FOR; }
"loopend"   { return T_LOOPEND; }
"int"       { return T_TYPE_INT; }
"float"     { return T_TYPE_FLOAT; }
"char"      { return T_TYPE_CHAR; }

"and"       { return T_AND; }
"or"        { return T_OR; }
"not"       { return T_NOT; }

[a-zA-Z][a-zA-Z0-9]* { return T_ID; }
[0-9]+      { return T_INT_VAL; }
[0-9]*\.[0-9]+ { return T_FLOAT_VAL; }

"+"         { return '+'; }
"-"         { return '-'; }
"*"         { return '*'; }
"/"         { return '/'; }
"="         { return '='; }
"<"         { return '<'; }
">"         { return '>'; }
"("         { return '('; }
")"         { return ')'; }
";"         { return ';'; }
","         { return ','; }

"<="        { return T_LE; }
">="        { return T_GE; }
"=="        { return T_EQ; }
"!="        { return T_NE; }

[ \t\n]     ;
.           { return yytext[0]; }

%%

int yywrap() { return 1;}

