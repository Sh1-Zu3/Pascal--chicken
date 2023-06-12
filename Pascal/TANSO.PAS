var fi,fo:text;
    i:longint;
    s:string;
    a:array['0'..'z'] of longint;
    max:longint;
begin
max:=0;
assign(fi,'TANSO.INP'); reset(fi);
assign(fo,'TANSO.OUT'); rewrite(fo);
read(fi,s);
s:=lowercase(s);
for i:=1 to length(s) do begin
 a[s[i]]:=a[s[i]]+1;
 if (s[i]>='a') and (s[i]<='z') and (a[s[i]]>max) then max:=a[s[i]];
end;
//writeln(s);
write(fo,max);
close(fi); close(fo);
end.