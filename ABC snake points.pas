program dot_game;   {1-up 2-down 3-left 4-right}
uses crt;
var a:array[0..100,0..100] of char;
    dx,dy:array[1..3] of integer;
    tintax,tintay,i,j,n,k,x,y,p:integer;
    m:real;
    gresit,prima:boolean;
begin
clrscr;
write('Trebuie sa ajungi la 2 puncte pentru a castiga.Succes!');
readkey;
clrscr;
prima:=true;
n:=7;
p:=0;
for i:=1 to n do
 for j:=1 to n do
  a[i,j]:='*';

 dx[1]:=n div 2;
 dy[1]:=n div 2 +1;
 a[dx[1],dy[1]]:='A';

 dx[2]:=n div 2 +1;
 dy[2]:=n div 2 +1;
 a[dx[2],dy[2]]:='B';

 dx[3]:=n div 2 +2;
 dy[3]:=n div 2 +1;
 a[dx[3],dy[3]]:='C';

 {x:=n div 2 +1;
 y:=n div 2 +1;}

tintax:=1;
tintay:=1;
a[tintax,tintay]:='@';

while (((k>0)and(k<5)and(dx[1]>0)and(dx[1]<n+1)and(dy[1]>0)and(dy[1]<n+1))or(prima))and(p<>2) do begin
prima:=false;
gresit:=false;

if k=1 then
if dx[1]-1=dx[2] then
gresit:=true;

if k=2 then
if dx[1]+1=dx[2] then
gresit:=true;

if k=3 then
if dy[1]-1=dy[2] then
gresit:=true;

if k=4 then
if dy[1]+1=dy[2] then
gresit:=true;



if (k>0)and(k<5)and(not(gresit)) then begin
a[dx[3],dy[3]]:='*';
dx[3]:=dx[2];
dx[2]:=dx[1];
dy[3]:=dy[2];
dy[2]:=dy[1];
a[dx[3],dy[3]]:='C';
a[dx[2],dy[2]]:='B';
end;


if (k=1)and(not(gresit)) then {up}
begin
dx[1]:=dx[1]-1;
a[dx[1],dy[1]]:='A';end;

if (k=2)and(not(gresit)) then {down}
begin
dx[1]:=dx[1]+1;
a[dx[1],dy[1]]:='A';end;

if (k=3)and(not(gresit)) then {left}
begin
dy[1]:=dy[1]-1;
a[dx[1],dy[1]]:='A';end;

if (k=4)and(not(gresit)) then {right}
begin
dy[1]:=dy[1]+1;
a[dx[1],dy[1]]:='A';end;

if (dx[1]=tintax)and(dy[1]=tintay) then
 p:=p+1;
if p=1 then begin
tintax:=5;
tintay:=5;
a[tintax,tintay]:='@'; end;

if (dx[1]>0)and(dx[1]<n+1)and(dy[1]>0)and(dy[1]<n+1) then begin
 for i:=1 to n do
   begin
    for j:=1 to n do
     write(a[i,j],' ');
    writeln;
    end;
 if gresit=true then
 writeln('Miscare incorecta!');
 if not(gresit) then
 writeln;
 writeln;
 write('Ai ',p,' puncte.');
 writeln;
 if p<>2 then
 read(k);
 clrscr;
 end else begin
 write('Game Over!');
 readkey; end;{de la if}

end;{de la while}

if p=2 then begin
write('Bravo,ai castigat!');
readkey; end;

end.
