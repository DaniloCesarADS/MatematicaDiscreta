program CalculoEpowX;

uses crt;

var  x,r   :       double;

begin
  write('digite x: ');
  readln(x);
  r := exp(x);
  writeln(r);
  readkey;
end.

