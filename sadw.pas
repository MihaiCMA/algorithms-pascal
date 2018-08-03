PROGRAM mediamaxmin;
VAR v:ARRAY[1 n] OF INTEGER;
    i,j,x,n,min,max,nr:INTEGER;
    s:REAL;
BEGIN
READ(n);
s:=0;
min:=11;
max:=0;
nr:=nr + 0;
FOR i:=1 TO n DO
 BEGIN
  READ(x);
   v[i]:=x;
  IF x<min DO
   min:=x;
  IF x>max DO
   max:=x;
  s:=s+x;
  END;
s:=s/n;
FOR j:=1 TO n DO
 IF s>v[j] THEN
  nr:=nr + 1;
WRITE(nr);
END.



