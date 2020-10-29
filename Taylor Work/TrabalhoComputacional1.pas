program TrabalhoComputacional1;

uses crt;

var  x        :       integer;      //Expoente de e^x.

     n        :       integer;      //Número digitado para a série de Taylor.
     i        :       integer;      //Variável de iteração para série de taylor.
     rx       :       double;       //Armazena o valor de e^x.
     rt       :       double;       //Armazena o valor da série de taylor.

     potXaI   :       double;       //Resultado da potência x^i.
     cont     :       integer;      //Contador para potXaI.
     fmp      :       double;      //Fator multiplicativo para potência.
     e        :       integer;      //Expoente da potência.

     fat      :       double;      //Fatorial.
     cont1    :       integer;      //Contador para o fatorial.
     s        :       double;         //Somatório da série de taylor.
begin
  writeln('Bem vindo!');                                                      //Warm Welcome. I'm a prototype!!!
  writeln('Este programa compara o valor de e^x com o equivalente obtido ');
  writeln('na serie de Taylor');
  writeln('Pressione qualquer tecla para continuar');
  readkey;
  writeln('Digite o valor x de e^x: ');                                       //Leitura do expoente de e escolhido pelo user.
  read(x);
  writeln('Agora, digite o valor n para a serie de Taylor: ');
  writeln('dicas: 9 para x = 2; 12 para x = 3; 13 para x = 4');               //Leitura do valor para iterar na série de taylor.
  read(n);
  rx := exp(x);                                                               //Função e^x disponível no Lazarus.
  writeln('Resultado para comparacao: ',rx:0:10);
  writeln();
  delay(2000);
  writeln('Para iniciar o calculo com a serie de Taylor, pressione qualquer tecla');
  readkey;
  for i := 0 to n do                                                          //Início dos cálculos.
  begin
    //rt := (potenciaXaI/fatorialI);
    writeln('Calculo da potencia: ');                                         //É um laço for com 6 variáveis ao todo:
    fmp := 1;                                                                 //É instituido um fator multiplicativo com preset 1 necessário para-
    e := i;                                                                   //-operar com x, que na série se torna a base da potenciação.Este fator guarda o último resultado da operação em cada ciclo. "e" é o-
    for cont := 1 to e do                                                     //-expoente da potenciação e segue o valor de i. Foi instituido como uma variável auxiliar-
    begin                                                                     //-o processo de iteração/contagem.
      fmp := fmp * x;                                                         //potXaI é auxiliar e serve apenas para armazenar o resultado já armazenado em fmp, sendo, na verdade, desnecessário.
      potXaI := fmp;
    end;
    writeln('Resultado da potencia ',potXaI:0:1);                             //Exibindo o resultado em cada ciclo realizado.
    writeln('Calculo do fatorial: ');
    delay(1000);
    fat := 1;                                                                 //O laço for do fatorial é parecido como da potenciação, com a diferença de decrementar no decorrer dos ciclos e-
    for cont1 := i downto 1 do                                                //-usar o próprio contador interno dele para operar com a fat, que é o fatorial.
    begin                                                                     //fat armazena o último valor de fatorial após cada ciclo performado.
      fat := fat * cont1;
    end;
    writeln(i,'! = ',fat);
    rt := fmp / fat;                                                          // rt é a divisão da potenciação de cada ciclo pelo fatorial obtido no mesmo ciclo.
    s := s + rt;                                                              //Para obter o total do somatório, é instituido uma soma s, que atualiza seu valor após cada ciclo calculado e exibe o resultado final no fim do laço for externo.
  end;
  writeln('Agora ... o somatório!');                                          //À partir daqui, são detalhes de exibição dos resultados do programa.
  writeln();
  delay (1000);                                                               //Overview:
  writeln('O reultado da serie de taylor: ',s:0:5);                           // O programa consiste em um laço for externo que conta os ciclos do somatório geral(laço principal) e
  writeln();                                                                  //-dois laços internos de mesma hierarquia/magnitude que executam as funções de potenciação e fatorial, respectivamente.
  delay (1000);                                                               //A soma e a regra do somatório rt são executadas no laço principal
  writeln('Comparando e^x com a serie de taylor ... ');
  writeln('e^x = ',rx:0:5,';   |','Serie de Taylor = ',s:0:5,';');
  writeln();
  writeln('Para x = ',x,' e n = ',n);
  readkey;
end.

