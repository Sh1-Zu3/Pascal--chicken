Var fi,fo:text;
    n:longint;
    check:array[1..100] of boolean;
    a:array[1..100] of longint;
procedure print;
var i:longint;
begin
 for i:=1 to n do write(a[i],' ');
 writeln;
end;
function try(i:longint):longint;
var j:longint;
begin
 for j:=1 to n do begin
  if check[j]=false then begin
   check[j]:=true;
   a[i]:=j;
   if i=n then print
   else try(i+1);
   check[j]:=false;
  end;
 end;
end;
{procedure print;
var i:longint;
begin
 for i:=1 to n do write(a[i],' ');
 writeln;
end;
function try(i:longint):longint;
var j:longint;
begin
 for j:=1 to n do begin
  if (check[j]=false) then begin
   check[j]:=true;
   a[i]:=j;
   if i=n then print
    else try(i+1);
   check[j]:=false;
  end;
 end;
end;}
begin
assign(fi,'HOANVI.INP'); reset(fi);
assign(fo,'HOANVI.OUT'); rewrite(fo);
read(fi,n);
try(1);
close(fi); close(fo);
end.