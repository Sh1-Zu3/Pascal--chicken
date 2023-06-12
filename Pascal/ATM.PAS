var fi,fo:text;
    check:boolean;
    s,sum,i,n:longint;
    x,a:array[1..100] of longint;
    //free:array[1..100] of boolean;
procedure print;
var j:longint;
begin
 for j:=1 to i do begin
  if x[j]=1 then write(fo,a[j],' ');
 end;
 check:=true;
// writeln;
end;
function try(i:longint):longint;
var j:longint;
begin
if check=false then begin
 for j:= 1 downto 0 do begin
   x[i]:=j;
   sum:=sum+(x[i]*a[i]);
   if sum=s then print
   else if (sum<s) and (i<n) then try(i+1);
   sum:=sum-(x[i]*a[i]);
  end;
end;
end;
begin
assign(fi,'ATM.INP'); reset(fi);
readln(fi,n,s);
for i:=1 to n do read(fi,a[i]);
//fillchar(free,sizeof(free),true);
//write(a[n]);
try(1);
assign(fo,'ATM.OUT'); rewrite(fo);
close(fi); close(fo);
end.