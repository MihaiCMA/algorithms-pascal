program a2;
var v,a:array[1..100] of integer;
    i,k,b,j,n,d:integer;
    prim:boolean;
begin
{citirea}
read(n);
for i:=1 to n do
 read(v[i]);
{parcurgearea vectorului}
k:=1;
while k<=n do begin
 d:=0;
 for i:=2 to v[k] div 2 do
  if v[k] mod i = 0 then begin
   d:=d+1;
   a[d]:=i;
   end;
if d=0 then
 k:=k+1 else begin
n:=n+d;
b:=0;
for i:=n downto k+d do begin
 v[i]:=v[i-k];
 b:=b+1;
 v[i-k]:=a[b];
end;
k:=k+d+1;
end;
end;
{afisarea}
for i:=1 to n do
 write(v[i],' ');
end.
