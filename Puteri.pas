PROGRAM puteri;
VAR n,k,p:INTEGER;
BEGIN
READ(n);
p:=1;
FOR k:=1 TO n DO BEGIN
p:=p*2;
WRITE(p,' ');
END;
END.