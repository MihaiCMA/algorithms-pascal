program HelloWorld;

var n,i,k:integer;
    v,a:array[1..100] of integer;

procedure replace(k:integer);
var i:integer;
begin
for i:=k-1 to n-1 do
    begin
   v[i]:=v[i+1];a[i]:=a[i+1];end;
n:=n-1;
v[k-1]:=2017;
     
end;

begin
  read(n);
  for i:=1 to n do
   read(v[i]);
  k:=0;
  for i:=1 to n do
   if v[i] mod 2 = 0 then
   begin
     k:=k+1;a[i]:=k;
    end else
    k:=0;
 for i:=1 to n do
  write(v[i],' ');
  writeln;
 for i:=1 to n do
  write(a[i],' ');
 
 i:=1;
 while i<=n do
  begin
  if ((a[i]=2)and(i=n))or((a[i]=2)and(a[i+1]=0)) then
  replace(i);
  i:=i+1;
  end;
 
 writeln;
  
 for i:=1 to n do
  write(v[i],' ');
  writeln;
 for i:=1 to n do
  write(a[i],' ');
  
  
end.
