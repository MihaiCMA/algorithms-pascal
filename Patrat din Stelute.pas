PROGRAM stelute;
VAR n,r,c,x:integer;
    m:text;
BEGIN
ASSIGN(m, 'PatrateDinStelute.txt');
WRITE('Introduceti lungimea patratului.Valoare 0 inchide programul:');
WRITELN;WRITELN;
READ(n);
WRITELN;
WHILE n>0 do begin
FOR c:=1 to n do BEGIN                                     `
 FOR r:=1 to n do
 WRITE(m,'* ');WRITELN(m);end;WRITELN;
 READ(n);WRITELN;end;
 if n=0 then
 end. else begin
 READLN;
 READLN;

