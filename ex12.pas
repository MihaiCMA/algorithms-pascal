PROGRAM ex12;
VAR a:ARRAY[1..100,1..100] OF INTEGER;
    l,c:ARRAY[1..100] OF INTEGER;
    i,j,n,s:INTEGER;
BEGIN
READ(n);
FOR i:=1 TO n DO
 BEGIN
 s:=0;
 FOR j:=1 TO n DO
  BEGIN
   READ(a[i,j]);
   s:=s+a[i,j];
  END;
 l[i]:=s;
 END;
FOR j:=1 TO n DO
 BEGIN
 s:=0;
 FOR i:=1 TO n DO
  s:=s+a[i,j];
 c[j]:=s;
 END;
{FOR i:=1 TO n DO
 WRITELN('linia:',i,' suma:',l[i]);
FOR i:=1 TO n DO
 WRITELN('coloana:',i,' suma:',c[i]);}
FOR i:=1 TO n DO
 FOR j:=1 TO n DO
  IF l[i]=c[j] THEN
   WRITE(a[i,j],' ');
END.
