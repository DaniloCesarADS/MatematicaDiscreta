program SenoCossenoMathTeste;

Uses crt,math;
//Source position: math.pp line 271

//procedure sincos(
  //theta: float;
  //out sinus: float;
  //out cosinus: float
//);   Detalhe - Float

Procedure dosincos(Angle : Float);

Var
  Sine,Cosine : Float;

begin
  sincos(angle,sine,cosine);
  Write('Angle : ',Angle:8:6);
  Write(' Sine :',sine:8:6);
  Write(' Cosine :',cosine:8:6);
end;

begin
  dosincos(pi);
  dosincos(pi/2);
  dosincos(pi/3);
  dosincos(pi/4);
  dosincos(pi/6);
  Readkey;
end.

