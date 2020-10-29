program DefineMatriz;

uses crt;

var  mat :       array [1..3,1..3] of integer;
     i,j :       integer;

begin
  mat[1,1] := 1;
  mat[1,2] := 2;
  mat[1,3] := 3;
  mat[2,1] := 4;
  mat[2,2] := 5;
  mat[2,3] := 6;
  mat[3,1] := 7;
  mat[3,2] := 8;
  mat[3,3] := 9;
  writeln('pressione qualquer tecla: ');
  readkey;
  write('mat: ');
  for i := 1 to 3 do
      for j := 1 to 3 do
          //write('mat',i,',',j,': ',mat[i,j]);     para exibir vertical e com coordenadas
          write(mat[i,j],' ');              //para exibir em uma linha, sem as coordenadas
  readkey;
end.

