PROGRAM ex10;
VAR a:array[1..100,1..100] OF INTEGER;
    v:array[1..100] OF INTEGER;
    n,m,i,j:INTEGER;
BEGIN
READ(n,m);
FOR i:=1 TO n DO
 FOR j:=1 TO m DO
  READ(a[i,j]);
FOR i:=1 TO m DO
 v[i]:=a[1,i];
FOR i:=1 TO n-1 DO
 FOR j:=1 TO m DO
  a[i,j]:=a[i+1,j];
FOR i:=1 TO m DO
 a[n,i]:=v[i];
FOR i:=1 TO n DO
 BEGIN
  FOR j:=1 TO m DO
   WRITE(a[i,j]:2,' ');
  WRITELN;
  END;
END.
