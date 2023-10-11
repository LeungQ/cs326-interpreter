grammar InterpreterV1; //revised solution after looking at provided github resource

start  :
     expression  EOF
  ;

expression
   :
   |   INT
   |   NUMBER
   |   BOOLEAN
   |   '(' expression ')' //i realized it said to just add it to expression but not lexer
   |   expression (TIMES | DIVIDE) expression
   |   expression (PLUS | MINUS) expression
   ;

PLUS   :  '+'; //addition
MINUS  :  '-'; //subtraction
TIMES  :  '*'; //multiply
DIVIDE :  '/'; //divide
INT    :  '0'..'9'+; // integers
NUMBER  : INT+ '.' INT*; //floating point
BOOLEAN : 'true' | 'false' | 'True'  | 'False' | 'TRUE' | 'FALSE'; //boolean true or false
WS: [ \t\r\n]+ -> skip; /*ignores white space tab, return, newline*/

COMMENT: '//' ~[\r\n]* -> skip;  //match single line comments except return and newline