Program scadere_unghiuri;
VAR g,m,s,g1,g2,m1,m2,s1,s2,t:INTEGER;
BEGIN
READ(g1,m1,s1);
READ(g2,m2,s2);
IF (g2>g1) then BEGIN
t:=g1;
g1:=g2;
g2:=t;
end;
IF (m2>m1) then BEGIN
t:=m1;
m1:=m2;
m2:=t;
end;
IF (s2>s1) then BEGIN
t:=s1;
s1:=s2;
s2:=t;
end;
g:=g1-g2;
m:=m1-m2;
s:=s1-s2;
WRITE(g,' grade,',m,' minute si ',s,' secunde.');
end.
