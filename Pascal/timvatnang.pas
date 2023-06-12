uses crt;
var s,tong,n,i:longint;
    x,a:array[0..1000000] of longint;
    check:boolean;
procedure print;
var i:longint;
begin
 if check=false then
 begin
 for i:= 1 to n do
  if x[i]=1 then write(a[i],' ');
  //writeln;
  check:=true;
 end;
end;
procedure try(i:longint);
var j:longint;
begin
if check=false then begin
// writeln(tong,' ',i,'dau');
 for j:= 1 downto 0 do
 begin
  x[i]:=j;
  tong:=tong+x[i]*a[i];
  if (tong=s) then begin
   print;
  end
   else if (tong<s) and (i<n) then try(i+1);
  tong:=tong-x[i]*a[i];
//  writeln(tong,' ',i,'cuoi');
 end;
end;
end;
begin
clrscr;
//readln(s,n);
s:=509499;
n:=9999;
//for i:=1 to 100000 do a[i]:=i;
//for i:=1 to 100 do write(a[i],' ');
if (s>0) and (s<100000000) and (n>0) and (n<100000) then begin
 for i:=1 to n do begin
  //read(a[i]);
  if (a[i]<=0) or (a[i]>=100000) then check:=true;
 end;
 if check=false then begin
  try(1);
 if check=false then write('KHONG TIM THAY');
 end;
end;
end.
