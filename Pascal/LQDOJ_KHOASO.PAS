uses crt;
var ans,v,temp,t,n:int64;
    i,j:longint;
    s,x:ansistring;
 //   arr:array[1..10000] of int64;
function min(a,b:longint):longint; begin if a<b then exit(a) else exit(b); end;
begin
clrscr;
readln(t);
for i:=1 to t do begin
 readln(n);
 readln(s);
 readln(x);
 for j:=1 to n do begin
  val(s[j],v);
  val(x[j],temp);
  if v>temp then ans:=ans+min(abs(v-temp),temp+10-v) else ans:=ans+min(abs(v-temp),v+10-temp);

 end;
 writeln(ans);
 ans:=0;
end;
//for i:=1 to t do writeln(arr[i]);
end.
