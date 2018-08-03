PROGRAM ex9;
VAR a:array[1..100,1..100] OF INTEGER;
    v:array[1..100] OF INTEGER;
    n,m,i,j,l,x:INTEGER;
BEGIN
READ(n,m);
FOR i:=1 TO n DO
 FOR j:=1 TO m DO
  READ(a[i,j]);
FOR i:=1 TO m-1 DO
 FOR j:=i+1 TO m DO
  IF a[1,i]<a[1,j] THEN
   FOR l:=1 TO n DO
    BEGIN
    x:=a[l,i];
    a[l,i]:=a[l,j];
    a[l,j]:=x;
    END;
FOR i:=1 TO n DO
 BEGIN
  FOR j:=1 TO m DO
   WRITE(a[i,j]:2,' ');
  WRITELN;
  END;
END.