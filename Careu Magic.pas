PROGRAM careu_magic;
VAR a:ARRAY[1..50,1..50] OF INTEGER;
i,j,n,k:INTEGER;
BEGIN
READ(n);
i:=n DIV 2+1;
j:=n;
FOR k:=1 TO n*n DO BEGIN
 a[i,j]:=k;
 IF k MOD n=0 THEN
 j:=j-1 ELSE BEGIN
 i:=i+1;
 j:=j+1;END;
 IF i>n THEN
 i:=1;
 IF j>n THEN
 j:=1;
 END;
 FOR i:=1 TO n DO BEGIN
  FOR j:=1 TO n DO
   WRITE(a[i,j]:2,' ');
   WRITELN;END;
END.



