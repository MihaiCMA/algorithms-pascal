PROGRAM ex7;
VAR a:ARRAY[1..100,1..100] OF INTEGER;
    v:ARRAY[1..100] OF INTEGER;
    i,j,c,r,n:INTEGER;
BEGIN
READ(n);
FOR i:=1 TO n DO
 FOR j:=1 TO n DO
  READ(a[i,j]);
FOR j:=1 TO n DO
 BEGIN
  c:=0;
  FOR i:=1 TO n DO
   IF c=0 THEN
    c:=a[i,j] ELSE
     BEGIN
      r:=a[i,j];
      REPEAT
       IF c>r THEN
        c:=c-r ELSE
         IF c<r THEN
          r:=r-c;
      UNTIL r=c;
     END;
   v[j]:=c;
  END;
WRITE('Numitorii comuni pe fiecare coloana sunt:');
FOR i:=1 TO n DO
 WRITE(v[i],' ');
END.



