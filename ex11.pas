PROGRAM ex11;
VAR a:ARRAY[1..100,1..100] OF INTEGER;
    sp,sb,n,i,j:INTEGER;
BEGIN
READ(n);
sb:=0;
sp:=0;
FOR i:=1 TO n DO
 FOR j:=1 TO n DO
  BEGIN
   READ(a[i,j]);
   IF i>j THEN
    sb:=sb+a[i,j] ELSE
     IF i<j THEN
      sp:=sp+a[i,j];
  END;
{WRITELN('Suma sub diag princip este ',sb,',iar cea peste este ',sp,'.');}
REPEAT
 IF sb>sp THEN
  sb:=sb-sp ELSE
   IF sb<sp THEN
    sp:=sp-sb;
UNTIL sp=sb;
WRITE('C.M.M.D.C al sumelor zonelor peste si sub diagonala principala este ',sb,'.');
END.


