var fi,fo:text;
    n:longint;
    x:array[1..100] of longint;
procedure print;
var j:longint;
begin
 for j:=1 to n do write(fo,x[j],' ');
 writeln(fo);
end;
function try(i:longint):longint;
var j:longint;
begin
 for j:=0 to 1 do begin
  x[i]:=j;
  if i=n then print
   else try(i+1);
 end;
end;
begin
assign(fi,'NHIPHAN.INP'); reset(fi);
assign(fo,'NHIPHAN.OUT'); rewrite(fo);
read(fi,n);
try(1);
close(fi); close(fo);
end.