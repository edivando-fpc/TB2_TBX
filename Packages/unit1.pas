unit Unit1;

{$mode objfpc}{$H+}

interface

uses
 Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
 TBX, TBXColorConsts, TBXConsts, TBXDkPanels, TBXExtItems, TBXLists, TBXMDI,
 TBXStatusBars, TBXStrEdit, TBXSwitcher, TBXThemes, TBXToolPals, TBXUtils,
 TBXUxThemes, TBXAluminumTheme, TBXDefaultTheme, TBXOfficeXPTheme,
 TBXStripesTheme;

type

 { TForm1 }

 TForm1 = class(TForm)
  Button1: TButton;
  procedure Button1Click(Sender: TObject);
 private

 public

 end;

var
 Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

end.

