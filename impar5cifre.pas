Program impar_cinci_cifre;
VAR x,c,c1,c2,c3,c4,c5:LONGINT;
BEGIN
WRITE('Introduceti numarul.');
WRITELN;
READ(x);c:=0;
c1:=x DIV 10000;
c2:=x DIV 1000 MOD 10;
c3:=x DIV 100 MOD 10;
c4:=x DIV 10 MOD 10;
c5:=x MOD 10;
if c1 MOD 2=1 then
c:=c*10+c1;
if c2 MOD 2=1 then
c:=c*10+c2;
if c3 MOD 2=1 then
c:=c*10+c3;
if c4 MOD 2=1 then
c:=c*10+c4;
if c5 MOD 2=1 then
c:=c*10+c5;
WRITE('Numarul format din cifrele impare este ',c);
end.
