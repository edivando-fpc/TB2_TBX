unit TB2Delphi;

{$IFDEF FPC}
  {$MODE Delphi}
  {.$DEFINE REPORT}
{$ENDIF}


interface

uses
  Classes, SysUtils, Types,
  WinSpool,
  CommDlg,
  Messages,
  SyncObjs,
  ActnList,
  Menus,
//  Metafile,
  StdCtrls,
  ComCtrls,
  ExtCtrls,
  Forms,    // Vcl.Forms
  Printers, // Vcl.Prinrers
  Dialogs,  // Vcl.Dialogs
  {$IFDEF FPC}
  Windows, LCLStrConsts, Win32Int, InterfaceBase, LResources,
  FPimage, LMessages, StdActns, Contnrs, Clipbrd, IniFiles,
  PropEdits, ComponentEditors, GraphPropEdits, LclIntf, LCLType,
  {$ENDIF}
  Graphics,
//  Registry, ImgList, ToolWin, GLScene,

  Controls; // Vcl.Controls

{$IFDEF FPC}


type
  TWindowHook2 = function (var Message: TMessage): Boolean of object;

  { TTB2ApplicationHook }

  TTB2ApplicationHook = class
  private
    FWindowHooks : TList;
  public
    procedure HookMainWindow(Hook: TWindowHook2);
    procedure UnhookMainWindow(Hook: TWindowHook2);
    function  WindowHook(var Message: TLMessage): Boolean;
    class procedure ClassHookMainWindow(Hook: TWindowHook2);
    constructor Create;
    destructor  Destroy; override;
  end;

{  TWindowHook = function(var Message: TLMessage): Boolean;

  TFormHook = class
  private
    FWaitHandleEvent : PEventHandler;
    FHook : TWindowHook;
    FForm : TCustomForm;
  public
    property Hook : TWindowHook read FHook write FHook;
    property Form : TCustomForm read FForm write FForm;
    procedure WaitHandleEvent(AData: PtrInt; AFlags: dword);
    constructor Create(MainForm : TCustomForm; Hook: TWindowHook);
    destructor Destroy; override;
  end;

  TApplicationHook = class
  private
    FWindowsHook : TList;
  public
    procedure HookMainWindow(MainForm : TCustomForm; Hook: TWindowHook);
    procedure UnhookMainWindow(MainForm : TCustomForm; Hook: TWindowHook);
    class procedure ClassHookMainWindow(MainForm : TCustomForm; Hook: TWindowHook);
    constructor Create;
    destructor  Destroy; override;
  end; }

var
//  PrevWndProc: Pointer;// WNDPROC;
//  ApplicationHook : TApplicationHook;
  TB2ApplicationHook : TTB2ApplicationHook = nil;
  HandleCreated : boolean;
//type

//  TApplicationHelpers = class helper for TApplication
//  public
//    procedure WndProc(var AMessage : TLMessage);
//  end;

const
(*  winspl = 'winspool.drv';
  msimg32 = 'msimg32.dll';
  cctrl = comctl32; { From Winapi.Windows.pas }

  srNone = '(None)';
  SDeviceOnPort = '%s on %s';
  SmkcBkSp = 'BkSp';
  SmkcTab = 'Tab';
  SmkcEsc = 'Esc';
  SmkcEnter = 'Enter';
  SmkcSpace = 'Space';
  SmkcPgUp = 'PgUp';
  SmkcPgDn = 'PgDn';
  SmkcEnd = 'End';
  SmkcHome = 'Home';
  SmkcLeft = 'Left';
  SmkcUp = 'Up';
  SmkcRight = 'Right';
  SmkcDown = 'Down';
  SmkcIns = 'Ins';
  SmkcDel = 'Del';
  SmkcShift = 'Shift+';
  SmkcCtrl = 'Ctrl+';
  SmkcAlt = 'Alt+';*)
  SOutOfResources	= 'Out of system resources';
  SInvalidBitmap	= 'Bitmap image is not valid';
  SScanLine		= 'Scan line index out of range';
  sUnknownClipboardFormat= 'Unsupported clipboard format';

  DMPAPER_USER                = $100;

  { gradient drawing modes }
  GRADIENT_FILL_RECT_H = $00000000;
  GRADIENT_FILL_RECT_V = $00000001;
  GRADIENT_FILL_TRIANGLE = $00000002;
  GRADIENT_FILL_OP_FLAG = $000000ff;
  CHILDID_SELF = 0;
  OBJID_WINDOW = $00000000;
  STATE_SYSTEM_HOTTRACKED      = $00000080;
  STATE_SYSTEM_FOCUSED         = $00000004;
  STATE_SYSTEM_PRESSED         = $00000008;
  STATE_SYSTEM_INVISIBLE       = $00008000;
  STATE_SYSTEM_UNAVAILABLE     = $00000001;  { Disabled }
  STATE_SYSTEM_CHECKED         = $00000010;
  STATE_SYSTEM_FOCUSABLE       = $00100000;
  EVENT_SYSTEM_MENUPOPUPSTART  = $0006;
  OBJID_CLIENT = $FFFFFFFC;
  EVENT_OBJECT_FOCUS               = $8005;  { hwnd + ID + idChild is focused item }
  EVENT_SYSTEM_MENUSTART = $0004;
  EVENT_SYSTEM_MENUEND = $0005;
  EVENT_SYSTEM_MENUPOPUPEND    = $0007;

  CM_BASE                   = $B000;
  CM_WINDOWHOOK             = CM_BASE + 32;
  CF_BITMAP = 2;
  ENHMETA_STOCK_OBJECT = DWORD($80000000);
  EMR_EOF = 14;
  EMR_EXTTEXTOUTW = 84;
  EMR_EXTTEXTOUTA = 83;
  EM_GETCHARFORMAT                    = LM_USER  + 58;
  EM_SETCHARFORMAT                    = LM_USER  + 68;

  HELP_CONTEXTPOPUP  = $8;
  LM_UNDO            = 772;
  LM_GETTEXT         = 13;
  LM_SETTEXT         = 12;
  LM_IME_NOTIFY      = 642;
  LM_IME_COMPOSITION = 271;
  LM_IME_CHAR        = 646;
  LM_NCMOUSEMOVE     = 160;
  LM_NCMOUSELEAVE    = $2A2;

  LM_GETOBJECT   = $3D; //Windows.WM_GETOBJECT   ;  TWMNCCalcSize
  LM_NCCALCSIZE  = 131; //Windows.WM_NCCALCSIZE  ;
 // LM_NCPAINT     = 133; //Windows.WM_NCPAINT     ;
  LM_PRINT       = 791; //Windows.WM_PRINT       ;
  LM_PRINTCLIENT = 792; //Windows.WM_PRINTCLIENT ;
  LM_MOUSEACTIVATE    = $0021;
  LM_GETMINMAXINFO    = $0024;
  LM_NCRBUTTONUP      = $00A5;

  WM_NCACTIVATE       = $0086;
  WM_CONTEXTMENU      = $007B;
  WM_ENABLE           = $000A;
  WM_NCLBUTTONDBLCLK  = $00A3;
  WM_NCLBUTTONDOWN    = $00A1;
  WM_NCRBUTTONUP      = $00A5;
  MA_NOACTIVATE = 3;
  DC_ACTIVE = 1;

  HTLEFT = 10;
  HTRIGHT = 11;
  HTTOP = 12;
  HTTOPLEFT = 13;
  HTTOPRIGHT = 14;
  HTBOTTOM = 15;
  HTBOTTOMLEFT = $10;
  HTBOTTOMRIGHT = 17;
  HTBORDER = 18;
  DC_TEXT = 8;

  DC_SMALLCAP = 2;
  GW_HWNDPREV = 3;

  WM_KEYDOWN       =  LM_KEYDOWN       ;
  WM_KEYUP         =  LM_KEYUP         ;
  WM_LBUTTONDOWN   =  LM_LBUTTONDOWN   ;
  WM_LBUTTONDBLCLK =  LM_LBUTTONDBLCLK ;
  WM_LBUTTONUP     =  LM_LBUTTONUP     ;
  WM_RBUTTONDOWN   =  LM_RBUTTONDOWN   ;
  WM_MBUTTONDBLCLK =  LM_MBUTTONDBLCLK ;
  WM_TB2K_POPUPSHOWING = 0;

  DCX_LOCKWINDOWUPDATE = $400;
  DCX_WINDOW = 1;
  DCX_CACHE = 2;
  TME_LEAVE           = $00000002;

Type
  TDesignWindow = TForm;
  IDesigner     = TComponentEditorDesigner;
  IFormDesigner = TComponentEditorDesigner;
  TCustomIniFile = TIniFile;

  TEditAction = (eaUndo, eaRedo, eaCut, eaCopy, eaPaste, eaDelete, eaSelectAll, eaPrint, eaElide);

  TEditStates = (esCanUndo, esCanRedo, esCanCut, esCanCopy, esCanPaste, esCanDelete, esCanEditOle,
                 esCanPrint, esCanSelectAll, esCanCreateTemplate, esCanElide);

  TEditState = set of TEditStates;

  TPositionToolTip = (ptNone, ptTop, ptLeft, ptBottom, ptRight);
  TTabChangeEvent = procedure(Sender: TObject; NewTab: Integer; var AllowChange: Boolean) of object;

  PFNLVCOMPARE = function(lParam1, lParam2, lParamSort: LPARAM): Integer stdcall;
  TLVCompare = PFNLVCOMPARE;

  TPopupForm = record
    FormID: Integer;
    Form: TCustomForm;
    WasPopup: Boolean;
  end;
  TPopupFormArray = array of TPopupForm;

  TDWordFiller = record
  {$IFDEF CPUX64}
    Filler: array[1..4] of Byte; // Pad DWORD to make it 8 bytes (4+4) [x64 only]
  {$ENDIF}
  end;
  TWMEnable = record
    Msg: Cardinal;
    MsgFiller: TDWordFiller;
    Enabled: LongBool;
    EnabledFiller: TDWordFiller;
    Unused: LPARAM;
    Result: LRESULT;
  end;
  TWMContextMenu = record
    Msg: Cardinal;
    MsgFiller: TDWordFiller;
    hWnd: HWND;
    case Integer of
      0: (
        XPos: Smallint;
        YPos: Smallint;
        XYPosFiller: TDWordFiller);
      1: (
        Pos: TSmallPoint;
        PosFiller: TDWordFiller;
        Result: LRESULT);
  end;

  TLMMouseActivate = record
    Msg: Cardinal;
    MsgFiller: TDWordFiller;
    TopLevel: HWND;
    HitTestCode: Word;
    MouseMsg: Word;
    HitTestCodeMouseMsg: TDWordFiller;
    Result: LRESULT;
  end;

  TLMGetMinMaxInfo = record
    Msg : UINT;
    MsgFiller : TDwordFiller;
    Unused : WParam;
    MinMaxInfo : PMinMaxInfo;
    Result : LRESULT;
  end;

  TMessageEvent = procedure (var Msg: TMsg; var Handled: Boolean) of object;
  TExceptionEvent = procedure (Sender: TObject; E: Exception) of object;
  TGetHandleEvent = procedure(var Handle: HWND) of object;
  TIdleEvent = procedure (Sender: TObject; var Done: Boolean) of object;
  TSettingChangeEvent = procedure (Sender: TObject; Flag: Integer; const Section: string; var Result: Longint) of object;

  PChar = ^Char;
  TBorderStyle = bsNone..bsSingle;
  TProgressStage = TFPImgProgressStage;
  PEMRExtTextOut = ^TEMRExtTextOut;
  TSearchType = (stWholeWord, stMatchCase);
  TSearchTypes = set of TSearchType;

  FMTID = TGUID;
  PFmtID = ^TFmtID;
  TFmtID = TGUID;

  PWCRange = ^TWCRange;
  tagWCRANGE = record
    wcLow: WCHAR;
    cGlyphs: SHORT;
  end;
  TWCRange = tagWCRANGE;

  PGlyphSet = ^TGlyphSet;
  tagGLYPHSET = record
    cbThis: DWORD;
    flAccel: DWORD;
    cGlyphsSupported: DWORD;
    cRanges: DWORD;
    ranges: array[0..0] of TWCRange;
  end;
  TGlyphSet = tagGLYPHSET;

  EMRPOLYLINE = record
       emr : EMR;
       rclBounds : RECTL;
       cptl : DWORD;
       aptl : array[0..0] of TPoint;
    end;
  tagEMRPOLYLINE = EMRPOLYLINE;
  TEMRPOLYLINE = EMRPOLYLINE;
  PEMRPOLYLINE = ^EMRPOLYLINE;

    EXTLOGFONT     = EXTLOGFONTW;
    LPEXTLOGFONT   = ^EXTLOGFONTW;
    tagEXTLOGFONT  = EXTLOGFONTW;
    TEXTLOGFONT    = EXTLOGFONTW;
    PEXTLOGFONT    = ^EXTLOGFONTW;

  EMREXTCREATEFONTINDIRECTW = record
       emr : EMR;
       ihFont : DWORD;
       elfw : EXTLOGFONT;
    end;
  tagEMREXTCREATEFONTINDIRECTW = EMREXTCREATEFONTINDIRECTW;
  TEMREXTCREATEFONTINDIRECTW = EMREXTCREATEFONTINDIRECTW;
  PEMREXTCREATEFONTINDIRECTW = ^EMREXTCREATEFONTINDIRECTW;

  TEMRCreateBrushIndirect = tagEMRCREATEBRUSHINDIRECT;
  TEMRExtCreateFontIndirect = tagEMREXTCREATEFONTINDIRECTW;
  TEMRExtTextOut = tagEMREXTTEXTOUTA;

  EMRPOLYLINE16 = record
       emr : EMR;
       rclBounds : RECTL;
       cpts : DWORD;
       apts : array[0..0] of TSmallPoint;
    end;
  tagEMRPOLYLINE16 = EMRPOLYLINE16;
  TEMRPOLYLINE16 = EMRPOLYLINE16;
  PEMRPOLYLINE16 = ^EMRPOLYLINE16;

  PTriVertex = ^TTriVertex;
  _TRIVERTEX = record
    x: Longint;
    y: Longint;
    Red: COLOR16;
    Green: COLOR16;
    Blue: COLOR16;
    Alpha: COLOR16;
  end;
  TTriVertex = _TRIVERTEX;
  TRIVERTEX = _TRIVERTEX;
  PEMGradientFill = ^TEMGradientFill;
  tagEMRGRADIENTFILL = record
    emr: TEMR;
    rclBounds: TRect;   { Inclusive-inclusive bounds in device units}
    nVer: DWORD;
    nTri: DWORD;
    ulMode: ULONG;
    Ver: array[0..0] of TTriVertex;
  end;
  TEMGradientFill = tagEMRGRADIENTFILL;
  EMRGRADIENTFILL = tagEMRGRADIENTFILL;

  PEMRTransparentBLT = ^TEMRTransparentBLT;
  tagEMRTRANSPARENTBLT = record
    emr: TEMR;
    rclBounds: TRect;
    xDest: Longint;
    yDest: Longint;
    cxDest: Longint;
    cyDest: Longint;
    dwRop: DWORD;
    xSrc: Longint;
    ySrc: Longint;
    xformSrc: XFORM;         { Source DC transform}
    crBkColorSrc: COLORREF;  { Source DC BkColor in RGB}
    iUsageSrc: DWORD;        { Source bitmap info color table usage}
    offBmiSrc: DWORD;        { Offset to the source TBitmapInfo structure}
    cbBmiSrc: DWORD;         { Size of the source TBitmapInfo structure}
    offBitsSrc: DWORD;       { Offset to the source bitmap bits}
    cbBitsSrc: DWORD;        { Size of the source bitmap bits}
    cxSrc: Longint;
    cySrc: Longint;
  end;
  TEMRTransparentBLT = tagEMRTRANSPARENTBLT;
  EMRTRANSPARENTBLT = tagEMRTRANSPARENTBLT;

  PEMRExtCreateFontIndirect = ^TEMRExtCreateFontIndirect;

  PRGBQuad = ^TRGBQuad;
  tagRGBQUAD = record
    rgbBlue: Byte;
    rgbGreen: Byte;
    rgbRed: Byte;
    rgbReserved: Byte;
  end;
  TRGBQuad = tagRGBQUAD;

  TRGBQuadArray = array [Byte] of TRGBQuad;
  PRGBQuadArray = ^TRGBQuadArray;

  TWMChangeCBChain = record
    Msg: Cardinal;
    MsgFiller: TDWordFiller;
    Remove: HWND;
    Next: HWND;
    Result: LRESULT;
  end;

  TWMNCHitMessage = record
    Msg : UINT;
    MsgFiller : TDwordFiller;
    HitTest : Longint;
    WParamFiller : TDwordFiller;
    XCursor : Smallint;
    YCursor : Smallint;
    LParamFiller : TDwordFiller;
    Result : LRESULT;
  end;

  TWMNCLButtonDblClk  = TWMNCHitMessage;
  TWMNCLButtonDown    = TWMNCHitMessage;
  TWMNCLButtonUp      = TWMNCHitMessage;
  TWMNCMButtonDblClk  = TWMNCHitMessage;
  TWMNCMButtonDown    = TWMNCHitMessage;
  TWMNCMButtonUp      = TWMNCHitMessage;
  TWMNCRButtonUp      = TWMNCHitMessage;
  TWMNCMouseMove      = TWMNCHitMessage;
  TLMNCLButtonDblClk  = TWMNCHitMessage;
  TLMNCLButtonDown    = TWMNCHitMessage;
  TLMNCLButtonUp      = TWMNCHitMessage;
  TLMNCMButtonDblClk  = TWMNCHitMessage;
  TLMNCMButtonDown    = TWMNCHitMessage;
  TLMNCMButtonUp      = TWMNCHitMessage;
  TLMNCMouseMove      = TWMNCHitMessage;
  TWMDrawClipboard    = TWMNoParams;
  TCMActivate         = TWMNoParams;
  TWMMouseMove        = TLMMouseMove;
  TMessage            = TLMessage;
  TWMKey = TLMKey;

  TDirection = (FromBeginning, FromEnd);
  TScalingFlags = set of (sfLeft, sfTop, sfWidth, sfHeight, sfFont, sfDesignSize);
  PHandleTable = ^THandleTable;
  TLVChangingEvent = procedure(Sender: TObject; Item: TListItem; Change: TItemChange; var AllowChange: Boolean) of object;

  TCanResizeEvent = procedure(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean) of object;


  { TTabSet }

{  TTabSet = class(ComCtrls.TTabControl)
  private
   FOnChange: TTabChangeEvent;
  protected
    function CanShowTab(ATabIndex: Integer): Boolean; virtual;
  public
    property OnChange: TTabChangeEvent read FOnChange write FOnChange;
  end;}


var
  SystemPalette16 : HPalette;


function CopyPalette(Palette: HPALETTE): HPALETTE;
//procedure GetImages(AToolImageList: TTB2ImageList; Index: Integer; Image, Mask: TBitmap);


//procedure RecreateWnd(AWinControl : TWinControl);
function ShortCutToText(ShortCut: TShortCut): string;
function GetSpecialName(ShortCut: TShortCut): string;
procedure Dormant(ABitmap : Graphics.TBitmap);
//procedure InternalDeletePalette(Pal: HPalette);
procedure SendCancelMode(var AControl : TControl; Sender: TControl); overload;
procedure SendCancelMode(ACustomForm : TCustomForm; Sender: TControl); overload;
function FindClassHInstance(ClassType: TClass): HINST;
procedure CopyComponents(Root: TComponent; const Components: TComponentList);
{$ENDIF}



implementation



{$IFDEF FPC}

type
  TMenuKeyCap = (mkcBkSp, mkcTab, mkcEsc, mkcEnter, mkcSpace, mkcPgUp,
    mkcPgDn, mkcEnd, mkcHome, mkcLeft, mkcUp, mkcRight, mkcDown, mkcIns,
    mkcDel, mkcShift, mkcCtrl, mkcAlt);

var
   BitmapImageLock : LongWord;
//   PatternManager: TPatternManager;
   MenuKeyCaps: array[TMenuKeyCap] of string = (
     SmkcBkSp, SmkcTab, SmkcEsc, SmkcEnter, SmkcSpace, SmkcPgUp,
     SmkcPgDn, SmkcEnd, SmkcHome, SmkcLeft, SmkcUp, SmkcRight,
     SmkcDown, SmkcIns, SmkcDel, SmkcShift, SmkcCtrl, SmkcAlt);

{
function WndCallback(Ahwnd: HWND; uMsg: UINT; wParam: WParam; lParam: LParam):LRESULT; stdcall;
begin
  if uMsg = CM_WINDOWHOOK then
  begin
    if wParam = 0 then
      TTB2ApplicationHook.ClassHookMainWindow(TWindowHook(Pointer(LParam)^))
    else if (TB2ApplicationHook <> nil) then
      TB2ApplicationHook.UnhookMainWindow(TWindowHook(Pointer(LParam)^));
  end;
  Result := LclIntf.CallWindowProc(PrevWndProc, Ahwnd, uMsg, WParam, LParam);
end; }

{ TApplicationHelpers }
{
procedure TApplicationHelpers.WndProc(var AMessage: TLMessage);
begin
  if Application <> nil then
  begin
    if TB2ApplicationHook = nil then
      TB2ApplicationHook := TTB2ApplicationHook.Create;
    TB2ApplicationHook.WndProc(AMessage);
  end;
end;
}

procedure TTB2ApplicationHook.HookMainWindow(Hook: TWindowHook2);
var
  WindowHook: ^TWindowHook2;
begin
  if not HandleCreated then
  begin
    if WidgetSet.AppHandle <> 0 then
      LclIntf.SendMessage(WidgetSet.AppHandle, CM_WINDOWHOOK, 0, LPARAM(@@Hook));
    HandleCreated := True;
  end
  else
  begin
    FWindowHooks.Expand;
    New(WindowHook);
    WindowHook^ := Hook;
    FWindowHooks.Add(WindowHook);
  end;
end;

procedure TTB2ApplicationHook.UnhookMainWindow(Hook: TWindowHook2);
var
  I: Integer;
  WindowHook: ^TWindowHook2;
begin
  if not HandleCreated then
  begin
    if WidgetSet.AppHandle <> 0 then
      LclIntf.SendMessage(WidgetSet.AppHandle, CM_WINDOWHOOK, 1, LPARAM(@@Hook));
  end
  else
    for I := 0 to FWindowHooks.Count - 1 do
    begin
      WindowHook := FWindowHooks[I];
      if (TMethod(WindowHook^).Code = TMethod(Hook).Code) and
        (TMethod(WindowHook^).Data = TMethod(Hook).Data) then
      begin
        FWindowHooks.Delete(I);
        WindowHook := nil;
        Break;
      end;
    end;
end;

function  TTB2ApplicationHook.WindowHook(var Message: TLMessage): Boolean;
begin
  case Message.Msg of
    CM_WINDOWHOOK :
    begin
      if Message.wParam = 0 then
        HookMainWindow(TWindowHook2(Pointer(Message.lParam)^))
      else if (TB2ApplicationHook <> nil) then
        UnhookMainWindow(TWindowHook2(Pointer(Message.lParam)^));
{      result := DefWindowProc(Ahwnd, uMsg, WParam, LParam);  //not sure about this one
      if result = HTCAPTION then
        result := HTCLIENT;
      exit;}
    end;
  end;
end;

destructor TTB2ApplicationHook.Destroy;
begin
  FreeAndNil(FWindowHooks);
  inherited Destroy;
end;

constructor TTB2ApplicationHook.Create;
begin
  inherited Create;
  FWindowHooks := TList.Create;
//  Application.WindowHook := WindowHook;
//  PrevWndProc  := Pointer(LclIntf.SetWindowLong(WidgetSet.AppHandle, GWL_WNDPROC, PtrInt(@WndCallback)));
end;

class procedure TTB2ApplicationHook.ClassHookMainWindow(Hook: TWindowHook2);
begin
  if not Assigned(TB2ApplicationHook) then
    TB2ApplicationHook := TTB2ApplicationHook.Create;
  TB2ApplicationHook.HookMainWindow(Hook);
end;

{
constructor TFormHook.Create(MainForm : TCustomForm; Hook: TWindowHook);
begin
  inherited Create;
  FHook := Hook;
  FForm := MainForm;
  FWaitHandleEvent := AddEventHandler(FForm.Handle, 0, WaitHandleEvent, CM_WINDOWHOOK);  //AData: PtrInt
end;

destructor TFormHook.Destroy;
begin
  RemoveEventHandler(FWaitHandleEvent);
  inherited Destroy;
end;

procedure TFormHook.WaitHandleEvent(AData: PtrInt; AFlags: dword);
begin
  if AData = CM_WINDOWHOOK then
  begin
//    TB2ApplicationHook.HookMainWindow(Hook);
  end;
end;

constructor TApplicationHook.Create;
begin
  inherited Create;
  FWindowsHook := TList.Create;
end;

destructor TApplicationHook.Destroy;
var
  FormHook : TFormHook;
begin
  while FWindowsHook.Count > 0 do
  begin
    FormHook := TFormHook(FWindowsHook.Last);
    FWindowsHook.Remove(FormHook);
    FormHook.Free;
  end;
  FWindowsHook.Free;
  inherited Destroy;
end;

procedure TApplicationHook.HookMainWindow(MainForm : TCustomForm; Hook: TWindowHook);
var
  FormHook : TFormHook;
begin
  FormHook := TFormHook.Create(MainForm, Hook);
  FWindowsHook.add(FormHook);
end;

procedure TApplicationHook.UnhookMainWindow(MainForm : TCustomForm; Hook: TWindowHook);
var
  FormHook : TFormHook;
  i : integer;
begin
  for i := Pred(FWindowsHook.Count) downto 0 do
  begin
    FormHook := TFormHook(FWindowsHook.Items[i]);
    if FormHook.FForm = MainForm then
    begin
      FWindowsHook.Remove(FormHook);
      FormHook.Free;
      Break;
    end;
  end;
end;

class procedure TApplicationHook.ClassHookMainWindow(MainForm : TCustomForm; Hook: TWindowHook);
begin
  if not Assigned(ApplicationHook) then
    ApplicationHook := TApplicationHook.Create;

  ApplicationHook.HookMainWindow(MainForm, Hook);
end;
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

procedure CopyComponents(Root: TComponent; const Components: TComponentList);
var
  S: TMemoryStream;
  W: TWriter;
  I: Integer;
  AllComponentText: string;
begin
  S := TMemoryStream.Create;
  try
    W := TWriter.Create(S, 1024);
    try
      W.Root := Root;
      for I := 0 to Components.Count - 1 do
      begin
        W.WriteSignature;
        W.WriteComponent(TComponent(Components[I]));
      end;
      W.WriteListEnd;
    finally
      W.Free;
    end;
    try
      SetLength(AllComponentText,S.Size);
      if AllComponentText <>'' then
      begin
        S.Position:=0;
        S.Read(AllComponentText[1],length(AllComponentText));
      end;
      ClipBoard.AsText:=AllComponentText;
    except
      raise Exception.Create('There was an error while copying the component stream to clipboard.');
    end;
  finally
    S.Free;
  end;
end;

procedure SetOwnerParent(ASelf : TWinControl; AParent: TComponent);
begin
  ASelf.Parent := TWinControl(AParent);
end;

function FindClassHInstance(ClassType: TClass): HINST;
  function FindHInstance(Address: Pointer): HINST;
  var
    MemInfo: TMemoryBasicInformation;
  begin
    VirtualQuery(Address, MemInfo, SizeOf(MemInfo));
    if MemInfo.State = $1000{MEM_COMMIT} then
      Result := UIntPtr(MemInfo.AllocationBase)
    else
      Result := 0;
  end;
begin
  Result := FindHInstance(Pointer(ClassType));
end;

{
function GetLocaleStr(Locale, LocaleType: Integer; const Default: string): string;
var
  L: Integer;
  Buffer: array[0..255] of Char;
begin
  L := GetLocaleInfo(Locale, LocaleType, Buffer, Length(Buffer));
  if L > 0 then SetString(Result, Buffer, L - 1) else Result := Default;
end;
}
{
procedure RecreateWnd(AWinControl : TWinControl);
begin
  with AWinControl do
  begin
    if AWinControl.Handle <> 0 then Perform(CM_RECREATEWND, 0, 0);
  end;
end;
}
procedure SendCancelMode(var AControl : TControl; Sender: TControl);
var
  Control: TControl;
begin
  Control := AControl;
  while Control <> nil do
  begin
    if Control.InheritsFrom(TCustomForm) then
      SendCancelMode(TCustomForm(Control), Sender);
    Control := TControl(Control.Parent);
  end;
end;

procedure SendCancelMode(ACustomForm : TCustomForm; Sender: TControl);
begin
  with ACustomForm do
  begin
    if Active and (ActiveControl <> nil) then
      ActiveControl.Perform(CM_CANCELMODE, 0, LCLType.LPARAM(Sender));
    if (FormStyle = fsMDIForm) and (ActiveMDIChild <> nil) then
      SendCancelMode(TCustomForm(ActiveMDIChild), Sender);
  end;
end;

function CopyPalette(Palette: HPALETTE): HPALETTE;
var
  PaletteSize: Integer;
  LogPal: TMaxLogPalette;
begin
  Result := 0;
  if Palette = 0 then
    Exit;
  PaletteSize := 0;
  if GetObject(Palette, SizeOf(PaletteSize), @PaletteSize) = 0 then
    Exit;
  if PaletteSize = 0 then
    Exit;
  with LogPal do
  begin
    palVersion := $0300;
    palNumEntries := PaletteSize;
    GetPaletteEntries(Palette, 0, PaletteSize, palPalEntry);
  end;
  Result := CreatePalette(LOGPALETTE(PLogPalette(@LogPal)^));
end;

function ShortCutToText(ShortCut: TShortCut): string;
var
  Name: string;
  Key: Byte;
begin
  Key := LoByte(Word(ShortCut));
  case Key of
    $08, $09:
      Name := MenuKeyCaps[TMenuKeyCap(Ord(mkcBkSp) + Key - $08)];
    $0D: Name := MenuKeyCaps[mkcEnter];
    $1B: Name := MenuKeyCaps[mkcEsc];
    $20..$28:
      Name := MenuKeyCaps[TMenuKeyCap(Ord(mkcSpace) + Key - $20)];
    $2D..$2E:
      Name := MenuKeyCaps[TMenuKeyCap(Ord(mkcIns) + Key - $2D)];
    $30..$39: Name := Chr(Key - $30 + Ord('0'));
    $41..$5A: Name := Chr(Key - $41 + Ord('A'));
    $60..$69: Name := Chr(Key - $60 + Ord('0'));
    $70..$87: Name := 'F' + IntToStr(Key - $6F);
  else
    Name := GetSpecialName(ShortCut);
  end;
  if Name <> '' then
  begin
    Result := '';
    if ShortCut and scShift <> 0 then Result := Result + MenuKeyCaps[mkcShift];
    if ShortCut and scCtrl <> 0 then Result := Result + MenuKeyCaps[mkcCtrl];
    if ShortCut and scAlt <> 0 then Result := Result + MenuKeyCaps[mkcAlt];
    Result := Result + Name;
  end
  else Result := '';
end;

function GetSpecialName(ShortCut: TShortCut): string;
var
  ScanCode: Integer;
  KeyName: array[0..255] of Char;
begin
  Result := '';
  ScanCode := MapVirtualKey(LoByte(Word(ShortCut)), 0) shl 16;
  if ScanCode <> 0 then
  begin
    if GetKeyNameText(ScanCode, KeyName, Length(KeyName)) <> 0 then
      Result := KeyName
    else
      Result := '';
  end;
end;
{
procedure InternalDeletePalette(Pal: HPalette);
begin
  if (Pal <> 0) and (Pal <> SystemPalette16) then
    DeleteObject(Pal);
end;
}
procedure Dormant(ABitmap : Graphics.TBitmap);
var
  S: TMemoryStream;
  DIB: TDIBSection;
begin
  with ABitmap do
  begin
  S := TMemoryStream.Create;
  SaveToStream(S);
  S.Size := S.Size;  // compact to minimum buffer
//  DIB := FImage.FDIB;
  DIB.dsBm.bmBits := nil;
//  FreeContext; // InternalDeletePalette requires this
//  FreeAndNil(Canvas);
//  NewImage(0, 0, DIB, FImage.FOS2Format, S);
  end;
end;

{$ENDIF}

initialization
  {$IFDEF FPC}
  SystemPalette16 := GetStockObject(DEFAULT_PALETTE);
//  ApplicationHook := TApplicationHook.Create;
   TB2ApplicationHook := TTB2ApplicationHook.Create;
  {$ENDIF}


finalization
  {$IFDEF FPC}
//  ApplicationHook.Free;
//  TB2ApplicationHook.Free;
  {$ENDIF}

end.



