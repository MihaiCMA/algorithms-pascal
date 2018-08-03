program tema24;
var f:text;
    a:array[0..9] of integer;
    n,i,x,max:integer;
begin
assign(f,'numere24.txt');
reset(f);
read(f,n);
for i:=1 to n do begin
read(f,x);
while x>0 do begin
a[x mod 10]:=a[x mod 10] +1;
x:=x div 10; end;end;
max:=0;
close(f);
for i:=1 to n do
 if a[i]>0 then
  max:=i;
write(max,' ',a[max]);
end.
