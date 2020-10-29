program PrototypeRaizNesimaMathTest;

uses crt, math;

var radicando    :       float;
    raiz         :       float;
    indice       :       integer;

    // Protótipo de raíz n com exemplo da raíz cúbica. Para fazer raíz n, 1/3 lá na exp
    // deve ser substituido por 1/n e n deve ser declarado. Para usar float, deve usar
    // a biblioteca math, senão deve usar real se for usar só a crt;

    //Para testar: use raíz 3(n) de 8(x), raíz 5(n) de 32(x) e raíz 10(n) de 1024(x)

    //function exp(
    //d: ValReal
    //):ValReal;
begin
  writeln('Digite o radicando: ');
  readln(radicando);
  writeln('Digite o indice: ');
  readln(indice);
  // Esta condição dá certo, mas quando o radicando é negativo e o ídice é impar
  // o programa não calcula. Só que raíz cúbica de -125 é -5, pois (-5)*(-5)*(-5)= -125!
  if(radicando < 0) and (indice mod 2 = 0) Then
               begin
                  writeln('Impossivel');
                  readkey;
               end
  else
  begin
                //1a função a ser testada:
                //raiz := exp (1/indice *ln(radicando));
                //Abaixo, a 2a Função a ser testada:
                raiz := power(radicando,1/indice);
                writeln('Raiz ',indice,' de ',radicando,' = ',raiz);
                readkey;
  end;
end.

