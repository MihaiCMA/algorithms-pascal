Program patrat_n_minus_unu;
VAR n,k,i:INTEGER;
BEGIN
READ(n);
FOR k:=1 TO n DO BEGIN
 FOR i:=n DOWNTO 1 DO
 WRITE(i,' ');
 WRITELN;
 END;
 END.