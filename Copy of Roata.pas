PROGRAM Roata;
VAR v,r,q:ARRAY[0..100] OF INTEGER;
    f,o:TEXT;
    n,c,a,i,s,p,b,u:INTEGER;
    plin,gata:BOOLEAN;
BEGIN
ASSIGN(f,'roata.in');
ASSIGN(o,'roata.out');
RESET(f);
REWRITE(o);
READLN(f,n);
READLN(f,p);
s:=0;
FOR i :=1 TO p DO
 BEGIN
  READ(f,a);
  v[i]:=a;
  s:=s+a;
 END;
WRITE(o,s);
WRITELN(o);
q[1]:=1;b:=1;r[1]:=v[1];;plin:=FALSE;c:=1;
REPEAT
gata:=TRUE;
b:=b+1;
IF b>n THEN
b:=1;
IF b=n THEN
plin:=TRUE;
IF (r[b]=0) THEN BEGIN
c:=c+1;
r[b]:=v[c];
q[b]:=c; END;
IF (plin=TRUE)AND(q[b]<>0) THEN
 r[b]:=r[b]-1;
IF (r[b]=0)AND(q[b]<>0) THEN BEGIN
 WRITE(o,q[b],' ');
 u:=b;
 END;
FOR i:=1 TO n DO
 IF (r[i]>0) THEN
  gata:=FALSE;
 UNTIL gata=TRUE;
WRITELN(o);
WRITE(o,u);
CLOSE(f);
CLOSE(o);
END.







