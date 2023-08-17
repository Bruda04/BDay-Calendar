object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'BDayCalendar'
  ClientHeight = 622
  ClientWidth = 1258
  Color = clGrayText
  Constraints.MaxHeight = 680
  Constraints.MaxWidth = 1270
  Constraints.MinHeight = 680
  Constraints.MinWidth = 1270
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  TextHeight = 23
  object pnlTitle: TPanel
    Left = 5
    Top = 5
    Width = 1248
    Height = 41
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Caption = 'BDayCalendar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = True
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1274
    ExplicitHeight = 40
  end
  object pnlCenterContent: TPanel
    Left = 5
    Top = 46
    Width = 1248
    Height = 571
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnlCenterContent'
    Color = clGrayText
    Padding.Top = 5
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 45
    ExplicitWidth = 1274
    DesignSize = (
      1248
      571)
    object pnlGetter: TPanel
      Left = 0
      Top = 5
      Width = 340
      Height = 565
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      ExplicitWidth = 366
      object lblGodine: TLabel
        Left = 48
        Top = 506
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
        Top = 469
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
        Width = 340
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
        Width = 290
        Date = -700000.000000000000000000
        FirstDayOfWeek = dwMonday
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
        ShowFirstOfGroupLabel = True
        TabOrder = 0
      end
    end
    object pnlSetter: TPanel
      Left = 370
      Top = 5
      Width = 370
      Height = 565
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      ParentColor = True
      ShowCaption = False
      TabOrder = 1
      ExplicitWidth = 396
      object pnlAdd: TPanel
        Left = 0
        Top = 0
        Width = 370
        Height = 185
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        Caption = 'pnlAdd'
        ParentColor = True
        ShowCaption = False
        TabOrder = 0
        ExplicitWidth = 396
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
          Width = 103
          Height = 25
          Caption = 'Zabele'#382'i'
          TabOrder = 0
          OnClick = btnDodajClick
        end
        object dtpRodjendan: TDatePicker
          Left = 145
          Top = 86
          Width = 181
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
          Width = 181
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
        Height = 152
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnlRemoveUpdate'
        ParentColor = True
        ShowCaption = False
        TabOrder = 1
        ExplicitWidth = 396
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
          Width = 180
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
          Width = 103
          Height = 25
          Cancel = True
          Caption = 'Izbri'#353'i'
          TabOrder = 1
          OnClick = btnIzbrisiClick
        end
        object btnIzmeni: TButton
          Left = 103
          Top = 86
          Width = 103
          Height = 25
          Cancel = True
          Caption = 'Izmeni'
          TabOrder = 2
          OnClick = btnIzmeniClick
        end
      end
      object pnlIzvestaji: TPanel
        Left = 0
        Top = 337
        Width = 370
        Height = 228
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        Caption = 'pnlIzvestaji'
        ParentColor = True
        ShowCaption = False
        TabOrder = 2
        ExplicitWidth = 396
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
          Left = 30
          Top = 47
          Width = 213
          Height = 23
          Caption = 'Mesec sa najvi'#353'e ro'#273'endana'
        end
        object lblIzvestaj2: TLabel
          Left = 11
          Top = 88
          Width = 232
          Height = 23
          Caption = 'Mesec sa najmanje ro'#273'endana'
        end
        object lblIzvestaj3: TLabel
          Left = 119
          Top = 128
          Width = 124
          Height = 23
          Caption = 'Najmla'#273'e osobe'
        end
        object lblIzvestaj4: TLabel
          Left = 119
          Top = 168
          Width = 122
          Height = 23
          Caption = 'Najstarije osobe'
        end
        object btnIzvestaj1: TButton
          Left = 249
          Top = 46
          Width = 103
          Height = 25
          Cancel = True
          Caption = 'Generi'#353'i'
          TabOrder = 0
          OnClick = btnIzvestaj1Click
        end
        object btnIzvestaj2: TButton
          Left = 249
          Top = 87
          Width = 103
          Height = 25
          Cancel = True
          Caption = 'Generi'#353'i'
          TabOrder = 1
          OnClick = btnIzvestaj2Click
        end
        object btnIzvsetaj3: TButton
          Left = 249
          Top = 126
          Width = 103
          Height = 25
          Cancel = True
          Caption = 'Generi'#353'i'
          TabOrder = 2
          OnClick = btnIzvsetaj3Click
        end
        object btnIzvestaj4: TButton
          Left = 249
          Top = 166
          Width = 103
          Height = 25
          Cancel = True
          Caption = 'Generi'#353'i'
          TabOrder = 3
          OnClick = btnIzvestaj4Click
        end
      end
    end
    object pnlSearch: TPanel
      Left = 800
      Top = 5
      Width = 420
      Height = 555
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      ParentColor = True
      ShowCaption = False
      TabOrder = 2
      ExplicitWidth = 446
      object lblSearchTitle: TLabel
        Left = 0
        Top = 0
        Width = 420
        Height = 31
        Align = alTop
        Alignment = taCenter
        Caption = 'Pretraga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 87
      end
      object pnlSearchText: TPanel
        Left = 0
        Top = 31
        Width = 420
        Height = 110
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        ShowCaption = False
        TabOrder = 0
        ExplicitWidth = 446
        object lblDatumSearch: TLabel
          Left = 155
          Top = 52
          Width = 6
          Height = 31
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -23
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblDatumSearchTitle: TLabel
          Left = 37
          Top = 52
          Width = 109
          Height = 31
          Caption = 'Ro'#273'endan:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -23
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblOsobaSearch: TLabel
          Left = 37
          Top = 15
          Width = 53
          Height = 23
          Caption = 'Osoba:'
        end
        object cboOsobaSearch: TComboBox
          Left = 105
          Top = 12
          Width = 180
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
          OnChange = cboOsobaSearchChange
        end
      end
      object pnlSearchAdvanced: TPanel
        Left = 0
        Top = 144
        Width = 420
        Height = 411
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        ShowCaption = False
        TabOrder = 1
        ExplicitWidth = 446
        object lblMesecSearch: TLabel
          Left = 37
          Top = 75
          Width = 52
          Height = 23
          Caption = 'Mesec:'
        end
        object lblSearchAdvanced: TLabel
          Left = 0
          Top = 0
          Width = 420
          Height = 31
          Align = alTop
          Alignment = taCenter
          Caption = 'Pregled po mesecima'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -23
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 221
        end
        object cboMesecSearch: TComboBox
          Left = 105
          Top = 72
          Width = 180
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
          TabOrder = 0
          TextHint = 'Izaberite mesec'
          OnChange = cboMesecSearchChange
          Items.Strings = (
            'Januar'
            'Februar'
            'Mart'
            'April'
            'Maj'
            'Jun'
            'Jul'
            'Avgust'
            'Septembar'
            'Oktobar'
            'Novembar'
            'Decembar')
        end
        object memRodjendaniMesec: TMemo
          Left = 37
          Top = 127
          Width = 380
          Height = 198
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 1
        end
        object edtFilter: TEdit
          Left = 40
          Top = 348
          Width = 377
          Height = 31
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ImeName = 'US'
          ParentFont = False
          TabOrder = 2
          TextHint = 'Filter'
          OnChange = cboMesecSearchChange
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
        OnClick = mnoExitClick
      end
    end
    object mnsReports: TMenuItem
      Caption = 'Reports'
      object mnoIzvestaj1: TMenuItem
        Caption = 'Mesec sa najvi'#353'e ro'#273'endana'
        OnClick = btnIzvestaj1Click
      end
      object mnoIzvestaj2: TMenuItem
        Caption = 'Mesec sa najmanje ro'#273'endana'
        OnClick = btnIzvestaj2Click
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
