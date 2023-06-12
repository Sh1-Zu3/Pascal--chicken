uses crt;
var n,i,j:longint;
    f,a:array[1..1000] of longint;
function max(a,b:longint):longint;
begin
 if a>=b then exit(a) else exit(b);
end;
begin
clrscr;
 readln(n);
 for i:=1 to n do f[i]:=1;
 for i:=1 to n do read(a[i]);
 for i:=1 to n do
  for j:=1 to i do begin
   if a[i]>a[j] then f[i]:=max(f[i],f[j]+1);
  end;
 for i:=1 to n do write(f[i],' ');
end.