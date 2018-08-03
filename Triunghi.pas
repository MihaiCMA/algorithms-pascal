PROGRAM Triunghi;
VAR a,b,c,sp,perimetrul,aria:REAL;
BEGIN
READ(a,b,c);
perimetrul:=a+b+c;
sp:=perimetrul/2;
aria:=SQRT(sp*(sp-a)*(sp-b)*(sp-c));
WRITE('Perimetrul este ',perimetrul,' iar aria este ',aria,'.');
READLN;
READLN;
END.
