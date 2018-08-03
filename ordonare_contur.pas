PROGRAM ordonare_contur;
VAR a:array[1..100,1..100] OF INTEGER;
    v:array[1..100] OF INTEGER;
    n,i,j,k,aux:INTEGER;
BEGIN
{READ(n);
FOR i:=1 TO n DO
 FOR j:=1 TO n DO
  READ(a[i,j]);}
k:=0;
FOR i:=1 TO n DO
 FOR j:=1 TO n DO
  IF (i=1)OR(j=1)OR(i=n)OR(j=n) THEN
   BEGIN
    k:=k+1;
    v[k]:=a[i,j];
     END;
FOR i:=1 TO k-1 DO
 FOR j:=i+1 TO k DO
  IF v[i]>v[j] THEN
   BEGIN
    aux:=v[i];
    v[i]:=v[j];
    v[j]:=aux;
     END;
k:=0;
FOR j:=1 TO n DO
 BEGIN
  k:=k+1;
  a[1,j]:=v[k];
   END;
FOR i:=2 TO n DO
 BEGIN
  k:=k+1;
  a[i,n]:=v[k];
   END;
FOR j:= n-1 DOWNTO 1 DO
 BEGIN
  k:=k+1;
  a[n,j]:=v[k];
   END;
FOR i:=n-1 DOWNTO 2 DO
 BEGIN
  k:=k+1;
  a[i,1]:=v[k];
   END;
{WRITELN;
FOR i:=1 TO n DO
 BEGIN
  FOR j:=1 TO n DO
   WRITE(a[i,j],' ');
  WRITELN;
   END;}
END.