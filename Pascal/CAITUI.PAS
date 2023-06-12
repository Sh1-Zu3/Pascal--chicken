uses crt;
var n,s,i,j:longint;
    v,w:array[0..1000] of longint;
    f:array[0..1000,0..1000] of longint;
function max(a,b:longint):longint;
begin
 if a>=b then exit(a) else exit(b);
end;
begin
clrscr;
 read(n,s);
 for i:=1 to n do begin
  read(v[i]);
  readln(w[i]);
 end;
for i:=1 to n do begin
 for j:=1 to s do begin
   f[i][j]:=f[i-1][j];
   if j>=w[i] then f[i][j]:=max(f[i][j],f[i-1][j-w[i]]+v[i]);
 end;
end;
{writeln(n,' ',s);
for i:=1 to n do begin
 for j:=1 to s do write(f[i][j],' ');
 writeln;
end;}
write(f[n][s]);
end.