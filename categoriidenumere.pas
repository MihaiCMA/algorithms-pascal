Program categorii_de_numere;
VAR x,c1,c2,c3:INTEGER;
BEGIN
READ(x);
c1:=x DIV 100;
c2:=x DIV 10 MOD 10;
c3:=x MOD 10;
IF (c1<c2)and(c2<c3) then
WRITE('Numarul este bine ordonat crescator.') else
IF (c1>c2)and(c2>c3) then
WRITE('Numarul este bine ordonat descrescator.') else
IF (c1>c2)and(c2<c1) then
WRITE('Numarul are aspect de vale.') else
IF (c1<c2)and(c2>c3) then
WRITE('Numarul are aspect de munte.');
end.
