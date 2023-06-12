var fi,fo:text;
    s,x:ansistring;
    i,j:longint;
    f:array[0..100,0..100] of longint;
function max(a,b:longint):longint;
begin
 if a>=b then exit(a) else exit(b);
end;
begin
 assign(fi,'LCS.INP'); reset(fi);
 assign(fo,'LCS.OUT'); rewrite(fo);
 readln(fi,s);
 readln(fi,x);
 writeln(s);
 writeln(x);
 fillchar(f,sizeof(f),0);
 for i:=2 to length(x) do begin
  for j:=2 to length(s) do begin
    if x[i-1]=s[j-1] then f[i][j]:=f[i-1][j-1]+1
    else f[i][j]:=max(f[i-1][j],f[i][j-1]);
  end;
 end;
write(f[length(x)][length(s)]);
 close(fi); close(fo);
end.
