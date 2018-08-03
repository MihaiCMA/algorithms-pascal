PROGRAM expresie2;
VAR n,e,k:INTEGER;
BEGIN
READ(n);
e:=1;
FOR k:=1 TO n DO
BEGIN
e:=e*(k+k*2);
END;
WRITE(e);
END.