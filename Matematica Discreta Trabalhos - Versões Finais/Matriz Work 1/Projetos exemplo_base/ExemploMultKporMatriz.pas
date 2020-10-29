program ExemploMultKporMatriz;
uses crt;
var  matrizA     :      array [1..50,1..50] of Integer;
     matrizAK    :      array [1..50,1..50] of Integer;
     lin1, col1, i, j, k              :  Integer;


begin
  writeln; writeln('MULTIPLICACAO DE MATRIZES');
  writeln('Digite o número de linhas da primeira matriz: ');
  readln(lin1);
  writeln('Digite o número de colunas da primeira matriz: ');
  readln(col1);
  writeln;
  writeln('Escreva os elementos da matriz: ');
  for i := 1 to lin1 do begin
    for j := 1 to col1 do begin
      write('a',i,j,': ');
      read(matrizA[i,j]);
    end;
    writeln;
  end;
  writeln('Escreva K: ');
  readln(k);
  for i := 1 to lin1 do begin
    for j := 1 to col1 do begin
      matrizAK[i,j] := matrizA[i,j] * k;
    end;
  end;
  writeln;writeln('A matriz A*K: ');
  for i := 1 to lin1 do begin
    for j:= 1 to col1 do begin
      write('A*B',i,j,': ',matrizAK[i,j],' ');
    end;
  end;
  readkey;
end.

