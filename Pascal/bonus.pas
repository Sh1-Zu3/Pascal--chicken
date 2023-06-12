//uses crt;
var fi,fo:text;
    finalLeft,finalRight,finalTop,finalBottom,start,finish,maxsum,sum,left,right,i,j,m,n,w,h:longint;
    temp,row,column:array[1..10000] of longint;
    arr:array[1..10000,1..10000] of longint;
function kanade(temp:array of longint;start,finish:longint;row:array of longint):longint;
var local_start,sum,maxsum,i:longint;
 begin
  sum:=0;maxsum:=-999999;finish:=-1;local_start:=1;
  for j:=1 to m do write(temp[j],' '); writeln;
//
  for i:= 1 to m do begin
   writeln('sum:=',sum,' ',temp[i]);
   sum:=sum+temp[i];
//   writeln('sum:',sum);
   if sum<0 then begin
     sum:=0;
     local_start:=i+1;
   end
    else if sum>maxsum then begin
      maxsum:=sum;
      start:=local_start;
      finish:=i;
    end;
  end;
 writeln(maxsum,' ',start,' ',finish);
 if finish<>-1 then exit(maxsum)
 else begin
  maxsum:=temp[1];
  start:=0;finish:=0;
  for i:=2 to n do begin
   if temp[i]>maxsum then begin
    maxsum:=temp[i];
    start:=i;finish:=i;
   end;
  end;
// writeln(maxsum);
 exit(maxsum);
 end;
 end;
begin
 assign(fi,'bonus.INP'); reset(fi);
 assign(fo,'bonus.OUT'); rewrite(fo);
 readln(fi,m,n,w,h);
 for i:=1 to m do read(fi,row[i]);
 for i:=1 to n do read(fi,column[i]);
 for i:= 1 to m do for j:=1 to n do arr[i][j]:=row[i]+column[j];
//
  maxsum:=-99999999;sum:=0;start:=0;finish:=0;
  for left:=1 to n-w+1 do begin
   fillchar(temp,sizeof(temp),0);
   for right:=left to left+w-1 do begin
     for i:= 1 to m do begin
       temp[i]:=temp[i]+arr[i][right];
     end;
//       writeln('left , right ',left,' ',right,' ');
       for j:=1 to m do write('temp: ',temp[j],' ');
       writeln;
       sum:=kanade(temp,start,finish,row);
       if sum>maxsum then begin
        maxsum:=sum;
        finalLeft:= left;
        finalRight:=right;
        finalTop:=start;
        finalBottom:=finish;
       end;
   end;
  end;
//  write(fo,maxsum);
//  writeln(maxsum,' ',finalTop,' ',finalLeft,' ',finalBottom,' ',finalRight);
{
 for i:=1 to m do begin
   for j:=1 to n do write(arr[i][j],' ');
   writeln;
 end;
}
 close(fi); close(fo);
end.
