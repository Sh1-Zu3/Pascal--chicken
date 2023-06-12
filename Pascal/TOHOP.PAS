var fi,fo:text;
    n,k:longint;
    x:array[0..100] of longint;
procedure print;
var j:longint;
begin
 for j:= 1 to k do write(x[j],' ');
 writeln;
end;
function try(i:longint):longint;
var j:longint;
begin
 for j:=x[i-1]+1 to n-k+i do begin
  x[i]:=j;
  if i=k then print
   else try(i+1);
 end;
end;
begin
 assign(fi,'TOHOP.INP'); reset(fi);
 assign(fo,'TOHOP.OUT'); rewrite(fo);
 read(fi,n,k);
 try(1);
 close(fi); close(fo);
end.