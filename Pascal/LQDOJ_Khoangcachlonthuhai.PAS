//uses crt;
var ma,mia,mib,mb,maxa,maxb,mina,minb,n:int64;
    i:longint;
    x,y:array[1..1000000] of int64;
function max(a,b:longint):longint; begin if a>b then exit(a) else exit(b); end;
begin
 readln(n);
 maxa:=-10000000000;
 maxb:=maxa;
 mina:=10000000000;
 minb:=mina;
 for i:=1 to n do begin
  readln(x[i],y[i]);
  if x[i]>maxa then maxa:=x[i];
  if x[i]<mina then mina:=x[i];
  if y[i]>maxb then maxb:=y[i];
  if y[i]<minb then minb:=y[i];
 end;
// writeln(maxa,' ',mina,' ',maxb,' ',minb);
 ma:=-10000000000;mb:=ma;
 mia:=10000000000;mib:=mia;
 for i:=1 to n do begin
  if (x[i]<maxa) and (x[i]>mina) and (x[i]>ma) then ma:=x[i];
  if (x[i]>mina) and (x[i]<maxa) and (x[i]<mia) then mia:=x[i];
  if (y[i]<maxb) and (y[i]>minb) and (y[i]>mb) then mb:=y[i];
  if (y[i]>minb) and (y[i]<maxb) and (y[i]<mib) then mib:=y[i];
 end;
// writeln(ma,' ',mia,' ',mb,' ',mib);
 if ma=-10000000000 then ma:=0;
 if mb=-10000000000 then mb:=0;
 if mia=10000000000 then mia:=0;
 if mib=10000000000 then mib:=0;
 writeln(max(max(abs(maxa-mia),abs(ma-mina)),max( abs(maxb-mib), abs(mb-minb))));
end.