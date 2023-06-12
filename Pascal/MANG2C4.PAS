var tmp,x,n,m,i,j,sum,dem:longint;
    a:array[1..100,1..100] of longint;
    fi,fo:text;
begin
assign(fi,'MANG2C4.INP'); reset(fi);
assign(fo,'MANG2C4.OUT'); rewrite(fo);
readln(fi,n,m,x);
dem:=0;
for i:=1 to n do for j:= 1 to m do read(fi,a[i][j]);
for i:=1 to n do begin
 tmp:=a[i][1];
 for j:=1 to m do begin
  if x=a[i][j] then  inc(dem);
  if a[i][j]>tmp then tmp:=a[i][j];
 end;
 sum:=sum+tmp;
end;
for i:=2 to n do begin
 for j:=1 to n do
  a[i][j]:=a[i-1][j+1]+a[i][j];
end;
for i:=1 to n do begin
 for j:=1 to m do write(a[i][j],' ');
 writeln;
end;
writeln(fo,dem);
writeln(fo,sum);
write(fo,a[n][1]);
close(fi); close(fo);
end.