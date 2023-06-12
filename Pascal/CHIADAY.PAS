var fi,fo:text;
    n,i,sum,dem:longint;
    f,a:array[0..100000000] of longint;
begin
 assign(fi,'CHIADAY.INP'); reset(fi);
 assign(fo,'CHIADAY.OUT'); rewrite(fo);
 readln(fi,n);
 for i:=1 to n do begin
  read(fi,a[i]);
  f[i]:=f[i-1]+a[i];
 end;
 for i:=n downto 2 do begin
  sum:=sum+a[i];
  if sum=f[i-1] then dem:=dem+1;
 end;
 write(dem);
 close(fi); close(fo);
end.