//uses crt;
var fi,fo:text;
    m,n,i,j:longint;
    res,arr:array[1..10000,1..10000] of longint;
function min(a,b:longint):longint;
begin
 if a>b then exit(b) else exit(a);
end;
//function minpathsum(arr:array of longint):longint;
//begin
 function dp(i,j:longint):Longint;
   begin
    if (i>n) or (j>m) then exit(99999) else
     if (i=n) and (j=m) then exit(arr[i][j]) else begin
      if res[i][j]=0 then res[i][j]:= arr[i][j]+min(dp(i+1,j),dp(i,j+1));
//       writeln(arr[i][j],' ',min(dp(i+1,j),dp(i,j+1)));
//       writeln(res[i][j]);
       exit(res[i,j]);
     end;
   end;
 //exit(res[1][1]);
//end;
begin
//clrscr;
 assign(fi,'Chiphiitnhattrenxalo.inp'); reset(fi);
 assign(fo,'Chiphiitnhattrenxalo.out'); rewrite(fo);
 readln(fi,m,n);
 fillchar(res,sizeof(res),0);
 for i:=1 to m do begin for j:=1 to n do read(fi,arr[i][j]); readln(fi); end;
 dp(1,1);
 writeln(fo,res[1][1]);
// writeln(min(5,6));
// for i:=1 to m do begin for j:=1 to n do write(res[i][j]); writeln; end;
// writeln(m,' ',n);
// for i:=1 to  m do begin for j:=1 to n do write(arr[i][j],' '); writeln end;
 close(fi); close(fo);
end.