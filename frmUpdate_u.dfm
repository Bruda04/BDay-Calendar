object frmUpdate: TfrmUpdate
  Left = 0
  Top = 0
  Caption = 'Izmena'
  ClientHeight = 111
  ClientWidth = 624
  Color = clGrayText
  Constraints.MaxHeight = 150
  Constraints.MaxWidth = 640
  Constraints.MinHeight = 150
  Constraints.MinWidth = 640
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 23
  object pnlIzmenaMain: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 111
    Align = alClient
    Color = clGrayText
    ParentBackground = False
    TabOrder = 0
    object lblOsoba: TLabel
      Left = 16
      Top = 16
      Width = 53
      Height = 23
      Caption = 'Osoba:'
    end
    object lblDatum: TLabel
      Left = 330
      Top = 16
      Width = 56
      Height = 23
      Caption = 'Datum:'
    end
    object edtOsobaUpdate: TEdit
      Left = 89
      Top = 13
      Width = 185
      Height = 31
      Hint = 'Ime i prezime osobe'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImeName = 'US'
      ParentFont = False
      TabOrder = 0
      TextHint = 'Ime i prezime osobe'
    end
    object dtpRodjendanUpdate: TDatePicker
      Left = 405
      Top = 13
      Width = 185
      Date = 45128.000000000000000000
      DateFormat = 'dd/mm/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 1
    end
    object btnIzmeni: TButton
      Left = 490
      Top = 72
      Width = 100
      Height = 25
      Caption = 'Izmeni'
      TabOrder = 2
      OnClick = btnIzmeniClick
    end
    object btnOdustani: TButton
      Left = 346
      Top = 72
      Width = 100
      Height = 25
      Caption = 'Odustani'
      TabOrder = 3
      OnClick = btnOdustaniClick
    end
  end
end
