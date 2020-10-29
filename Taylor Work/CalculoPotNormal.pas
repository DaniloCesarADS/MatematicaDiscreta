program CalculoPotNormal;

uses crt;

function potencia(x,z:integer):integer;
var  cont  :  integer;
     mult  :  integer;
begin
  mult := 1;
  for cont := 1 to z do
  begin
    mult := mult * x;
    potencia := mult;
  end;
end;
var a    :   integer;
    b    :   integer;
    mult :   integer;

begin
  clrscr;
  writeln('Digite os numeros: ');
  readln(a,b);
  while a<>0 do
  begin
    writeln('potencia: ',potencia(a,b));
    writeln('Digite os numeros: ');
    readln(a,b);
  end;
  readkey;
end.

