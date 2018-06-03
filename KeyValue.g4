/*ANTLR Grammar for Key value pairs with a comma or semi colon delimiters */
grammar KeyValue;

keyvaluepairs: pair (SEPARATOR pair)* EOF;

pair: ID '=' ID;

SEPARATOR: ',' | ';';
ID: [A-Za-z0-9]+;

WS : [ \t\r\n]+ -> skip ; // skip spaces, tabs, newlines
