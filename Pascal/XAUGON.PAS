var fi,fo:text;
    s:string;
procedure rutgon;
var i,j,k:longint;
    ans:string;
    a:array['a'..'z'] of longint;
begin
//writeln(s);
//k:=1;
for i:=1 to length(s) do begin
//  if i=k then begin
   for j:=i to length(s) do begin
    //write(s[i],' ',s[j],' - ');
    if (s[i]<>s[j]) and (s[i]<>s[i-1]) and (s[i]<>s[i+1]) then begin
     ans:=ans+s[i];
     break;
    end
     else if (s[i]=s[j]) and (s[j]<>s[j+1]) and (s[i-1]<>s[j]) then begin
      ans:=ans+s[i];
      k:=j+1;
      break;
    end;
   end;
 // end;
end;
 write(fo,ans);
end;
begin
assign(fi,'XAUGON.INP'); reset(fi);
assign(fo,'XAUGON.OUT'); rewrite(fo);
read(fi,s);
rutgon;
close(fi); close(fo);
end.
