Program prim;
VAR a,b,x,y:INTEGER;
BEGIN
READ(a,b);
x:=a;
y:=b;
WHILE x<>y DO BEGIN
if x>y then
x:=x-y else
y:=y-x; end;
WRITELN;
WRITE('Cel mai mare numitor comun al numerelor ',a,' si ',b,' este ',x);
READLN;
READLN;
end.