PROGRAM secv_ord_col_sdp;
VAR a:ARRAY[1..100,1..100] OF INTEGER;
    v:ARRAY[1..100] OF INTEGER;
    n,k,i,j,aux:INTEGER;
BEGIN
{READ(n);
FOR i:=1 TO n DO
 FOR j:=1 TO n DO
  READ(a[i,j]);}
k:=0;
FOR j:=1 TO n-1 DO
 FOR i:=j+1 TO n DO
  BEGIN
   k:=k+1;
   v[k]:=a[i,j];
   END;
FOR i:=1 TO k-1 DO
 FOR j:=i+1 TO k DO
  IF v[i]>v[j] THEN
   BEGIN aux:=v[i];v[i]:=v[j];v[j]:=aux;END;
k:=0;
FOR j:=1 TO n-1 DO
 FOR i:=j+1 TO n DO
  BEGIN
   k:=k+1;
   a[i,j]:=v[k];
   END;
{FOR i:=1 TO n DO
 BEGIN
 FOR j:=1 TO n DO
  WRITE(a[i,j],' ');
 WRITELN;
 END;}
  END.
