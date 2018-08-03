PROGRAM p155;
VAR k,i,n,m,s,p,primul,ultimul:INTEGER;
BEGIN
READ(n);
m:=-1;
FOR k:=1 TO n DO BEGIN
s:=0;
FOR i:=1 TO k DO BEGIN
m:=m+2;
IF i=1 THEN
primul:=m ELSE
IF i=k THEN
ultimul:=m;
IF m<10 THEN
WRITE(' ',m,' ');
IF m>=10 THEN
WRITE(m,' ');
s:=s+m;END;
WRITELN;END;
FOR p:=1 TO s DO IF p*p*p=s THEN
WRITE('Linia ',n,' incepe cu valoarea ',primul,' si se termina cu valoarea '
,ultimul,'.Suma termenilor de pe linia ',n,' este ',s,'=',p,
' la puterea a 3-a.');
END.

