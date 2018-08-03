PROGRAM prima_ultima;
VAR x,p,u,n:LONGINT;
BEGIN
READ(x);
p:=x MOD 10;
x:=x DIV 10;
WHILE x > 0 DO
BEGIN
u:=x MOD 10;
x:=x DIV 10;
END;
n:=u*10+p;
WRITE(n);
END.