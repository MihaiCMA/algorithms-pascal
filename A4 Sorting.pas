PROGRAM A4_Sorting;
VAR v:ARRAY[1..50] OF INTEGER;
    i,n,a:LONGINT;
BEGIN
READ(n);
FOR i:=1 TO n DO
 READ(v[i]);
a:=0;
FOR i:=n DOWNTO 1 DO
 IF v[i]=0 THEN
 a:=a+1 ELSE BEGIN
 v[i]:=0;
 v[i+a]:=1; END;
FOR i:=1 TO n DO
 WRITE(v[i]);
END.
