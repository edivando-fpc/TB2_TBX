program Project1;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

uses
  Interfaces,
  Forms,
  Unit1 {Form1},
  Unit2 {Form2},
  Demo1 {frmDemo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDemo, frmDemo);
  Application.Run;
end.
