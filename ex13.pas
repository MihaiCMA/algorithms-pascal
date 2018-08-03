PROGRAM ex13;
VAR a:ARRAY[1..100,1..100] OF INTEGER;
    min,max:ARRAY[1..100] OF INTEGER;
    n,i,j:INTEGER;
BEGIN
READ(n);
FOR i:=1 TO n DO
 BEGIN
  min[i]:=maxint;
  max[i]:=-maxint;
 END;
FOR i:=1 TO n DO
 FOR j:=1 TO n DO
  BEGIN
   READ(a[i,j]);
   IF a[i,j]<min[i] THEN
    min[i]:=a[i,j];
  END;
FOR j:=1 TO n DO
 FOR i:=1 TO n DO
  IF a[i,j]>max[j] THEN
   max[j]:=a[i,j];
FOR i:=1 TO n DO
 BEGIN
 WRITELN;
 FOR j:=1 TO n DO
  IF (a[i,j]=max[j])AND(a[i,j]=min[i]) THEN
   WRITE(a[i,j],' ');
 END;
END.