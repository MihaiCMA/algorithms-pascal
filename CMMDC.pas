Program CMMDC;
VAR a,b,x,y:LONGINT;
BEGIN
READ(a,b);
WHILE (a<>0)or(b<>0) do Begin
x:=a;
y:=b;
WHILE x<>y DO BEGIN
if x>y then
x:=x-y else
y:=y-x; end;
WRITELN;
WRITE('Cel mai mare divizor comun al numerelor ',a,' si ',b,' este ',x);
WRITELN;WRITELN;
READ(a,b);end;
end.
