program TrabalhoFuncoes;

uses crt,math;

Procedure DoTan(Angle : Float);

begin
  Write('Angle : ',RadToDeg(Angle):8:6);
  Writeln(' Tangent : ',Tan(Angle):8:6);
end;

var  funcao   :  char;
     x        :  integer;

begin
  writeln('Bem Vindo!');
  writeln('Este programa realiza calculos com funcoes matematicas');
  writeln('Digite qualquer tecla para continuar:');
  readkey;
  clrscr;
  while funcao <> 'S' do
  Begin
    writeln('Escolha a funcao:');
    writeln('A - Funcao Linear');
    writeln('B - Funcao Quadratica');
    writeln('C - Funcao Exponencial');
    writeln('D - Funcao Logaritmica');
    writeln('E - Funcao Racional');
    writeln('F - Funcao Raiz');
    writeln('G - Funcao Trigonometrica Sen(x)');
    writeln('H - Funcao Trigonometrica Cos(x)');
    writeln('I - Funcao Trigonometrica Tg(x)');
    writeln('S - Sair');
    readln(funcao);
    funcao := upcase(funcao);
    case funcao of
         'A':   writeln('Funcao Linear');
         'B':   writeln('Funcao Quadrática');
         'C':   writeln('Funcao Exponencial');
         'D':   writeln('Funcao Logaritmica');
         'E':   writeln('Funcao Racional');
         'F':   Begin
                     writeln('Funcao Raiz');
                     writeln('Digite o valor de x: ');
                     readln(x);
                     writeln(sqrt(x):0:2);
                     readkey;
                end;
         'G':   Begin
                     writeln('Funcao Trigonométrica Sen(x)');
                     writeln('Digite o angulo x');
                     readln(x);
                     writeln('Fim da operacao');
                     readkey;
                end;
         'H':   writeln('Funcao Trigonométrica Cos(x)');
         'I':   Begin
                     writeln('Funcao Trigonométrica Tg(x)');
                     writeln('Digite o angulo x');
                     readln(x);
                     dotan(x);
                     writeln('Fim da operacao');
                     readkey;
                end;
         'S':   writeln('Sair');
         else   writeln('opcao Invalida!');
    end;
  end;

end.

