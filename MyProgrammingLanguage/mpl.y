%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex();
%}

%token T_BEGIN T_END T_VAR
%token T_IF T_ELSE T_IFEND
%token T_WHILE T_FOR T_LOOPEND
%token T_TYPE_INT T_TYPE_FLOAT T_TYPE_CHAR
%token T_ID T_INT_VAL T_FLOAT_VAL

%left T_OR
%left T_AND
%left T_EQ T_NE
%left '<' '>' T_LE T_GE
%left '+' '-'
%left '*' '/'
%right T_NOT

%%

program:
    T_BEGIN statement_list T_END { printf("OK\n"); }
    ;

statement_list:
    | statement_list statement
    ;

statement:
    declaration ';'
    | assignment ';'
    | if_statement
    | while_statement
    | for_statement
    ;

declaration:
    T_VAR T_ID '=' expression
    | T_VAR T_ID '=' type 
    ;

type:
    T_TYPE_INT | T_TYPE_FLOAT | T_TYPE_CHAR
    ;

assignment:
    T_ID '=' expression
    ;

if_statement:
    T_IF '(' expression ')' statement_list T_IFEND
    | T_IF '(' expression ')' statement_list T_ELSE statement_list T_IFEND
    ;

while_statement:
    T_WHILE '(' expression ')' statement_list T_LOOPEND
    ;

for_statement:
    T_FOR '(' for_init ';' expression ';' assignment ')' statement_list T_LOOPEND
    ;

for_init:
    declaration | assignment
    ;

expression:
    expression '+' expression
    | expression '-' expression
    | expression '*' expression
    | expression '/' expression
    | expression '<' expression
    | expression '>' expression
    | expression T_LE expression
    | expression T_GE expression
    | expression T_EQ expression
    | expression T_NE expression
    | expression T_AND expression
    | expression T_OR expression
    | T_NOT expression
    | '(' expression ')'
    | T_ID
    | T_INT_VAL
    | T_FLOAT_VAL
    ;

%%

#include "lex.yy.c"

void yyerror(const char *s) {
    fprintf(stderr, "syntax error\n");
}

int main() {
    yyparse();
    return 0;
}
