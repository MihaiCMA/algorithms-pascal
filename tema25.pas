program tema25;
var f:text;
    a:array[0..99] of integer;
    n,i,x:integer;
begin
assign(f,'numere25.txt');
reset(f);
read(f,n);
for i:=1 to n do begin
read(f,x);
a[x]:=a[x]+1;end;
close(f);
for i:=0 to 99 do
if a[i]=1 then
write(i,' ');
end.