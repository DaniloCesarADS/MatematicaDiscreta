program TangenteMathTeste;

Uses crt,math;
//Source position: math.pp line 268

//function tan(
  //x: float
//):float;

//Detalhe - Float

Procedure DoTan(Angle : Float);

begin
  Write('Angle : ',RadToDeg(Angle):8:6);
  Writeln(' Tangent : ',Tan(Angle):8:6);
end;

begin
  DoTan(0);
  DoTan(Pi);
  DoTan(Pi/3);
  DoTAn(Pi/4);
  DoTan(Pi/6);
  Readkey;
end.

