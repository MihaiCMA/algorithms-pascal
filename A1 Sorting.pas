PROGRAM A1_Sorting;
VAR  v:ARRAY[1..50] OF INTEGER;
     n,i,j,a,x:LONGINT;
BEGIN
READ(x);
n:=0;
WHILE x<>0 DO
BEGIN
 n:=n+1;
 v[n]:=x MOD 10;
 x:=x DIV 10;
 END;
FOR i:= 1 TO n DO
 FOR j := i+1 TO n DO
  IF v[j]>v[i] THEN
   BEGIN
   a:=v[i];v[i]:=v[j];v[j]:=a;
   END;
FOR i:= 1 TO n DO
 WRITE(v[i]);
END.

