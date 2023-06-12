uses crt;
var fi,fo:text;
    s,x:ansistring;
    a:array['a'..'z'] of longint;
procedure nen;
var k,j:longint;
    i:char;
    ans,c:ansistring;
begin
 for j:= 1 to length(s) do a[s[j]]:=a[s[j]]+1;
 for i:= 'a' to 'z' do begin
  c:='';
  if a[i]<>0 then begin
   if a[i]<>1 then str(a[i],c);
   ans:=ans+c+i;
  end;
 end;
 writeln(fo,ans);
end;
procedure giainen;
var f,ans:ansistring;
    i,j,k,a:longint;
begin
x:=' '+x;
writeln(x);
 for i:=1 to length(x) do begin
  if (x[i]>='A') and (x[i]<='z') then begin
   j:=1;
   f:='';
   while (x[i-j]>='0') and (x[i-j]<='9') do begin
    f:=x[i-j]+f;
    inc(j);
   end;
   val(f,a);
   for k:=1 to a do ans:=ans+x[i];
  end;
 end;
 write(fo,ans);
end;
begin
clrscr;
assign(fi,'string.INP'); reset(fi);
assign(fo,'string.OUT'); rewrite(fo);
readln(fi,s);
readln(fi,x);
nen;
giainen;
close(fi); close(fo);
end.
