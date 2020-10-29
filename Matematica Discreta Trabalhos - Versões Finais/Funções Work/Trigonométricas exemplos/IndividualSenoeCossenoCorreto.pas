program IndividualSenoeCossenoCorreto;

uses crt;

//function sin(
  //d: ValReal
//):ValReal;

begin
  Writeln (Sin(Pi):0:1);   { Prints 0.0 }
  Writeln (Sin(Pi/2):0:1); { Prints 1.0 }
  Writeln (Sin(3*(Pi/2)):0:1);
  Writeln (Sin(Pi/4):0:3);
  Writeln (Cos(Pi):0:1);
  Writeln (Cos(Pi/4):0:3);
  readkey;
end.

