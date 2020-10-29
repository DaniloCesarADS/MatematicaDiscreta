program ContagemSomaElementosVetor;
uses crt;
var  v   :       array[1..5] of integer;
     soma  :           integer;
     cont  :           integer;


begin
  soma := 0;
  writeln('Digite os 5 numeros: ');
  for cont := 1 to 5 do
      readln(v[cont]);
  for cont := 1 to 5 do
      soma := soma + (v[cont]);
  writeln ('Soma = ',soma);
  readkey;
end.

