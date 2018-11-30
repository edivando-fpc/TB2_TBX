unit TBXReg_comp;

// TBX Package
// Copyright 2001-2004 Alex A. Denisov. All Rights Reserved
// See TBX.chm for license and installation instructions
//
// $Id: TBXReg.pas 16 2004-05-26 02:02:55Z Alex@ZEISS $
{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

{$I TB2Ver.inc}
{$I TBX.inc}

uses
  Classes, Controls, SysUtils, Graphics, ImgList, Dialogs,
  TB2Toolbar, TB2Item, TBX, TBXMDI, TBXSwitcher,
  TBXExtItems, TBXLists, TBXDkPanels, TBXToolPals,
  {$IFnDEF FPC}
  Windows, Messages,
  {$IFDEF JR_D6} DesignIntf, DesignEditors, VCLEditors, {$ELSE} DsgnIntf, {$ENDIF}
  {$ELSE}
  Windows, windelphi, tb2Delphi, LclIntf, LCLType, LCLStrConsts, InterfaceBase, LMessages,
  PropEdits, ComponentEditors, LResources, GraphPropEdits,
  {$ENDIF}
  TBXStatusBars;

procedure Register;


implementation

uses
  Forms, TBXThemes, {TBXStrEdit,} TBXUtils, TypInfo, TB2Version;


procedure Register;
begin
  RegisterComponents('TBX', [TTBXDock, TTBXMultiDock, TTBXToolbar,
    TTBXToolWindow, TTBXDockablePanel, TTBXPopupMenu, TTBXSwitcher, TTBXMRUList,
    TTBXMDIHandler, TTBXCustomPageScroller, TTBXPageScroller, TTBXColorSet, TTBXAlignmentPanel,
    TTBXLabel, TTBXLink, TTBXButton, TTBXCheckBox, TTBXRadioButton, TTBXStatusBar]);

  RegisterNoIcon([TTBXItem, TTBXSubMenuItem, TTBXSeparatorItem,
    TTBXVisibilityToggleItem, TTBXLabelItem, TTBXMRUListItem, TTBXColorItem,
    TTBXMDIWindowItem, TTBXEditItem, TTBXSpinEditItem, TTBXDropDownItem,
    TTBXComboBoxItem, TTBXStringList, TTBXUndoList, TTBXToolPalette, TTBXColorPalette]);
{$IFDEF COMPATIBLE_CTL}
  RegisterNoIcon([TTBXList, TTBXComboItem, TTBXComboList]);
{$ENDIF}

  RegisterClasses([TTBXItem, TTBXSubMenuItem, TTBXSeparatorItem,
    TTBXVisibilityToggleItem, TTBXLabelItem, TTBXMRUListItem, TTBXColorItem,
    TTBXMDIWindowItem, TTBXEditItem, TTBXSpinEditItem, TTBXDropDownItem,
    TTBXComboBoxItem, TTBXStringList, TTBXUndoList, TTBXToolPalette, TTBXColorPalette]);
{$IFDEF COMPATIBLE_CTL}
  RegisterClasses([TTBXList, TTBXComboItem, TTBXComboList]);
{$ENDIF}

end;

initialization
  {$IFDEF FPC}
  {$R '..\Source\TBXReg.dcr'}
  {$ENDIF}

end.
