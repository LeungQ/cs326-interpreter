grammar Interpreter; //original solution without looking up

start  :
     expression  EOF
   ;

 expression
    :
    | INT
    | NUMBER
    | BOOLEAN
    | L_PARENTHESIS expression R_PARENTHESIS // "P"EMDAS
    | expression (TIMES | DIVIDE) expression  // PE"M | D"AS
    | expression (PLUS | MINUS) expression // PEMD"A | S"
    ;

 PLUS    : '+';   // addition
 MINUS   : '-';   // subtraction
 TIMES   : '*';   // multiply
 DIVIDE  : '/';   // divide
 INT     : '0'..'9'+;                    // integers
 NUMBER  : '0'..'9'+ '.' '0'..'9'+;      // floating point
 BOOLEAN : 'true' | 'false' | 'True' | 'False' | 'TRUE' | 'FALSE'; // boolean true or false
 WS: ' '; //white space

 COMMENT: '//''a'..'z'+' ' 'a'..'z'+ ' ''a'..'z'+; //did a couple items to add chars to comment after

 L_PARENTHESIS:   '('; //right paranthesis
 R_PARENTHESIS:   ')'; //left parenthesis

