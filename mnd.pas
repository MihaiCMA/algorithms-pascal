PROGRAM mnd;
VAR n,m,k:INTEGER;
BEGIN
READ(n,m);
k:=n;
REPEAT
k:=k+1;
UNTIL k MOD 2 = 1;
IF n-m<=m THEN
REPEAT
REPEAT
n:=n+1;
UNTIL n MOD 2 = 1;
WRITE(n,' ');
UNTIL n-k>m-2;
END.
