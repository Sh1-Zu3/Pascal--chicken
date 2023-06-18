var n,i,maxa:int64;
    c,a,b:array[0..1000000] of int64;
begin
readln(n);
for i:=1 to n do read(a[i]); for i:=1 to n do read(b[i]);
for i:=1 to n do begin
 if a[i]>maxa then maxa:=a[i];
 if maxa*b[i]>c[i-1] then c[i]:=maxa*b[i] else c[i]:=c[i-1];
end;
for i:=1 to n do writeln(c[i]);
end.
