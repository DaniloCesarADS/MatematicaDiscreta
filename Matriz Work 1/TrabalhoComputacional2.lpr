program TrabalhoComputacional2;

uses crt;

var  operacao   :        Integer;         //Operações com matrizes
     op1        :        Integer;         //Operandos 1 e 2 para as operações
     op2        :        Integer;
     k          :        Integer;         //i,j e k - contadores dos lacos for
     i          :        Integer;
     j          :        Integer;
     vr         :        Integer;         //vr - valor constante p/ operação 3
     vet1       :        Array [1..2] of Integer;
     vet2       :        Array [1..2] of Integer;     // Vet1 a Vet7 - vetores
     vet3       :        Array [1..2] of Integer;     // que armazenam as ordens
     vet4       :        Array [1..2] of Integer;     // das matrizes
     vet5       :        Array [1..2] of Integer;
     vet6       :        Array [1..2] of Integer;
     vet7       :        Array [1..2] of Integer;
     aux1       :        Array [1..2] of Integer;     // Vetores auxiliares - auxiliam nas estruturas
     aux2       :        Array [1..2] of Integer;     // condicionais, copiando as ordens das matrizes.
     matA       :        Array [1..3,1..3] of Integer;
     matB       :        Array [1..3,1..4] of Integer;    // MatA a MatG - matrizes de preset
     matC       :        Array [1..3,1..1] of Integer;
     matD       :        Array [1..1,1..3] of Integer;
     matE       :        Array [1..3,1..4] of Integer;
     matF       :        Array [1..4,1..2] of Integer;
     matG       :        Array [1..3,1..3] of Integer;
     mop1       :        Array [1..5,1..5] of Integer;    // mop1 e mop2 - Auxiliam na realização de
     mop2       :        Array [1..5,1..5] of Integer;    // operações, copiando as matrizes de preset
     matS       :        Array [1..5,1..5] of Integer;
     matSub     :        Array [1..5,1..5] of Integer;    // MatS, MatSub, Matm2k e MatP são as
     matm2k     :        Array [1..5,1..5] of Integer;    // matrizes resultado das operações
     matP       :        Array [1..5,1..5] of Integer;
     continue   :        Char;                            // Continuar ou encerrar as atividades
begin
  //Declaração das matrizes de preset do exercício.

  //Matriz A 3x3.
  matA[1,1] := 5;
  matA[1,2] := 2;
  matA[1,3] := 1;
  matA[2,1] := 15;
  matA[2,2] := 7;
  matA[2,3] := 7;
  matA[3,1] := 25;
  matA[3,2] := 7;
  matA[3,3] := 5;

  //Matriz B 3x4.
  matB[1,1] := -5;
  matB[1,2] := 2;
  matB[1,3] := 1;
  matB[1,4] := 1;
  matB[2,1] := 15;
  matB[2,2] := -7;
  matB[2,3] := 7;
  matB[2,4] := -1;
  matB[3,1] := 25;
  matB[3,2] := 7;
  matB[3,3] := 5;
  matB[3,4] := 3;

  //Matriz C 3x1.
  matC[1,1] := -2;
  matC[2,1] := 1;
  matC[3,1] := 4;

  //Matriz D 1x3.
  matD[1,1] := -2;
  matD[1,2] := 0;
  matD[1,3] := 5;

  //Matriz E 3x4.
  matE[1,1] := -5;
  matE[1,2] := 2;
  matE[1,3] := 1;
  matE[1,4] := 1;
  matE[2,1] := 15;
  matE[2,2] := -7;
  matE[2,3] := 7;
  matE[2,4] := -1;
  matE[3,1] := 25;
  matE[3,2] := 7;
  matE[3,3] := 5;
  matE[3,4] := 3;

  //Matriz F 4x2.
  matF[1,1] := -2;
  matF[1,2] := 0;
  matF[2,1] := 1;
  matF[2,2] := -1;
  matF[3,1] := 5;
  matF[3,2] := -4;
  matF[4,1] := 12;
  matF[4,2] := 3;

  //Matriz G 3x3.
  matG[1,1] := -2;
  matG[1,2] := -0;
  matG[1,3] := 2;
  matG[2,1] := 1;
  matG[2,2] := -1;
  matG[2,3] := 1;
  matG[3,1] := 5;
  matG[3,2] := -4;
  matG[3,3] := 0;

  writeln('Bem vindo!');
  delay(1000);
  writeln('Este programa realiza calculos com matrizes predefinidas');
  writeln('Digite qualquer tecla para comecar');
  readkey;
  clrscr;                                //Limpa a tela
  continue := 'y';
  delay(200);
  while (continue <> 'n') do
  begin
      //writeln('Escolha a operacao, ou 5 para sair: ');                //Aqui esse bloco força a amostragem de matrizes
      //writeln('1 - Adicao de matrizes');                              //antes da saída do programa.
      //writeln('2 - Subtracao de matrizes');
      //writeln('3 - Multiplicacao por valor constante');
      //writeln('4 - Multiplicacao de matrizes');
      //writeln('5 - Sair');
      //writeln;
      //write('Digite a opcao: ');
      //read(operacao);
      //clrscr;                            //Limpa a tela
      //writeln('Exibindo as matrizes: ');
      //writeln('Escolha as opcoes de 1 a 7 para os operandos conforme solicitado');
      //writeln;
      // Matriz A.
      writeln('Exibindo as matrizes: ');
      writeln('Escolha as opcoes de 1 a 7 para os operandos conforme solicitado');
      writeln;
      write('1 - A 3x3 =(');
      for i := 1 to 3 do
          for j := 1 to 3 do
              write('a',i,j,':',matA[i,j],'  ');
      write(')');
      vet1[1] := i;                              // Esses vetores e os semelhantes armazenam
      vet1[2] := j;                              // as ordens das matrizes para utilizar nas
      writeln('Ordem =',vet1[1],vet1[2]);        // estruturas condicionais das operações de
      writeln;                                   // adição, subtração e multiplicação entre
      // Matriz B.                               // matrizes.
      write('2 - B 3x4 =(');
      for i := 1 to 3 do
          for j := 1 to 4 do
              write('b',i,j,':',matB[i,j],'  ');
      write(')');
      vet2[1] := i;
      vet2[2] := j;
      writeln('Ordem =',vet2[1],vet2[2]);
      writeln;
      // Matriz C.
      write('3 - C 3x1 =(');
      for i := 1 to 3 do
          for j := 1 to 1 do
              write('c',i,j,':',matC[i,j],'  ');
      write(')');
      vet3[1] := i;
      vet3[2] := j;
      writeln('Ordem =',vet3[1],vet3[2]);
      writeln;
      // Matriz D.
      write('4 - D 1x3 =(');
      for i := 1 to 1 do
          for j := 1 to 3 do
              write('d',i,j,':',matD[i,j],'  ');
      write(')');
      vet4[1] := i;
      vet4[2] := j;
      writeln('Ordem =',vet4[1],vet4[2]);
      writeln;
      // Matriz E.
      write('5 - E 3x4 =(');
      for i := 1 to 3 do
          for j := 1 to 4 do
              write('e',i,j,':',matE[i,j],'  ');
      write(')');
      vet5[1] := i;
      vet5[2] := j;
      writeln('Ordem =',vet5[1],vet5[2]);
      writeln;
      // Matriz F.
      write('6 - F 4x2 =(');
      for i := 1 to 4 do
          for j := 1 to 2 do
              write('f',i,j,':',matF[i,j],'  ');
      write(')');
      vet6[1] := i;
      vet6[2] := j;
      writeln('Ordem =',vet6[1],vet6[2]);
      writeln;
      // Matriz G.
      write('7 - G 3x3 =(');
      for i := 1 to 3 do
          for j := 1 to 3 do
              write('g',i,j,':',matG[i,j],'  ');
      write(')');
      vet7[1] := i;
      vet7[2] := j;
      writeln('Ordem =',vet7[1],vet7[2]);
      writeln;
      writeln('Escolha a operacao, ou 5 para sair: ');
      writeln('1 - Adicao de matrizes');
      writeln('2 - Subtracao de matrizes');
      writeln('3 - Multiplicacao por valor constante');
      writeln('4 - Multiplicacao de matrizes');
      writeln('5 - Sair');
      writeln;
      write('Digite a opcao: ');
      read(operacao);
      writeln('Pressione qualquer tecla para continuar');
      readkey;                //checkpoint
      case operacao of
           1 : begin                                // Aqui começa a adição de matrizes
                 writeln('Adicao de matrizes');
                 writeln;
                 write('Escolha a primeira matriz: ');          // 1º operando
                 read(op1);
                 case op1 of
                      1 : begin       //Matriz A 3x3
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    mop1[i,j] := matA[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('A ',vet1[1],vet1[2]);
                            aux1[1] := vet1[1];
                            aux1[2] := vet1[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      2 : begin       //Matriz B 3x4
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    mop1[i,j] := matB[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('B ',vet2[1],vet2[2]);
                            aux1[1] := vet2[1];
                            aux1[2] := vet2[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      3 : begin       //Matriz C 3x1
                            for i := 1 to 3 do
                                for j := 1 to 1 do
                                    mop1[i,j] := matC[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 1 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('C ',vet3[1],vet3[2]);
                            aux1[1] := vet3[1];
                            aux1[2] := vet3[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      4 : begin       //Matriz D 1x3
                            for i := 1 to 1 do
                                for j := 1 to 3 do
                                    mop1[i,j] := matD[i,j];
                            for i := 1 to 1 do
                                for j := 1 to 3 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('D ',vet4[1],vet4[2]);
                            aux1[1] := vet4[1];
                            aux1[2] := vet4[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      5 : begin       //Matriz E 3x4
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    mop1[i,j] := matE[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('E ',vet5[1],vet5[2]);
                            aux1[1] := vet5[1];
                            aux1[2] := vet5[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      6 : begin       //Matriz F 4x2
                            for i := 1 to 4 do
                                for j := 1 to 2 do
                                    mop1[i,j] := matF[i,j];
                            for i := 1 to 4 do
                                for j := 1 to 2 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('F ',vet6[1],vet6[2]);
                            aux1[1] := vet6[1];
                            aux1[2] := vet6[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      7 : begin       //Matriz G 3x3
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    mop1[i,j] := matG[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('G ',vet7[1],vet7[2]);
                            aux1[1] := vet7[1];
                            aux1[2] := vet7[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end
                      else
                          begin
                            writeln('Opcao invalida!');
                            readkey;
                            clrscr;
                          end;
                 end;
                 write('Escolha a segunda matriz: ');       // 2º operando
                 read(op2);
                 case op2 of
                      1 : begin      //Matriz A 3x3
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    mop2[i,j] := matA[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('A ',vet1[1],vet1[2]);
                            aux2[1] := vet1[1];
                            aux2[2] := vet1[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      2 : begin      //Matriz B 3x4
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    mop2[i,j] := matB[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('B ',vet2[1],vet2[2]);
                            aux2[1] := vet2[1];
                            aux2[2] := vet2[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      3 : begin      //Matriz C 3x1
                            for i := 1 to 3 do
                                for j := 1 to 1 do
                                    mop2[i,j] := matC[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 1 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('C ',vet3[1],vet3[2]);
                            aux2[1] := vet3[1];
                            aux2[2] := vet3[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      4 : begin      //Matriz D 1x3
                            for i := 1 to 1 do
                                for j := 1 to 3 do
                                    mop2[i,j] := matD[i,j];
                            for i := 1 to 1 do
                                for j := 1 to 3 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('D ',vet4[1],vet4[2]);
                            aux2[1] := vet4[1];
                            aux2[2] := vet4[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      5 : begin      //Matriz E 3x4
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    mop2[i,j] := matE[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('E ',vet5[1],vet5[2]);
                            aux2[1] := vet5[1];
                            aux2[2] := vet5[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      6 : begin      //Matriz F 4x2
                            for i := 1 to 4 do
                                for j := 1 to 2 do
                                    mop2[i,j] := matF[i,j];
                            for i := 1 to 4 do
                                for j := 1 to 2 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('F ',vet6[1],vet6[2]);
                            aux2[1] := vet6[1];
                            aux2[2] := vet6[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      7 : begin      //Matriz G 3x3
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    mop2[i,j] := matG[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('G ',vet7[1],vet7[2]);
                            aux2[1] := vet7[1];
                            aux2[2] := vet7[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end
                      else
                          begin
                            writeln('Opcao invalida!');
                            readkey;
                            clrscr;
                          end;
                 end;
                 if(aux1[1] = aux2[1]) and (aux1[2] = aux2[2]) then     // Estrutura condicional
                    begin
                    writeln('Adicao de matrizes');                      // Operação de adição
                    for i := 1 to aux1[1] do
                        for j := 1 to aux1[2] do
                            matS[i,j] := mop1[i,j] + mop2[i,j];
                    for i := 1 to aux1[1] do
                        for j := 1 to aux2[1] do
                            writeln('Matriz soma = ',matS[i,j],' ');
                    writeln('Fim da operacao');
                    readkey;
                    clrscr;
                    end
                 else
                    begin
                      writeln('Operacao impossivel devido a ordem das matrizes');
                      writeln('Deseja continuar? (y/n)');
                      continue := readkey;
                      clrscr;
                    end;
               end;                                                   // Fim - Adição
           2 : begin
                 writeln('Subtracao de matrizes');                    // Subtração de matrizes
                 writeln;
                 write('Escolha a primeira matriz: ');
                 read(op1);                                           // 1º operando
                 case op1 of
                      1 : begin       //Matriz A 3x3
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    mop1[i,j] := matA[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('A ',vet1[1],vet1[2]);
                            aux1[1] := vet1[1];
                            aux1[2] := vet1[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      2 : begin       //Matriz B 3x4
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    mop1[i,j] := matB[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('B ',vet2[1],vet2[2]);
                            aux1[1] := vet2[1];
                            aux1[2] := vet2[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      3 : begin       //Matriz C 3x1
                            for i := 1 to 3 do
                                for j := 1 to 1 do
                                    mop1[i,j] := matC[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 1 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('C ',vet3[1],vet3[2]);
                            aux1[1] := vet3[1];
                            aux1[2] := vet3[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      4 : begin       //Matriz D 1x3
                            for i := 1 to 1 do
                                for j := 1 to 3 do
                                    mop1[i,j] := matD[i,j];
                            for i := 1 to 1 do
                                for j := 1 to 3 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('D ',vet4[1],vet4[2]);
                            aux1[1] := vet4[1];
                            aux1[2] := vet4[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      5 : begin       //Matriz E 3x4
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    mop1[i,j] := matE[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('E ',vet5[1],vet5[2]);
                            aux1[1] := vet5[1];
                            aux1[2] := vet5[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      6 : begin       //Matriz F 4x2
                            for i := 1 to 4 do
                                for j := 1 to 2 do
                                    mop1[i,j] := matF[i,j];
                            for i := 1 to 4 do
                                for j := 1 to 2 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('F ',vet6[1],vet6[2]);
                            aux1[1] := vet6[1];
                            aux1[2] := vet6[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      7 : begin       //Matriz G 3x3
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    mop1[i,j] := matG[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('G ',vet7[1],vet7[2]);
                            aux1[1] := vet7[1];
                            aux1[2] := vet7[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end
                      else
                          begin
                            writeln('Opcao invalida!');
                            readkey;
                            clrscr;
                          end;
                 end;
                 write('Escolha a segunda matriz: ');              // 2º operando
                 read(op2);
                 case op2 of
                      1 : begin      //Matriz A 3x3
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    mop2[i,j] := matA[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('A ',vet1[1],vet1[2]);
                            aux2[1] := vet1[1];
                            aux2[2] := vet1[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      2 : begin      //Matriz B 3x4
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    mop2[i,j] := matB[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('B ',vet2[1],vet2[2]);
                            aux2[1] := vet2[1];
                            aux2[2] := vet2[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      3 : begin      //Matriz C 3x1
                            for i := 1 to 3 do
                                for j := 1 to 1 do
                                    mop2[i,j] := matC[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 1 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('C ',vet3[1],vet3[2]);
                            aux2[1] := vet3[1];
                            aux2[2] := vet3[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      4 : begin      //Matriz D 1x3
                            for i := 1 to 1 do
                                for j := 1 to 3 do
                                    mop2[i,j] := matD[i,j];
                            for i := 1 to 1 do
                                for j := 1 to 3 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('D ',vet4[1],vet4[2]);
                            aux2[1] := vet4[1];
                            aux2[2] := vet4[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      5 : begin      //Matriz E 3x4
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    mop2[i,j] := matE[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('E ',vet5[1],vet5[2]);
                            aux2[1] := vet5[1];
                            aux2[2] := vet5[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      6 : begin      //Matriz F 4x2
                            for i := 1 to 4 do
                                for j := 1 to 2 do
                                    mop2[i,j] := matF[i,j];
                            for i := 1 to 4 do
                                for j := 1 to 2 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('F ',vet6[1],vet6[2]);
                            aux2[1] := vet6[1];
                            aux2[2] := vet6[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      7 : begin      //Matriz G 3x3
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    mop2[i,j] := matG[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('G ',vet7[1],vet7[2]);
                            aux2[1] := vet7[1];
                            aux2[2] := vet7[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end
                      else
                          begin
                            writeln('Opcao invalida!');
                            readkey;
                            clrscr;
                          end;

                 end;
                 if(aux1[1] = aux2[1]) and (aux1[2] = aux2[2]) then      // Estrutura condicional
                    begin
                    writeln('Subtracao de matrizes');                    // Operação de subtração
                    for i := 1 to aux1[1] do
                        for j := 1 to aux1[2] do
                            matSub[i,j] := mop1[i,j] - mop2[i,j];
                    for i := 1 to aux1[1] do
                        for j := 1 to aux2[1] do
                            writeln('Matriz diferenca = ',matSub[i,j],' ');
                    writeln('Fim da operacao');
                    readkey;
                    clrscr;
                    end
                 else
                    begin
                      writeln('Operacao impossivel devido a ordem das matrizes');
                      writeln('Deseja continuar? (y/n)');
                      continue := readkey;
                      clrscr;
                    end;                                           // Fim - Subtração
               end;
           3 : begin                                               // Multiplicação por constante
                 writeln('Multiplicacao por valor constante');
                 writeln;
                 write('Escolha uma matriz: ');
                 read(op1);                                        // Matriz - escolha
                 case op1 of
                      1 : begin       //Matriz A 3x3
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    mop1[i,j] := matA[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('A ',vet1[1],vet1[2]);
                            aux1[1] := vet1[1];
                            aux1[2] := vet1[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      2 : begin       //Matriz B 3x4
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    mop1[i,j] := matB[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('B ',vet2[1],vet2[2]);
                            aux1[1] := vet2[1];
                            aux1[2] := vet2[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      3 : begin       //Matriz C 3x1
                            for i := 1 to 3 do
                                for j := 1 to 1 do
                                    mop1[i,j] := matC[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 1 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('C ',vet3[1],vet3[2]);
                            aux1[1] := vet3[1];
                            aux1[2] := vet3[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      4 : begin       //Matriz D 1x3
                            for i := 1 to 1 do
                                for j := 1 to 3 do
                                    mop1[i,j] := matD[i,j];
                            for i := 1 to 1 do
                                for j := 1 to 3 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('D ',vet4[1],vet4[2]);
                            aux1[1] := vet4[1];
                            aux1[2] := vet4[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      5 : begin       //Matriz E 3x4
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    mop1[i,j] := matE[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('E ',vet5[1],vet5[2]);
                            aux1[1] := vet5[1];
                            aux1[2] := vet5[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      6 : begin       //Matriz F 4x2
                            for i := 1 to 4 do
                                for j := 1 to 2 do
                                    mop1[i,j] := matF[i,j];
                            for i := 1 to 4 do
                                for j := 1 to 2 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('F ',vet6[1],vet6[2]);
                            aux1[1] := vet6[1];
                            aux1[2] := vet6[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      7 : begin       //Matriz G 3x3
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    mop1[i,j] := matG[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('G ',vet7[1],vet7[2]);
                            aux1[1] := vet7[1];
                            aux1[2] := vet7[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end
                      else
                          begin
                               writeln('Opcao invalida!');
                               readkey;
                               clrscr;
                          end;
                 end;
                 write('Digite o valor real: ');                 // Constante numérica
                 read(vr);
                 writeln;
                 writeln('Multiplicacao de matrizes por valores constantes');    // Multiplicação por
                 for i := 1 to aux1[1] do                                        // constante
                     for j := 1 to aux1[2] do
                         matm2k[i,j] := mop1[i,j] * vr;
                 for i := 1 to aux1[1] do
                     for j := 1 to aux1[2] do
                         writeln('Matriz produto por ',vr,' ','(',i,j,')',' = ',matm2k[i,j],' ');
                 writeln('Fim da operacao');
                 readkey;
                 clrscr;
               end;                                               // Fim
           4 : begin
                 writeln('Multiplicacao de matrizes');            // Multiplicação M2M
                 write('Escolha a primeira matriz: ');
                 read(op1);
                 case op1 of                                      // 1º operando
                      1 : begin       //Matriz A 3x3
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    mop1[i,j] := matA[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('A ',vet1[1],vet1[2]);
                            aux1[1] := vet1[1];
                            aux1[2] := vet1[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      2 : begin       //Matriz B 3x4
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    mop1[i,j] := matB[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('B ',vet2[1],vet2[2]);
                            aux1[1] := vet2[1];
                            aux1[2] := vet2[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      3 : begin       //Matriz C 3x1
                            for i := 1 to 3 do
                                for j := 1 to 1 do
                                    mop1[i,j] := matC[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 1 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('C ',vet3[1],vet3[2]);
                            aux1[1] := vet3[1];
                            aux1[2] := vet3[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      4 : begin       //Matriz D 1x3
                            for i := 1 to 1 do
                                for j := 1 to 3 do
                                    mop1[i,j] := matD[i,j];
                            for i := 1 to 1 do
                                for j := 1 to 3 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('D ',vet4[1],vet4[2]);
                            aux1[1] := vet4[1];
                            aux1[2] := vet4[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      5 : begin       //Matriz E 3x4
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    mop1[i,j] := matE[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('E ',vet5[1],vet5[2]);
                            aux1[1] := vet5[1];
                            aux1[2] := vet5[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      6 : begin       //Matriz F 4x2
                            for i := 1 to 4 do
                                for j := 1 to 2 do
                                    mop1[i,j] := matF[i,j];
                            for i := 1 to 4 do
                                for j := 1 to 2 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('F ',vet6[1],vet6[2]);
                            aux1[1] := vet6[1];
                            aux1[2] := vet6[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end;
                      7 : begin       //Matriz G 3x3
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    mop1[i,j] := matG[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    write('mop1 ',i,j,':',mop1[i,j],'  ');
                            writeln('G ',vet7[1],vet7[2]);
                            aux1[1] := vet7[1];
                            aux1[2] := vet7[2];
                            writeln('Copia 1: ',aux1[1],aux1[2]);
                          end
                      else
                          begin
                            writeln('Opcao invalida!');
                            readkey;
                            clrscr;
                          end;
                 end;
                 write('Escolha a segunda matriz: ');         // 2º operando
                 read(op2);
                 case op2 of
                      1 : begin      //Matriz A 3x3
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    mop2[i,j] := matA[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('A ',vet1[1],vet1[2]);
                            aux2[1] := vet1[1];
                            aux2[2] := vet1[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      2 : begin      //Matriz B 3x4
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    mop2[i,j] := matB[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('B ',vet2[1],vet2[2]);
                            aux2[1] := vet2[1];
                            aux2[2] := vet2[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      3 : begin      //Matriz C 3x1
                            for i := 1 to 3 do
                                for j := 1 to 1 do
                                    mop2[i,j] := matC[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 1 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('C ',vet3[1],vet3[2]);
                            aux2[1] := vet3[1];
                            aux2[2] := vet3[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      4 : begin      //Matriz D 1x3
                            for i := 1 to 1 do
                                for j := 1 to 3 do
                                    mop2[i,j] := matD[i,j];
                            for i := 1 to 1 do
                                for j := 1 to 3 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('D ',vet4[1],vet4[2]);
                            aux2[1] := vet4[1];
                            aux2[2] := vet4[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      5 : begin      //Matriz E 3x4
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    mop2[i,j] := matE[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 4 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('E ',vet5[1],vet5[2]);
                            aux2[1] := vet5[1];
                            aux2[2] := vet5[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      6 : begin      //Matriz F 4x2
                            for i := 1 to 4 do
                                for j := 1 to 2 do
                                    mop2[i,j] := matF[i,j];
                            for i := 1 to 4 do
                                for j := 1 to 2 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('F ',vet6[1],vet6[2]);
                            aux2[1] := vet6[1];
                            aux2[2] := vet6[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end;
                      7 : begin      //Matriz G 3x3
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    mop2[i,j] := matG[i,j];
                            for i := 1 to 3 do
                                for j := 1 to 3 do
                                    write('mop2 ',i,j,':',mop2[i,j],'  ');
                            writeln('G ',vet7[1],vet7[2]);
                            aux2[1] := vet7[1];
                            aux2[2] := vet7[2];
                            writeln('Copia 2: ',aux2[1],aux2[2]);
                          end
                      else
                          begin
                             writeln('Opcao invalida!');
                             readkey;
                             clrscr;
                          end;
                 end;
                 readkey;
                 clrscr;            //Limpa a tela
                 if(aux1[2] = aux2[1]) then               // Estrutura condicional
                    begin
                    matP[1,1] := 0;
                    matP[1,2] := 0;                       // Zerando a matriz
                    matP[1,3] := 0;                       // produto - matP
                    matP[1,4] := 0;
                    matP[1,5] := 0;
                    matP[2,1] := 0;
                    matP[2,2] := 0;
                    matP[2,3] := 0;
                    matP[2,4] := 0;
                    matP[2,5] := 0;
                    matP[3,1] := 0;
                    matP[3,2] := 0;
                    matP[3,3] := 0;
                    matP[3,4] := 0;
                    matP[3,5] := 0;
                    matP[4,1] := 0;
                    matP[4,2] := 0;
                    matP[4,3] := 0;
                    matP[4,4] := 0;
                    matP[4,5] := 0;
                    matP[5,1] := 0;
                    matP[5,2] := 0;
                    matP[5,3] := 0;
                    matP[5,4] := 0;
                    matP[5,5] := 0;
                    writeln('Multiplicacao de matrizes');     // Operação M2M
                    for i := 1 to aux1[1] do
                        for j := 1 to aux2[2] do
                            for k := 1 to aux1[1] do
                                matP[i,j] := mop1[i,k] * mop2[k,j] + matP[i,j];
                    for i := 1 to aux1[1] do
                        for j := 1 to aux2[2] do
                            writeln('Matriz produto ',i,'x',j,' = ',matP[i,j],' ');
                    writeln('Fim da operacao');
                    readkey;
                    clrscr;
                    end
                 else
                    begin
                      writeln('Impossivel, pois o numero de colunas da primeira matriz');
                      writeln('nao eh igual ao numero de linhas da segunda matriz!');
                      writeln('Deseja continuar? (y/n)');
                      continue := readkey;
                      clrscr;
                    end;
               end;                                         // Fim - M2M
           5 : begin                                        // Sair ou continuar
                 clrscr;
                 writeln('Sair');
                 writeln('Deseja continuar? (y/n)');
                 continue := readkey;
                 clrscr;
               end
           else
               begin
                 writeln ('Operacao invalida!!');
                 readkey;
                 clrscr;
               end
     end;
  end;
  readkey;
end.

