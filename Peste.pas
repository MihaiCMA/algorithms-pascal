Program pteri;
VAR n,k:LONGINT;
    peste:BOOLEAN;
BEGIN
READ(n);
k:=1;
peste:=FALSE;
REPEAT
IF k<30000 THEN
WRITE(k,' ' );
IF k>=30000 THEN
peste:=TRUE;
k:=k*n;
UNTIL peste;
END.
