Program ExemploSairYN;
Uses  Crt;
Label 1;  {this is used with a goto statement}
Var Sel: String;
    N1,N2, Total : Real;
    YN : Char;  {this is a character variable type, which holds single characters ONLY}

Begin
	1:Clrscr;
	Total := 0;  {always initialise integer/real variables}
	GotoXy(4,3);
	Writeln('1.Addition');
	GotoXy(4,4);
	Writeln('2.Subtraction');
	GotoXy(4,5);
	Writeln('3.Exit');
	GotoXy(6,8);
	Write('Select: ');
	Sel := Readkey;

	If Sel = '1' {action} Then
	Begin  {more than one statement}
		ClrScr;
		Write('Input No.1:');
		Readln(N1);
		Write('Input No.2:');
		Readln(N2);
		Total := N1 + N2;
		Writeln('Addition: ',N1:2:3,' + ',N2:2:3,' = ',Total:2:3);
		Write('Press any key to continue...');
		Readkey;
		Goto 1;{this leads back to the beginning of the program, otherwise the program terminates}
	End;  {Closing the if statement(begin)}

	If Sel = '2' Then {note that the assignment statement is not used within an if statement}
	Begin
		ClrScr;
		Write('Input No.1:');
		Readln(N1);
		Write('Input No.2:');
		Readln(N2);
		Total := N1 - N2;
		Write('Subtraction: ');
		Write(N1:2:3,' - ',N2:2:3,' = ',Total:2:3);
		Write('Press any key to continue...');
		Readkey;
		Goto 1;
	End;  {Closing the if statement}

	If Sel = '3' Then
	Begin
		ClrScr;
		Write('Are you sure?(Y/N)');
		YN := Readkey;
		If YN = 'y' Then Halt; {1 action, so no need of Begin..End}
		If YN = 'n' Then Goto 1; {the goto statement is not recommended for excessive use}
	End;
End.
