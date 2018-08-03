Program punce_colineare;
Var x1,x2,x3,y1,y2,y3:INTEGER;
    ab,ac,bc:REAL;
Begin
WRITE('Introduceti coordonatele fiecarui punct.');
READ(x1,x2,x3,y1,y2,y3);
ab:=SQRT(SQR(x1-x2)+SQR(y1-y2));
ac:=SQRT(SQR(x1-x3)+SQR(y1-y3));
bc:=SQRT(SQR(x2-x3)+SQR(y2-y3));
if (ab+ac=bc)or(ab+bc=ac)or(ac+bc=ab) then
Write('Cele 3 puncte sunt colineare.') else
Write('Cele 3 puncte nu sunt colineare.');
end.

