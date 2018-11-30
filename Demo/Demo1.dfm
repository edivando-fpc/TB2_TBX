object Form1: TForm1
  Left = 321
  Top = 154
  Caption = 'Toolbar2000 Demo Project 2.0'
  ClientHeight = 421
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 9
    Top = 77
    Width = 690
    Height = 300
    Align = alClient
    Lines.Strings = (
      'Memo1')
    PopupMenu = ContextPopupMenu
    ScrollBars = ssVertical
    TabOrder = 0
    ExplicitWidth = 892
    ExplicitHeight = 379
  end
  object DockTop: TTBDock
    Left = 0
    Top = 0
    Width = 708
    Height = 77
    PopupMenu = ToolbarPopupMenu
    ExplicitWidth = 910
    object MenuToolbar: TTBToolbar
      Left = 0
      Top = 0
      Caption = 'Menu Bar'
      CloseButton = False
      DockPos = 0
      FullSize = True
      Images = ImageList
      MenuBar = True
      PopupMenu = ToolbarPopupMenu
      ShrinkMode = tbsmWrap
      TabOrder = 0
      object FMenu: TTBSubmenuItem
        Caption = '&File'
        object FNew: TTBItem
          Action = actNew
        end
        object FOpen: TTBItem
          Action = actOpen
        end
        object FSave: TTBItem
          Action = actSave
        end
        object FSaveAs: TTBItem
          Action = actSaveAs
        end
        object NBItem8: TTBSeparatorItem
        end
        object FPageSetup: TTBItem
          Action = actPageSetup
        end
        object FPrint: TTBItem
          Action = actPrint
        end
        object NBItem9: TTBSeparatorItem
        end
        object FMRU: TTBMRUListItem
          MRUList = MRUList
        end
        object NBSeparatorItem3: TTBSeparatorItem
        end
        object FExit: TTBItem
          Action = actExit
        end
      end
      object EMenu: TTBSubmenuItem
        Caption = '&Edit'
        object EUndo: TTBItem
          Action = actUndo
        end
        object ERedo: TTBItem
          Action = actRedo
        end
        object NBItem19: TTBSeparatorItem
        end
        object ECut: TTBItem
          Action = actCut
        end
        object ECopy: TTBItem
          Action = actCopy
        end
        object EPaste: TTBItem
          Action = actPaste
        end
        object EDelete: TTBItem
          Action = actDelete
        end
        object NBItem20: TTBSeparatorItem
        end
        object ESelectAll: TTBItem
          Action = actSelectAll
        end
        object ETimeDate: TTBItem
          Action = actTimeDate
        end
        object NBItem21: TTBSeparatorItem
        end
        object EWordWrap: TTBItem
          Action = actWordWrap
        end
        object ESetFont: TTBItem
          Action = actSetFont
        end
      end
      object VMenu: TTBSubmenuItem
        Caption = '&View'
        OnClick = VMenuClick
        object VToolbars: TTBSubmenuItem
          Caption = '&Toolbars'
          object VTStandard: TTBVisibilityToggleItem
            Caption = 'Standard'
            Control = MainToolbar
          end
          object VTFormatting: TTBVisibilityToggleItem
            Caption = 'Formatting'
            Control = FormatToolbar
          end
          object VTBottom: TTBVisibilityToggleItem
            Caption = 'Bottom Toolbar'
            Control = BottomToolbar
          end
        end
        object VStatusBar: TTBItem
          Caption = '&Status Bar'
          OnClick = VStatusBarClick
        end
      end
      object SMenu: TTBSubmenuItem
        Caption = '&Search'
        object SFind: TTBItem
          Action = actFind
        end
        object SFindNext: TTBItem
          Action = actFindNext
        end
        object SReplace: TTBItem
          Action = actReplace
        end
      end
      object HMenu: TTBSubmenuItem
        Caption = '&Help'
        object HHelpTopics: TTBItem
          Action = actHelpTopics
        end
        object NBItem27: TTBSeparatorItem
        end
        object HAbout: TTBItem
          Action = actAbout
        end
      end
    end
    object MainToolbar: TTBToolbar
      Left = 0
      Top = 25
      Caption = 'Standard'
      DockPos = 0
      DockRow = 1
      Images = ImageList
      ParentShowHint = False
      PopupMenu = ToolbarPopupMenu
      ShowHint = True
      TabOrder = 1
      object NewButton: TTBItem
        Action = actNew
        Hint = '|Creates a new document'
      end
      object OpenButton: TTBItem
        Action = actOpen
      end
      object SaveButton: TTBItem
        Action = actSave
      end
      object NBSeparatorItem4: TTBSeparatorItem
      end
      object PrintButton: TTBItem
        Action = actPrint
      end
      object TBItem1: TTBItem
        Action = actPrintPreview
      end
      object NBSeparatorItem9: TTBSeparatorItem
      end
      object CutButton: TTBItem
        Action = actCut
      end
      object CopyButton: TTBItem
        Action = actCopy
      end
      object PasteButton: TTBItem
        Action = actPaste
      end
      object TBSeparatorItem4: TTBSeparatorItem
      end
      object UndoButton: TTBSubmenuItem
        Action = actUndo
        DropdownCombo = True
        object TBItem2: TTBItem
          Caption = 'Example of a'
        end
        object TBItem3: TTBItem
          Caption = 'DropdownCombo'
        end
        object TBItem4: TTBItem
          Caption = 'button'
        end
      end
      object RedoButton: TTBSubmenuItem
        Action = actRedo
        DropdownCombo = True
      end
      object NBSeparatorItem8: TTBSeparatorItem
      end
      object TestEdit: TTBEditItem
        Action = actTestEdit
      end
    end
    object FormatToolbar: TTBToolbar
      Left = 0
      Top = 51
      Caption = 'Formatting'
      DockPos = -5
      DockRow = 2
      Images = ImageList
      ParentShowHint = False
      PopupMenu = ToolbarPopupMenu
      ShowHint = True
      TabOrder = 2
      object TBControlItem1: TTBControlItem
        Control = ComboBox1
      end
      object TBControlItem2: TTBControlItem
        Control = ComboBox2
      end
      object TBSeparatorItem3: TTBSeparatorItem
      end
      object BoldItem: TTBItem
        Action = actBold
      end
      object ItalicItem: TTBItem
        Action = actItalic
      end
      object UnderlineItem: TTBItem
        Action = actUnderline
      end
      object TBSeparatorItem1: TTBSeparatorItem
      end
      object AlignLeftItem: TTBItem
        Action = actAlignLeft
      end
      object CenterItem: TTBItem
        Action = actCenter
      end
      object AlignRightItem: TTBItem
        Action = actAlignRight
      end
      object TBSeparatorItem2: TTBSeparatorItem
      end
      object BulletsItem: TTBItem
        Action = actBullets
      end
      object ComboBox1: TComboBox
        Left = 0
        Top = 0
        Width = 120
        Height = 21
        Hint = 'Font|'
        TabOrder = 0
        Text = 'Times New Roman'
      end
      object ComboBox2: TComboBox
        Left = 120
        Top = 0
        Width = 41
        Height = 21
        Hint = 'Font Size|'
        TabOrder = 1
        Text = '12'
      end
    end
  end
  object DockBottom: TTBDock
    Left = 0
    Top = 377
    Width = 708
    Height = 25
    PopupMenu = ToolbarPopupMenu
    Position = dpBottom
    ExplicitTop = 456
    ExplicitWidth = 910
    object BottomToolbar: TTBToolbar
      Left = 0
      Top = 0
      Caption = 'Another Toolbar'
      DockPos = 0
      PopupMenu = ToolbarPopupMenu
      TabOrder = 0
      object PopupMenuBarButton: TTBItem
        Caption = 'Display menu bar as a popup menu'
        OnClick = PopupMenuBarButtonClick
      end
      object PopupToolbarButton: TTBItem
        Caption = 'Display toolbar as a popup menu'
        OnClick = PopupToolbarButtonClick
      end
    end
  end
  object DockLeft: TTBDock
    Left = 0
    Top = 77
    Width = 9
    Height = 300
    PopupMenu = ToolbarPopupMenu
    Position = dpLeft
    ExplicitHeight = 379
  end
  object DockRight: TTBDock
    Left = 699
    Top = 77
    Width = 9
    Height = 300
    PopupMenu = ToolbarPopupMenu
    Position = dpRight
    ExplicitLeft = 901
    ExplicitHeight = 379
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 402
    Width = 708
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 481
    ExplicitWidth = 910
  end
  object Button1: TButton
    Left = 280
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 6
    OnClick = Button1Click
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 16
    Top = 104
    object actUndo: TAction
      Category = 'Edit'
      Caption = '&Undo'
      ImageIndex = 5
      ShortCut = 16474
      OnExecute = ItemClick
    end
    object actNew: TAction
      Category = 'File'
      Caption = '&New'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = ItemClick
    end
    object actOpen: TAction
      Category = 'File'
      Caption = '&Open...'
      ImageIndex = 1
      ShortCut = 16463
      OnExecute = ItemClick
    end
    object actRedo: TAction
      Category = 'Edit'
      Caption = '&Redo'
      Enabled = False
      ImageIndex = 24
      ShortCut = 16473
      OnExecute = ItemClick
    end
    object actSave: TAction
      Category = 'File'
      Caption = '&Save'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = ItemClick
    end
    object actSaveAs: TAction
      Category = 'File'
      Caption = 'Save &As...'
      OnExecute = ItemClick
    end
    object actPageSetup: TAction
      Category = 'File'
      Caption = 'Page Se&tup...'
      OnExecute = ItemClick
    end
    object actPrintPreview: TAction
      Category = 'File'
      Caption = 'Print Pre&view'
      ImageIndex = 16
      OnExecute = ItemClick
    end
    object actPrint: TAction
      Category = 'File'
      Caption = '&Print'
      ImageIndex = 4
      ShortCut = 16464
      OnExecute = ItemClick
    end
    object actExit: TAction
      Category = 'File'
      Caption = 'E&xit'
      OnExecute = ItemClick
    end
    object actCut: TAction
      Category = 'Edit'
      Caption = 'Cu&t'
      ImageIndex = 6
      ShortCut = 16472
      OnExecute = ItemClick
    end
    object actCopy: TAction
      Category = 'Edit'
      Caption = '&Copy'
      ImageIndex = 7
      ShortCut = 16451
      OnExecute = ItemClick
    end
    object actPaste: TAction
      Category = 'Edit'
      Caption = '&Paste'
      ImageIndex = 8
      ShortCut = 16470
      OnExecute = ItemClick
    end
    object actDelete: TAction
      Category = 'Edit'
      Caption = 'De&lete'
      Enabled = False
      ShortCut = 46
      OnExecute = ItemClick
    end
    object actSelectAll: TAction
      Category = 'Edit'
      Caption = 'Select &All'
      OnExecute = ItemClick
    end
    object actTimeDate: TAction
      Category = 'Edit'
      Caption = 'Time/&Date'
      ImageIndex = 10
      ShortCut = 116
      OnExecute = ItemClick
    end
    object actWordWrap: TAction
      Category = 'Edit'
      Caption = '&Word Wrap'
      OnExecute = ItemClick
    end
    object actSetFont: TAction
      Category = 'Edit'
      Caption = 'Set &Font...'
      ImageIndex = 11
      OnExecute = ItemClick
    end
    object actFind: TAction
      Category = 'Search'
      Caption = '&Find...'
      ImageIndex = 12
      OnExecute = ItemClick
    end
    object actFindNext: TAction
      Category = 'Search'
      Caption = 'Find &Next'
      ShortCut = 114
      OnExecute = ItemClick
    end
    object actReplace: TAction
      Category = 'Search'
      Caption = '&Replace'
      ImageIndex = 14
      OnExecute = ItemClick
    end
    object actHelpTopics: TAction
      Category = 'Help'
      Caption = '&Help Topics'
      ImageIndex = 15
      OnExecute = ItemClick
    end
    object actAbout: TAction
      Category = 'Help'
      Caption = '&About Notepad...'
      OnExecute = ItemClick
    end
    object actTestButton: TAction
      Caption = 'A &button'
      ImageIndex = 9
      OnExecute = ItemClick
    end
    object actTestEdit: TTBEditAction
      Caption = 'Test Edit...'
      OnExecute = ItemClick
      EditCaption = 'Test Edit:'
      Text = 'edit'
    end
    object actBold: TAction
      Category = 'Format'
      Caption = '&Bold'
      ImageIndex = 17
      ShortCut = 16450
      OnExecute = BoldItemClick
    end
    object actItalic: TAction
      Category = 'Format'
      Caption = '&Italic'
      ImageIndex = 18
      ShortCut = 16457
      OnExecute = ItalicItemClick
    end
    object actUnderline: TAction
      Category = 'Format'
      Caption = '&Underline'
      ImageIndex = 19
      ShortCut = 16469
      OnExecute = UnderlineItemClick
    end
    object actAlignLeft: TAction
      Category = 'Format'
      Caption = 'Align &Left'
      Checked = True
      ImageIndex = 20
      ShortCut = 16460
      OnExecute = AlignClick
    end
    object actCenter: TAction
      Category = 'Format'
      Caption = '&Center'
      ImageIndex = 20
      ShortCut = 16453
      OnExecute = AlignClick
    end
    object actAlignRight: TAction
      Category = 'Format'
      Caption = 'Align &Right'
      ImageIndex = 20
      ShortCut = 16466
      OnExecute = AlignClick
    end
    object actBullets: TAction
      Category = 'Format'
      Caption = '&Bullets'
      ImageIndex = 23
      OnExecute = BulletsItemClick
    end
  end
  object ImageList: TTBImageList
    ImagesBitmap.Data = {
      F60C0000424DF60C000000000000760000002800000090010000100000000100
      040000000000800C000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD0000000000000DDDDDDDDDDDDD
      DDDDDD00000000000DDDDDDDDDDDDDDDDDDDDDDD44DDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDD4444444444DDDDDDDDDDDDDDDDDDDDDDDD00000DDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD4DDDDDDDDDDD0DDD777DDDDDDDD000DD
      DDDD000000000000DD00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDD00000000000DDD00000000000DDDDDD03300000088
      030DDDDDD44444DDDDDDD0888888888080DDDDDDDDDDDDDDDDDDDDD4DD4DD44D
      DDDDDDDDDD444444444DD000004FFFFFFFF4DDDDDDDDDDDDDDDDDDDDDDD0BF0F
      B0DDDDDDDDDDDDDDDDDD00000DDDDD00000DDDDDDDDDDDDD44DDDDDDDDDD00DD
      7DD7DDDDD005570DDDDD0FFFFFFFFFF0D000DDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDD444DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD0FFFFFFFFF0DDD003333333330
      DDDDD03300000088030D444444444444444D000000000000080DDDDDDDDDDDDD
      DDDDDDD4DD4D4DD4DDDDDDDDDD4FFFFFFF4D0737374F444444F4D70000007DDD
      DDDDDDDDDD0BFBFBFB0DD4444DDD444444DD0F000DDDDD0F000DDDD4D4D4D444
      444DDDDD0D0D000D7DD7DDD0055FF870DDDD0FFFFFFF0000700DDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDD000000000DDDD0000000000DDDDDDDD0000000000
      DDDDDDDD0000000000DD444DD000000000DDDDDDDDDDDDDDDDDDDD0FFFFFFFFF
      0DDD0B03333333330DDDD03300000088030D44444474F444444D0888888BBB88
      000DDDDDDDDDDDDDDDDDDDD4DD4D4DD4DDDDDDDDDD4F00000F4D0373734FFFFF
      FFF4D088888800DDDDDDDDDDDD0FBFBFBF0DDD74DDDDD7447DDD0F000DDDDD0F
      000DDDDDDDDDDDDD44DDDD0DDDDD00DD777DD0055FF008870DDD0FFFFFF07887
      07DDDDD00000000DDDDDDDD000000DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD444DDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDD0FFFFFFFFF0DDD0FB03333333330DDD03300000000030D44777774FFFF
      F44D088888877788080DDDDDDDDDDDD74DDDDDDD444D4DD4DDDD0000004FFFFF
      FF4D0737374F444F4444D0888888070DDDDDD0000000FB00000DDDD44DDDD744
      DDDD0000000D0000000DDDDDDDDDDDDD4DDDDDDDDDDD0DDD7DD7755FF0055088
      70DD0FFFFF0788E770DDDDDD000DD000DDDDDDDDD007DDDDDDDDDDDDD00000DD
      DDDD00000000000000DD00000000000000DD00000000000000DDDDDDDDDDDDDD
      DDDDDDD47DDDDDDDDDDDDD0FFFFFFFFF0DDD0BFB03333333330DD03333333333
      330D44777774FFFFF44D0000000000000880DD44444DDDDD47DDDDDDDD4D444D
      DDDD0FFFFF4F00000F4D0373734FFFFF4F4DD70888880770DDDD4444440FBF0F
      BF0DDDD74DDDD447DDDD00F000000F00000DDDDDDDDDDDDDDDDDD0DDDDDDDDDD
      7DD775F005555508870D0FFFFF08888780DDDDDD000DD000DDDDDDDDD700DDDD
      DDDDDDDD007D700DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDD74DDDDD44444DDDD0FFFFFFFFF0DDD0FBFB0000000
      0000D03300000000330D44777774FFFFF44D0888888888808080DD4444DDDDDD
      D4DDDDDDDD404DDDDDDD0F00004FFFFFFF4D0737374FFFFF44DDDD08F8F8F077
      0DDD4F8F8F0BFB0BFB0DDDDD4444444DDDDD00F000D00F00000D000DDD000DDD
      DDDDDDDDDDDDDD0D777D7005553B555088700FFFFF08E88780DDDDDD000DD000
      DDDDDDDDDD007DDDDDDDDDDD00DDD00DDDDD0000000000DDDDDDDD0000000000
      DDDDDDDD0000000000DD444DDDDDDDDDDDDDDD4DDDDDDD4444DDDD0FFFFFFFFF
      0DDD0BFBFBFBFB0DDDDDD03088888888030D44777774FFFFF44DD00000000008
      0800DD444DDDDDDDD4DDDDDDDDD0DDDDDDDD0FFFFF4F00F4444D037373444444
      40DDDDD08F8F8F0770DD48F1F110BF0FB0DDDDDD74DD447DDDDD00F000D00F00
      000D000DDD000DDDDDDDDD0DDDDDDDDDDDDD755555535555080D0FFFFF07EE87
      70DDDDDD0000000DDDDDDDDDDD700DDDDDDDDDDD00DDD00DDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD444DD000000000DDDD4DDDDDDDD4
      44DDDD0FFFFFFFFF0DDD0FBFBFBFBF0DDDDDD03088888888030D44777774FFFF
      F44DDD0FFFFFFFF08080DD44D4DDDDDDD4DDDDDDDD000DDDDDDD0F00004FFFF4
      F4DD07373737373730DDDDDD08F8F8F0777D4F81818F00000DDDDDDDD44D44DD
      DDDDD0000000000000DD0700D0700DDDDDDDDDDDDDDDD0DDDDDDD5F55555BB55
      500D0FFFFFF078870DDDDDDD000DD000DDDDDDDDDDD007DDDDDDDDDD00DDD00D
      DDDD00000000000000DD00000000000000DD00000000000000DD444DDDDDDDDD
      DDDDDD4DDDDDDD4D44DDDD0FFFFFFFFF0DDD0BFB0000000DDDDDD03088888888
      030D44777774FFFFF44DDDD0F00000F0000DDD4DDD47DDDD47DDDDDDDD0D0DDD
      DDDD0FFFFF4FFFF44DDD03700000000770DDDDDDD08F8F8F070D4811F81840DD
      DDDDDDDDD74447DDDDDDDD0F000D0F000DDD0800D0800DDDDDDD0DDD0DDDDDDD
      DDDDDD5F555553BB550D0FFFFFFF0000DDDDDDDD000DD000DDDDDDDDDDD700DD
      DDDDDDDD00DDD00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDD74DDDD74DDD4DDDD0FFFFFF0000DDDD000DDDDDDDD
      000DD03088888888030D44777774FFFFF44DDDD0FFFFFFFF0DDDDDDDDDD74444
      7DDDDDDDD00D00DDDDDD0F00F0444444DDDD07708888880730DDDDDDDD08F8F8
      F70D4F81811F40DDDDDDDDDDDD444DDDDDDDDD00000D00000DDD000000000DDD
      DDDD0DDD0DDDD0DDDDDDDDD5F55535BB55500FFFFFFFFFF0DDDDDDDD000DD000
      DDDDDDDDDDDD007DDDDDDDDD00DDD00DDDDD0000000000DDDDDDDD0000000000
      DDDDDDDD0000000000DDDDDDDDDDDDDDDDDDDDD744447DDDDDDDDD0FFFFFF0F0
      DDDDDDDDDDDDDDDDD00DD03088888888000D4477774D4FFFF44DDDDD0F00000F
      0DDDDDDDDDDDDDDDDDDDDDDDD0DDD0DDDDDD0FFFF0F0DDDDDDDD03730B00B073
      70DDDDDDDDD08F8F880D48F8F8F840DDDDDDDDDDDD747DDDDDDDDDD000DDD000
      DDDDD0700070DDDDDDDD70007DDDDDDDDDDDDDDD5F55BBB555000FFFFFFF0000
      DDDDDDD00000000DDDDDDDDDDDD00000DDDDDDDD00DDD00DDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD444DDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDD0FFFFFF00DDDDDDDDDDDDD0DDD0D0DD03088888888080DD44444DDD444
      44DDDDDD0FFFFFFFF0DDDDDDDDDDDDDDDDDDDDDDD0DDD0DDDDDD0FFFF00DDDDD
      DDDDD00000BB00000DDDDDDDDDDD7000077D4444444440DDDDDDDDDDDDD4DDDD
      DDDDDDD0F0DDD0F0DDDDDD00D00DDDDDDDDDD0D0DDDDDD0D0DDDDDDDD5F55555
      00DD0FFFFFFF080DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD0000D0000
      DDDD00000000000000DD00000000000000DD00000000000000DD444DD0000000
      00DDDDDDDDDDDDDDDDDDDD00000000DDDDDDDDDDDDDDD000DDDDD00000000000
      000DDDDDDDDDDDDDDDDDDDDDD000000000DDDDDDDDDDDDDDDDDDDDDDD0DDD0DD
      DDDD000000DDDDDDDDDDDDDDD0000DDDDDDDDDDDDDDDDDDDDDDD4C4CCC4C40DD
      DDDDDDDDDDDDDDDDDDDDDDD000DDD000DDDDDD00D00DDDDDDDDDD707DDDDDDD0
      0DDDDDDDDD5F5500DDDD0FFFFFFF00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDD444DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDD444444444DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDD0DDDDDDD000DDDDDDDDDD550DDDDDD000000000DDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
    Left = 48
    Top = 104
  end
  object ContextPopupMenu: TTBPopupMenu
    Images = ImageList
    Left = 80
    Top = 104
    object NBItem34: TTBItem
      Action = actUndo
    end
    object NBSeparatorItem6: TTBSeparatorItem
    end
    object NBItem35: TTBItem
      Action = actCut
    end
    object NBItem36: TTBItem
      Action = actCopy
    end
    object NBItem37: TTBItem
      Action = actPaste
    end
    object NBItem38: TTBItem
      Action = actDelete
    end
    object NBSeparatorItem7: TTBSeparatorItem
    end
    object NBItem39: TTBItem
      Action = actSelectAll
    end
  end
  object ToolbarPopupMenu: TTBPopupMenu
    Images = ImageList
    LinkSubitems = VToolbars
    Left = 112
    Top = 104
  end
  object MRUList: TTBMRUList
    Items.Strings = (
      'C:\MRU List Example\First.txt'
      'C:\MRU List Example\Second.txt'
      'C:\MRU List Example\Third.txt'
      'C:\MRU List Example\Fourth.txt')
    OnClick = MRUListClick
    Prefix = 'MRU'
    Left = 144
    Top = 104
  end
end
