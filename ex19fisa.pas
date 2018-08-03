PROGRAM ex19fisa;
VAR a:ARRAY[1..100,1..100] OF INTEGER;
    v:ARRAY[1..100] OF REAL;
    i,n,j:INTEGER;
    exista:BOOLEAN;

BEGIN
READ(n);
exista:=FALSE;
FOR i:=1 TO n DO
 FOR j:=1 TO n DO
  READ(a[i,j]);
FOR j:=1 TO n DO
BEGIN
 v[j]:=1;
 FOR i:=1 TO n DO
  v[j]:=v[j]*a[i,j];
END;
FOR i:=1 TO n DO
 FOR j:=1 TO n DO
 BEGIN
  IF v[j]=0 THEN
   IF a[i,j]= 0 THEN
   BEGIN
    WRITE(a[i,j]:2,' ');
     exista:=TRUE
      END;
     IF a[i,j]=v[j]/a[i,j] THEN
      BEGIN
       WRITE(a[i,j]:2,' ');
       exista:=TRUE;
       END;
   END;
IF exista=false THEN
WRITE('NU EXISTA');
END.
