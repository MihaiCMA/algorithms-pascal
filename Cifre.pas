PROGRAM cifre;
VAR a,b,c,d,x,y:INTEGER;
BEGIN
WRITE('Introduceti un numar de 2,3 sau 4 cifre,pentru a primi inversul acestuia');
READ(x);
IF (x>9)and(x<100)then BEGIN
 a:=x MOD 10;
 b:=x DIV 10 MOD 10;
 y:=a*10+b; END;
IF (x>99)and(x<1000) then BEGIN
a:=x MOD 10;
b:=x DIV 10 MOD 10;
c:=x DIV 100;
y:=a*100+b*10+c; END;
IF (x>999)and(x<10000) then BEGIN
 a:=x MOD 10;
 b:=x DIV 10 MOD 10;
 c:=x DIV 100 MOD 10;
 d:=x DIV 1000;
 y:=a*1000+b*100+c*10+d; END;
WRITE(y);
READLN;
READLN;
END.

