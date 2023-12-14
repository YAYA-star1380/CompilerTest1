/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

grammar PhoneNumber;

test
    : iranNumber EOF
    ;

iranNumber
    : '+98'? '0098'? variation
    ;

variation
    : //nanp
    | gilan
    | tehran
    | khorasan
    | azarbaijan
    ;



areacode
    : DIGIT DIGIT 
    ;

// Exhange
exchange
    : DIGIT DIGIT DIGIT
    ;

// Subscriber
subscriber
    : DIGIT DIGIT DIGIT DIGIT
    ;

numberCode
    : DIGIT DIGIT DIGIT DIGIT DIGIT DIGIT DIGIT DIGIT
    ;

// gilan
gilan
    : '13'  numberCode
    ;

// tehran
tehran
    : '21'  numberCode
    ;

// khorasan
khorasan
    : '51'  numberCode
    ;

// azarbaijan
azarbaijan
    : '41'  numberCode
    ;
DIGIT
    : [0-9]
    ;

WS
    : [ \r\n]+ -> skip
    ;
