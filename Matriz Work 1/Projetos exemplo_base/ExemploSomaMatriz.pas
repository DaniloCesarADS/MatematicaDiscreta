program ExemploSomaMatriz;
uses crt;
var  matrizA     :      array [1..50,1..50] of Integer;
     matrizB     :      array [1..50,1..50] of Integer;
     matrizAB    :      array [1..50,1..50] of Integer;
     lin1, col1, lin2, col2, i, j, k              :  Integer;


begin
  writeln; writeln('SOMA DE MATRIZES');
  writeln('Digite o número de linhas da primeira matriz: ');
  readln(lin1);
  writeln('Digite o número de colunas da primeira matriz: ');
  readln(col1);
  writeln('Digite o número de linhas da segunda matriz: ');
  readln(lin2);
  writeln('Digite o número de colunas da segunda matriz: ');
  readln(col2);
  writeln;
  writeln('Escreva os elementos da matriz A: ');
  for i := 1 to lin1 do begin
    for j := 1 to col1 do begin
      write('a',i,j,': ');
      read(matrizA[i,j]);
    end;
    writeln;
  end;
  readkey;
  writeln('Escreva os elementos da matriz B: ');
  for i := 1 to lin2 do begin
    for j := 1 to col2 do begin
      write('b',i,j,': ');
      read(matrizB[i,j]);
    end;
    writeln;
  end;
  readkey;
  for i := 1 to lin1 do begin
    for j := 1 to col2 do begin
      matrizAB[i,j] := 0;
      matrizAB[i,j] := matrizA[i,j] + matrizB[i,j];
    end;
  end;
  readkey;
  writeln;writeln('A matriz A+B: ');
  for i := 1 to lin1 do begin
    for j:= 1 to col2 do begin
      write('A+B',i,j,': ',matrizAB[i,j],' ');
    end;
    writeln;
  end;
  readkey;
end.

