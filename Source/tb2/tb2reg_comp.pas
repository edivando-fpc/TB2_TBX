unit TB2Reg_Comp;

{
  Toolbar2000
  Copyright (C) 1998-2004 by Jordan Russell
  All rights reserved.

  The contents of this file are subject to the "Toolbar2000 License"; you may
  not use or distribute this file except in compliance with the
  "Toolbar2000 License". A copy of the "Toolbar2000 License" may be found in
  TB2k-LICENSE.txt or at:
    http://www.jrsoftware.org/files/tb2k/TB2k-LICENSE.txt

  Alternatively, the contents of this file may be used under the terms of the
  GNU General Public License (the "GPL"), in which case the provisions of the
  GPL are applicable instead of those in the "Toolbar2000 License". A copy of
  the GPL may be found in GPL-LICENSE.txt or at:
    http://www.jrsoftware.org/files/tb2k/GPL-LICENSE.txt
  If you wish to allow use of your version of this file only under the terms of
  the GPL and not to allow others to use your version of this file under the
  "Toolbar2000 License", indicate your decision by deleting the provisions
  above and replace them with the notice and other provisions required by the
  GPL. If you do not delete the provisions above, a recipient may use your
  version of this file under either the "Toolbar2000 License" or the GPL.

  $jrsoftware: tb2k/Source/TB2Reg.pas,v 1.27 2004/02/26 07:05:58 jr Exp $
}
{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

{$I TB2Ver.inc}

uses
  Windows, SysUtils, Graphics, Controls, Dialogs,
  ActnList,
  ImgList,
  TB2Toolbar, TB2ToolWindow, TB2Dock, TB2Item, TB2ExtItems, TB2MRU, TB2MDI,
  {$IFnDEF FPC}
  {$IFDEF JR_D6} DesignIntf, DesignEditors, VCLEditors, {$ELSE} DsgnIntf, {$ENDIF}
  {$ELSE}
  tb2Delphi, LclIntf, LCLType, LCLStrConsts, Win32Int, InterfaceBase,
  PropEdits, ComponentEditors, LResources, GraphPropEdits,
  {$ENDIF}
  Classes;

procedure Register;

implementation

{ TTBImageIndexPropertyEditor }

{ Unfortunately TComponentImageIndexPropertyEditor seems to be gone in
  Delphi 6, so we have to use our own image index property editor class }

procedure Register;
begin
  RegisterComponents('TB2', [TTBDock, TTBToolbar, TTBToolWindow,
    TTBPopupMenu, TTBImageList, TTBItemContainer, TTBBackground, TTBMRUList,
    TTBMDIHandler]);
  {$IFDEF JR_D4}
  RegisterActions('', [TTBEditAction], nil);
  {$ENDIF}
  RegisterNoIcon([TTBItem, TTBGroupItem, TTBSubmenuItem, TTBSeparatorItem,
    TTBEditItem, TTBMRUListItem, TTBControlItem, TTBMDIWindowItem,
    TTBVisibilityToggleItem]);
  RegisterClasses([TTBItem, TTBGroupItem, TTBSubmenuItem, TTBSeparatorItem,
    TTBEditItem, TTBMRUListItem, TTBControlItem, TTBMDIWindowItem,
    TTBVisibilityToggleItem]);
end;

initialization

{$IFDEF FPC}
{.$R '..\Source\TB2Reg.dcr'}
{$IFDEF IMPLICITBUILDING This IFDEF should not be used by users}
{$ALIGN 8}
{$ASSERTIONS ON}
{$BOOLEVAL OFF}
{$DEBUGINFO ON}
{$EXTENDEDSYNTAX ON}
{$IMPORTEDDATA ON}
{$IOCHECKS ON}
{$LOCALSYMBOLS ON}
{$LONGSTRINGS ON}
{$OPENSTRINGS ON}
{$OPTIMIZATION ON}
{$OVERFLOWCHECKS OFF}
{$RANGECHECKS OFF}
{$DEFINITIONINFO ON}
{$SAFEDIVIDE OFF}
{$STACKFRAMES OFF}
{$TYPEDADDRESS OFF}
{$VARSTRINGCHECKS ON}
{$WRITEABLECONST OFF}
{$MINENUMSIZE 1}
{$IMAGEBASE $3F800000}
{$DEFINE DEBUG}
{$ENDIF IMPLICITBUILDING}
{$DESCRIPTION 'Toolbar2000 Design Package (Jordan Russell)'}
{$DESIGNONLY}
{$IMPLICITBUILD OFF}
{$R TB2DsgnItemEditor.res}
{$ENDIF}

end.
