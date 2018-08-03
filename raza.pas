PROGRAM raza;
VAR a:ARRAY[0..100,0..100] OF INTEGER;
    m,n,j,i,k,d:INTEGER;
BEGIN
READ(m,n);          {i+1 j+1 d=1 jos dreapta}{i+1 j-1 d=2 jos stanga}
i:=2;               {i-1 j-1 d=3 sus stanga }{i-1 j+1 d=4 sus dreapta}
j:=2;
d:=1;
k:=2;
a[1,1]:=1;
a[i,j]:=2;
WHILE ((i<>1)OR(j<>n))AND((i<>m)OR(j<>1))AND((i<>m)OR(j<>n)) DO
BEGIN
IF i=m THEN
 IF d=1 THEN
  d:=4 ELSE
   d:=3;
IF i=1 THEN
 IF d=4 THEN
  d:=1 ELSE
   d:=2;
IF j=n THEN
 IF d=1 THEN
  d:=2 ELSE
   d:=3;
IF j=1 THEN
 IF d=2 THEN
  d:=1 ELSE
   d:=4;
{1}
IF d=1 THEN
BEGIN
i:=i+1;
j:=j+1;
k:=k+1;
IF a[i,j]= 0 THEN
a[i,j]:=k; END ELSE
{2}
IF d=2 THEN
BEGIN
i:=i+1;
j:=j-1;
k:=k+1;
IF a[i,j]= 0 THEN
a[i,j]:=k; END ELSE
{3}
IF d=3 THEN
BEGIN
i:=i-1;
j:=j-1;
k:=k+1;
IF a[i,j]= 0 THEN
a[i,j]:=k;END ELSE
{4}
IF d=4 THEN
BEGIN
i:=i-1;
j:=j+1;
k:=k+1;
IF a[i,j]= 0 THEN
a[i,j]:=k;END;
END;{de la while}
FOR i:=1 TO m DO
 BEGIN
  FOR j:=1 TO n DO
   IF a[i,j]=0 THEN
   WRITE('*':3,' ') ELSE
   WRITE(a[i,j]:3,' ');
 WRITELN;
END;
END.
