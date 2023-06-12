uses crt;
var n,s,i,j:longint;
    a:array[0..1000] of longint;
    f:array[0..1000] of boolean;
begin
clrscr;
 readln(n,s);
 for i:=1 to n do read(a[i]);
 fillchar(f,sizeof(f),false);
 f[0]:=true;
 for i:= 0 to n do begin
  for j:= s downto a[i] do begin
    if f[j-a[i]] then f[j]:=true;
  end;
 end;
write(f[s]);
end.