uses crt;
var s:ansistring;
    f:array[1..100,1..100] of boolean;
    len,i,j,n,ans:longint;
function max(a,b:Longint):longint;
begin
 if a>=b then exit(a) else exit(b);
end;
begin
clrscr;
readln(s);
n:=length(s);
fillchar(f,sizeof(f),false);
for i:=1 to n do f[i][i]:=true;
ans:=1;
 for len:=2 to n do begin
  for i:=1 to n-i+1 do begin
    j:=i+len-1;
    if (len=2) and (s[i]=s[j]) then f[i][j]:=true
    else f[i][j]:= (f[i+1][j-1]) and (s[i]=s[j]);
    if f[i][j] then ans:=max(ans,len);
  end;
 end;
 for i:=1 to n do for j:=1 to n do write(f[i][j],' ');
 writeln;
 write(ans);
end.