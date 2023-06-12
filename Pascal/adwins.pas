uses crt;
var cnt,z,t,n,i,j:longint;
    fi,fo:text;
    ans,x1,x2,y1,y2:array[1..100000000] of longint;
begin
clrscr;
 assign(fi,'adwins.INP'); reset(fi);
 assign(fo,'adwins.OUT'); rewrite(fo);
  readln(fi,t);
  for z:= 1 to t do begin
    readln(fi,n);
    for i:= 1 to n do begin
      read(fi,y1[i]); read(fi,x1[i]);
      read(fi,y2[i]); readln(fi,x2[i]);
     // writeln(x1[i],' ',y1[i],' ',x2[i],' ',y2[i]);
    end;
    for i:= 1 to n-1 do begin
      for j:= i+1 to n do begin
       if (x1[i]+(x2[i]-x1[i])>=x1[j]) and (x1[j]+(x2[i]-x1[i])>=x1[i]) and (y1[i]+(y2[i]-y1[i])>=y1[j]) and (y1[j]+(y2[j]-y1[j])>=y1[i]) then cnt:=cnt+1;
      end;
    end;
  writeln(fo,cnt);
  cnt:=0;
   // writeln(i);
  end;
  //for i:=1 to 7 do writeln(x1[i],' ',y1[i],' ',x2[i],' ',y2[i]);
// for i:= 1 to t do writeln(ans[i]);
 close(fi); close(fo);
end.
