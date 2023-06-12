var fi,fo:text;
    s:ansistring;
    v,max,dem,k,i,j:longint;
begin
 assign(fi,'DAINHAT.INP'); reset(fi);
 assign(fo,'DAINHAT.OUT'); rewrite(fo);
 read(fi,s);
 k:=1;
 s:=' '+s;
 for i:= 1 to length(s) do begin
  if s[i]=' ' then begin
   dem:=i-k-1;
   k:=i;
   if dem>max then begin
      max:=dem;
      v:=i;
   end;
  end;
 end;
// write(max);
 for i:= v-max to v-1 do write(s[i]);
 close(fi); close(fo);
end.