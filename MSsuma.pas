PROGRAM MSsuma;
VAR s,k,i,q:INTEGER;
BEGIN
READ(s);
FOR k:=1 TO s DO
FOR i:=k TO s DO
FOR q:=i TO s DO
IF (s=k+i+q)AND(k<>i)AND(i<>q)AND(k<>q) THEN
BEGIN
WRITE(s,'=',k,'+',i,'+',q);
WRITELN;
END;
END.
