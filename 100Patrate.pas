PROGRAM patratretext;
VAR f:text;
    k:integer;
BEGIN
ASSIGN(f, '100_Patrate.txt');
REWRITE(f);
FOR k:=1 TO 100 DO
BEGIN
IF (k>1)AND((k-1) MOD 10 = 0)  THEN
WRITELN(f);
WRITE(f,SQR(k),' ');
END;
CLOSE(f);
END.

