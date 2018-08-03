PROGRAM note;
VAR n,n1,n2,nc,k:INTEGER;
    me,mc,max:REAL;
BEGIN
READ(n);
nc:=0;
mc:=0;
max:=0;
FOR k:=1 TO n DO
BEGIN
READ(n1,n2);
me:=(n1+n2)/2;
IF me>max THEN
max:=me;
IF me<4.5 THEN
nc:=nc+1;
mc:=mc+me;
END;
mc:=mc/n;
WRITE('Media clasei este ',mc:3:2,'.');
IF nc=0 THEN
WRITE('Nu sunt elevi corigenti.') else
IF nc=1 THEN
WRITE('Un singur elev este corigent.') else
WRITE(nc,'elevi sunt corigenti.');
WRITE('Media maxima este ',max:3:2,'.');
END.

