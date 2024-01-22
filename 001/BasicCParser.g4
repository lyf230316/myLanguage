
parser grammar BasicCParser;

options {
    tokenVocab = BasicCLexer;
}

translationUnit
    : topLevelDeclaration* EOF
    ;

topLevelDeclaration
    : functionDeclaration
    ;

functionDeclaration
    : 'fn' Identifier '(' parameterList? ')' '{' '}'
    ;


parameterList
    : parameterDeclarationList (',' '...')?
    ;

parameterDeclarationList
    : parameterDeclaration (',' parameterDeclaration)*
    ;

parameterDeclaration
    : Identifier ':' Identifier
    ;


