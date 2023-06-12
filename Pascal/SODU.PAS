program GV;
var i,n,k,dem:longint;
    a:array[1..100000] of longint;
    b:array[1..100000000] of longint;
    f,g:text;
    kt:boolean;
begin
    assign(f,'SoDu.INP'); reset(f);
    assign(g,'SoDu.OUT'); rewrite(g);
    read(f,n);
    readln(f,k);
    if (n<=100000) and (k<=100000) then
       begin
           for i:=1 to n do
               begin
                   read(f,a[i]);
                   if (a[i]<1000000000000) then
                      begin
                          if b[a[i] mod k] =0 then
                             begin
                                 inc(dem);
                                 inc(b[a[i] mod k]);
                             end;
                      end
                   else kt:=true;
               end;
           if kt=false then write(g,dem);
       end;
    close(f); close(g);
end.
