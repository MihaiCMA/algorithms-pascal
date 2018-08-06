program dot_game;   {1-up 2-down 3-left 4-right}
uses crt;
var a:array[0..100,0..100] of char;
    dx,dy:array[1..3] of integer;
    i,j,n,k,x,y:integer;
    m:real;
begin
clrscr;
n:=7;
for i:=1 to n do
 for j:=1 to n do
  a[i,j]:='*';

 {dx[1]:=n div 2;
 dy[1]:=n div 2 +1;
 a[dx[1],dy[1]]:='A';

 dx[2]:=n div 2 +1;
 dy[2]:=n div 2 +1;
 a[dx[2],dy[2]]:='B';

 dx[3]:=n div 2 +2;
 dy[3]:=n div 2 +1;
 a[dx[3],dy[3]]:='C';}

 x:=n div 2 +1;
 y:=n div 2 +1;


k:=5;
while (k>0)and(k<6)and(x>0)and(x<n+1)and(y>0)and(y<n+1) do begin

if k=1 then {up}
begin
a[x,y]:='*';
x:=x-1;
a[x,y]:='A';end;

if k=2 then {down}
begin
a[x,y]:='*';
x:=x+1;
a[x,y]:='A';end;

if k=3 then {left}
begin
a[x,y]:='*';
y:=y-1;
a[x,y]:='A';end;

if k=4 then {right}
begin
a[x,y]:='*';
y:=y+1;
a[x,y]:='A';end;

if k=5 then {nimic}
begin
a[x,y]:='*';
y:=y+1-1;;
a[x,y]:='A';end;

if (x>0)and(x<n+1)and(y>0)and(y<n+1) then begin
 for i:=1 to n do
   begin
    for j:=1 to n do
     write(a[i,j],' ');
    writeln;
    end;
 read(k);
 clrscr;
 end;{de la if}

end;{de la while}

end.
