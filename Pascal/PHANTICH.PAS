//uses crt;
var n:longint;
procedure phantich(m:longint);
var i,t:longint;
    x,s:ansistring;
begin
 if (m=1) or (m=0) then write(10) else begin

  i:=9;
  t:=1;
   while i>1 do begin
    while m mod i = 0 do begin
      m:=m div i;
      t:=t*i;
      str(i,s);
      x:=s+x;
      i:=10;
    end;
   i:=i-1;
  end;
 if t=n then write(x) else write(-1);
 end;
end;
begin
//clrscr;
 read(n);
 phantich(n);
end.
