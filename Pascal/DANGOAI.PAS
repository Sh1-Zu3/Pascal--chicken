var m,n,ans:longint;
    fi,fo:text;
begin
 assign(fi,'DANGOAI.INP'); reset(fi);
 assign(fo,'DANGOAI.OUT'); rewrite(fo);
 readln(fi,n);
 read(fi,m);
 if (n+m) mod 50 = 0 then write(fo,(n+m) div 50) else write(fo,((n+m) div 50) +1);
 close(fi); close(fo);
end.