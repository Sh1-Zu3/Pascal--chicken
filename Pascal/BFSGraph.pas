//uses crt;
var m:longint;
    fi,fo:text;
    arr:array[1..1000,1..1000] of longint;
    push:array[1..1000] of longint;
    visited:array[1..1000] of boolean;
function check(a:array of longint):boolean;
var i:longint;
begin
 for i:=1 to 1000 do if push[i]<>0 then exit(false);exit(true);
end;
function Bfs(u:longint):longint;
var v,d,c,i:longint;
begin
 fillchar(visited,sizeof(visited),false);
 visited[u]:=true;
 push[1]:=u;
 d:=u;c:=d+1;
 //writeln(check(push));
 while check(push)=false do begin
 // writeln(check(push));
  writeln(fo,push[d]);
  v:=push[d];
  push[d]:=0;
  d:=d+1;
  for i:=1 to m do begin
   if (arr[v][i]<>0) and (visited[i]=false) then begin
//    writeln(arr[v][i]);
    visited[i]:=true;
//    writeln(i);
    push[c]:=i;c:=c+1;
   end;
  end;
 end;
end;
function main():longint;
var i,j:longint;
begin
 assign(fi,'BFSGraph.INP'); reset(fi);
 assign(fo,'BFSGraph.OUT'); rewrite(fo);
  read(fi,m);
  for i:=1 to m do for j:=1 to m do read(fi,arr[i][j]);
  Bfs(1);
//  for i:=1 to m do begin for j:=1 to m do write(arr[i][j],' '); writeln; end;
 close(fi); close(fo);
end;
begin
 main();
end.
