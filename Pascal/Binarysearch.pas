uses crt;
var fi,fo:text;
    n,k,i:longint;
    arr:array[1..100000] of longint;
function bs(a:array of longint;d,c:longint):longint;
var g:longint;
begin
 while d<=c do begin
  g:=(d+c)div 2;
  if a[g]=k then exit(g+1);
  if a[g]>k then c:=g-1 else d:=g+1;
 end;
 exit(-1);
end;
begin
 assign(fi,'BinarySearch.INP'); reset(fi);
 assign(fo,'BinarySearch.OUT'); rewrite(fo);
  readln(fi,n,k);
  for i:=1 to n do read(fi,arr[i]);
 writeln(fo,bs(arr,1,n));
 //writeln(k);
// for i:=1 to n do write(arr[i],' ');
 close(fi); close(fo);
end.
