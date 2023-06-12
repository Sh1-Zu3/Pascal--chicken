var j,i,n:longint;
    a:array[1..100000] of boolean;
begin
read(n);
fillchar(a,sizeof(a),true);
a[1]:=false;
for i:=2 to n do begin
 if a[i] then begin
  j:=i+i;
  while j<=n do begin
   a[j]:=false;
   j:=j+i;
  end;
 end;
end;
for i:=1 to n do if a[i] then write(i,' ');
end.