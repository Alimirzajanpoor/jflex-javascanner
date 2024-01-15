%%
%class Lexer
%{
%}
%%

"class" { return new Symbol(sym.Class); }
"int" { return new Symbol(sym.Int); }
"if" { return new Symbol(sym.If); }
"return" { return new Symbol(sym.Return); }
"print" { return new Symbol(sym.Print); }
[ \t\r]+ { /* Ignore whitespace */ }
"//"(.)* { /* Ignore single-line comments */ }
"("  { return new Symbol(sym.LParen); }
")"  { return new Symbol(sym.RParen); }
"{"  { return new Symbol(sym.LCurly); }
"}"  { return new Symbol(sym.RCurly); }
"+"  { return new Symbol(sym.Sum); }
"-"  { return new Symbol(sym.Minus); }
"*"  { return new Symbol(sym.Multiply); }
"/"  { return new Symbol(sym.Divide); }
"^"  { return new Symbol(sym.Power); }
(">" | ">=" | "<" | "<=" | "!=" | "==") { return new Symbol(sym.Op_Logical); }
("true" | "false") { return new Symbol(sym.Op_Boolean); }
"->" { return new Symbol(sym.Memb_Access); }
"="  { return new Symbol(sym.Assign); }
";"  { return new Symbol(sym.SEMICOLON); }
[a-zA-Z_][a-zA-Z0-9_]* { return new Symbol(sym.Identifier); }
("-"?[0-9]+)|[0-9]+ { return new Symbol(sym.Number, Integer.parseInt(yytext())); }
. { return new Symbol(sym.ERROR); }
