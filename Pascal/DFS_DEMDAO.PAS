//uses crt;
var fi,fo:text;
    cnt,n,m,i,j:longint;
    arr:array[1..1000,1..1000] of longint;
    visited:array[1..1000,1..1000] of boolean;
function DFS(i,j:longint):longint;
begin
 if (i=0) or (i=m) or (j=n) or (j=0) or (visited[i][j]) then exit();
 visited[i][j]:=true;
 DFS(i+1,j);
 DFS(i-1,j);
 DFS(i,j+1);
 DFS(i,j-1);
end;
begin
clrscr;
 assign(fi,'DFS_DEMDAO.INP'); reset(fi);
 assign(fo,'DFS_DEMDAO.OUT'); rewrite(fo);
 readln(fi,m,n);
 for i:=1 to m do for j:=1 to n do read(fi,arr[i][j]);
 fillchar(visited,sizeof(visited),false);
 for i:=1 to m do begin
  for j:=1 to n do begin
   if (arr[i][j]<>0) and (visited[i][j]=false) then begin
    cnt:=cnt+1;
    DFS(i,j);
   end;
  end;
 end;
 writeln(fo,cnt);
 //writeln(m,' ',n);
// for i:=1 to m do begin for j:=1 to n do write(arr[i][j],' '); writeln; end;
 close(fi); close(fo);
end.
