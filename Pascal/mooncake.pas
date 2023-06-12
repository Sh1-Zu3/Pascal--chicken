//uses crt;
var n,m,i,j:longint;
    fi,fo:text;
    cnt,ans,a,x:array[1..10000000] of longint;
function round(x,y:longint):longint;
begin
 while x mod y <> 0 do x:=x+1;
 exit(x div y);
end;
begin
//clrscr;
assign(fi,'mooncake.INP'); reset(fi);
assign(fo,'mooncake.OUT'); rewrite(fo);
 readln(fi,n,m);
 for i:=1 to n do read(fi,a[i]);
 for i:=1 to m do read(fi,x[i]);
//
 for i:= 1 to m do begin
   ans[i]:=round(x[i],a[n]);
   for j:= n downto 1 do begin
     cnt[i]:=cnt[i]+ans[i];
     ans[i]:=round(ans[i],a[j]);
   end;
 end;
 for i:=1 to m do writeln(fo,cnt[i]);
close(fi); close(fo);
end.
