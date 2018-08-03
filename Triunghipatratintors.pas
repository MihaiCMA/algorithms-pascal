Program triunghi_patrat_intors;
VAR n,k,i:INTEGER;
BEGIN
READ(n);
FOR k:=n DOWNTO 1 DO BEGIN
 FOR i:=1 TO k DO
 WRITE(k,' ');
 WRITELN;
 END;
 END.
