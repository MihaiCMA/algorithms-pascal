PROGRAM p156;
VAR n,f,k,i,j,p:INTEGER;
    d:CHAR;
BEGIN
READ(d,n);
p:=1;
f:=n DIV 2 +1;
FOR k:=1 TO f DO
BEGIN
FOR i:=1 TO f-k DO
WRITE(' ');
FOR j:=1 TO p DO
WRITE(d);
p:=p+2;
WRITELN;
END;
p:=p-4;
FOR k:=f DOWNTO 1 DO
BEGIN
FOR i:=f-k DOWNTO 0 DO
WRITE(' ');
FOR j:=p DOWNTO 1 DO
WRITE(d);
p:=p-2;
WRITELN;
END;
END.
