uses crt;
var fi,fo:text;
    x,y,i,j,n,m,sum,max:longint;
    a:array[1..100,1..100] of longint;
begin
clrscr;
assign(fi,'MANG2C.INP'); reset(fi);
assign(fo,'MANG2C.OUT'); rewrite(fo);
readln(fi,n,m);
max:=-100000000;
for i:=1 to m do
 for j:=1 to n do begin
  read(fi,a[i][j]);
  sum:=sum+a[i][j];
  if a[i][j]>max then max:=a[i][j];
 end;
writeln(fo,sum);
writeln(fo,max);
{for i:= 1 to m do begin
 for j:=1 to n do write(a[i][j],' ');
 writeln;
end;}
for i:=1 to m do begin
 max:=-1000000;
 y:=0; x:=0;
 for j:=1 to n do
  if a[i][j]>max then begin
   max:=a[i][j];
   x:=i; y:=j;
  end;
 writeln(fo,max,' ',y,' ',x,' ');
end;
close(fi); close(fo);
end.
