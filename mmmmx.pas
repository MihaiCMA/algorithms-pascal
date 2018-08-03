PROGRAM mmmmx;
VAR n,j,x,i:INTEGER;
    iprim:BOOLEAN;
BEGIN
READ(x);
n:=x;
iprim:=FALSE;
REPEAT
n:=n-1;
FOR i:=2 TO TRUNC(SQRT(n)) DO
IF n MOD i = 0 THEN
iprim:=TRUE
UNTIL iprim;
WRITE(n,' ');
iprim:=FALSE;
REPEAT
x:=x+1;
FOR j:=2 TO TRUNC(SQRT(n)) DO
IF x MOD j = 0 THEN
iprim:=TRUE
UNTIL iprim;
WRITE(x);
END.
