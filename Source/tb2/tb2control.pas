unit tb2Control;

{$IFDEF FPC}
{$mode objfpc}{$H+}
{$OBJECTCHECKS OFF}
{$ENDIF}

interface

uses
  // RTL headers
  Windows, Classes, SysUtils, Forms, Messages,
{$IFDEF FPC}
  WinDelphi, LCLType, LCLIntf, LMessages, LCLProc, Win32WSControls, Win32Int, Win32WSStdCtrls, win32proc,
{$ENDIF}
  Graphics, Controls, StdCtrls;

type
  { TTB2CustomControl }
{$IFDEF FPC}  PLMNCCalcSize = ^TLMNCCalcSize; {$ENDIF}

  TTB2CustomControl = class(TCustomControl)
  protected
{$IFDEF FPC}
    procedure WndProc(var Message: TLMessage);// override;
{$ENDIF}
  public
    constructor Create(AOwner: TComponent); override;
  end;


type
  // the function is called during WM_NCPAINT message handling
  // Handled must be set to "true" to prevent Windows default handling of the message
  // if set to true, the resulting value of the function would be used as result for message handler
  TNCPaintProc = function (AHandle: THandle; TB2Control: TCustomControl; WParam: WParam; LParam: LParam; var Handled: Boolean): LResult;
  TLastMsgID = record
    Control: HWnd;
    Msg    : UInt;
  end;

{$IFDEF FPC}
var
  PrevWndProc: Windows.WNDPROC = Nil;
  LastMsgID : TLastMsgID;
{$ENDIF}

implementation

{
function WndCallback(Ahwnd: HWND; uMsg: UINT; wParam: WParam; lParam: LParam):LRESULT; stdcall;

function WndCallback(Ahwnd: HWND; uMsg: UINT; wParam: WParam; lParam: LParam):LRESULT; stdcall;
begin
  if uMsg = WM_NCCALCSIZE then
  begin
    result    := Windows.DefWindowProc(Ahwnd, uMsg, WParam, LParam);  //not sure about this one
//    if result = windows.HTCAPTION then
//      result := windows.HTCLIENT;
    exit;
  end;
  result := Windows.CallWindowProc(PrevWndProc, Ahwnd, uMsg, WParam, LParam);
end;}

{$IFDEF FPC}
function TB2WinControlProc(Window: HWnd; Msg: UInt; WParam: WParam; LParam: LParam): LResult; stdcall;
var
  Control, ControlChild       : TWinControl;
  ControlHandle : HWnd;
  i : integer;
  Msg_: TMsg;
  WindowInfo: PWin32WindowInfo;
  LMNCCalcSize : PLMNCCalcSize;
  NCCalcSizeParams: PNCCalcSizeParams;
begin
{  Control := FindControl(Window);
  if Assigned(Control) and Assigned(Control.Owner) and (Control.Owner is TCustomForm) then
  begin
    Control.Dispatch(Msg);

{    for i := 0 to Pred(Control.ComponentCount) do
    begin
      if Control.Components[i] is TWinControl then
      begin
        ControlChild  := TWinControl(Control.Components[i]);
        ControlChild.Dispatch(Msg);

//        if ControlChild.HandleAllocated then
//        begin
//          ControlChild.Dispatch(Msg);
 //          ControlHandle := ControlChild.Handle;
 //          if ControlHandle > 0 then
 //            WindowProc(ControlHandle, Msg, WParam, LParam);
//        end;
      end;
    end;
//    ControlHandle := Control.Handle;
//    Result := WindowProc(ControlHandle, Msg, WParam, LParam);     }
  end
  else
//    Result := WindowProc(Window, Msg, WParam, LParam);
//    Result := CallDefaultWindowProc(Window, Msg, WParam, LParam);
    result := Windows.CallWindowProc(PrevWndProc, Window, Msg, WParam, LParam);

  exit; }



  case Msg of
  CM_HintShow : begin
                 Control := FindControl(Window);
                 if Assigned(Control) and (Control is TCustomForm) then
                   result := Windows.CallWindowProc(PrevWndProc, Window, Msg, WParam, LParam)
                 else
                   Result := WindowProc(Window, Msg, WParam, LParam);
                end;
{  WM_NCPAINT:
  begin
    if TWin32ThemeServices(ThemeServices).ThemesEnabled and
      (lWinControl is TCustomControl) and not (lWinControl is TCustomForm) then
    begin
      TWin32ThemeServices(ThemeServices).PaintBorder(lWinControl, True);
      LMessage.Result := 0;
    end;
  end;

  WM_PRINTCLIENT:
    if ((LParam and PRF_CLIENT) = PRF_CLIENT) and (lWinControl <> nil) then
      SendPaintMessage(HDC(WParam));
    WM_PRINTCLIENT :  begin
                       // Result := CallDefaultWindowProc(Window, Msg, WParam, LParam);
                        Result := WindowProc(Window, Msg, WParam, LParam);
                      end; }

    WM_NCPAINT : begin
                    Control := FindControl(Window);
                    if Assigned(Control) and (Control is TCustomForm) then
                    begin
                      for i := 0 to Pred(Control.ComponentCount) do
                      begin
                        if Control.Components[i] is TCustomControl then
                        begin
                          ControlChild  := TWinControl(Control.Components[i]);
                          if ControlChild.HandleAllocated then
                          begin
                            Msg_.message := Msg;
                            Msg_.lParam  := LParam;
                            Msg_.wParam  := WParam;
                            Msg_.hwnd    := ControlChild.Handle;
                          //  ControlChild.Dispatch(Msg);
                            ControlChild.Perform(Msg, WParam, LParam);
                   //          ControlHandle := ControlChild.Handle;
                   //          if ControlHandle > 0 then
                   //            WindowProc(ControlHandle, Msg, WParam, LParam);
                          end;
                        end;
                      end;
                      result := Windows.CallWindowProc(PrevWndProc, Window, Msg, WParam, LParam);
                    end
                    else
                      Result := WindowProc(Window, Msg, WParam, LParam);

                 end;
    WM_NCCALCSIZE: begin
                     Control := FindControl(Window);
//                     if (csDesigning in ComponentState) and (Control.Parent <> nil) and
//                        (Menu <> nil) and (Menu.Items <> nil) and (Menu.Items.Count > 0) then
//                     begin
                       LMNCCalcSize := PLMNCCalcSize(LParam);
                       NCCalcSizeParams := LMNCCalcSize^.CalcSize_Params;
                       i := GetSystemMetrics(SM_CYMENU);
                       NCCalcSizeParams^.rgrc[0].Top := NCCalcSizeParams^.rgrc[0].Top + i;
//                     end;

//                  if WParam <> 0 then
//                    LMNCCalcSize := PLMNCCalcSize(WParam)^;
//                  if LParam <> 0 then
//                    LMNCCalcSize := PLMNCCalcSize(LParam)^;

//                  WindowInfo := GetWin32WindowInfo(HWND(LParam));
//                  WindowInfo := GetWin32WindowInfo(PNMHdr(LParam)^.hwndFrom);

                  if Assigned(Control) and (Control is TCustomForm) then
                  begin
                    for i := 0 to Pred(Control.ComponentCount) do
                    begin
                      if Control.Components[i] is TCustomControl then
                      begin
                        ControlChild  := TWinControl(Control.Components[i]);
                        if ControlChild.HandleAllocated then
                        begin
                          Msg_.message := Msg;
                          Msg_.lParam  := LParam;
                          Msg_.wParam  := WParam;
                          Msg_.hwnd    := ControlChild.Handle;
                         // ControlChild.Dispatch(Msg);
                          ControlChild.Perform(Msg, WParam, LParam);
                //          ControlHandle := ControlChild.Handle;
                //          if ControlHandle > 0 then
                //            WindowProc(ControlHandle, Msg, WParam, LParam);
                        end;
                      end;
                    end;
                    result := Windows.CallWindowProc(PrevWndProc, Window, Msg, WParam, LParam);
                  //  ControlHandle := Control.Handle;
                  //  Result := WindowProc(ControlHandle, Msg, WParam, LParam);
                  end
                  else
                  begin
//                    if not (LastMsgID.Control = Window) and (LastMsgID.Msg = Msg) then
                      Result := WindowProc(Window, Msg, WParam, LParam);
                  end;
                end;
    else
    begin
//      if not (LastMsgID.Control = Window) and (LastMsgID.Msg = Msg) then
      result := Windows.CallWindowProc(PrevWndProc, Window, Msg, WParam, LParam);
    end;
//    Result := WindowProc(Window, Msg, WParam, LParam);
  end;
//  LastMsgID.Control:= Window;
//  LastMsgID.Msg    := Msg;
end;
{$ENDIF}

constructor TTB2CustomControl.Create(AOwner: TComponent);
begin
 inherited Create(AOwner);
{$IFDEF FPC}
 // if (PrevWndProc = nil) and (AOwner <> nil) then
 //   PrevWndProc := Windows.WNDPROC(SetWindowLongPtr(TWinControl(AOwner).Handle, GWL_WNDPROC, PtrInt(@TB2WinControlProc)));
{$ENDIF}
end;

{$IFDEF FPC}
function ThemedNCPaint(AWindow: THandle; TB2Control: TCustomControl; WParam: WParam; LParam: LParam; var Handled: Boolean): LResult;
begin
  // When theming is enabled, and the component should have a border around it, let the theme manager handle it
  Handled := (GetWindowLong(AWindow, GWL_EXSTYLE) and WS_EX_CLIENTEDGE <> 0); /// and (ThemeServices.ThemesEnabled);
  if Handled then
  begin
    Windows.DefWindowProc(AWindow, WM_NCPAINT, WParam, LParam);
//  WindowProc(AWindow, WM_NCPAINT, WParam, LParam);
    Result := 0;
  end;
end;
{$ENDIF}

{$IFDEF FPC}
procedure TTB2CustomControl.WndProc(var Message: TLMessage);
begin
  case Message.msg of
    WM_NCPAINT: begin
      inherited WndProc(Message);exit; end;
    WM_NCCALCSIZE: begin
      inherited WndProc(Message);exit; end;
    WM_NCHITTEST: begin
      inherited WndProc(Message);exit; end;
    WM_NCLBUTTONDBLCLK: begin
      inherited WndProc(Message);exit; end;
    WM_NCLBUTTONDOWN: begin
      inherited WndProc(Message);exit; end;
    WM_NCLBUTTONUP: begin
      inherited WndProc(Message);exit; end;
    WM_NCMBUTTONDBLCLK: begin
      inherited WndProc(Message);exit; end;
    WM_NCMBUTTONDOWN: begin
      inherited WndProc(Message);exit; end;
    WM_NCMBUTTONUP: begin
      inherited WndProc(Message);exit; end;
    WM_NCMOUSEMOVE: begin
      inherited WndProc(Message);exit; end;
  end;
 inherited WndProc(Message);
end;
{$ENDIF}

end.


