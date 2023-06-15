//uses crt;
var fi,fo:text;
    i,j,n:longint;
    arr:array[1..1000,1..1000] of longint;
    visited:array[1..1000] of boolean;
function DFS(u:longint):longint;
begin
 writeln(fo,u);visited[u]:=true;
 for i:=1 to n do if(arr[u][i]<>0) and (visited[i]=false) then DFS(i);
end;
function main():longint;
begin
 assign(fi,'DFSGraph.INP'); reset(fi);
 assign(fo,'DFSGraph.OUT'); rewrite(fo);
 readln(fi,n);
 for i:=1 to n do for j:=1 to n do read(fi,arr[i][j]);
 fillchar(visited,sizeof(visited),false);
 DFS(1);
 for i:=1 to n do begin for j:=1 to n do write(arr[i][j], ' '); writeln; end;
 close(fi); close(fo);
end;
begin
//clrscr;
main()
end.