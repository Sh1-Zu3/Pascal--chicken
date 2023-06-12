var fi,fo:text;
    sum,i,j,n,cmin,min:longint;
    c:array[1..100,1..100] of longint;
    free:array[1..100] of boolean;
    x:array[1..100] of longint;
function try(i:longint):longint;
var j:longint;
begin
 if sum+(cmin*(n-i+1))>min then exit
 else begin
  for j:= 1 to n do begin
   if free[j] then begin
    x[i]:=j;
    free[j]:=false;
    sum:=sum+c[x[i-1]][j];
    if i=n then begin
     if sum+c[x[n]][1]<min then min:=sum+c[x[n]][1];
    end
    else try(i+1);
    sum:=sum-c[x[i-1]][j];
    free[j]:=true;
   end;
  end;
 end;
end;
begin
assign(fi,'TSP.INP'); reset(fi);
assign(fo,'TSP.OUT'); rewrite(fo);
readln(fi,n);
cmin:=maxlongint;
min:=maxlongint;
for i:=1 to n do
 for j:=1 to n do begin
  read(fi,c[i][j]);
  if (c[i][j]<>0) and (c[i][j]<cmin) then cmin:=c[i][j];
 end;
fillchar(free,sizeof(free),true);
x[1]:=1;
free[1]:=false;
try(2);
writeln(cmin);
for i:=1 to n do begin
 for j:=1 to n do write(c[i][j],' ');
 writeln;
end;
write(min);
close(fi); close(fo);
end.