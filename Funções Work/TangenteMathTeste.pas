program TangenteMathTeste;

Uses crt,math;

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

