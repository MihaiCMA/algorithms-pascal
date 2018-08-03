PROGRAM Problema_insulelor;
VAR v,hmax,l:ARRAY[1..100] OF INTEGER;
    k,n,i,cmax,imax,c1,c2,j,h,lun:INTEGER;
BEGIN
READ(k,n);
FOR i:=1 To n DO
 READ(v[i]);
c1:=0;
i:=1;
cmax:=0;
WHILE v[i]<>0 DO
BEGIN
 IF v[i]>cmax THEN
  cmax:=v[i];
 c1:=c1+1;
 i:=i+1;
END;
c2:=0;
i:=n;
WHILE v[i]<>0 DO
BEGIN
 IF v[i]>cmax THEN
  cmax:=v[i];
 c2:=c2+1;
 i:=i-1;
END;
i:=0;
FOR j:=c1 TO n-c2 DO
BEGIN
 IF (v[j]<>0)AND(v[j-1]=0) THEN
  i:=i+1;
  IF v[j]<>0 THEN
   BEGIN
    l[i]:=l[i]+1;
    IF v[i]<hmax[i] THEN
     hmax[i]:=v[i];
    END;
END;
WRITE('Numarul de insule: ',i);
h:=MAXINT;
imax:=-MAXINT;
FOR j:=1 TO i DO
 IF hmax[j]<h THEN
 h:=hmax[j] ELSE
 IF hmax[j]>imax THEN
 imax:=hmax[j];
WRITE('Inaltimea celei mai place insule: ',h,' m');
WRITELN('Insulele cele mai plate: ');
FOR j:=1 TO i DO
 IF hmax[j]=h THEN
  WRITE(j,' ');
lun:=0;
FOR j:=1 TO i DO
 IF l[j]>lun THEN
  lun:=l[j];
WRITE('Lungimea maxima : ',lun*k,' km');
WRITELN('Insulele cele mai lungi: ');
FOR j:=1 TO i DO
 IF lun=l[j] THEN
  WRITE(j,' ');
IF cmax>imax THEN
 WRITE('Inaltimea maxima este de ',cmax,' m si se afla pe continent') ELSE
 IF cmax=imax THEN
  WRITE('Inaltimea maxima este de ',cmax,' m si se afla atat pe continent cat si pe o insula') ELSE
 IF cmax<imax THEN
  WRITE('Inaltimea maxima este de ',imax,' m si se afla pe o insula');
END.












