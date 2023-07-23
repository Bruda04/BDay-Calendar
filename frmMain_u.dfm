object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'BDayCalendar'
  ClientHeight = 612
  ClientWidth = 750
  Color = clGrayText
  Constraints.MaxHeight = 700
  Constraints.MaxWidth = 850
  Constraints.MinHeight = 650
  Constraints.MinWidth = 750
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  Padding.Left = 5
  Padding.Top = 5
  Padding.Right = 5
  Padding.Bottom = 5
  Menu = mnuFile
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 23
  object pnlTitle: TPanel
    Left = 5
    Top = 5
    Width = 740
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'BDayCalendar'
    Color = clGrayText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 736
  end
  object pnlCenterContent: TPanel
    Left = 5
    Top = 46
    Width = 740
    Height = 561
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnlCenterContent'
    Color = clGrayText
    Padding.Top = 5
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    ExplicitWidth = 736
    ExplicitHeight = 560
    object pnlGetter: TPanel
      Left = 0
      Top = 5
      Width = 370
      Height = 556
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitHeight = 555
      object lblGodine: TLabel
        Left = 48
        Top = 512
        Width = 6
        Height = 31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblGodineTitle: TLabel
        Left = 39
        Top = 475
        Width = 85
        Height = 31
        Caption = 'Godine: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblSlavljenik: TLabel
        Left = 48
        Top = 438
        Width = 6
        Height = 31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblSlavljenikTitle: TLabel
        Left = 39
        Top = 401
        Width = 106
        Height = 31
        Caption = 'Slavljenik: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblGetterTitle: TLabel
        Left = 0
        Top = 0
        Width = 370
        Height = 31
        Align = alTop
        Alignment = taCenter
        Caption = 'Prona'#273'i ro'#273'endan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 184
      end
      object cldCalendar: TCalendarView
        Left = 39
        Top = 41
        Date = -700000.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        HeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        HeaderInfo.DaysOfWeekFont.Color = clWindowText
        HeaderInfo.DaysOfWeekFont.Height = -13
        HeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        HeaderInfo.DaysOfWeekFont.Style = []
        HeaderInfo.Font.Charset = DEFAULT_CHARSET
        HeaderInfo.Font.Color = clWindowText
        HeaderInfo.Font.Height = -20
        HeaderInfo.Font.Name = 'Segoe UI'
        HeaderInfo.Font.Style = []
        OnChange = cldCalendarChange
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnlSetter: TPanel
      Left = 370
      Top = 5
      Width = 370
      Height = 556
      Align = alRight
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 1
      ExplicitLeft = 366
      ExplicitHeight = 555
      object pnlAdd: TPanel
        Left = 0
        Top = 0
        Width = 370
        Height = 185
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pnlAdd'
        ShowCaption = False
        TabOrder = 0
        object lblDatumRodjenja: TLabel
          Left = 11
          Top = 90
          Width = 119
          Height = 23
          Caption = 'Datum ro'#273'enja:'
        end
        object lblOsoba: TLabel
          Left = 77
          Top = 44
          Width = 53
          Height = 23
          Caption = 'Osoba:'
        end
        object lblSetterTitle: TLabel
          Left = 0
          Top = 0
          Width = 370
          Height = 31
          Align = alTop
          Alignment = taCenter
          Caption = 'Zabele'#382'i ro'#273'endan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -23
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 190
        end
        object btnDodaj: TButton
          Left = 223
          Top = 129
          Width = 107
          Height = 25
          Caption = 'Zabele'#382'i'
          TabOrder = 0
          OnClick = btnDodajClick
        end
        object dtpRodjendan: TDatePicker
          Left = 145
          Top = 86
          Width = 185
          Date = 45130.000000000000000000
          DateFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 1
        end
        object edtOsoba: TEdit
          Left = 145
          Top = 41
          Width = 185
          Height = 31
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ImeName = 'US'
          ParentFont = False
          TabOrder = 2
          TextHint = 'Ime i prezime osobe'
        end
      end
      object pnlRemoveUpdate: TPanel
        Left = 0
        Top = 185
        Width = 370
        Height = 143
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnlRemoveUpdate'
        ShowCaption = False
        TabOrder = 1
        ExplicitHeight = 142
        object lblRemoveUpdateTitle: TLabel
          Left = 0
          Top = 0
          Width = 370
          Height = 31
          Align = alTop
          Alignment = taCenter
          Caption = 'Izbri'#353'i/Izmeni ro'#273'endan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -23
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 241
        end
        object lblosobaRU: TLabel
          Left = 77
          Top = 44
          Width = 53
          Height = 23
          Caption = 'Osoba:'
        end
        object cboOsobe: TComboBox
          Left = 145
          Top = 41
          Width = 184
          Height = 31
          Style = csDropDownList
          DropDownCount = 10
          DropDownWidth = 185
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ImeName = 'US'
          ParentFont = False
          Sorted = True
          TabOrder = 0
          TextHint = 'Izaberite osobu'
        end
        object btnIzbrisi: TButton
          Left = 223
          Top = 86
          Width = 107
          Height = 25
          Cancel = True
          Caption = 'Izbri'#353'i'
          TabOrder = 1
          OnClick = btnIzbrisiClick
        end
        object btnIzmeni: TButton
          Left = 103
          Top = 86
          Width = 107
          Height = 25
          Cancel = True
          Caption = 'Izmeni'
          TabOrder = 2
          OnClick = btnIzmeniClick
        end
      end
      object pnlIzvestaji: TPanel
        Left = 0
        Top = 328
        Width = 370
        Height = 228
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'pnlIzvestaji'
        ShowCaption = False
        TabOrder = 2
        ExplicitTop = 327
        object lblIzvestajiTitle: TLabel
          Left = 0
          Top = 0
          Width = 370
          Height = 31
          Align = alTop
          Alignment = taCenter
          Caption = 'Izve'#353'taji'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -23
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 81
        end
        object lblIzvestaj1: TLabel
          Left = 28
          Top = 47
          Width = 213
          Height = 23
          Caption = 'Mesec sa najvi'#353'e ro'#273'endana'
        end
        object lblIzvestaj2: TLabel
          Left = 9
          Top = 88
          Width = 232
          Height = 23
          Caption = 'Mesec sa najmanje ro'#273'endana'
        end
        object lblIzvestaj3: TLabel
          Left = 117
          Top = 128
          Width = 124
          Height = 23
          Caption = 'Najmla'#273'e osobe'
        end
        object lblIzvestaj4: TLabel
          Left = 117
          Top = 168
          Width = 122
          Height = 23
          Caption = 'Najstarije osobe'
        end
        object btnIzvestaj1: TButton
          Left = 247
          Top = 46
          Width = 107
          Height = 25
          Cancel = True
          Caption = 'Generi'#353'i'
          TabOrder = 0
          OnClick = btnIzvestaj1Click
        end
        object btnIzvestaj2: TButton
          Left = 247
          Top = 87
          Width = 107
          Height = 25
          Cancel = True
          Caption = 'Generi'#353'i'
          TabOrder = 1
          OnClick = btnIzvestaj2Click
        end
        object btnIzvsetaj3: TButton
          Left = 247
          Top = 126
          Width = 107
          Height = 25
          Cancel = True
          Caption = 'Generi'#353'i'
          TabOrder = 2
          OnClick = btnIzvsetaj3Click
        end
        object btnIzvestaj4: TButton
          Left = 247
          Top = 166
          Width = 107
          Height = 25
          Cancel = True
          Caption = 'Generi'#353'i'
          TabOrder = 3
          OnClick = btnIzvestaj4Click
        end
      end
    end
  end
  object mnuFile: TMainMenu
    Left = 5
    Top = 5
    object mnsFile: TMenuItem
      Caption = 'File'
      object mnoSave: TMenuItem
        Caption = 'Save'
        ShortCut = 16467
        OnClick = mnoSaveClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnoExport: TMenuItem
        Caption = 'Export'
        ShortCut = 24659
        OnClick = mnoExportClick
      end
      object mnoImport: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Import'
        ShortCut = 16463
        OnClick = mnoImportClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mnoExit: TMenuItem
        Caption = 'Exit'
        ShortCut = 16465
      end
    end
    object mnsReports: TMenuItem
      Caption = 'Reports'
      object mnoIzvestaj1: TMenuItem
        Caption = 'Mesec sa najvi'#353'e ro'#273'endana'
      end
      object mnoIzvestaj2: TMenuItem
        Caption = 'Mesec sa najmanje ro'#273'endana'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object mnoIzvestaj3: TMenuItem
        Caption = 'Najmla'#273'e osobe'
        OnClick = btnIzvsetaj3Click
      end
      object mnoIzvestaj4: TMenuItem
        Caption = 'Najstarije osobe'
        OnClick = btnIzvestaj4Click
      end
    end
  end
end
