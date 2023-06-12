uses crt;
var i,j,maxa,maxb,mina,minb:longint;
    a:array[1..6] of longint;
    check:boolean;
procedure sort(l,r: longint);
      var
         i,j,x,y: longint;
      begin
         i:=l;
         j:=r;
         x:=a[(l+r) div 2];
         repeat
           while a[i]<x do
            inc(i);
           while x<a[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=a[i];
                a[i]:=a[j];
                a[j]:=y;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           sort(l,j);
         if i<r then
           sort(i,r);
      end;
begin
clrscr;
 for i:=1 to 6 do read(a[i]);
 sort(1,6);
// for i:=1 to 6 do write(a[i],' ');
 for i:= a[5] to a[6] do begin
  for j:= a[3] to a[4] do begin
   if ((i div j) >=a[1]) and ((i div j) <=a[2]) then begin
    check:=true;
    break;
   end;
  end;
 if check then break;
 end;
mina:=i;
minb:=j;
check:=false;
writeln(mina,' ',minb);
 for i:= a[6] downto mina do begin
  for j:= a[4] downto minb do begin
   if ((i div j) >=a[1]) and ((i div j) <=a[2]) then begin
    writeln(i,' ',j);
    check:=true;
    break;
   end;
  end;
 if check then break;
 end;
maxa:=i;
maxb:=j;
writeln(maxa,' ',maxb);
end.
