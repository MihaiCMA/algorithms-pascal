program matrice;
var f:text;
    a:array[0..100,1..100] of integer;
    n,k,i,j:integer;
begin
n:=0;
k:=1;
for i:= 1 to 5 do begin
  n:=n+1;
  if n=5 then n:=0;
  k:=n;
 for j:= 1 to 5 do begin
  k:=k+1;
  if k=5 then k:=0;
  a[i,j]:=k
 end;end;
for i:=1 to 5 do begin
 for j:=1 to 5 do
  write(a[i,j],' ');
  writeln;
  end;
end.