PROGRAM TextTest;
VAR f:TEXT;
    n,k:INTEGER;
BEGIN
ASSIGN(f, 'D;\Pascal\TextFiles\BlackHat.txt');
REWRITE(f);
READ(n);
FOR k:=1 To n DO
WRITE(f,'BlackHat is Back Part ',k,'! ');
CLOSE(f);
END.
