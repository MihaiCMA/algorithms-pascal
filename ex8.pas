PROGRAM ex8;
VAR a:array[1..100,1..100] OF INTEGER;
    v:array[1..100] OF INTEGER;
    n,m,i,j,k,x:INTEGER;
BEGIN
READ(n,m);
FOR i:=1 TO n DO
 FOR j:=1 TO m DO
  READ(a[i,j]);
k:=0;
FOR j:=1 TO m DO
 IF a[n,j] MOD 2 =0 THEN
 BEGIN
  k:=k+1;
  v[k]:=a[n,j];
  END;
FOR i:=1 TO k-1 DO
 FOR j:=i+1 TO k DO
  IF v[i]>v[j] THEN
   BEGIN
   x:=v[i];
   v[i]:=v[j];
   v[j]:=x;
   END;
k:=0;
FOR j:=1 TO m DO
 IF a[n,j] MOD 2 =0 THEN
 BEGIN
  k:=k+1;
  a[n,j]:=v[k];
  END;
FOR i:=1 TO n DO
 BEGIN
  FOR j:=1 TO m DO
   WRITE(a[i,j]:2,' ');
   WRITELN;
   END;
   END.

