PROGRAM ex7;
VAR f,o:TEXT;
    linie,s,x:INTEGER;
BEGIN
ASSIGN(f,'trei.in');
RESET(f);
ASSIGN(o,'trei.out');
REWRITE(o);
WHILE NOT(EOF(f)) DO
BEGIN
linie:=0;
WHILE NOT(EOLN(f)) DO
BEGIN
READ(f,x);
s:=0;
WHILE x>0 DO
BEGIN
s:=s + x MOD 10;
x:=x DIV 10;
END;
IF s=10 THEN
linie:=linie+1;
END;
WRITE(o,linie);
WRITELN(o);
READLN(f);
END;
CLOSE(f);
CLOSE(o);
END.

