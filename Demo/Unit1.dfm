object Form1: TForm1
  Left = 180
  Top = 133
  Caption = 'TBX Demo'
  ClientHeight = 522
  ClientWidth = 1032
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  PopupMenu = TBXPopupMenu1
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TBDock1: TTBXDock
    Left = 0
    Top = 0
    Width = 1032
    Height = 79
    ExplicitWidth = 709
    object TBToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      Caption = 'Menu Bar'
      CloseButton = False
      DockPos = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FullSize = True
      Images = ImageList1
      MenuBar = True
      ParentFont = False
      ProcessShortCuts = True
      ShrinkMode = tbsmWrap
      TabOrder = 0
      object TBXSubmenuItem1: TTBXSubmenuItem
        Caption = '&File'
        object TBXItem4: TTBXItem
          Caption = '&New'
          ImageIndex = 28
          ShortCut = 16462
          OnClick = MakeNewWindow
        end
        object TBXItem1: TTBXItem
          Caption = '&Open'
          ImageIndex = 29
          ShortCut = 16463
        end
        object TBXItem5: TTBXItem
          Caption = '&Close'
        end
        object TBXSeparatorItem1: TTBXSeparatorItem
        end
        object TBXItem2: TTBXItem
          Caption = '&Save'
          Enabled = False
          ImageIndex = 40
          ShortCut = 16467
        end
        object TBXItem3: TTBXItem
          Caption = 'Save &As...'
        end
        object TBXSeparatorItem2: TTBXSeparatorItem
        end
        object TBXItem6: TTBXItem
          Caption = 'Page Set&up...'
        end
        object TBXItem15: TTBXItem
          Caption = 'Print Pre&view'
          ImageIndex = 34
        end
        object TBXItem7: TTBXItem
          Caption = '&Print'
          ImageIndex = 33
          ShortCut = 16464
        end
        object TBXSeparatorItem3: TTBXSeparatorItem
        end
        object TBXItem8: TTBXItem
          Caption = 'E&xit'
        end
      end
      object mnEdit: TTBXSubmenuItem
        Caption = '&Edit'
        object TBXSubmenuItem3: TTBXSubmenuItem
          Caption = '&Undo'
          DropdownCombo = True
          ImageIndex = 45
          LinkSubitems = mnUndoItems
          ShortCut = 16474
          ToolBoxPopup = True
        end
        object TBXSubmenuItem4: TTBXSubmenuItem
          Caption = '&Redo'
          DropdownCombo = True
          Enabled = False
          ImageIndex = 37
          ShortCut = 24666
          ToolBoxPopup = True
        end
        object TBXSeparatorItem4: TTBXSeparatorItem
        end
        object TBXItem9: TTBXItem
          Caption = '&Cut'
          ImageIndex = 10
          ShortCut = 16472
        end
        object TBXItem10: TTBXItem
          Caption = '&Copy'
          ImageIndex = 9
          ShortCut = 16451
        end
        object TBXItem11: TTBXItem
          Caption = '&Paste'
          Enabled = False
          ImageIndex = 32
        end
        object TBXSeparatorItem11: TTBXSeparatorItem
        end
        object TBXSubmenuItem7: TTBXSubmenuItem
          Caption = 'Cle&ar'
          object TBXItem39: TTBXItem
            Caption = '&Formats'
          end
          object TBXItem55: TTBXItem
            Caption = '&Contents'
            ShortCut = 46
          end
        end
        object TBXItem56: TTBXItem
          Caption = 'Select A&ll'
        end
        object TBXSeparatorItem17: TTBXSeparatorItem
        end
        object TBXItem57: TTBXItem
          Caption = '&Find...'
          ImageIndex = 15
          ShortCut = 16454
        end
        object TBXItem58: TTBXItem
          Caption = 'R&eplace'
          ShortCut = 16456
        end
        object TBXItem59: TTBXItem
          Caption = '&Go To...'
          ShortCut = 16455
        end
        object TBXItem29: TTBXItem
          Caption = 'Checked'
          Checked = True
        end
        object TBXItem28: TTBXItem
          Caption = 'Checked image'
          Checked = True
          ImageIndex = 1
        end
        object TBXItem38: TTBXItem
          Caption = 'Disabled image'
          Enabled = False
          ImageIndex = 7
        end
        object TBXItem12: TTBXItem
          Caption = 'Checked Disabled'
          Checked = True
          Enabled = False
          FontSettings.Color = clFuchsia
        end
        object TBXItem13: TTBXItem
          Caption = 'Checked Disabled image'
          Checked = True
          Enabled = False
          ImageIndex = 27
        end
        object TBXSeparatorItem6: TTBXSeparatorItem
        end
        object bColorItem: TTBXColorItem
          Caption = 'Current Color: Default Color'
          Color = clNone
        end
        object TBXSubmenuItem6: TTBXSubmenuItem
          Caption = 'Link to Colors'
          LinkSubitems = ColorCombo
        end
        object TBXSeparatorItem7: TTBXSeparatorItem
        end
        object TBXEditItem2: TTBXEditItem
          Caption = 'Edit Item Caption'
          DisplayMode = nbdmImageAndText
          Text = 'test'
          FontSettings.Italic = tsTrue
        end
        object TBXSpinEditItem2: TTBXSpinEditItem
          Caption = 'Spint Edit Item'
          EditCaption = 'EdCaption'
          EditorFontSettings.Bold = tsTrue
          SpaceAfterPrefix = False
          SpaceBeforePostfix = False
        end
        object TBXComboBoxItem1: TTBXComboBoxItem
          Caption = 'ComboBox Item'
          EditCaption = 'Combo item'
          Strings.Strings = (
            'item0'
            'item1'
            'item2'
            'item3')
        end
      end
      object TBXSubmenuItem2: TTBXSubmenuItem
        Caption = '&Format'
        object TBXItem16: TTBXItem
          Caption = '&Font...'
          ImageIndex = 17
        end
        object TBXItem17: TTBXItem
          Caption = '&Paragraph'
        end
        object TBXItem18: TTBXItem
          Caption = '&Bullets'
          ImageIndex = 5
        end
        object TBXItem19: TTBXItem
          Caption = '&Numbering'
          ImageIndex = 6
        end
        object TBXSeparatorItem9: TTBXSeparatorItem
        end
        object TBXItem20: TTBXItem
          Caption = '&Columns'
        end
        object TBXItem21: TTBXItem
          Caption = '&Tabs'
        end
        object TBXSeparatorItem10: TTBXSeparatorItem
        end
        object TBXItem22: TTBXItem
          Caption = '&Object'
          Enabled = False
          ImageIndex = 7
        end
      end
      object TBXSubmenuItem5: TTBXSubmenuItem
        Caption = '&Window'
        object TBXItem23: TTBXItem
          Caption = '&Cascade'
          ImageIndex = 46
          OnClick = TBXItem23Click
        end
        object TBXItem26: TTBXItem
          Caption = '&Tile'
          ImageIndex = 53
          OnClick = TBXItem26Click
        end
        object TBXSeparatorItem16: TTBXSeparatorItem
        end
        object TBXMDIWindowItem1: TTBXMDIWindowItem
        end
      end
    end
    object TBXToolbar2: TTBXToolbar
      Left = 0
      Top = 25
      Caption = 'TBXToolbar2'
      DockPos = -28
      DockRow = 1
      Images = ImageList1
      TabOrder = 1
      object TBXItem40: TTBXItem
        Caption = 'New'
        ImageIndex = 28
        OnClick = MakeNewWindow
      end
      object TBXItem41: TTBXItem
        Caption = 'Open'
        ImageIndex = 29
      end
      object TBXItem42: TTBXItem
        Caption = 'Save'
        Enabled = False
        ImageIndex = 40
      end
      object TBXSeparatorItem12: TTBXSeparatorItem
      end
      object TBXItem43: TTBXItem
        Caption = 'Print'
        ImageIndex = 33
      end
      object TBXItem44: TTBXItem
        Caption = 'Print Preview'
        ImageIndex = 34
      end
      object TBXSeparatorItem13: TTBXSeparatorItem
      end
      object TBXItem45: TTBXItem
        Caption = 'Cut'
        ImageIndex = 10
      end
      object TBXItem46: TTBXItem
        Caption = 'Copy'
        ImageIndex = 9
      end
      object TBXItem47: TTBXItem
        Caption = 'Paste'
        DisplayMode = nbdmImageAndText
        ImageIndex = 32
        Layout = tbxlGlyphLeft
      end
      object TBXSeparatorItem14: TTBXSeparatorItem
      end
      object mnUndoItems: TTBXSubmenuItem
        AlwaysSelectFirst = True
        Caption = 'Undo'
        DropdownCombo = True
        ImageIndex = 45
        ToolBoxPopup = True
        OnPopup = mnUndoItemsPopup
        object UndoList: TTBXUndoList
          MinWidth = 120
          Strings.Strings = (
            'First Action'
            'Second Action'
            'Third Action'
            'Fourth Action'
            'Fith Action'
            'Sixth Action'
            'Seventh Action'
            'a'
            'b'
            'c')
          OnChange = UndoListChange
        end
        object UndoLabel: TTBXLabelItem
          Caption = 'Undo 1 Action'
          Margin = 4
        end
      end
      object TBXSubmenuItem9: TTBXSubmenuItem
        Caption = 'Redo'
        DropdownCombo = True
        Enabled = False
        ImageIndex = 37
        ToolBoxPopup = True
      end
      object TBXSeparatorItem15: TTBXSeparatorItem
      end
      object TBXSubmenuItem10: TTBXSubmenuItem
        Caption = 'Zoom'
        ImageIndex = 34
        Options = [tboDropdownArrow]
        ToolBoxPopup = True
        object TBXList1: TTBXStringList
          Strings.Strings = (
            '25%'
            '50%'
            '75%'
            '100%'
            '125%'
            '150%'
            '200%')
        end
      end
      object TBXSeparatorItem23: TTBXSeparatorItem
      end
      object TBXSpinEditItem1: TTBXSpinEditItem
        EditWidth = 100
        ExtendedAccept = True
        FontSettings.Color = clMenuHighlight
        ValueType = evtFloat
        Increment = 0.100000000000000000
        MaxValue = 100.000000000000000000
        Postfix = 'mm'
        SpaceAfterPrefix = False
        SpaceBeforePostfix = True
        Value = 10.000000000000000000
        OnConvert = TBXSpinEditItem1Convert
        OnTextToValue = TBXSpinEditItem1TextToValue
        OnValueToText = TBXSpinEditItem1ValueToText
      end
      object TBXComboList3: TTBXComboBoxItem
        Text = 'mm'
        Images = ImageList2
        ReadOnly = True
        ShowImage = True
        OnChange = TBXComboList3Change
        DropDownList = True
        ShowListImages = True
        Strings.Strings = (
          'mm'
          'cm'
          'in')
        SubMenuImages = ImageList2
      end
    end
    object TBXToolbar3: TTBXToolbar
      Left = 0
      Top = 52
      Caption = 'TBXToolbar3'
      DockPos = -4
      DockRow = 2
      Images = ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      object TBXVisibilityToggleItem1: TTBXVisibilityToggleItem
        Caption = 'Formatting'
        Control = DockablePanel
        ImageIndex = 56
      end
      object TBXLabelItem1: TTBXLabelItem
        Caption = ' Formatting:'
      end
      object lstFonts: TTBXComboBoxItem
        Caption = 'Fonts'
        EditWidth = 128
        ImageIndex = 4
        Text = 'Times New Roman'
        MaxListWidth = 256
        MaxVisibleItems = 14
        MinListWidth = 128
        OnDrawItem = lstFontsDrawItem
        OnMeasureHeight = lstFontsMeasureHeight
      end
      object TBXComboList1: TTBXComboBoxItem
        Caption = 'Sizes'
        EditWidth = 40
        Enabled = False
        Text = '12'
        MaxListWidth = 64
        MaxVisibleItems = 10
        MinListWidth = 38
        Strings.Strings = (
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '14'
          '16'
          '18'
          '20'
          '22'
          '24'
          '26'
          '28'
          '36'
          '72')
      end
      object TBXSeparatorItem18: TTBXSeparatorItem
      end
      object TBXItem61: TTBXItem
        Caption = 'Bold'
        DisplayMode = nbdmImageAndText
        ImageIndex = 4
      end
      object TBXItem62: TTBXItem
        Caption = 'Italic'
        ImageIndex = 26
      end
      object TBXSeparatorItem5: TTBXSeparatorItem
      end
      object TBXItem64: TTBXItem
        Checked = True
        GroupIndex = 1
        ImageIndex = 2
        OnClick = TBXItem31Click
      end
      object TBXItem65: TTBXItem
        GroupIndex = 1
        ImageIndex = 54
        OnClick = TBXItem31Click
      end
      object TBXItem66: TTBXItem
        GroupIndex = 1
        ImageIndex = 3
        OnClick = TBXItem31Click
      end
      object TBXSeparatorItem19: TTBXSeparatorItem
      end
      object TBXSubmenuItem8: TTBXSubmenuItem
        AlwaysSelectFirst = True
        Caption = 'Tools'
        DisplayMode = nbdmImageAndText
        ImageIndex = 36
        Options = [tboDropdownArrow, tboToolbarStyle]
        ToolBoxPopup = True
        object ToolPalette: TTBXToolPalette
          ColCount = 6
          Images = ImageList1
          Options = [tboToolbarStyle]
          PaletteOptions = []
          RowCount = 6
        end
      end
      object bColorButton: TTBXSubmenuItem
        Caption = 'Color Button'
        DisplayMode = nbdmImageAndText
        ImageIndex = 57
        LinkSubitems = ColorCombo
        Options = [tboDropdownArrow]
        ToolBoxPopup = True
        OnDrawImage = bColorButtonDrawImage
      end
      object TBXSeparatorItem22: TTBXSeparatorItem
      end
      object ColorCombo: TTBXDropDownItem
        Caption = 'Colors'
        EditWidth = 96
        Text = 'Default Color'
        AlwaysSelectFirst = False
        DropDownList = True
        object ClrDefault: TTBXColorItem
          Caption = 'Default'
          Color = clNone
          GroupIndex = 99
          Hint = 'Default Color'
          Options = [tboShowHint]
          OnClick = ClrDefaultClick
        end
        object TBXSeparatorItem26: TTBXSeparatorItem
          Blank = True
          Options = [tboShowHint]
        end
        object ColorPalette: TTBXColorPalette
          PaletteOptions = [tpoCustomImages]
          OnChange = ColorPaletteChange
        end
        object TBXSeparatorItem20: TTBXSeparatorItem
          Size = 8
          Options = [tboShowHint]
        end
        object MoreColors: TTBXItem
          Caption = 'More Colors...'
          Options = [tboShowHint]
          OnClick = MoreColorsClick
        end
      end
    end
  end
  object TBDock2: TTBXDock
    Left = 0
    Top = 86
    Width = 9
    Height = 355
    Position = dpLeft
  end
  object TBDock3: TTBXDock
    Left = 888
    Top = 86
    Width = 144
    Height = 355
    FixAlign = True
    Position = dpRight
    ExplicitLeft = 565
    object TBXToolWindow1: TTBXToolWindow
      Left = 0
      Top = 0
      Caption = 'TBXToolWindow1'
      CloseButtonWhenDocked = True
      ClientAreaHeight = 267
      ClientAreaWidth = 144
      DockPos = -32
      TabOrder = 0
      object TBXButton4: TTBXButton
        Left = 0
        Top = 0
        Width = 144
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Align = alTop
        ButtonStyle = bsFlat
        Caption = 'Flat Button'
        ImageIndex = 43
        Images = ImageList1
        SmartFocus = False
        TabOrder = 0
        Wrapping = twWrap
        ExplicitWidth = 140
      end
      object TBXButton5: TTBXButton
        Left = 0
        Top = 25
        Width = 144
        Height = 45
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Align = alTop
        ButtonStyle = bsFlat
        Caption = 'Another Flat Button'
        DropDownMenu = TBXPopupMenu1
        ImageIndex = 55
        Images = ImageList1
        Layout = blGlyphTop
        SmartFocus = False
        TabOrder = 1
        ExplicitWidth = 140
      end
      object TBXButton6: TTBXButton
        Left = 0
        Top = 70
        Width = 144
        Height = 42
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        ButtonStyle = bsFlat
        Caption = 'And Yet Another Flat Button'
        DropDownCombo = True
        DropDownMenu = TBXPopupMenu1
        SmartFocus = False
        TabOrder = 2
        Wrapping = twWrap
        ExplicitWidth = 140
      end
    end
  end
  object TBDock4: TTBXDock
    Left = 0
    Top = 448
    Width = 1032
    Height = 52
    FixAlign = True
    Position = dpBottom
    ExplicitWidth = 709
    object TBToolbar3: TTBXToolbar
      Left = 0
      Top = 0
      Caption = 'Navigation Controls'
      DockPos = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = ImageList2
      ParentFont = False
      TabOrder = 0
      object be1: TTBXSubmenuItem
        Caption = 'Step'#13#10'Back'
        DisplayMode = nbdmImageAndText
        DropdownCombo = True
        FontSettings.Size = 90
        ImageIndex = 0
        Layout = tbxlGlyphTop
        Stretch = True
        object TBXItem24: TTBXItem
          Caption = '1. One'
        end
        object TBXItem25: TTBXItem
          Caption = '2. Two'
        end
        object TBXItem30: TTBXItem
          Caption = '3. Three'
        end
      end
      object be2: TTBXSubmenuItem
        Caption = 'Step'#13#10'Forward'
        DisplayMode = nbdmImageAndText
        DropdownCombo = True
        Enabled = False
        FontSettings.Size = 90
        ImageIndex = 1
        Layout = tbxlGlyphTop
        Stretch = True
      end
      object be3: TTBXItem
        Caption = ' Stop '#13#10' That '
        DisplayMode = nbdmImageAndText
        FontSettings.Size = 90
        ImageIndex = 2
        Layout = tbxlGlyphTop
        Stretch = True
      end
      object be4: TTBXItem
        Caption = 'Refresh'#13#10'Everything'
        DisplayMode = nbdmImageAndText
        Enabled = False
        FontSettings.Size = 90
        ImageIndex = 3
        Layout = tbxlGlyphTop
        Stretch = True
      end
      object TBXSeparatorItem8: TTBXSeparatorItem
      end
      object be5: TTBXItem
        Caption = 'Search'#13#10'for Files'
        DisplayMode = nbdmImageAndText
        Enabled = False
        FontSettings.Size = 90
        ImageIndex = 4
        Layout = tbxlGlyphTop
        Stretch = True
      end
      object be6: TTBXItem
        Caption = 'My'#13#10'Favorites'
        DisplayMode = nbdmImageAndText
        FontSettings.Size = 90
        ImageIndex = 5
        Layout = tbxlGlyphTop
        Stretch = True
      end
      object be7: TTBXSubmenuItem
        Caption = 'Change'#13#10'Options'
        DisplayMode = nbdmImageAndText
        FontSettings.Size = 90
        ImageIndex = 36
        Images = ImageList1
        Layout = tbxlGlyphTop
        Options = [tboDropdownArrow]
        Stretch = True
        object TBXItem27: TTBXItem
          Caption = 'One'
          GroupIndex = 1
          OnClick = TBXItem27Click
        end
        object TBXItem31: TTBXItem
          Caption = 'Two'
          Checked = True
          GroupIndex = 1
          OnClick = TBXItem27Click
        end
      end
    end
  end
  object TBXStatusBar: TTBXStatusBar
    Left = 0
    Top = 500
    Width = 1032
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = ImageList2
    Panels = <
      item
        Alignment = taCenter
        MaxSize = 150
        Tag = 0
        TextTruncation = twEndEllipsis
      end
      item
        Alignment = taCenter
        Hint = 'This panel has its own hint'
        MaxSize = 40
        Tag = 0
        TextTruncation = twEndEllipsis
      end
      item
        ImageIndex = 3
        MaxSize = 200
        StretchPriority = 100
        Tag = 0
        TextTruncation = twPathEllipsis
      end
      item
        Control = Edit1
        Tag = 0
      end
      item
        Alignment = taCenter
        Enabled = False
        ViewPriority = 30
        Tag = 0
      end
      item
        StretchPriority = 1
        Tag = 0
      end>
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    UseSystemFont = True
    OnPanelClick = TBXStatusBarPanelClick
    ExplicitWidth = 709
    object Edit1: TEdit
      Left = 300
      Top = 2
      Width = 50
      Height = 20
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Text = 'Edit1'
    end
  end
  object TBXMultiDock1: TTBXMultiDock
    Left = 0
    Top = 79
    Width = 1032
    Height = 7
    ExplicitWidth = 709
  end
  object TBXMultiDock2: TTBXMultiDock
    Left = 9
    Top = 86
    Width = 166
    Height = 355
    Position = dpLeft
    ExplicitTop = 82
    ExplicitHeight = 363
    object DockablePanel: TTBXDockablePanel
      Left = 0
      Top = 0
      MinClientHeight = 64
      MinClientWidth = 80
      Caption = 'Theme'
      DockedWidth = 162
      DockPos = 0
      FloatingWidth = 160
      FloatingHeight = 320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      SupportedDocks = [dkMultiDock]
      TabOrder = 0
      object TBXPageScroller: TTBXPageScroller
        Left = 0
        Top = 0
        Width = 166
        Height = 339
        Align = alClient
        AutoRange = True
        Margin = 10
        TabOrder = 0
        ExplicitWidth = 162
        ExplicitHeight = 317
        object TBXLabel1: TTBXLabel
          Left = 0
          Top = 0
          Width = 166
          Height = 26
          Margins.Left = 4
          Margins.Top = 8
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          Caption = 'WindowsXP  visual styles:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Underline = True
          Wrapping = twEndEllipsis
        end
        object TBXLabel2: TTBXLabel
          Left = 0
          Top = 43
          Width = 166
          Height = 26
          Margins.Left = 4
          Margins.Top = 8
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          Caption = 'Flat menu style:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Underline = True
        end
        object TBXLabel3: TTBXLabel
          Left = 0
          Top = 120
          Width = 166
          Height = 26
          Margins.Left = 4
          Margins.Top = 8
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          Caption = 'TBX theme:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Underline = True
        end
        object TBXAlignmentPanel2: TTBXAlignmentPanel
          Left = 0
          Top = 146
          Width = 166
          Height = 86
          Margins.Left = 16
          Margins.Top = 1
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alClient
          TabOrder = 7
          ExplicitHeight = 79
          object ListBox1: TListBox
            Left = 16
            Top = 1
            Width = 142
            Height = 77
            Align = alClient
            Constraints.MinHeight = 60
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 0
            OnClick = ListBox1Click
            ExplicitHeight = 70
          end
        end
        object TBXLabel4: TTBXLabel
          Left = 0
          Top = 232
          Width = 166
          Height = 26
          Margins.Left = 4
          Margins.Top = 8
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alBottom
          Caption = 'Other controls:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Underline = True
          UnderlineColor = clBlue
          ExplicitTop = 225
        end
        object TBXAlignmentPanel4: TTBXAlignmentPanel
          Left = 0
          Top = 317
          Width = 166
          Height = 32
          Margins.Left = 16
          Margins.Top = 1
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alBottom
          AutoSize = True
          TabOrder = 9
          TabStop = True
          ExplicitTop = 310
          object TBXToolbar1: TTBXToolbar
            Left = 16
            Top = 1
            Width = 142
            Height = 23
            Align = alTop
            Caption = 'TBXToolbar1'
            ShrinkMode = tbsmWrap
            TabOrder = 0
            TabStop = True
            object TBXSubmenuItem11: TTBXSubmenuItem
              Caption = 'Combo'
              DropdownCombo = True
            end
            object TBXSeparatorItem21: TTBXSeparatorItem
              Blank = True
            end
            object TBXComboList2: TTBXComboBoxItem
            end
          end
        end
        object TBXCheckBox1: TTBXCheckBox
          Left = 0
          Top = 26
          Width = 166
          Height = 17
          Margins.Left = 16
          Margins.Right = 8
          Align = alTop
          Caption = 'Enable'
          State = cbChecked
          TabOrder = 1
          Wrapping = twWrap
          OnChange = TBXCheckBox1Change
        end
        object TBXRadioButton1: TTBXRadioButton
          Left = 0
          Top = 69
          Width = 166
          Height = 17
          Margins.Left = 16
          Margins.Right = 8
          Align = alTop
          Caption = 'Auto'
          Checked = True
          TabOrder = 3
          OnChange = TBXRadioButton1Change
        end
        object TBXRadioButton2: TTBXRadioButton
          Left = 0
          Top = 86
          Width = 166
          Height = 17
          Margins.Left = 16
          Margins.Right = 8
          Align = alTop
          BiDiMode = bdLeftToRight
          Caption = 'Enable'
          ParentBiDiMode = False
          TabOrder = 4
          OnChange = TBXRadioButton2Change
        end
        object TBXRadioButton3: TTBXRadioButton
          Left = 0
          Top = 103
          Width = 166
          Height = 17
          Margins.Left = 16
          Margins.Right = 8
          Align = alTop
          Caption = 'Disable'
          TabOrder = 5
          OnChange = TBXRadioButton3Change
        end
        object TBXCheckBox2: TTBXCheckBox
          Left = 0
          Top = 258
          Width = 166
          Height = 17
          Margins.Left = 16
          Margins.Right = 8
          Align = alBottom
          AllowGrayed = True
          Caption = 'TBXCheckBox'
          TabOrder = 10
          Wrapping = twEndEllipsis
          ExplicitTop = 251
        end
        object TBXLink1: TTBXLink
          Left = 0
          Top = 275
          Width = 166
          Height = 20
          Cursor = crHandPoint
          Margins.Left = 16
          Margins.Right = 8
          Align = alBottom
          Caption = 'TBXLink'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 1
          Images = ImageList2
          ParentFont = False
          TabOrder = 11
          Wrapping = twEndEllipsis
          ExplicitTop = 268
        end
        object TBXLabel5: TTBXLabel
          Left = 0
          Top = 295
          Width = 166
          Height = 22
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alBottom
          Caption = 'Embedded toolbar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Underline = True
          UnderlineColor = clBlue
          ExplicitTop = 288
        end
      end
    end
  end
  object TBXMultiDock3: TTBXMultiDock
    Left = 761
    Top = 86
    Width = 127
    Height = 355
    Position = dpRight
    ExplicitLeft = 438
    ExplicitTop = 85
    object TBXDockablePanel1: TTBXDockablePanel
      Left = 0
      Top = 0
      BorderSize = 8
      Caption = 'DP1'
      DockedWidth = 123
      DockPos = 0
      FloatingWidth = 128
      FloatingHeight = 128
      SplitHeight = 116
      SupportedDocks = [dkMultiDock]
      TabOrder = 0
      object TBXLabel6: TTBXLabel
        Left = 8
        Top = 8
        Width = 111
        Height = 18
        Margins.Bottom = 4
        Align = alTop
        Caption = 'Caption Rotation'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Underline = True
        UnderlineColor = clBlue
      end
      object TBXRadioButton4: TTBXRadioButton
        Left = 8
        Top = 26
        Width = 111
        Height = 17
        Align = alTop
        Caption = 'dpcrAuto'
        Checked = True
        TabOrder = 1
        Wrapping = twEndEllipsis
        OnClick = TBXRadioButton4Click
      end
      object TBXRadioButton5: TTBXRadioButton
        Tag = 1
        Left = 8
        Top = 43
        Width = 111
        Height = 17
        Align = alTop
        Caption = 'dpcrAlwaysHorz'
        TabOrder = 2
        Wrapping = twEndEllipsis
        OnClick = TBXRadioButton4Click
      end
      object TBXRadioButton6: TTBXRadioButton
        Tag = 2
        Left = 8
        Top = 60
        Width = 111
        Height = 17
        Align = alTop
        Caption = 'dpcrAlwaysVert'
        TabOrder = 3
        Wrapping = twEndEllipsis
        OnClick = TBXRadioButton4Click
      end
    end
    object TBXDockablePanel2: TTBXDockablePanel
      Left = 0
      Top = 113
      BorderSize = 8
      Caption = 'DP2'
      DockedWidth = 123
      DockPos = 113
      FloatingWidth = 128
      FloatingHeight = 128
      SplitHeight = 88
      SupportedDocks = [dkMultiDock]
      TabOrder = 1
      object TBXLabel7: TTBXLabel
        Left = 8
        Top = 8
        Width = 111
        Height = 18
        Margins.Bottom = 4
        Align = alTop
        Caption = 'Mouse Behavior'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Underline = True
        UnderlineColor = clBlue
      end
      object TBXCheckBox3: TTBXCheckBox
        Left = 8
        Top = 26
        Width = 111
        Height = 17
        Align = alTop
        Caption = 'SmoothDrag'
        State = cbChecked
        TabOrder = 1
        Wrapping = twEndEllipsis
        OnChange = TBXCheckBox3Change
      end
      object TBXCheckBox4: TTBXCheckBox
        Left = 8
        Top = 43
        Width = 111
        Height = 17
        Align = alTop
        Caption = 'SmoothDockedResize'
        State = cbChecked
        TabOrder = 2
        Wrapping = twEndEllipsis
        OnChange = TBXCheckBox4Change
      end
    end
    object TBXDockablePanel3: TTBXDockablePanel
      Left = 0
      Top = 199
      Caption = 'DP3'
      DockedWidth = 123
      DockPos = 199
      FloatingWidth = 128
      FloatingHeight = 128
      SplitHeight = 143
      SupportedDocks = [dkMultiDock]
      TabOrder = 2
      object TBXPageScroller1: TTBXPageScroller
        Left = 0
        Top = 0
        Width = 127
        Height = 140
        Align = alClient
        AutoRange = True
        TabOrder = 0
        ExplicitWidth = 123
        ExplicitHeight = 121
        object TBXButton2: TTBXButton
          Left = 0
          Top = 38
          Width = 127
          Height = 25
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Align = alTop
          Caption = 'TBXButton1'
          DropDownMenu = TBXPopupMenu1
          TabOrder = 0
        end
        object TBXButton3: TTBXButton
          Left = 0
          Top = 63
          Width = 127
          Height = 29
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          Caption = 'TBXButton1'
          DropDownCombo = True
          DropDownMenu = TBXPopupMenu1
          TabOrder = 1
        end
        object TBXButton1: TTBXButton
          Left = 0
          Top = 0
          Width = 127
          Height = 38
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Align = alTop
          Caption = 'Long captions can wrap automatically'
          TabOrder = 2
          Wrapping = twWrap
        end
      end
    end
  end
  object TBXMultiDock4: TTBXMultiDock
    Left = 0
    Top = 441
    Width = 1032
    Height = 7
    Position = dpBottom
    ExplicitWidth = 709
  end
  object Memo1: TMemo
    Left = 175
    Top = 86
    Width = 586
    Height = 355
    Align = alClient
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 9
    ExplicitWidth = 263
  end
  object ImageList1: TImageList
    Left = 360
    Top = 92
    Bitmap = {
      494C01013A003B001C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000F0000000010020000000000000F0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000000000000000000000000000008400
      0000840000008400000084000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000840000008400000000000000000000008400000084000000840000008400
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084848400840000000000
      0000000000000000000000000000000000008484840084000000840000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000008400000084000000000000000000
      0000840000008400000000000000000000000000000000000000840000008400
      0000000000000000000000000000000000008484840084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000084000000840000000000
      0000840000008400000000000000000000000000000000000000848484008400
      0000000000000000000000000000000000008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000840000008400
      0000840000008400000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF0000000000000000000000FF000000FF0000008400
      0000840000008400000000000000000000000000000000000000000000008484
      8400840000000000000000000000840000008400000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF00000000000000FF000000FF0000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000840000008400000000000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008400000084000000840000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF000000000084000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF000000000000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF000000000084000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF000000000084000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400848484008484840000000000FFFFFF00FFFFFF0000FFFF008484
      8400FFFFFF00FFFFFF0000FFFF000000000084000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600848484008484840000000000FFFFFF00FFFFFF008400
      000084848400FFFFFF00FFFFFF000000000084000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0084000000000000000000000084000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C60084848400848484000000000000FFFF008400
      000084000000FFFFFF0000FFFF000000000084000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C6008484840084848400840000008400
      000084000000FFFFFF00FFFFFF000000000084000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600FFFF
      FF00FFFFFF00C6C6C60000000000C6C6C600C6C6C60084848400840000008400
      000084000000FFFFFF0000FFFF000000000084000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600FFFFFF00000000008400000000000000C6C6C60084000000840000008400
      000084848400FFFFFF00FFFFFF00000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600FFFFFF0084000000C6C6C6008484840084000000840000008484
      8400FFFFFF00FFFFFF00FFFFFF000000000084000000FFFFFF00FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000000000000C6C6C60084000000848484000000000084848400FFFFFF00FFFF
      FF00000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084000000FFFFFF008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000C6C6C60000000000840000000000000084848400FFFFFF0000FFFF00FFFF
      FF0084848400C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000C6C6C600C6C6C600840000008484840000FFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000008400000084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600840000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      000084000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600840000000000000000000000000000008484000084840000848400008484
      0000848400008484000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000000000000000000000000000000000000000000000000000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FFFF
      FF0084000000C6C6C60084000000840000008400000084000000840000008400
      00008400000000000000000000000000000084840000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000FFFFFF008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000FF000000FFFF
      FF00840000008400000084000000840000008400000084000000840000008400
      00008400000000000000000000000000000084840000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000FF000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF0000000000
      00000000000000000000000000000000000084840000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084840000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000FFFFFF00FFFFFF00FFFFFF00000000008400000084000000FF000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF0000000000
      0000000000000000000000000000000000008484000084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000848400000000000000000000FFFFFF00848484008484
      840000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000000000000000000000000000000000000000000000000000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00008484840084848400FFFFFF000000000084000000C6C6C600FF000000C6C6
      C600FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00008400000084000000840000008400000084840000FFFFFF00848400008484
      0000848400008484000084840000848400008484000084840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00848400000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084000000FFFFFF00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000840000008400000084000000000000008484000084840000848400008484
      0000848400008484000084840000848400008484000084840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00848400000000000000000000FFFFFF00848484008484
      8400848484008484840084848400FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0084848400848484008484
      84008484840084848400FFFFFF000000000084000000C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C6008400000000000000000000000000
      0000840000008400000084000000848484000000000000000000000000000000
      00000000000084840000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00848400000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084000000FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF008400000000000000000000000000
      0000840000000000000000000000840000000000000000000000000000000000
      0000000000008484000084840000848400008484000084840000848400008484
      0000848400008484000084840000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      00008400000084000000840000008400000084000000C6C6C600840000008400
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000084848400840000000000000000000000000000000000
      00000000000084840000FFFFFF00848400008484000084840000848400008484
      0000848400008484000084840000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000084000000000000000000000000000000000000000000
      0000000000008484000084840000848400008484000084840000848400008484
      0000848400008484000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000FFFFFF008484
      8400848484008484840084848400848484008484840084848400FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000FFFFFF008484
      84008484840084848400848484008484840084848400FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      000084000000848484000000000000000000000000000000000084000000FFFF
      FF00FFFFFF0084000000FFFFFF00840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000000000000000000084000000FFFF
      FF00FFFFFF008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000FFFFFF008484
      8400848484008484840084848400848484008484840084848400FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000000000000000000084000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000848484000000000000000000000000000000
      00008400000084848400000000000000000084000000FFFFFF0084000000FFFF
      FF00840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000840000008400
      00008484840000000000000000000000000084000000FFFFFF00840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000000000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084000000FFFFFF00840000008400
      0000840000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000084840000000000000000000000000000848400008484000000
      0000000000000000000000000000C6C6C6000000000000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000084840000000000000000000000000000848400008484000000
      0000000000000000000000000000C6C6C6000000000000848400000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000084840000000000000000000000000000848400008484000000
      0000000000000000000000000000000000000000000000848400000000000084
      8400000000000000000000000000000000000000000000000000840000008400
      000084000000FFFFFF008400000084000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000848400008484000084
      8400008484000084840000848400008484000084840000848400000000000084
      8400000000000000000000000000000000000000000084000000840000008400
      0000FFFFFF0000000000000000008400000084000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000848400008484000000
      0000000000000000000000000000000000000084840000848400000000000084
      840000000000008484000000000000000000000000000000000084000000FFFF
      FF000000000000000000000000000000000084000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000848400008484000000000000000000000000000084840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000848400000000000084
      8400000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60000000000008484000000000000000000000000000084840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000848400000000000084
      8400000000000084840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60000000000008484000000000000000000000000000084840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000084
      8400000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FFFFFF000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60000000000008484000000000000000000000000000084840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C600000000000084
      8400000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000FFFFFF00000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000FFFFFF00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000084
      840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6
      C600000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008400000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000008484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400848484000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840000000000000000008484840000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840000000000000000008484840000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400848484000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840000000000000000008484840000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000848484008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840000000000000000008484840000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400848484000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000C6C6C60000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000000000000000000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000C6C6
      C60000000000FFFFFF0000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000084000000840000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000840000008400000000000000000000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6C600C6C6
      C600C6C6C6000000000084000000840000000000000000000000848484008400
      0000000000000000000000000000000000008484840084000000000000000000
      0000000000008400000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000084000000000000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000C6C6C60000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000840000000000000000000000000000008484
      8400840000008400000084000000840000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000008484840000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400
      8400C6C6C6000000000000000000000000000000000084848400008484008484
      8400008484008484840084000000FFFFFF008400000084000000840000008400
      00008400000084000000FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000008400
      8400840084008400840084008400840084008400840084008400840084008400
      8400840084000000000000000000000000000000000000848400848484000084
      8400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008400000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FFFF0000FFFF0000FFFF00C6C6C600C6C6
      C6000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C6008484
      840000000000848484000000000000000000000000000000000000000000C6C6
      C600C6C6C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400
      8400C6C6C6000000000000000000000000000000000084848400008484008484
      8400008484008484840084000000FFFFFF00840000008400000084000000FFFF
      FF008400000084000000840000008400000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C600000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C600FFFF00008484
      840084848400000000000000000000000000000000000000000000000000C6C6
      C600C6C6C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400
      8400C6C6C6000000000000000000000000000000000000848400848484000084
      8400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF0084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400C6C6C600000000000000000000000000000000000000000000000000C6C6
      C600C6C6C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400
      8400C6C6C6000000000000000000000000000000000084848400008484008484
      8400008484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008400000084000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600FFFF0000C6C6C600C6C6C6008484
      8400C6C6C600000000000000000000000000000000000000000000000000C6C6
      C600C6C6C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400
      8400C6C6C6000000000000000000000000000000000000848400848484000084
      8400848484000084840084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C600000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000084848400FFFF0000FFFF0000C6C6C6008484
      840084848400000000000000000000000000000000000000000000000000C6C6
      C600C6C6C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400
      8400C6C6C6000000000000000000000000000000000084848400008484008484
      8400008484008484840000848400848484000084840084848400008484008484
      840000848400000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C6008484
      840000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400
      8400C6C6C6000000000000000000000000000000000000848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400
      8400C6C6C6000000000000000000000000000000000084848400848484000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000008484
      8400008484000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C60084008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400
      8400C6C6C6000000000000000000000000000000000000848400848484000084
      84000000000000FFFF00000000000000000000FFFF0000000000848484000084
      8400848484000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C60084008400C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      840084008400840084008400840084008400840084008400840000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C60084008400C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000008400000084000000840000008400
      000084000000840000008484840084000000FFFFFF0084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000008400000084000000848484008484
      840084848400848484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000084000000000000000000000000000000000000000000
      000000000000FFFFFF0084848400FFFFFF0000FFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000008400000084000000848484008484
      840084848400848484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000084000000000000000000000000000000000000000000
      0000FFFFFF0084848400FFFFFF00C6C6C6008484840000FFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000848484008484
      840084848400848484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00840000008400000000000000000000000000000000000000FFFF
      FF0084848400FFFFFF00C6C6C6008484840000FFFF00FFFFFF0000FFFF008484
      840000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000008400000084000000848484008484
      840084848400848484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000084000000000000000000000000000000FFFFFF008484
      8400FFFFFF00C6C6C6008484840000FFFF00FFFFFF0000FFFF0084848400C6C6
      C600C6C6C600000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000008400000084000000848484008484
      840084848400848484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00840000008400000000000000000000000000000000000000FFFF
      FF00C6C6C6008484840000FFFF00FFFFFF0000FFFF0084848400C6C6C600C6C6
      C600C6C6C600000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000848484008484
      840084848400848484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000084000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF0084848400C6C6C600C6C6C600C6C6
      C60000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000848484008484
      840084848400848484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000084000000000000000000000000000000000000000000
      0000000000000000000000FFFF0084848400C6C6C600C6C6C600C6C6C6008484
      840084000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000848484008484
      84008484840084848400840000000000000084000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600000000008400
      000084000000840000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000848484000000000000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00000000008484840000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      000000000000000000000000000000000000000000008484840000FFFF000000
      000000FFFF00C6C6C60000FFFF000000000000FFFF00C6C6C60000FFFF000000
      000000FFFF008484840000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF0000FF
      FF000000000000FFFF000000000000FFFF000000000000FFFF000000000000FF
      FF00C6C6C6008484840000000000000000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      000000000000000000000000000000000000000000008484840000FFFF00C6C6
      C60000FFFF000000000000FFFF00C6C6C60000FFFF000000000000FFFF00C6C6
      C60000FFFF008484840000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF0000FF
      FF000000000000FFFF00C6C6C60000FFFF00C6C6C60000FFFF000000000000FF
      FF00C6C6C6008484840000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000000000000000000000000000000000000000008484840000FFFF000000
      000000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF000000
      000000FFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000848484000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840084008400840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400840084008400FFFFFF00FFFFFF00C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      840084008400FFFFFF00FFFFFF000000000000000000C6C6C600C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      000084000000000000000000000000000000000000000000000000000000FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      000000000000000000000000000000000000848484008400840084008400FFFF
      FF00FFFFFF000000000000000000840084008400840000000000C6C6C600C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0084848400848484008484840084848400848484008484840084848400FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000008484840084008400FFFFFF000000
      000000000000840084008400840084008400840084008400840000000000C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      000084848400000000000000000000000000000000000000000000000000FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000000000000000000000
      0000000000000000000000000000000000008484840000000000000000008400
      840084008400840084000084840000FFFF008400840084008400840084000000
      0000C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      000084848400000000000000000000000000000000000000000000000000FFFF
      FF0084848400848484008484840084848400848484008484840084848400FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000008484840084008400840084008400
      8400840084008400840084008400008484008400840084008400840084008400
      840000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      000084000000000000000000000000000000000000000000000000000000FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000084008400FFFFFF008400
      84008400840084008400840084008400840000FFFF0000FFFF00840084008400
      8400840084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000840000008484840000000000000000000000000000000000FFFF
      FF00848484008484840084848400FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000000000000000000000000000FFFF0000FFFF000084
      840000000000000000000000000000000000000000000000000084008400FFFF
      FF0084008400840084008400840084008400840084000084840000FFFF0000FF
      FF00840084008400840000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008400000084000000000000000000
      000084848400840000008400000084848400000000000000000000000000FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00008484000000000000000000000000000000000000FFFF000084
      8400000000000000000000000000000000000000000000000000000000008400
      8400FFFFFF00840084008400840084008400008484008400840000FFFF0000FF
      FF00840084008400840084008400000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084848400000000000000
      0000000000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000084008400FFFFFF00840084008400840000FFFF0000FFFF0000FFFF008400
      8400840084008400840000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084848400000000000000
      0000000000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084008400FFFFFF00840084008400840084008400840084008400
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000848484008400000084000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084008400FFFFFF008400840084008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840084008400840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000008400000000000000840000000000000084000000840000008400
      0000840000008400000084000000000000000000000084000000840000008400
      0000840000000000000000000000000000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000000000000000000000000
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000848484008400
      0000000000000000000000000000000000000000000084848400840000008400
      0000848484000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000084848400840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000000000000000000000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000000000000084000000840000008484
      8400000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008400000000000000000000008400000084000000848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000000000008400000084000000000000000000000084848400000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000848484000000000000000000000000000000000000000000000000008400
      00008400000084000000840000000000000000000000C6C6C600000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084000000840000008400000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000000000000000000000000000848484000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400840000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000848484000000
      0000848484000000000084848400000000000000000000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008400FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000084000000
      840000008400FFFFFF0000000000000000000000000000000000000000000000
      000000008400FFFFFF00000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000084000000
      840000008400FFFFFF0000000000000000000000000000000000000000000000
      8400FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000000000000FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      84000000840000008400FFFFFF00000000000000000000000000000084000000
      8400FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000084000000FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF000000000000FFFF00FFFFFF0000FFFF000000000000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000008400FFFFFF00000000000000840000008400FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000084000000C6C6C600FFFFFF000000
      8400FFFFFF0000008400000084000000000000FFFF00FFFFFF0000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000008400FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000084000000FFFFFF00C6C6C6000000
      8400C6C6C60000008400C6C6C600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000084000000840000008400FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084000000C6C6C600000084000000
      8400FFFFFF00C6C6C60000008400C6C6C6008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000008400FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000084000000FFFFFF00C6C6C6000000
      8400C6C6C6000000840000008400FFFFFF008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000008400FFFFFF000000000000008400FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084000000C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C6008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000084000000
      84000000840000008400FFFFFF00000000000000000000000000000084000000
      8400FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000008400000084000000
      840000008400FFFFFF0000000000000000000000000000000000000000000000
      840000008400FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000084000000FF00000084000000FF00
      0000FF000000FF00000084000000FF0000008400000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000000000840000008400FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000840000008400FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000008400
      0000000000000000000084000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000000000008400
      0000000000000000000084000000000000008400000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0084000000000000000000000000000000000000008400
      0000000000000000000084000000000000008400000000000000000000008400
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00C6C6
      C600FFFFFF0000000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000000000000000
      0000840000008400000084000000000000008400000000000000000000008400
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000C6C6C600FFFFFF00C6C6C6000000840000008400FFFF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      84000084840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0084000000000000000000000000000000000000000000
      0000000000000000000084000000000000008400000084000000840000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00C6C6
      C600FFFFFF0000000000FFFFFF00C6C6C600FFFFFF000000840000008400C6C6
      C600FFFFFF00C6C6C600FFFFFF00000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      84000084840000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000000000000000
      0000000000000000000084000000000000008400000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00848484000000
      84000000840000000000C6C6C600FFFFFF00C6C6C600FFFFFF00000084000000
      8400C6C6C600FFFFFF00C6C6C600000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      84000084840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000FFFFFF000000000000000000FFFFFF008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000084000000
      8400FFFFFF0000000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF000000
      840000008400C6C6C600FFFFFF00000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      84000084840000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00848484000000
      84000000840000000000C6C6C600FFFFFF000000840000008400000084000000
      840000008400FFFFFF00C6C6C600000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000084000000
      8400FFFFFF0000000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000008400000000000000FFFFFF00000000000000
      0000FFFFFF000000000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00848484000000
      8400000084000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008400000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00C6C6
      C600FFFFFF000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008400000000000000840000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF0000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF000000
      0000848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF008400
      000084000000840000008400000084000000FFFFFF0084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000F00000000100010000000000800700000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000E0017FFE00000000
      FFFF7FFE00000000E0E1000000000000F9F3FFFF00000000FCF30E0700000000
      06039F0F00000000CF33CF1F00000000E793CF1F00000000F003E03F00000000
      F983E63F00000000FC93F27F00000000FE1FF07F00000000FF1FF8FF00000000
      FF9FF8FF00000000FFFFFDFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFE000
      00018003FFFFE00000018003C00FE00000018003FFFFE000000180030003E000
      00018003FFFFC00000018003C00F800000018003FFFF00000001800300038000
      00018003FFFFC00000018003C00FE00000018003FFFFE000000180030003E001
      FFFF8003FFFFE003FFFFFFFFFFFFE007FFFFFFFFFFFFFFFFF007FC00FFFFFFFF
      F007FC00FFDFFBFFF007FC00FFCFF3FFF007FC00FFC7E3FFC0070000F003C00F
      C0070000F001800FC007000000000000C01F003F00018000001F00010003C000
      001000010047E20000110001004FF2000070F801005FFA000076F801007FFE00
      007CF801007FFE00007DF801FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF801800F
      FFFFFFFFF801800FE00FFFFFF801800FFFFFFFFFF801800FF83FFFE7C001800F
      F11FC1F3C001800FF39FC3FBC001800FF39FC7FBC00F800FF39FCBFB000F800F
      F39FDCF3000F800DF39FFE07000FFFFDF39FFFFF003FFFEBE10FFFFF003FFFE7
      FFFFFFFF003FFFE3FFFFFFFF003FFFFFFFFFFFFFFFFFFFFFC001801FF9FFF83F
      8001001FF0FFE00F80010007E0FFC00780010007C07F800380010001863F8003
      80010001CF3F000180010001FF9F000180010001FFCF000180010001FFE70001
      80010001A9C3000180010001AAB980038001C00189BD80038001C001AABFC007
      8001F001D9CFE00FFFFFF001FFFFF83FFFFFFFFFFFFFFFFF000FFFFFFFFFFF71
      000FFFFFFC3FFF36000FFFFFF00FF516000FFFFFE3C7DF31000FE7FFE7E7FF76
      000FCF83CFF3BFF6000FDFC3CFF3FFD1000FDFE3CFF3DFFF0004DFD3CFF3FFBF
      0000CF3BE7A777FF0000E07FE78777BFF800FFFFFF8F07FFFC00FFFFFF87AFD7
      FE04FFFFFFFF8FE7FFFFFFFFFFFFDFC7FFFFFFFFFFFFFFFFFC00C007000CC003
      800080030008C003000000010001C003000000010003C003000000010003C003
      000100000003C003000300000003C003000380000003C0030003C0000007C003
      0003E001000FC0030003E007000FC0030003F007000FC0038007F003001FC007
      F87FF803003FC00FFFFFFFFF007FC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FF
      C007001FF83FF9FFC007000F0001FC7FC00700070001F83FC00700030001F01F
      C00700010001E00FC00700000001C007C007001F00018003C007001F00010003
      C007001F0001E007C0078FF10001F803C00FFFF90101FC01C01FFF758383FE20
      C03FFF8FFFFFFFF0FFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFF
      FFFFFFFFFFFFFFFFC27FC27FFFFFC001FFFFFFFFE07F8001C200C200F8FF8001
      FFFFFFFFF8FF8001DE07DE07FC7F80019E07CE07FC7F800107FF07FFFE3F8001
      9E00CE00FE3F8001DE00DE00FF1F8001FFFFFFFFFE0F8001C200C200FFFF8003
      FFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFE3FF9FF
      8003FC3FF81FF9FF7FFDFC3FE00FF3C74005FE7F800773C74005FC3F000327FF
      4005FC3F000107C74005FC3F000000C74005FC1F000101E74005F20F800103F1
      4005E107C00106304005E187E0000E384005E007F0001E387FFDF00FF8033F30
      8003F81FFC0F7F81FFFFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFF000
      FFF3FFFFFFFFFFFFEA8187030F05F070FFF3CF879F88FCF9FFF7E78FCF1DFE79
      FFFFE78FC01DFF011C7FF01FE63DFF991C7FF31FE23DBBC9087FF93FF07D93E1
      087FF83FF07D83F1007FFC7FF8F8D7F980FFFC7FF8FDD7FFC9FFFEFFFC01C7FF
      C9FFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFFFFFFF
      FE03FFF9FFF907C1FC01E7FFE7FF07C1FC01C3F3C3F307C18001C3E7C3E70101
      0001E1C7E1C700010001F08FF08F02010003F81FF81F02010007FC3FFC3F8003
      003FF81FF81FC107003FF09FF09FC107003FC1C7C1C7E38F003F83E383E3E38F
      003F8FF18FF1E38F007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFF800
      8003FC01ED9FF8008003FC01ED6F00008003FC01ED6F000080030001F16F0000
      80030001FD1F000080030001FC7F000080030001FEFF000080030003FC7F0000
      80030007FD7F0000C1FE000FF93F0000E3FE00FFFBBF0000FFF501FFFBBF0000
      FFF303FFFBBF001FFFF1FFFFFFFF001FFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFF
      FFFF1FFFDFFFFFFFFFFF1803B803807FE01F1FFF1FFF803FF18FFFFFFFFF801F
      F18FFFFF1FFF800FF18F1FFFBFFFC007F01F1803D803E003F18F1FFF3FFFF001
      F18FFFFFFFFFF801F18FFFFF1FFFFC01E01F1FFFBFFFFE01FFFF18033803FF01
      FFFF1FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      8003FFFFFFFFFFFF80030003003FF0038003FFFFFFFFFFFF8003000300030003
      8003FFFFFFFFFFFF80030003003FF0038003FFFFFFFFFFFF8003000300030003
      8003FFFFFFFFFFFF80030003003FF0038003FFFFFFFFFFFF8003000300030003
      8003FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ImageList2: TImageList
    Left = 404
    Top = 108
    Bitmap = {
      494C0101060009001C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CE00009CFF000000CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000FF00000084840000FF00000084840000000000000000
      CE0063CEFF006300FF000000CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009C31000063
      31000063310000840000848400000000000000000000000000000000000063CE
      FF006300FF000000CE000000000000000000006363009CFFFF0000CEFF0000CE
      FF0000CEFF0000CEFF00009CCE0000CEFF00009CCE0000CEFF00009CCE00009C
      CE00639C9C00009CCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000009C310063CE310063CE
      3100009C3100009C31004A4A4A0084848400CE9C3100CE9C31009C6331000000
      00000000CE00000000000000000000000000006363009CFFFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF00FF00000000CEFF00009CCE0000CEFF00009C
      CE00009CCE00639C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000009C310063FF310063FF
      310063CE31004A4A4A0084848400FFCE9C00FFCE3100FFCE3100CE9C31009C63
      310000000000000000000000000000000000006363009CFFFF009CFFFF0000CE
      FF0000CEFF00FF00000000CEFF00FF00000000CEFF00FF000000009CCE0000CE
      FF00009CCE00009CCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009C31009CFFCE0063FF310063CE
      3100008400004A4A4A00FFCE9C00FFFFCE00FFFF9C00FFFF9C00FFCE3100CE9C
      3100000000009C0031000000000000000000006363009CFFFF0000CEFF009CFF
      FF0000CEFF0000CEFF00FF000000FF000000FF00000000CEFF0000CEFF00009C
      CE0000CEFF00009CCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009C31009CFFCE0063FF3100009C
      3100FF9C00004A4A4A00FFCE9C00FFFFFF00FFFFCE00FFFF9C00FFCE3100CE9C
      310000000000FF0000000000000000000000006363009CFFFF00FFFFFF0000CE
      FF00FF000000FF000000FF00000000FFFF00FF000000FF000000FF00000000CE
      FF00009CCE00009CCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009C3100009C3100009C3100FFCE
      3100FFCE31004A4A4A0084848400FFFFFF00FFFFFF00FFFFCE00FFCE9C008484
      840000000000FF6331000000000000000000006363009CFFFF0000CEFF00FFFF
      FF0000CEFF0000CEFF00FF000000FF000000FF00000000CEFF0000CEFF00009C
      CE0000CEFF00009CCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF633100FFFFCE00FFFF3100FFCE
      3100FFCE3100FF9C00004A4A4A0084848400FFCE9C00FFCE9C00848484000000
      0000FF633100FF6331000000000000000000006363009CFFFF00FFFFFF0000CE
      FF00FFFFFF00FF00000000CEFF00FF00000000CEFF00FF00000000CEFF0000CE
      FF00009CCE00009CCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF633100FFFFCE00FF9C00000084
      000000840000FFCE3100FF9C00004A4A4A004A4A4A004A4A4A004A4A4A00FF9C
      0000FF6331009C0031000000000000000000006363009CFFFF0000CEFF00FFFF
      FF0000CEFF00FFFFFF0000CEFF00FF00000000CEFF0000CEFF0000CEFF0000CE
      FF0000CEFF00009CCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF6331000084000063CE
      3100009C3100FF633100FF9C0000FF9C0000FF9C0000FF633100FF9C0000FF63
      3100FF000000000000000000000000000000006363009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000006331009CFFCE0063FF
      310063CE310000840000FF633100FF9C0000FF9C0000FF9C0000FF633100FF9C
      0000FF6331000000000000000000000000000063630000636300006363000063
      6300006363000063630000636300006363000063630000636300006363000063
      6300006363000063630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006331009CFF
      CE0063FF310063CE3100009C31000084000000840000FF6331009C9C0000FF63
      31000000000000000000000000000000000000000000006363009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000063
      31000063310063FF310063FF310063CE3100009C310000840000FF633100FF63
      3100000000000000000000000000000000000000000000000000006363000063
      6300006363000063630000636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000633100006331000063310000633100FF633100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C0000009C0000009C0000009C0000009C0000009C000000
      000000000000000000000000000000000000000000000000000084848400CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000009C000000
      CE000000CE000000CE000000CE000000CE000000CE000000CE0000009C000000
      9C0000009C00000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF009CFFFF00FFFFFF009CFFFF00009C31009CFFFF00FFFFFF009CFF
      FF00FFFFFF00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009C000000CE000063
      FF003100FF003100FF003100FF003100FF003100FF000000CE000000CE000000
      CE0000009C0000009C000000000000000000000000000000000084848400FFFF
      FF009CFFFF00FFFFFF009CFFFF00009C3100009C3100FFFFFF009CFFFF00FFFF
      FF009CFFFF00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009C000063FF003100
      FF003100FF003100FF003100FF003100FF003100FF003100FF003100FF000000
      CE000000CE0000009C000000000000000000000000000000000084848400FFFF
      FF00FFFFFF009CFFFF00009C3100009C3100009C3100009C3100009C31009CFF
      FF00FFFFFF00CECECE0000000000000000000000000000000000000000000000
      000000000000FF9C310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF6331000000
      00000000000000000000000000000000000000009C006363FF000063FF003100
      FF003100FF003100FF003100FF003100FF003100FF003100FF003100FF003100
      FF000000CE0000009C0000009C0000000000000000000000000084848400FFFF
      FF009CFFFF00FFFFFF009CFFFF00009C3100009C3100FFFFFF00639C00006363
      00009CFFFF00CECECE0000000000000000000000000000000000000000000000
      0000FF9C3100FF9C310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF9C3100FF63
      31000000000000000000000000000000000000009C006363FF00319CFF003100
      FF003100FF00FFFFFF00FFFFFF003100FF003100FF00FFFFFF00FFFFFF003100
      FF000000CE000000CE0000009C0000000000000000000000000084848400FFFF
      FF00FFFFFF009CFFFF00FFFFFF009CFFFF00009C31009CFFFF00FFFFFF006363
      0000FFFFFF00CECECE000000000000000000000000000000000000000000FF9C
      3100FFCE3100FF9C3100FF9C3100FF9C3100FF9C3100FF9C3100FF9C3100FF9C
      3100FF9C31000000000000000000000000000000000000000000FF633100FF9C
      3100FF9C3100FF9C3100FF9C3100FF9C3100FF9C3100FF9C3100FF9C3100FFCE
      3100FF63310000000000000000000000000000009C006363FF00319CFF003100
      FF003100FF003100FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003100FF003100
      FF003100FF000000CE0000009C0000000000000000000000000084848400FFFF
      FF009CFFFF00636300009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF006363
      00009CFFFF00CECECE0000000000000000000000000000000000FF633100FFFF
      9C00FFFF9C00FFFF9C00FFFF9C00FFFF9C00FFFF9C00FFFF9C00FFFF9C00FFFF
      9C00FF9C31000000000000000000000000000000000000000000FF633100FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFF
      9C00FFCE310000000000000000000000000000009C006363FF00319CFF003100
      FF003100FF003100FF003100FF00FFFFFF00FFFFFF003100FF003100FF003100
      FF003100FF000000CE0000009C0000000000000000000000000084848400FFFF
      FF00FFFFFF0063630000FFFFFF009CFFFF00009C31009CFFFF00FFFFFF009CFF
      FF00FFFFFF00CECECE000000000000000000000000000000000000000000FF63
      3100FFFF9C00FFFF9C0000000000FF633100FF633100FF633100FF633100FF63
      3100FF6331000000000000000000000000000000000000000000FF633100FF63
      3100FF633100FF633100FF633100FF633100FF633100FF633100FFFFCE00FFCE
      31000000000000000000000000000000000000009C006363FF00319CFF000063
      FF003100FF003100FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003100FF003100
      FF003100FF000000CE0000009C0000000000000000000000000084848400FFFF
      FF009CFFFF0063630000639C0000FFFFFF00009C3100009C31009CFFFF00FFFF
      FF009CFFFF00CECECE0000000000000000000000000000000000000000000000
      0000FF633100FFFF9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF633100FFCE31000000
      00000000000000000000000000000000000000009C006363CE00319CFF000063
      FF003100FF00FFFFFF00FFFFFF003100FF003100FF00FFFFFF00FFFFFF003100
      FF003100FF000000CE0000009C0000000000000000000000000084848400FFFF
      FF00FFFFFF009CFFFF00009C3100009C3100009C3100009C3100009C31009CFF
      FF00FFFFFF00CECECE0000000000000000000000000000000000000000000000
      000000000000FF63310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF633100000000000000
      0000000000000000000000000000000000000000000000009C006363FF00319C
      FF000063FF003100FF003100FF003100FF003100FF003100FF003100FF003100
      FF003100FF000000CE000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00009C3100009C31009CFFFF00FFFF
      FF00CECECE00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF633100000000000000
      0000000000000000000000000000000000000000000000009C006363CE00319C
      FF00319CFF000063FF000063FF003100FF003100FF003100FF003100FF003100
      FF003100FF0000009C000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00009C31009CFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000009C006363
      CE006363FF00319CFF00319CFF000063FF000063FF003100FF003100FF003100
      FF000000CE00000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF008484
      8400FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C0000009C006363CE006363FF006363FF006363FF006363FF000000CE000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009C0000009C0000009C0000009C0000009C0000009C000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFF9FFFF00000000F830FFFF00000000
      E000000100000000C00100010000000080030001000000008003000100000000
      0001000100000000000100010000000000010001000000000001000100000000
      000100010000000080030001000000008003000100000000C00780FF00000000
      E00FC1FF00000000F83FFFFF00000000FFFFFFFFF81FC001FFFFFFFFE007C001
      FFFFFFFFC003C001FDFFFFBF8001C001F9FFFF9F8001C001F1FFFF8F0000C001
      E003C0070000C001C003C0030000C001C003C0030000C001E003C0070000C001
      F1FFFF8F0000C001F9FFFF9F8001C001FDFFFFBF8001C001FFFFFFFFC003C003
      FFFFFFFFE007C007FFFFFFFFF81FC00F00000000000000000000000000000000
      000000000000}
  end
  object ColorDialog: TColorDialog
    Left = 480
    Top = 4
  end
  object TBXMDIHandler1: TTBXMDIHandler
    Toolbar = TBToolbar1
    Left = 512
  end
  object TBXSwitcher: TTBXSwitcher
    Theme = 'Default'
    Left = 380
    Top = 144
  end
  object TBXPopupMenu1: TTBXPopupMenu
    Left = 296
    Top = 120
    object TBXItem36: TTBXItem
      Caption = 'dsfghdfg'
    end
    object TBXItem37: TTBXItem
      Caption = 'dfghdfhg'
    end
  end
end
