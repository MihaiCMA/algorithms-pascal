PROGRAM unul_in_altul;
VAR x,y,v:ARRAY[1..100] OF INTEGER;
    n,m,i,k,j:INTEGER;
BEGIN
READ(k);
READ(n);
FOR i :=1 TO n DO
 READ(x[i]);
READ(m);
FOR i :=1 TO m DO
 READ(y[i]);
j:=1;
FOR i:=k TO n DO BEGIN
 v[j]:=x[i];
 j:=j+1;
 END;
 j:=k;
FOR i:=1 TO m DO BEGIN
 x[j]:=y[i];
 j:=j+1;
 END;
j:=1;
FOR i:=k+m TO n+m DO BEGIN
 x[i]:=v[j];
 j:=j+1;
 END;
FOR i:=1 TO n+m DO
 WRITE(x[i],' ');
 END.
