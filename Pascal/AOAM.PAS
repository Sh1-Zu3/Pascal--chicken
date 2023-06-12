var i,n,sum:longint;
    a:array[1..100] of longint;
    fi,fo:text;
    check:boolean;
procedure xuli;
begin
 for i:=2 to sum div 2 do
  if sum mod i=0 then begin
   write(fo,i);
   exit;
  end;
 write(fo,1);
end;
begin
assign(fi,'AOAM.INP'); reset(fi);
assign(fo,'AOAM.OUT'); rewrite(fo);
readln(fi,n);
if (N>=1) and (n<=1000) then begin
 for i:=1 to n do begin
  read(fi,a[i]);
  sum:=sum+a[i];
  if (a[i]<0) or (a[i]>100) then check:=true;
 end;
 if check=false then begin
  xuli;
 end;
end;
close(fi); close(fo);
end.
