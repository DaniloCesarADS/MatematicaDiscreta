program TesteConditionMultM2M;

uses crt;

var  matA        :      array [1..2,1..2] of integer;
     matB        :      array [1..2,1..2] of integer;
     matC        :      array [1..1,1..4] of integer;
     i,j         :      integer;
     Vet1        :      array [1..2] of integer;
     Vet2        :      array [1..2] of integer;
     op1         :      integer;
     op2         :      integer;
begin
  matA[1,1] := 1;
  matA[1,2] := 1;
  matA[2,1] := 1;
  matA[2,2] := 1;

  matB[1,1] := 2;
  matB[1,2] := 2;
  matB[2,1] := 2;
  matB[2,2] := 2;

  matC[1,1] := 2;
  matC[1,2] := 2;
  matC[1,3] := 2;
  matC[1,4] := 2;

  Writeln('Escolha o primeiro operando: ');
  readln(op1);
  Case op1 Of
       1:  for i := 1 to 2 do
               for j := 1 to 2 do
                   writeln('Matriz A: ',i,'',j,': ', matA[i,j]);
       2:  for i := 1 to 2 do
               for j := 1 to 2 do
                   writeln('Matriz B: ',i,'',j,': ', matB[i,j]);
       3:  for i := 1 to 1 do
               for j := 1 to 4 do
                   writeln('Matriz C: ',i,'',j,': ', matC[i,j]);
  end;
  vet1[1] := i;
  vet1[2] := j;
  writeln(vet1[1],vet1[2]);
  Writeln('Escolha o segundo operando: ');
  readln(op2);
  Case op2 Of
       1:  for i := 1 to 2 do
               for j := 1 to 2 do
                   writeln('Matriz A: ',i,'',j,': ', matA[i,j]);
       2:  for i := 1 to 2 do
               for j := 1 to 2 do
                   writeln('Matriz B: ',i,'',j,': ', matB[i,j]);
       3:  for i := 1 to 1 do
               for j := 1 to 4 do
                   writeln('Matriz C: ',i,'',j,': ', matC[i,j]);
  end;
  vet2[1] := i;
  vet2[2] := j;
  writeln(vet2[1],vet2[2]);
  if (vet1[2] = vet2[1]) then
     writeln('multiplicacao aqui')
  else
     writeln('impossivel');
  readkey;
end.

