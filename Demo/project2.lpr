program project2;

{$mode objfpc}{$H+}

uses
 {$IFDEF UNIX}{$IFDEF UseCThreads}
 cthreads,
 {$ENDIF}{$ENDIF}
 Interfaces, // this includes the LCL widgetset
 Forms, unit3;

{$R *.res}

begin
 RequireDerivedFormResource:=True;
 Application.Initialize;
Application.CreateForm(TForm2, Form2);
 Application.Run;
end.

