
lexer grammar BasicCLexer;

Identifier:
    /*
	 Identifiernondigit | Identifier Identifiernondigit | Identifier DIGIT
	 */ Identifiernondigit (Identifiernondigit | DIGIT)*
;

fragment Identifiernondigit: NONDIGIT | Universalcharactername;

fragment NONDIGIT: [a-zA-Z_];

fragment DIGIT: [0-9];

fragment Universalcharactername: '\\u' Hexquad | '\\U' Hexquad Hexquad;

fragment Hexquad: HEXADECIMALDIGIT HEXADECIMALDIGIT HEXADECIMALDIGIT HEXADECIMALDIGIT;

fragment HEXADECIMALDIGIT: [0-9a-fA-F];

fragment FN: 'fn';