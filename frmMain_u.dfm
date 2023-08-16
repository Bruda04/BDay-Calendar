object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'BDayCalendar'
  ClientHeight = 622
  ClientWidth = 1288
  Color = clGrayText
  Constraints.MaxHeight = 750
  Constraints.MaxWidth = 1500
  Constraints.MinHeight = 600
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  TextHeight = 23
  object pnlTitle: TPanel
    Left = 5
    Top = 5
    Width = 1278
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
    Width = 1278
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
      1278
      571)
    object pnlGetter: TPanel
      Left = 0
      Top = 5
      Width = 370
      Height = 565
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      ExplicitWidth = 366
      DesignSize = (
        370
        565)
      object lblGodine: TLabel
        Left = 48
        Top = 506
        Width = 6
        Height = 31
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        ExplicitWidth = 290
      end
    end
    object pnlSetter: TPanel
      Left = 370
      Top = 5
      Width = 400
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
        Width = 400
        Height = 185
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        Caption = 'pnlAdd'
        ParentColor = True
        ShowCaption = False
        TabOrder = 0
        ExplicitWidth = 396
        DesignSize = (
          400
          185)
        object lblDatumRodjenja: TLabel
          Left = 11
          Top = 90
          Width = 119
          Height = 23
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Datum ro'#273'enja:'
        end
        object lblOsoba: TLabel
          Left = 77
          Top = 44
          Width = 53
          Height = 23
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Osoba:'
        end
        object lblSetterTitle: TLabel
          Left = 0
          Top = 0
          Width = 400
          Height = 31
          Align = alTop
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight, akBottom]
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
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Zabele'#382'i'
          TabOrder = 0
          OnClick = btnDodajClick
          ExplicitWidth = 103
        end
        object dtpRodjendan: TDatePicker
          Left = 145
          Top = 86
          Width = 185
          Anchors = [akLeft, akTop, akRight, akBottom]
          Date = 45130.000000000000000000
          DateFormat = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          TabOrder = 1
          ExplicitWidth = 181
        end
        object edtOsoba: TEdit
          Left = 145
          Top = 41
          Width = 185
          Height = 31
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ImeName = 'US'
          ParentFont = False
          TabOrder = 2
          TextHint = 'Ime i prezime osobe'
          ExplicitWidth = 181
        end
      end
      object pnlRemoveUpdate: TPanel
        Left = 0
        Top = 185
        Width = 400
        Height = 152
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnlRemoveUpdate'
        ParentColor = True
        ShowCaption = False
        TabOrder = 1
        ExplicitWidth = 396
        DesignSize = (
          400
          152)
        object lblRemoveUpdateTitle: TLabel
          Left = 0
          Top = 0
          Width = 400
          Height = 31
          Align = alTop
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight, akBottom]
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
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Osoba:'
        end
        object cboOsobe: TComboBox
          Left = 145
          Top = 41
          Width = 184
          Height = 31
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight, akBottom]
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
          ExplicitWidth = 180
        end
        object btnIzbrisi: TButton
          Left = 223
          Top = 86
          Width = 107
          Height = 25
          Anchors = [akLeft, akTop, akRight, akBottom]
          Cancel = True
          Caption = 'Izbri'#353'i'
          TabOrder = 1
          OnClick = btnIzbrisiClick
          ExplicitWidth = 103
        end
        object btnIzmeni: TButton
          Left = 103
          Top = 86
          Width = 107
          Height = 25
          Anchors = [akLeft, akTop, akRight, akBottom]
          Cancel = True
          Caption = 'Izmeni'
          TabOrder = 2
          OnClick = btnIzmeniClick
          ExplicitWidth = 103
        end
      end
      object pnlIzvestaji: TPanel
        Left = 0
        Top = 337
        Width = 400
        Height = 228
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        Caption = 'pnlIzvestaji'
        ParentColor = True
        ShowCaption = False
        TabOrder = 2
        ExplicitWidth = 396
        DesignSize = (
          400
          228)
        object lblIzvestajiTitle: TLabel
          Left = 0
          Top = 0
          Width = 400
          Height = 31
          Align = alTop
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight, akBottom]
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
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Mesec sa najvi'#353'e ro'#273'endana'
        end
        object lblIzvestaj2: TLabel
          Left = 11
          Top = 88
          Width = 232
          Height = 23
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Mesec sa najmanje ro'#273'endana'
        end
        object lblIzvestaj3: TLabel
          Left = 119
          Top = 128
          Width = 124
          Height = 23
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Najmla'#273'e osobe'
        end
        object lblIzvestaj4: TLabel
          Left = 119
          Top = 168
          Width = 122
          Height = 23
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Najstarije osobe'
        end
        object btnIzvestaj1: TButton
          Left = 249
          Top = 46
          Width = 107
          Height = 25
          Anchors = [akLeft, akTop, akRight, akBottom]
          Cancel = True
          Caption = 'Generi'#353'i'
          TabOrder = 0
          OnClick = btnIzvestaj1Click
          ExplicitWidth = 103
        end
        object btnIzvestaj2: TButton
          Left = 249
          Top = 87
          Width = 107
          Height = 25
          Anchors = [akLeft, akTop, akRight, akBottom]
          Cancel = True
          Caption = 'Generi'#353'i'
          TabOrder = 1
          OnClick = btnIzvestaj2Click
          ExplicitWidth = 103
        end
        object btnIzvsetaj3: TButton
          Left = 249
          Top = 126
          Width = 107
          Height = 25
          Anchors = [akLeft, akTop, akRight, akBottom]
          Cancel = True
          Caption = 'Generi'#353'i'
          TabOrder = 2
          OnClick = btnIzvsetaj3Click
          ExplicitWidth = 103
        end
        object btnIzvestaj4: TButton
          Left = 249
          Top = 166
          Width = 107
          Height = 25
          Anchors = [akLeft, akTop, akRight, akBottom]
          Cancel = True
          Caption = 'Generi'#353'i'
          TabOrder = 3
          OnClick = btnIzvestaj4Click
          ExplicitWidth = 103
        end
      end
    end
    object pnlSearch: TPanel
      Left = 800
      Top = 5
      Width = 450
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
        Width = 450
        Height = 31
        Align = alTop
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        Width = 450
        Height = 210
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        ShowCaption = False
        TabOrder = 0
        ExplicitWidth = 446
        DesignSize = (
          450
          210)
        object lblDatumSearch: TLabel
          Left = 155
          Top = 52
          Width = 6
          Height = 31
          Anchors = [akLeft, akTop, akRight, akBottom]
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
          Anchors = [akLeft, akTop, akRight, akBottom]
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
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Osoba:'
        end
        object cboOsobaSearch: TComboBox
          Left = 105
          Top = 12
          Width = 184
          Height = 31
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight, akBottom]
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
          ExplicitWidth = 180
        end
      end
      object pnlSearchAdvanced: TPanel
        Left = 0
        Top = 144
        Width = 450
        Height = 411
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        ShowCaption = False
        TabOrder = 1
        ExplicitWidth = 446
        DesignSize = (
          450
          411)
        object lblMesecSearch: TLabel
          Left = 37
          Top = 75
          Width = 52
          Height = 23
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Mesec:'
        end
        object lblSearchAdvanced: TLabel
          Left = 0
          Top = 0
          Width = 450
          Height = 31
          Align = alTop
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight, akBottom]
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
          Width = 184
          Height = 31
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight, akBottom]
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
          ExplicitWidth = 180
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
