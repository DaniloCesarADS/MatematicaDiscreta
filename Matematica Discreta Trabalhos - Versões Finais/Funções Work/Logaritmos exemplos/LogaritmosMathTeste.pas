program LogaritmosMathTeste;

uses crt,math;
  //Source position: math.pp line 313

  //function logn(
  //n: float;
  //x: float
  //):float;
begin
  Writeln(Logn(10,1000):8:4);
  Writeln(Logn(2,4):8:4);
  Writeln(Logn(6,9):8:4);
  Writeln(Logn(exp(1),exp(1)):8:4);
  Writeln(Logn(0.5,1):8:4);
  Writeln(Logn(0.25,3):8:4);
  Writeln(Logn(0.125,5):8:4);
  Readkey;
end.

