//uses crt;
var fi,fo:text;
    n,m,i,j:longint;
    res,arr:array[1..1000,1..1000] of longint;
function min(a,b:longint):longint;
begin
 if a<b then exit(a) else exit(b);
end;
Function dp(i,j:longint):longint;
begin
  if (i=n) and (j=m) and (arr[i][j]=0) then exit(1);
  if (i>n) or (j>m) or (arr[i][j]=1) then exit(0);
  if res[i][j]=0 then res[i][j]:=dp(i+1,j)+dp(i,j+1);
  exit(res[i][j]);
end;
begin
//clrscr;
 assign(fi,'Demcachrobotdichuyen.INP'); reset(fi);
 assign(fo,'Demcachrobotdichuyen.OUT'); rewrite(fo);
 readln(fi,m,n);
// fillchar(res,sizeof(res),999999);
 for i:=1 to m do for j:=1 to n do read(fi,arr[i][j]);
 dp(1,1);
 writeln(fo,res[1][1]);
// for i:=1 to m do begin for j:=1 to n do write(arr[i][j],' '); writeln; end;
 close(fi); close(fo);
end.
