program a3;
var n,i,k,a:integer;
v:array[1..100] of integer;
begin
read(n,k);
for i:=1 to n do
 read(v[i]);
a:=v[k];
for i:=k downto 2 do
 v[i]:=v[i-1];
v[1]:=a;
a:=v[k+1];
for i:=k+2 to n do
 v[i-1]:=v[i];
v[n]:=a;
for i:=1 to n do
 write(v[i],' ');
end.
