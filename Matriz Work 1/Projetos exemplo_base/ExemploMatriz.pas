program ExemploMatriz;
uses crt;
var
  matriz :       array[1..2,1..3] of integer;
  soma   :       integer;
  contl   :       integer;
  contc   :       integer;


begin
     writeln('Digite os 6 numeros: ');
     soma := 0;
     for contl := 1 to 2 do
         for contc := 1 to 3 do
             readln(matriz[contl,contc]);

     for contl := 1 to 2 do
         for contc := 1 to 3 do
             soma := soma + matriz[contl,contc];
             writeln(soma);
             readkey;
     writeln('Soma = ',soma);
     readkey;
end.

