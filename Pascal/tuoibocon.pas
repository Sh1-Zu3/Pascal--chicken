var b,c,i:longint;
begin
read(b,c);
if (c>0) and (c<b) and (b-c>=20) then
 while c*2<>b do begin
  inc(c); inc(b); inc(i);
 end;
 if i=0 then write('Hien nay tuoi Bo gap doi tuoi Con')
 else write('Sau ',i,' nam nua, tuoi Bo se gap doi tuoi Con');
end.