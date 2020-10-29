program RaizCubicaMathTeste;

uses crt, math;

var x    :       float;
    r    :       float;

    // Protótipo de raíz n com exemplo da raíz cúbica. Para fazer raíz n, 1/3 lá na exp
    // deve ser substituido por 1/n e n deve ser declarado. Para usar float, deve usar
    // a biblioteca math, senão deve usar real se for usar só a crt;
begin
  writeln('Digite x: ');
  readln(x);
  r := exp (1/3 *ln(x));
  writeln(r);
  readkey;
end.

