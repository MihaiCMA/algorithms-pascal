PROGRAM fisa_16_01_2015;
VAR v:ARRAY[1..30] OF INTEGER;
    n,x,y,min,i,a,nrmsp,nrm:INTEGER;
    exista:BOOLEAN;
    msp:REAL;
BEGIN
WRITE('Introduceti numarul zilelor in care s-au efectuat masuratori meteorologice.');
WRITELN;
READ(n);
WRITE('Introduceti o valoare de masuratoare pentru a vedea cate masuratori au avut valoarea mai mica decat aceasta.');
WRITELN;
READ(x);
WRITE('Introduceti o valoare pentru a vedea daca este prezenta printre valorile masuratorilor.');
WRITELN;
READ(y);
WRITE('Introduceti pe rand valorile celor ',n,' masuratori.');
WRITELN;
min:=101;
FOR i:=1 TO n DO
BEGIN
 READ(a);
 v[i]:=a;
 IF a<min THEN
 min:=a;
END;
nrm:=0;
msp:=0;
nrmsp:=0;
FOR i:=1 TO n DO
BEGIN
 IF v[i]<x THEN
 nrm:=nrm+1;
 IF v[i]>0 THEN
 BEGIN
  msp:=msp+v[i];
  nrmsp:=nrmsp+1;
 END;
END;
WRITELN;
WRITE('Sunt ',nrm,' valori mai mici decat valoarea ',x,'.');
WRITELN;
IF nrmsp>0 THEN
 BEGIN
  msp:=msp/nrmsp;
  WRITE('Media de temperatura a zilelor in care temperatora a fost pozitiva este ',msp:4:2,'.');
 END ELSE
 WRITE('Nu exista masuratori cu valori pozitive');
WRITELN;
WRITE('Cea mai mica valoare masurata este ',min,',iar aceasta a fost obtinuta in ziua/zilele:');
exista:=FALSE;
FOR i:=1 TO n DO
 BEGIN
  IF v[i]=min THEN
  WRITE(i,' ');
  IF v[i]=y THEN
  exista:=TRUE;
 END;
WRITELN;
IF exista THEN
 WRITE('Valoarea ',y,' este prezenta printre valorile masuratorilor.') ELSE
 WRITE('Valoarea ',y,' nu este prezenta printre valorile masuratorilor.');
END.








