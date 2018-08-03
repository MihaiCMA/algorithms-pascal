PROGRAM patratepetext;
VAR f:TEXT;
    n,k,j:INTEGER;
BEGIN
ASSIGN(f, 'patratepetext.txt');
REWRITE(f);
READ(n);
FOR k:=1 TO n DO
BEGIN
 WRITE(f,k:2,'. ');
 FOR j:=1 To n DO
  WRITE(f,j,' ');
 WRITELN(f);
END;
CLOSE(f);
END.


