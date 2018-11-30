unit unit3;

{$mode objfpc}{$H+}

interface

uses
  FileUtil,
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Menus,
  Dialogs, ImgList, StdCtrls, ExtCtrls, ComCtrls, TBX, TB2Dock, TB2Toolbar,

  TB2Item, TBXMDI, TBXSwitcher,
  TBXExtItems, TBXLists, TBXDkPanels, TBXToolPals, TBXStatusBars,

  Buttons;


type

 { TForm2 }

 TForm2 = class(TForm)
  Button1: TButton;
  procedure Button1Click(Sender: TObject);
 private
   TBXPageScroller1: TTBXPageScroller; // TTBXPageScroller;
 public

 end;

var
 Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }


procedure TForm2.Button1Click(Sender: TObject);
var
  TBXDock : TTBXToolbar;
begin
  TBXDock := TTBXToolbar.Create(Self);   //TTBXPageScroller
  TBXDock.Parent := Self;
  TBXDock.Left := 0;
  TBXDock.Height := 191;
  TBXDock.Top := 0;
  TBXDock.Width := 127;
  TBXDock.Align := alClient;
  TBXDock.TabOrder := 0;



{  TBXDock := TTBXDock.Create(Self);   //TTBXPageScroller
  TBXDock.Parent := Self;
  TBXDock.Left := 0;
  TBXDock.Height := 191;
  TBXDock.Top := 0;
  TBXDock.Width := 127;
  TBXDock.Align := alClient;
  TBXDock.TabOrder := 0;


  TBXPageScroller1 := TTBXPageScroller.Create(Self);   //TTBXPageScroller
  TBXPageScroller1.Parent := Self;
  TBXPageScroller1.Left := 0;
  TBXPageScroller1.Height := 191;
  TBXPageScroller1.Top := 0;
  TBXPageScroller1.Width := 127;
  TBXPageScroller1.Align := alClient;
  TBXPageScroller1.AutoRange := True;
  TBXPageScroller1.TabOrder := 0;}
end;

end.

