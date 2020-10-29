program TrabalhoFuncoesVersaoFinal;

uses crt,math;

var  funcao            :     char;               // Navegador de Funções
     denominador       :     integer;            // Denominador da Função Racional
     baselog           :     float;              // Base da Função Logarítmica
     logaritmando      :     float;              // Logaritmando
     raiz              :     float;              // Função Raíz
     radicando         :     float;              // Radicando da Função Raíz
     indice            :     integer;            // Índice da Função Raíz
     artificio         :     float;              // Radicando para caso especial da Função Raíz
     racional          :     real;               // Função Racional
     basepotencia      :     float;              // Base da Função Exponencial
     expoentpotencia   :     float;              // Expoente da Função Exponencial
     alpha             :     float;              // Ângulo para as Funções Sen, Cos e Tg
     converter         :     float;              // Armazena ângulo convertido nas Funções Sen,Cos e Tg
     coefA             :     real;               // Coeficiente Angular da Função de 1o Grau
     termB             :     real;               // Termo Independente da Função de 1o Grau
     pgopcao           :     integer;            // Navegador de opções da função de 1o Grau
     fpgrau            :     real;               // Resultado da Função de 1o Grau - Opção 2
     pgraiz            :     real;               // Raíz da Função de 1o Grau
     valorX            :     real;               // Valor arbitrário de x nas Funções de 1o e 2o Grau
     coef2G            :     real;               // Coeficiente de 2o Grau da Função Quadrática
     coef1G            :     real;               // Coeficiente de 1o Grau da Função Quadrática
     coefInd           :     real;               // Termo Independente da Função Quadrática
     sgopcao           :     integer;            // Navegador de opções da Função Quadrática
     Discrm            :     real;               // Delta - Função Quadrática
     slt1              :     real;               // x1 do Conjunto S - Função Quadrática
     slt2              :     real;               // x2 do Conjunto S - Função Quadrática
     fsgrau            :     real;               // Resultado da Função Quadrática - Opção 2
     Xvrtce            :     real;               // X do vértice da parábola - Função Quadrática
     Yvrtce            :     real;               // Y do vértice da parábola - Função Quadrática
begin
  writeln('Bem Vindo!');
  writeln('Este programa realiza calculos com funcoes matematicas');
  writeln('Digite qualquer tecla para continuar:');
  readkey;
  clrscr;
  funcao := ' ';           //Valor de Preset
  while funcao <> 'S' do
  Begin
    writeln('Escolha a funcao:');
    writeln('A - Funcao Linear');
    writeln('B - Funcao Quadratica');
    writeln('C - Funcao Exponencial');
    writeln('D - Funcao Logaritmica');
    writeln('E - Funcao Racional');
    writeln('F - Funcao Raiz');
    writeln('G - Funcao Trigonometrica Sen(Alpha)');
    writeln('H - Funcao Trigonometrica Cos(Alpha)');
    writeln('I - Funcao Trigonometrica Tg(Alpha)');
    writeln('S - Sair');
    readln(funcao);
    funcao := upcase(funcao);
    case funcao of
         'A':   Begin             //Função Linear
                     clrscr;
                     writeln('Funcao Linear           F(x)=ax+b                 a<>0');
                     writeln;
                     writeln('OBS: para funcao linear com b passando pela origem,');
                     writeln('digite b como zero!');
                     writeln;
                     // Captação de termos
                     writeln('Digite o coeficiente angular(termo a): ');
                     read(coefA);
                     writeln('Digite o termo independente(termo b): ');
                     read(termB);
                     writeln;
                     // Condição de existência
                     if (coefA <> 0) Then
                         begin
                             if(coefA > 0) and (termB > 0) Then
                                      writeln('F(x)= ',coefA:0:1,'x+',termB:0:1);
                             if(coefA > 0) and (termB < 0) Then
                                      writeln('F(x)= ',coefA:0:1,'x',termB:0:1);
                             if(coefA < 0) and (termB > 0) Then
                                      writeln('F(x)= ',coefA:0:1,'x+',termB:0:1);
                             if(coefA < 0) and (termB < 0) Then
                                      writeln('F(x)= ',coefA:0:1,'x',termB:0:1);
                             pgopcao := 0;    // Valor de Preset
                             writeln;
                             // Sentido da Função
                             if(coefA > 0) Then
                                 writeln('Funcao crescente - O valor de F(x) aumenta conforme o valor de x aumenta!')
                             else
                                 writeln('Funcao decrescente - O valor de F(x) diminui conforme o valor de x aumenta!');
                             writeln;
                             // Navegador de opções - 1o Grau
                             writeln('Escolha entre as opcoes a seguir:');
                             writeln('1 - Determinar a raiz ou zero da funcao(x)');
                             writeln('2 - Arbitrar o valor de x para encontrar sua F(x)');
                             readln(pgopcao);
                             case pgopcao of
                                  1:      begin                 // Determinar o Zero da Função - 1o Grau
                                               writeln('Determinar a raiz      Valor de x onde F(x)=0');
                                               pgraiz := (-termB/coefA);
                                               writeln('x= ',pgraiz:0:1);
                                               writeln;
                                               writeln('Dom(F)= ',pgraiz:0:1,'     Im(F)= 0');
                                               readkey;
                                               clrscr;
                                          end;
                                  2:      begin                // Função de um valor arbitrário para x
                                               writeln('Determinar a funcao de dado valor x');
                                               writeln('Digite o valor de x:');
                                               read(valorX);
                                               if(coefA > 0) and (termB > 0) Then
                                                  writeln('F(',valorX:0:1,')= ',coefA:0:1,'*(',valorX:0:1,')+',termB:0:1);
                                               if(coefA > 0) and (termB < 0) Then
                                                  writeln('F(',valorX:0:1,')= ',coefA:0:1,'*(',valorX:0:1,')',termB:0:1);
                                               if(coefA < 0) and (termB > 0) Then
                                                  writeln('F(',valorX:0:1,')= ',coefA:0:1,'*(',valorX:0:1,')+',termB:0:1);
                                               if(coefA < 0) and (termB < 0) Then
                                                  writeln('F(',valorX:0:1,')= ',coefA:0:1,'*(',valorX:0:1,')',termB:0:1);
                                               fpgrau := (coefA * valorX) + termB;
                                               writeln('F(',valorX:0:1,')= ',fpgrau:0:1);
                                               writeln;
                                               writeln('Dom(F)= ',valorX:0:1,'     Im(F)= ',fpgrau:0:1);
                                               readkey;
                                               clrscr;
                                          end
                                  else
                                          begin
                                               writeln('Opcao invalida1!');
                                               readkey;
                                               clrscr;
                                          end;
                             end;
                         end
                         else
                             begin
                               writeln('Nao e funcao do 1o Grau, pois o termo A possui valor zero!');
                               readkey;
                               clrscr;
                             end;
                end;
         'B':   Begin                   //Função do 2o Grau
                     clrscr;
                     writeln('Funcao Quadratica         F(x)=ax^2+bx+c          a<>0');
                     writeln;
                     // Captação de termos
                     writeln('Digite o coeficiente de 2 Grau');
                     writeln('Determina a concavidade para cima ou para baixo');
                     read(coef2G);
                     writeln('Digite o coeficiente de 1 Grau');
                     writeln('Determina a movimentacao do vertice');
                     read(coef1G);
                     writeln('Digite o coeficiente independente');
                     writeln('Determina onde o grafico corta o eixo y');
                     read(coefInd);
                     clrscr;
                     //Condição de existência
                     if(coef2G <> 0) Then
                        begin
                             if(coef1G > 0) and (coefInd > 0) Then
                                writeln('F(x)= ',coef2G:0:1,'x^2+',coef1G:0:1,'x+',coefInd:0:1);
                             if(coef1G > 0) and (coefInd < 0) Then
                                writeln('F(x)= ',coef2G:0:1,'x^2+',coef1G:0:1,'x',coefInd:0:1);
                             if(coef1G < 0) and (coefInd > 0) Then
                                writeln('F(x)= ',coef2G:0:1,'x^2',coef1G:0:1,'x+',coefInd:0:1);
                             if(coef1G < 0) and (coefInd < 0) Then
                                writeln('F(x)= ',coef2G:0:1,'x^2',coef1G:0:1,'x',coefInd:0:1);
                             sgopcao := 0;       //Valor de Preset
                             // Sentido da Função
                             if(coef2G > 0) Then
                                writeln('Funcao crescente - Parabola com concavidade para cima!')
                             else
                                writeln('Funcao decrescente - Parabola com concavidade para baixo!');
                             writeln;
                             // Navegador de opções - 2o Grau
                             writeln('Escolha entre as opcoes a seguir:');
                             writeln('1 - Determinar a raiz ou zero da funcao(x)');
                             writeln('2 - Arbitrar o valor de x para encontrar sua F(x)');
                             writeln('3 - Determinar o vertice P(Xv,Yv) da parabola');
                             readln(sgopcao);
                             case sgopcao of
                                  1:      begin              // Determinar o Zero da Função - 2o Grau
                                               writeln('Determinar a raiz             Valores de S={x1,x2} onde F(x)=0');
                                               writeln('Determinacao do valor de Delta:');
                                               // Delta
                                               Discrm := ((sqr(coef1G))-(4*coef2G*coefInd));
                                               writeln('Delta= ',Discrm:0:1);
                                               if(Discrm >= 0) Then
                                                  begin
                                                    // Bhaskara
                                                    slt1 := (-(coef1G)+(sqrt(Discrm)))/(2*coef2G);
                                                    slt2 := (-(coef1G)-(sqrt(Discrm)))/(2*coef2G);
                                                    writeln('X1= ',slt1:0:1);
                                                    writeln('X2= ',slt2:0:1);
                                                    writeln;
                                                    writeln('S={',slt1:0:1,', ',slt2:0:1,'}');
                                                    readkey;
                                                    clrscr;
                                                  end
                                               else
                                                  begin
                                                    // Caso Delta negativo
                                                    writeln('Nao existem raizes reais!');
                                                    writeln;
                                                    writeln('S={ }');
                                                    readkey;
                                                    clrscr;
                                                  end;
                                          end;
                                  2:      begin              // Função de um valor arbitrário para x
                                               clrscr;
                                               writeln('Determinar a funcao de dado valor x');
                                               writeln('Digite o valor de x: ');
                                               read(valorX);
                                               if(coef1G > 0) and (coefInd > 0) Then
                                                  writeln('F(',valorX:0:1,')= ',coef2G:0:1,'*(',valorX:0:1,')^2+',coef1G:0:1,'*(',valorX:0:1,')+',coefInd:0:1);
                                               if(coef1G > 0) and (coefInd < 0) Then
                                                  writeln('F(',valorX:0:1,')= ',coef2G:0:1,'*(',valorX:0:1,')^2+',coef1G:0:1,'*(',valorX:0:1,')',coefInd:0:1);
                                               if(coef1G < 0) and (coefInd > 0) Then
                                                  writeln('F(',valorX:0:1,')= ',coef2G:0:1,'*(',valorX:0:1,')^2',coef1G:0:1,'*(',valorX:0:1,')+',coefInd:0:1);
                                               if(coef1G < 0) and (coefInd < 0) Then
                                                  writeln('F(',valorX:0:1,')= ',coef2G:0:1,'*(',valorX:0:1,')^2',coef1G:0:1,'*(',valorX:0:1,')',coefInd:0:1);
                                               fsgrau := (coef2G*(sqr(valorX)))+(coef1G*valorX)+coefInd;
                                               writeln('F(',valorX:0:1,')= ',fsgrau:0:1);
                                               writeln;
                                               writeln('Dom(F)= ',valorX:0:1,'     Im(F)= ',fsgrau:0:1);
                                               readkey;
                                               clrscr;
                                          end;
                                  3:      begin
                                              clrscr;
                                              // Sentido da Função - 2o Grau
                                              if(coef2G > 0) Then
                                                 begin
                                                  writeln('Funcao crescente - Parabola com concavidade para cima!');
                                                  writeln('O Vertice P(Xv,Yv) sera o ponto minimo da parabola!');
                                                 end
                                              else
                                                 begin
                                                  writeln('Funcao decrescente - Parabola com concavidade para baixo!');
                                                  writeln('O Vertice P(Xv,Yv) sera o ponto maximo da parabola!');
                                                 end;
                                              writeln;
                                              writeln('Determinar o vertice P(Xv,Yv)');
                                              writeln;
                                              // Xv e Yv - Cálculo
                                              Xvrtce := (-coef1G)/(2*coef2G);
                                              Yvrtce := (-((sqr(coef1G))-(4*coef2G*coefInd)))/(4*coef2G);
                                              writeln('P(Xv,Yv)= (',Xvrtce:0:2,', ',Yvrtce:0:2,')');
                                              writeln;
                                              // Condição para exibição dos intervalos
                                              if(coef2G > 0) Then
                                                        writeln('Dom(F)=R                   Im(F)=[',Yvrtce:0:2,' ,+ Infinito[')
                                              else
                                                        writeln('Dom(F)=R                   Im(F)=]- Infinito, ',Yvrtce:0:2,']');
                                              readkey;
                                              clrscr;
                                          end
                                  else
                                          begin
                                              writeln('Opcao invalida!');
                                              readkey;
                                              clrscr;
                                          end;
                             end;
                        end
                        else
                                 begin
                                   writeln('Nao e funcao do 2o Grau, pois termo A possui valor zero!');
                                   readkey;
                                   clrscr;
                                 end;
                end;
         'C':   Begin          // Função Exponencial
                     clrscr;
                     writeln('Funcao Exponencial         F(x)=b^x         b>0 e b<>1');
                     writeln;
                     // Captação de termos
                     writeln('Digite a base: ');
                     readln(basepotencia);
                     writeln('Digite o expoente: ');
                     readln(expoentpotencia);
                     writeln;
                     // Condições de existência
                     if(basepotencia > 0) and (basepotencia <> 1) Then
                        begin
                           // Sentido da função
                           if(basepotencia > 1) Then
                              writeln('Funcao crescente - Base possui valor maior que 1!')
                           else
                              writeln('Funcao decrescente - Base possui valor menor que 1!');
                           writeln;
                           // Função Exponencial - Cálculo
                           writeln('F(',expoentpotencia:0:4,')= ',power(basepotencia,expoentpotencia):0:4);
                           writeln;
                           // Condição para explicação sobre o comportamento gráfico do resultado
                           if(basepotencia > 1) Then
                              writeln('Funcao crescente - O valor de F(x) aumenta conforme o valor de x aumenta!')
                           else
                              writeln('Funcao decrescente - O valor de F(x) diminui conforme o valor de x aumenta!');
                           writeln;
                           writeln('Dom(F)= ',expoentpotencia:0:4,'                 Im(F)= ',power(basepotencia,expoentpotencia):0:4);
                           readkey;
                           clrscr;
                        end
                     else
                         begin
                           // Caso de não atender às condições de existência
                           writeln('Nao e funcao exponencial, pois o valor da base nao eh maior que zero');
                           writeln('e nao eh diferente de 1');
                           readkey;
                           clrscr;
                         end;
                end;
         'D':   Begin          // Função Logarítmica
                     clrscr;
                     writeln('Funcao Logaritmica       F(x)=log x na base b        x>0, b>0 e b<>1');
                     writeln;
                     // Captação de termos
                     writeln('Digite o logaritmando(Termo x): ');
                     readln(logaritmando);
                     writeln('Digite a base do logaritmo(Termo b): ');
                     readln(baselog);
                     writeln;
                     // Condições de existência
                     if(logaritmando > 0) and (baselog > 0) and (baselog <> 1) Then
                        begin
                           // sentido da Função
                           if(baselog > 1) Then
                              writeln('Funcao crescente - Base possui valor maior que 1!')
                           else
                              writeln('Funcao decrescente - Base possui valor menor que 1!');
                           writeln;
                           // Função Logarítmica - Cálculo
                           writeln('F(',logaritmando:0:3,') = ',Logn(baselog,logaritmando):0:3);
                           writeln;
                           // Condição para explicação do comportamento gráfico do resultado
                           if(baselog > 1) Then
                               writeln('Funcao crescente - O valor de F(x) aumenta conforme o valor de x aumenta!')
                           else
                               writeln('Funcao decrescente - O valor de F(x) diminui conforme o valor de x aumenta!');
                           writeln;
                           writeln('Dom(F)= ',logaritmando:0:3,'               Im(F)= ',Logn(baselog,logaritmando):0:3);
                           readkey;
                           clrscr;
                        end
                     else
                         begin
                           // Caso de não atender às condições de existência
                           writeln('Nao eh funcao logaritmica, pois o logaritmando nao eh maior que zero,');
                           writeln('e a base nao eh maior que zero e nao eh diferente de 1!');
                           readkey;
                           clrscr;
                         end;
                end;
         'E':   Begin
                     clrscr;
                     writeln('Funcao Racional    F(x)= 1/x       x<>0');
                     writeln;
                     writeln('Digite o valor do numero a ser invertido: ');
                     readln(denominador);
                     writeln;
                     if(denominador <> 0) Then
                        begin
                           racional := 1/denominador;
                           writeln('F(',denominador,') = ',racional:0:3);
                           writeln;
                           writeln('Dom(F)= ',denominador,'              Im(F)= ',racional:0:5);
                           readkey;
                           clrscr;
                        end
                     else
                        begin
                          writeln('Imppossivel, pois o denominador possui valor zero!');
                          readkey;
                          clrscr;
                        end;
                end;
         'F':   Begin         // Função Raíz
                     clrscr;
                     writeln('Funcao Raiz       F(x)=x^1/n');
                     writeln;
                     // Captação de termos
                     writeln('Digite o radicando: ');
                     readln(radicando);
                     writeln('Digite o indice: ');
                     readln(indice);
                     // Estrutura condicional para condição de existência e domínio de função:
                     // Caso não definido no conjunto dos números reais
                     if(radicando < 0) and (indice mod 2 = 0) Then
                                   begin
                                      writeln('Impossivel, pois para radicando negativo o índice deve ser ímpar!');
                                      readkey;
                                      clrscr;
                                   end;
                     // Radicando negativo e índice ímpar
                     if(radicando < 0) and (indice mod 2 = 1) Then
                                  begin
                                     artificio := radicando + (-2)*radicando;
                                     // Função Raíz - Cálculo
                                     raiz := exp (1/indice *ln(artificio));
                                     writeln('Raiz ',indice,' de ',radicando:0:2,' = -',raiz:0:4);
                                     writeln;
                                     writeln('Dom(F)= ',radicando:0:2,'         Im(F)= -',raiz:0:4);
                                     readkey;
                                     clrscr;
                                  end
                     else
                     // Radicando positivo
                                  begin
                                  // Função Raíz - Cálculo
                                     raiz := power(radicando,1/indice);
                                     writeln('Raiz ',indice,' de ',radicando:0:2,' = ',raiz:0:4);
                                     writeln;
                                     writeln('Dom(F)= ',radicando:0:2,'         Im(F)= ',raiz:0:4);
                                     readkey;
                                     clrscr;
                                  end;
                end;
         'G':   Begin        // Função Sen(x)
                     clrscr;
                     writeln('Funcao Trigonometrica Sen(Alpha)         F(Alpha)= Sen(Alpha)     D=R e Im= [-1,1]');
                     writeln;
                     // Captação do ângulo
                     writeln('Digite o angulo Alpha');
                     readln(alpha);
                     // Conversão para radianos e armazenamento: a função só aceita argumentos em radianos
                     converter := degtorad(alpha);
                     // Sen(x) - Cálculo
                     writeln('F(',converter:0:3,')= ',Sin(converter):0:3);
                     writeln;
                     writeln('Dom(F)= ',alpha:0:1,'       Im(F)= ',Sin(converter):0:3);
                     readkey;
                     clrscr;
                end;
         'H':   Begin        // Função Cos(x)
                     clrscr;
                     writeln('Funcao Trigonometrica Cos(Alpha)         F(Alpha)= Cos(Alpha)     D=R e Im= [-1,1]');
                     writeln;
                     // Captação do ângulo
                     writeln('Digite o angulo Alpha');
                     readln(alpha);
                     // Conversão para radianos e armazenamento: a função só aceita argumentos em radianos
                     converter := degtorad(alpha);
                     // Cos(x) - Cálculo
                     writeln('F(',converter:0:3,')= ',Cos(converter):0:3);
                     writeln;
                     writeln('Dom(F)= ',alpha:0:1,'       Im(F)= ',Cos(converter):0:3);
                     readkey;
                     clrscr;
                end;
         'I':   Begin
                     clrscr;
                     writeln('Funcao Trigonometrica Tg(Alpha)    F(Alpha)= Tg(Alpha)');
                     writeln('Dom = xER/x<>(pi/2)+k*pi,xER       Im = [ -Infinito, +Infinito]');
                     writeln;
                     // Captação do ângulo
                     writeln('Digite o angulo Alpha');
                     readln(alpha);
                     // Condições de existência - Tg(x)
                     if(alpha <> 90) and (alpha <> 270) Then
                        begin
                           // Conversão para radianos e armazenamento: a função só aceita argumentos em radianos
                           converter := degtorad(alpha);
                           // Tg(x) - Cálculo
                           writeln('F(',converter:0:3,')= ',Tan(converter):0:3);
                           writeln;
                           writeln('Dom(F)= ',alpha:0:1,'       Im(F)= ',Tan(converter):0:3);
                           readkey;
                           clrscr;
                        end
                     else
                        begin
                          // Caso de não atender às condições de existência
                          writeln('Nao existe tangente para 90 ou 270 graus!');
                          readkey;
                          clrscr;
                        end;
                end;
         'S':   begin
                     writeln('Sair');            // Encerrar o Programa
                end;
         else   begin
                     // Caso de não ser nenhuma das opções do programa
                     writeln('Opcao Invalida!');
                     readkey;
                     clrscr;
                end;
    end;
  end;
end.

