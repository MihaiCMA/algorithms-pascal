PROGRAM ex17fisa;
VAR m,n,i,j:INTEGER;
    a:ARRAY[1..100,1..100] OF INTEGER;
BEGIN
READ(m,n);
FOR i:=1 TO m DO
 a[i,1]:=i;
FOR j:=1 TO n DO
 a[1,j]:=j;
FOR i :=2 TO m DO
 FOR j :=2 TO n DO
   a[i,j]:=a[i-1,j]+a[i,j-1];
FOR i:=1 TO m DO
BEGIN
FOR j:=1 TO n DO
Write(a[i,j]:2,' ');
WRITELN;
END;
WRITE(a[m,n]);
END.