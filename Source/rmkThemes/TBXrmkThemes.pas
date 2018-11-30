// TBX Package
// Copyright 2001-2002 Alex A. Denisov. All Rights Reserved
// See TBX.chm for license and installation instructions
//
// TBXrmkThemes ©2004 Roy Magne Klever
// roymagne@rmklever.com
//
// Version for TBX version 2.1
// Last updated: 02.12.2004

unit TBXrmkThemes;
{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}
interface


uses
{$IFDEF Delphi16}
  UITypes, // System.Types (included for inline expansion)
{$ENDIF}
  Types,   // System.Types (included for inline expansion)
  {$IFnDEF FPC} Windows, Messages, {$ELSE}
  Windows, WinDelphi, LclIntf, LCLType, LCLStrConsts, Win32Int, InterfaceBase, LMessages, classes,
  {$ENDIF}
  Graphics,
  TBXUtils;

procedure ButtonFrame(Canvas: TCanvas; R: TRect; RL, RR: Integer; c1, c2, c3:
  TColor);
procedure SmartFrame(Canvas: TCanvas; R: TRect; RL, RR: Integer; c1, c2: TColor);
procedure GradientGlass(const Canvas: TCanvas; const ARect: TRect;
            const Aqua:Boolean; const Direction: TGradientDirection);  Overload;
procedure GradientGlass(const Canvas: TCanvas; const ARect: TRect;
            const Aqua, Dark: Boolean; const Direction: TGradientDirection); Overload;
procedure OLDGradientFill(const Canvas: TCanvas; const ARect: TRect;
  const StartColor, EndColor: TColor; const Direction: TGradientDirection);

// ---
{ LOW LEVEL }
function GradientFillWinEnabled: Boolean;
function GradientFillWin(DC: HDC; PVertex: Pointer; NumVertex: Cardinal;
  PMesh: Pointer; NumMesh, Mode: Cardinal): BOOL;
{ HIGH LEVEL }
procedure GradientFill(DC: HDC; const ARect: TRect;
  StartColor, EndColor: TColor; Direction: TGradientDirection); overload;
procedure GradientFill(Canvas: TCanvas; const ARect: TRect;
  StartColor, EndColor: TColor; Direction: TGradientDirection); overload;

{ Redeclare TRIVERTEX }
type
  {$EXTERNALSYM COLOR16}
  COLOR16 = Word; { in Delphi Windows.pas wrong declared as Shortint }

  PTriVertex = ^TTriVertex;
  {$EXTERNALSYM _TRIVERTEX}
  _TRIVERTEX = packed record
    x     : Longint;
    y     : Longint;
    Red   : COLOR16;
    Green : COLOR16;
    Blue  : COLOR16;
    Alpha : COLOR16;
  end;
  TTriVertex = _TRIVERTEX;
  {$EXTERNALSYM TRIVERTEX}
  TRIVERTEX = _TRIVERTEX;
// ---


implementation

// ---
type
  TGradientFillWin = function(DC: HDC; PVertex: Pointer; NumVertex: ULONG;
    Mesh: Pointer; NumMesh, Mode: ULONG): BOOL; stdcall;
  TGradientFill = procedure(DC: HDC; const ARect: TRect;
    StartColor, EndColor: TColor; Direction: TGradientDirection);
var
  InitDone        : Boolean = False;
  MSImg32Module   : THandle;
  GradFillWinProc : TGradientFillWin;
  GradFillProc    : TGradientFill;
// ----

procedure ButtonFrame(Canvas: TCanvas; R: TRect; RL, RR: Integer; c1, c2, c3:
  TColor);
var
  Color: TColor;
begin
  with Canvas, R do
  begin
    Color := Pen.Color;
    Pen.Color := c1;
    Dec(Right);
    Dec(Bottom);
    Polyline([
       Point(Left + RL, Top),
       Point(Right - RR, Top),
       Point(Right, Top + RR),
       Point(Right, Bottom - RR),
       Point(Right - RR, Bottom),
       Point(Left + RL, Bottom),
       Point(Left, Bottom - RL),
       Point(Left, Top + RL),
       Point(Left + RL, Top)
        ]);

    if c2 <> clNone then
    begin
      Pen.Color := c2;
      Polyline([
         Point(Right, Top + RR),
         Point(Right, Bottom - RR),
         Point(Right - RR, Bottom),
         Point(Left + RL - 1, Bottom)
          ]);
    end;

    Pen.Color := c3;
    if RR > 0 then
    begin
      Inc(Right);
      MoveTo(Right - RR, Top);
      LineTo(Right, Top + RR);
      MoveTo(Right - RR, Bottom);
      LineTo(Right, Bottom - RR);
      Dec(Right);
    end;

    if RL > 0 then
    begin
      Dec(Left);
      MoveTo(Left + RL, Top);
      LineTo(Left, Top + RL);
      MoveTo(Left + RL, Bottom);
      LineTo(Left, Bottom - RL);
      Inc(Left);
    end;

    Inc(Right);
    Inc(Bottom);
    Pen.Color := Color;
  end;
end;

procedure SmartFrame(Canvas: TCanvas; R: TRect; RL, RR: Integer; c1, c2: TColor);
var
  Color: TColor;
begin
  with Canvas, R do
  begin
    Color := Pen.Color;
    Pen.Color := c1;
    Dec(Right);
    Dec(Bottom);
    Polyline([
       Point(Left + RL, Top),
       Point(Right - RR, Top),
       Point(Right, Top + RR),
       Point(Right, Bottom - RR),
       Point(Right - RR, Bottom),
       Point(Left + RL, Bottom),
       Point(Left, Bottom - RL),
       Point(Left, Top + RL),
       Point(Left + RL, Top)
        ]);
    if c2 <> clNone then
    begin
      Pen.Color := c2;
      Polyline([
       Point(Right, Top + RR),
       Point(Right, Bottom - RR),
       Point(Right - RR, Bottom),
       Point(Left + RL - 1, Bottom)
          ]);
    end;

    Pen.Color := Blend(Pixels[Left, Top], c1, 60);
    if RL > 0 then
    begin
      Dec(Left);
      MoveTo(Left + RL, Top);
      LineTo(Left, Top + RL);
      MoveTo(Left + RL, Bottom);
      LineTo(Left, Bottom - RL);
      Inc(Left);
    end;

    if c2 <> clNone then
      Pen.Color := Blend(Pixels[Right, Bottom], c2, 60);
    if RR > 0 then
    begin
      Inc(Right);
      MoveTo(Right - RR, Top);
      LineTo(Right, Top + RR);
      MoveTo(Right - RR, Bottom);
      LineTo(Right, Bottom - RR);
      Dec(Right);
    end;

    Inc(Right);
    Inc(Bottom);
    Pen.Color := Color;
  end;
end;

procedure GradientGlass(const Canvas: TCanvas; const ARect: TRect;
  const Aqua, Dark: Boolean; const Direction: TGradientDirection);
var
  GSize: Integer;
  rc1, rc2, gc1, gc2, bc1, bc2, rc3, gc3, bc3, rc4, gc4, bc4,
    r, g, b, y1, i, d1, d2: Integer;

  Brush: HBrush;
begin
  if Aqua then
  begin
    if Dark then
    begin
      rc1 := $e0; rc2 := $70; rc3 := $60; rc4 := $A0;
      gc1 := $e8; gc2 := $A0; gc3 := $D0; gc4 := $EF;
      bc1 := $EF; bc2 := $D0; bc3 := $E0; bc4 := $EF;
    end else
    begin
      rc1 := $f0; rc2 := $80; rc3 := $70; rc4 := $B0;
      gc1 := $f8; gc2 := $B0; gc3 := $E8; gc4 := $FF;
      bc1 := $FF; bc2 := $E0; bc3 := $F0; bc4 := $FF;
    end;
  end else
  begin
    rc1 := $F8; rc2 := $d8; rc3 := $f0; rc4 := $F8;
    gc1 := $F8; gc2 := $d8; gc3 := $f0; gc4 := $F8;
    bc1 := $F8; bc2 := $d8; bc3 := $f0; bc4 := $F8;
  end;

  if Direction = gdVertical then
  begin
    GSize := (ARect.Bottom - ARect.Top) - 1;
    y1 := GSize div 3;
    if y1 = 0  then y1:= 1;
    d1 := y1;
    d2 := y1 + y1;
    for i := 0 to y1 do
    begin
      r := rc1 + (((rc2 - rc1) * (i)) div y1);
      g := gc1 + (((gc2 - gc1) * (i)) div y1);
      b := bc1 + (((bc2 - bc1) * (i)) div y1);
      if r < 0 then r := 0 else if r > 255 then r := 255;
      if g < 0 then g := 0 else if g > 255 then g := 255;
      if b < 0 then b := 0 else if b > 255 then b := 255;
      Brush := CreateSolidBrush(
        RGB(r, g, b));
      Windows.FillRect(Canvas.Handle, Rect(ARect.Left, ARect.Top + i, ARect.Right, ARect.Top + i + 1), Brush);
      DeleteObject(Brush);
    end;

    for i := y1 to d2 do
    begin
      r := rc2 + (((rc3 - rc2) * (i - d1)) div y1);
      g := gc2 + (((gc3 - gc2) * (i - d1)) div y1);
      b := bc2 + (((bc3 - bc2) * (i - d1)) div y1);
      if r < 0 then r := 0 else if r > 255 then r := 255;
      if g < 0 then g := 0 else if g > 255 then g := 255;
      if b < 0 then b := 0 else if b > 255 then b := 255;
      Brush := CreateSolidBrush(
        RGB(r, g, b));
      Windows.FillRect(Canvas.Handle, Rect(ARect.Left, ARect.Top + i, ARect.Right, ARect.Top + i + 1), Brush);
      DeleteObject(Brush);
    end;

    for i := d2 to GSize do
    begin
      r := rc3 + (((rc4 - rc3) * (i - d2)) div y1);
      g := gc3 + (((gc4 - gc3) * (i - d2)) div y1);
      b := bc3 + (((bc4 - bc3) * (i - d2)) div y1);
      if r < 0 then r := 0 else if r > 255 then r := 255;
      if g < 0 then g := 0 else if g > 255 then g := 255;
      if b < 0 then b := 0 else if b > 255 then b := 255;
      Brush := CreateSolidBrush(
        RGB(r, g, b));
      Windows.FillRect(Canvas.Handle, Rect(ARect.Left, ARect.Top + i, ARect.Right, ARect.Top + i + 1), Brush);
      DeleteObject(Brush);
    end;
  end else
  begin
    GSize := (ARect.Right - ARect.Left) - 1;
    y1 := GSize div 3;
    if y1 = 0  then y1:= 1;
    d1 := y1;
    d2 := y1 + y1;
    for i := 0 to y1 do
    begin
      r := rc1 + (((rc2 - rc1) * (i)) div y1);
      g := gc1 + (((gc2 - gc1) * (i)) div y1);
      b := bc1 + (((bc2 - bc1) * (i)) div y1);
      if r < 0 then r := 0 else if r > 255 then r := 255;
      if g < 0 then g := 0 else if g > 255 then g := 255;
      if b < 0 then b := 0 else if b > 255 then b := 255;
      Brush := CreateSolidBrush(
        RGB(r, g, b));
      Windows.FillRect(Canvas.Handle, Rect(ARect.Left + i, ARect.Top, ARect.Left + i + 1, ARect.Bottom), Brush);
      DeleteObject(Brush);
    end;
    for i := y1 to d2 do
    begin
      r := rc2 + (((rc3 - rc2) * (i - d1)) div y1);
      g := gc2 + (((gc3 - gc2) * (i - d1)) div y1);
      b := bc2 + (((bc3 - bc2) * (i - d1)) div y1);
      if r < 0 then r := 0 else if r > 255 then r := 255;
      if g < 0 then g := 0 else if g > 255 then g := 255;
      if b < 0 then b := 0 else if b > 255 then b := 255;
      Brush := CreateSolidBrush(
        RGB(r, g, b));
      Windows.FillRect(Canvas.Handle, Rect(ARect.Left + i, ARect.Top, ARect.Left + i + 1, ARect.Bottom), Brush);
      DeleteObject(Brush);
    end;
    for i := d2 to GSize do
    begin
      r := rc3 + (((rc4 - rc3) * (i - d2)) div y1);
      g := gc3 + (((gc4 - gc3) * (i - d2)) div y1);
      b := bc3 + (((bc4 - bc3) * (i - d2)) div y1);
      if r < 0 then r := 0 else if r > 255 then r := 255;
      if g < 0 then g := 0 else if g > 255 then g := 255;
      if b < 0 then b := 0 else if b > 255 then b := 255;
      Brush := CreateSolidBrush(
        RGB(r, g, b));
      Windows.FillRect(Canvas.Handle, Rect(ARect.Left + i, ARect.Top, ARect.Left + i + 1, ARect.Bottom), Brush);
      DeleteObject(Brush);
    end;
  end;
end;

procedure GradientGlass(const Canvas: TCanvas; const ARect: TRect;
  const Aqua: Boolean; const Direction: TGradientDirection);
begin
  GradientGlass(Canvas, Arect, Aqua, False, Direction);
end;

procedure OLDGradientFill(const Canvas: TCanvas; const ARect: TRect;
  const StartColor, EndColor: TColor;
  const Direction: TGradientDirection);
var
  rc1, rc2, gc1, gc2, bc1, bc2, Counter, GSize: Integer;
  Brush: HBrush;
begin
  rc1 := GetRValue(ColorToRGB(StartColor));
  gc1 := GetGValue(ColorToRGB(StartColor));
  bc1 := GetBValue(ColorToRGB(StartColor));
  rc2 := GetRValue(ColorToRGB(EndColor));
  gc2 := GetGValue(ColorToRGB(EndColor));
  bc2 := GetBValue(ColorToRGB(EndColor));

  if Direction = gdVertical then
  begin
    GSize := (ARect.Bottom - ARect.Top) - 1;
    if GSize = 0  then GSize:= 1;
    for Counter := 0 to GSize do
    begin
      Brush := CreateSolidBrush(
        RGB(
          Byte(rc1 + (((rc2 - rc1) * (Counter)) div GSize)),
          Byte(gc1 + (((gc2 - gc1) * (Counter)) div GSize)),
          Byte(bc1 + (((bc2 - bc1) * (Counter)) div GSize)))
        );
      Windows.FillRect(Canvas.Handle, Rect(ARect.Left,
                                           ARect.Top,
                                           ARect.Right,
                                           ARect.Bottom - Counter), Brush);
      DeleteObject(Brush);
    end;
  end else
  begin
    GSize := (ARect.Right - ARect.Left) - 1;
    if GSize = 0  then GSize:= 1;
    for Counter := 0 to GSize do
    begin
      Brush := CreateSolidBrush(
        RGB(Byte(rc1 + (((rc2 - rc1) * (Counter)) div GSize)),
        Byte(gc1 + (((gc2 - gc1) * (Counter)) div GSize)),
        Byte(bc1 + (((bc2 - bc1) * (Counter)) div GSize))));
      Windows.FillRect(Canvas.Handle, Rect(ARect.Left, ARect.Top, ARect.Right - Counter, ARect.Bottom), Brush);
      DeleteObject(Brush);
    end;
  end;
end;


// Code belowe is from Vladimir Bochkarev

(******************************************************************************)
procedure
  InitializeGradientFill; forward;
(******************************************************************************)
{ GradientFillWin }
(******************************************************************************)
function GradFillWinInitProc(DC: HDC; PVertex: Pointer; NumVertex: ULONG;
  Mesh: Pointer; NumMesh, Mode: ULONG): BOOL; stdcall;
begin
  InitializeGradientFill;
  Result := GradFillWinProc(DC, PVertex, NumVertex, Mesh, NumMesh, Mode);
end;
(******************************************************************************)
function GradFillWinNone(DC: HDC; PVertex: Pointer; NumVertex: ULONG;
  Mesh: Pointer; NumMesh, Mode: ULONG): BOOL; stdcall;
begin
  Result := False;
end;
(******************************************************************************)
function GradientFillWin(DC: HDC; PVertex: Pointer; NumVertex: Cardinal;
  PMesh: Pointer; NumMesh, Mode: Cardinal): BOOL;
begin
  Result := GradFillWinProc(DC, PVertex, NumVertex, PMesh, NumMesh, Mode);
end;
(******************************************************************************)
function GradientFillWinEnabled: Boolean;
begin
  if not InitDone then InitializeGradientFill;
  Result := @GradFillWinProc <> @GradFillWinNone;
end;
(******************************************************************************)
{ GradientFill }
(******************************************************************************)
procedure GradFillInitProc(DC: HDC; const ARect: TRect;
  StartColor, EndColor: TColor; Direction: TGradientDirection);
begin
  InitializeGradientFill;
  GradFillProc(DC, ARect, StartColor, EndColor, Direction);
end;
(*****************************************************************************)
procedure GradFillInt(DC: HDC; const ARect: TRect;
  StartColor, EndColor: TColor; Direction: TGradientDirection);
var
  FillRect    : TRect;
  RS, GS, BS  : TColor;
  RE, GE, BE  : TColor;
  LineCount   : Integer;
  CurLine     : Integer;
  //----------------------------------------------------------------------------
  procedure InternalFillRect;
  var Brush: HBRUSH;
  begin
    Brush := CreateSolidBrush(
      RGB((RS+ (((RE- RS)* CurLine) div LineCount)),
          (GS+ (((GE- GS)* CurLine) div LineCount)),
          (BS+ (((BE- BS)* CurLine) div LineCount))));
    Windows.FillRect(DC, FillRect, Brush);
    DeleteObject(Brush);
  end;
  //----------------------------------------------------------------------------
begin
  FillRect := ARect;
  if StartColor < 0 then
    StartColor := Integer(GetSysColor(StartColor and $000000FF));
  if EndColor < 0 then
    EndColor := Integer(GetSysColor(EndColor and $000000FF));
  RS := GetRValue(Cardinal(StartColor));
  GS := GetGValue(Cardinal(StartColor));
  BS := GetBValue(Cardinal(StartColor));
  RE := GetRValue(Cardinal(EndColor));
  GE := GetGValue(Cardinal(EndColor));
  BE := GetBValue(Cardinal(EndColor));
  if Direction = gdHorizontal then
  begin
    FillRect.Right := FillRect.Left+ 1;
    LineCount := ARect.Right- ARect.Left;
    for CurLine := 1 to LineCount do
    begin
      InternalFillRect;
      Inc(FillRect.Left);
      Inc(FillRect.Right);
    end;
  end
  else begin
    FillRect.Bottom := FillRect.Top+ 1;
    LineCount := ARect.Bottom- ARect.Top;
    for CurLine := 1 to LineCount do
    begin
      InternalFillRect;
      Inc(FillRect.Top);
      Inc(FillRect.Bottom);
    end;
  end;
end;
(******************************************************************************)
procedure GradFillWin(DC: HDC; const ARect: TRect;
  StartColor, EndColor: TColor; Direction: TGradientDirection);
var
  Vertexs: array[0..1] of TTriVertex;
  //----------------------------------------------------------------------------
  procedure SetVertex(Index, AX, AY, AColor: TColor);
  begin
    with Vertexs[Index] do
    begin
      X     := AX;
      Y     := AY;
      Red   := (AColor and $000000FF) shl 8;
      Green := (AColor and $0000FF00);
      Blue  := (AColor and $00FF0000) shr 8;
      Alpha := 0;
    end;
  end;
  //----------------------------------------------------------------------------
var
  GRect : TGradientRect;
  Mode  : Cardinal;
begin
  if StartColor < 0 then
    StartColor := Integer(GetSysColor(StartColor and $000000FF));
  if EndColor < 0 then
    EndColor := Integer(GetSysColor(EndColor and $000000FF));
  SetVertex(0, ARect.Left, ARect.Top, StartColor);
  SetVertex(1, ARect.Right, ARect.Bottom, EndColor);
  with GRect do
  begin
    UpperLeft  := 0;
    LowerRight := 1;
  end;
  if Direction = gdHorizontal
    then Mode := GRADIENT_FILL_RECT_H
    else Mode := GRADIENT_FILL_RECT_V;
      GradientFillWin(DC, @Vertexs, 2, @GRect, 1, Mode);
end;
(******************************************************************************)

procedure GradientFill(DC: HDC; const ARect: TRect;
  StartColor, EndColor: TColor; Direction: TGradientDirection);
begin
  GradFillProc(DC, ARect, StartColor, EndColor, Direction);
end;

(******************************************************************************)
procedure GradientFill(Canvas: TCanvas; const ARect: TRect;
  StartColor, EndColor: TColor; Direction: TGradientDirection);
begin
  GradientFill(Canvas.Handle, ARect, EndColor, StartColor, Direction);
end;

{ Initializations }
(******************************************************************************)
procedure InitializeGradientFill;
begin
  if InitDone then Exit;
  MSImg32Module := LoadLibrary('msimg32.dll');
  if MSImg32Module <> 0
    then GradFillWinProc := GetProcAddress(MSImg32Module, 'GradientFill')
    else GradFillWinProc := nil;
  if @GradFillWinProc = nil then
  begin
    GradFillWinProc := GradFillWinNone;
    GradFillProc    := GradFillInt;
  end
  else GradFillProc := GradFillWin;
  InitDone := True;
end;
(******************************************************************************)
procedure UninitializeGradientFill;
begin
  if MSImg32Module <> 0 then FreeLibrary(MSImg32Module);
end;
(******************************************************************************)
initialization
  GradFillWinProc := GradFillWinInitProc;
  GradFillProc    := GradFillInitProc;
finalization
  UninitializeGradientFill;
(******************************************************************************)
end.
