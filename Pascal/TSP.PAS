//uses crt;
var fi,fo:text;
    n,i,j,cmin,min,sum:longint;
    c:array[1..100,1..100] of longint;
    free:array[1..100] of boolean;
    truoc,x:array[1..100] of longint;
function find(a,b:longint):longint;
begin
 if a<=b then exit(a)
  else exit(b);
end;
function try(i:longint):longint;
var v,j:longint;
begin
 if sum+cmin*(n-i+1)>min then exit
 else begin
  for j:=1 to n do begin
   if free[j] then begin
    x[i]:=j;
    free[j]:=false;
    sum:=sum+c[x[i-1]][j];
    if i=n then
     if sum+c[x[n]][x[1]]<min then begin
      min:=sum+c[x[n]][x[1]];
      //truy vet
      for v:=1 to n do truoc[v]:=x[v];
     end
     else
    else try(i+1);
    sum:=sum-c[x[i-1]][j];
    free[j]:=true;
   end;
  end;
 end;
end;
begin
//clrscr;
cmin:=maxlongint;
min:=maxlongint;
assign(fi,'TSP.INP'); reset(fi);
assign(fo,'TSP.OUT'); rewrite(fo);
readln(fi,n);
for i:=1 to n do
 for j:=1 to n do begin
  read(fi,c[i][j]);
  if c[i][j]<>0 then cmin:=find(cmin,c[i][j]);
 end;
fillchar(free,sizeof(free),true);
x[1]:=1;
free[1]:=false;
//writeln(cmin);
try(2);
writeln(fo,min);
truoc[n+1]:=1;
for i:=1 to n+1 do begin
 write(fo,truoc[i]);
 if i<>n+1 then write(fo,'-->');
end;
{writeln;
for i:=1 to n do begin
 for j:=1 to n do write(c[i][j],' ');
 writeln;
end;}
close(fi); close(fo);
end.
