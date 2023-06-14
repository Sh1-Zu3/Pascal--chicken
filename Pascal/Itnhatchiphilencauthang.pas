//uses crt;
var fi,fo:text;
    n,i:longint;
    res,arr:array[0..100000] of longint;
function min(a,b:longint):longint; begin if a<b then exit(a) else exit(b); end;
function dp(i:longint):longint;
begin
 if i<1 then exit(0);
 if (i=1) or (i=2) then exit(arr[i]);
 if res[i]=-1 then res[i]:=arr[i]+min(dp(i-1),dp(i-2));
 exit(res[i]);
end;
begin
// clrscr;
 assign(fi,'Itnhatchiphilencauthang.INP'); reset(fi);
 assign(fo,'Itnhatchiphilencauthang.OUT'); rewrite(fo);
 readln(fi,n); for i:=1 to n do read(fi,arr[i]);
 for i:=1 to n+1 do res[i]:=-1;
 dp(n+1);
 write(fo,res[n+1]);
// for i:=1 to n+1 do write(res[i],' ');
// writeln;
// for i:=1 to n do write(arr[i],' ');
 close(fi); close(fo);
end.