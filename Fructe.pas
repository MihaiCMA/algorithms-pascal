PROGRAM Fructe;
VAR a,b:integer;
BEGIN
WRITE('Introduceti numarul bananelor:');
WRITELN;
READ(a);
WRITE('Introduceti numarul portocalelor:');
WRITELN;
READ(b);
IF a>b THEN
WRITE ('Sunt cu ',a-b,'  mai multe banane decat portocale.');
IF a<b THEN
WRITE ('Sunt cu ',b-a,' mai  multe portocale decat banane.')
else
WRITE ('Sunt la fel de multe banane cat portocale.');
READLN;
READLN;
END.


