PROGRAM exemplutext;
VAR f:TEXT;
x,i,n,min,max:INTEGER;
BEGIN
ASSIGN(f,'numere.txt');
RESET(f);
READLN(f,n);
min:=MAXINT;
max:=-MAXINT;
FOR i:=1 TO n DO
 BEGIN
  READ(f,x);
  IF x>max THEN
  max:=x;
  IF x<min THEN
  min:=x;
 END;
CLOSE(f);
ASSIGN(f,'minmax.out');
REWRITE(f);
WRITE(f,min,' ',max);
CLOSE(f);
END.

