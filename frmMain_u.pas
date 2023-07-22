unit frmMain_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCalendars,
  Vcl.StdCtrls, Vcl.WinXPickers, clsRodjendanManager_u, System.DateUtils,
  System.Generics.Collections, System.UITypes, Vcl.Menus, FileCtrl;

type
  TfrmMain = class(TForm)
    pnlTitle: TPanel;
    pnlCenterContent: TPanel;
    cldCalendar: TCalendarView;
    lblSlavljenikTitle: TLabel;
    lblSlavljenik: TLabel;
    lblGodine: TLabel;
    lblGodineTitle: TLabel;
    dtpRodjendan: TDatePicker;
    lblSetterTitle: TLabel;
    pnlGetter: TPanel;
    pnlSetter: TPanel;
    lblGetterTitle: TLabel;
    lblDatumRodjenja: TLabel;
    lblOsoba: TLabel;
    edtOsoba: TEdit;
    btnDodaj: TButton;
    pnlAdd: TPanel;
    pnlRemoveUpdate: TPanel;
    lblRemoveUpdateTitle: TLabel;
    cboOsobe: TComboBox;
    lblosobaRU: TLabel;
    btnIzbrisi: TButton;
    btnIzmeni: TButton;
    pnlIzvestaji: TPanel;
    lblIzvestajiTitle: TLabel;
    btnIzvestaj1: TButton;
    lblIzvestaj1: TLabel;
    lblIzvestaj2: TLabel;
    btnIzvestaj2: TButton;
    lblIzvestaj3: TLabel;
    btnIzvsetaj3: TButton;
    lblIzvestaj4: TLabel;
    btnIzvestaj4: TButton;
    mnuFile: TMainMenu;
    mnsFile: TMenuItem;
    mnoExport: TMenuItem;
    mnoImport: TMenuItem;
    mnoSave: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    mnoExit: TMenuItem;
    mnsReports: TMenuItem;
    mnoIzvestaj1: TMenuItem;
    mnoIzvestaj2: TMenuItem;
    N3: TMenuItem;
    mnoIzvestaj3: TMenuItem;
    mnoIzvestaj4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure btnDodajClick(Sender: TObject);
    procedure btnIzbrisiClick(Sender: TObject);
    procedure cldCalendarChange(Sender: TObject);
    procedure btnIzmeniClick(Sender: TObject);
    procedure btnIzvsetaj3Click(Sender: TObject);
    procedure btnIzvestaj4Click(Sender: TObject);
    procedure mnoImportClick(Sender: TObject);
    procedure mnoExportClick(Sender: TObject);
    procedure mnoSaveClick(Sender: TObject);
  private
    { Private declarations }
    procedure refreshComboBox;
    procedure refreshAll;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  rdmRodjendanManager : TRodjendanManager;

implementation

uses
  clsRodjendan_u, frmUpdate_u;

{$R *.dfm}

{ TfrmMain }

procedure TfrmMain.btnDodajClick(Sender: TObject);
begin
  if edtOsoba.Text <> '' then
  begin
    rdmRodjendanManager.add(edtOsoba.Text, dtpRodjendan.Date);
    refreshComboBox;
    edtOsoba.Text := '';
    dtpRodjendan.Date := TDateTime.Today;
    MessageDlg('Uspešno ste dodali rođendan.', TMsgDlgType.mtInformation,
        [mbOk], 0, mbOk);
  end
  else
    MessageDlg('Morate uneti ime i prezime osobe!', mtError,
      [mbOk], 0, mbOk);

end;

procedure TfrmMain.btnIzbrisiClick(Sender: TObject);
begin
  if cboOsobe.ItemIndex <> -1 then
    begin
      if MessageDlg('Da li ste sigurni da želite da obrišete rođendan?',
          mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
      rdmRodjendanManager.remove(cboOsobe.Items[cboOsobe.ItemIndex]);
      refreshComboBox;
    end
  else
    begin
      MessageDlg('Morate označiti rođendan za brisanje!', mtError,
      [mbOk], 0, mbOk);
    end;
end;

procedure TfrmMain.btnIzmeniClick(Sender: TObject);
var
  frmUpdateTmp : TfrmUpdate;
begin
  if cboOsobe.ItemIndex <> -1 then
    begin
      frmUpdateTmp := TfrmUpdate.Create(Self);
      frmUpdateTmp.setParentParams(cboOsobe.Items[cboOsobe.ItemIndex], rdmRodjendanManager);
      frmUpdateTmp.ShowModal;
      frmUpdateTmp.Destroy;
      refreshComboBox;
    end
  else
    begin
      MessageDlg('Morate označiti rođendan za izmenu!', mtError,
      [mbOk], 0, mbOk);
    end;
end;

procedure TfrmMain.btnIzvestaj4Click(Sender: TObject);
var
  strTekst : String;
  rdjTmp : TRodjendan;
  oblIzvestaj : TObjectList<TRodjendan>;
begin
  strTekst := '';
  oblIzvestaj := rdmRodjendanManager.izvestajNajmladji;
  for rdjTmp in oblIzvestaj do
    strTekst := Concat(strTekst, rdjTmp.toString, ' - ',
         IntToStr(YearsBetween(TDateTime.Today, rdjTmp.getDatum)), #13);

  oblIzvestaj.Destroy;

  if strTekst = '' then
    strTekst := 'Nema podataka!';

  MessageDlg(strTekst, mtInformation,
      [mbOk], 0, mbOk);
end;

procedure TfrmMain.btnIzvsetaj3Click(Sender: TObject);
var
  strTekst : String;
  rdjTmp : TRodjendan;
  oblIzvestaj : TObjectList<TRodjendan>;
begin
  strTekst := '';
  oblIzvestaj := rdmRodjendanManager.izvestajNajmladji;
  for rdjTmp in oblIzvestaj do
    strTekst := Concat(strTekst, rdjTmp.toString, ' - ',
         IntToStr(YearsBetween(TDateTime.Today, rdjTmp.getDatum)), #13);

  oblIzvestaj.Destroy;

  if strTekst = '' then
    strTekst := 'Nema podataka!';

  MessageDlg(strTekst, mtInformation,
      [mbOk], 0, mbOk);
end;

procedure TfrmMain.cldCalendarChange(Sender: TObject);
var
  rdjRodjendanTmp : TRodjendan;
  oblRodjendani : TObjectList<TRodjendan>;
  intLoops : Integer;
  strSlavljenici, strGodine : String;
begin
  lblSlavljenik.Caption := '';
  lblGodine.Caption := '';

  oblRodjendani := TObjectList<TRodjendan>.Create(False);
  rdmRodjendanManager.find(cldCalendar.Date, oblRodjendani);

  if (oblRodjendani.Count > 2) then
  begin
    intLoops := 0;
    for rdjRodjendanTmp in oblRodjendani do
    begin
      Inc(intLoops);
      if intLoops = 3 then
      begin
        strSlavljenici := Concat(lblSlavljenik.Caption, ', ', rdjRodjendanTmp.getOsoba);
        strGodine := Concat(lblGodine.Caption, ', ',
                IntToStr(YearsBetween(rdjRodjendanTmp.getDatum, cldCalendar.Date)+1));


        lblSlavljenik.Caption := Concat(lblSlavljenik.Caption, '...');
        lblGodine.Caption := Concat(lblGodine.Caption, '...');
      end
      else if intLoops > 3 then
      begin
        strSlavljenici := Concat(strSlavljenici, ', ', rdjRodjendanTmp.getOsoba);
        strGodine := Concat(strGodine, ', ',
                IntToStr(YearsBetween(rdjRodjendanTmp.getDatum, cldCalendar.Date)+1));
      end
      else if intLoops < 3 then
      begin
        if lblSlavljenik.Caption = '' then
        lblSlavljenik.Caption := rdjRodjendanTmp.getOsoba
        else
          lblSlavljenik.Caption := Concat(lblSlavljenik.Caption, ', ', rdjRodjendanTmp.getOsoba);

        if lblGodine.Caption = '' then
          lblGodine.Caption :=  IntToStr(YearsBetween(rdjRodjendanTmp.getDatum, cldCalendar.Date)+1)
        else
          lblGodine.Caption := Concat(lblGodine.Caption, ', ',
                IntToStr(YearsBetween(rdjRodjendanTmp.getDatum, cldCalendar.Date)+1));
      end;
    end;
    MessageDlg( 'Slavljenici:' + #13 + strSlavljenici + #13 +  #13 + 'Godine:' + #13 + strGodine, mtInformation,
      [mbOk], 0, mbOk);
  end
  else
  begin
    for rdjRodjendanTmp in oblRodjendani do
    begin
      if lblSlavljenik.Caption = '' then
        lblSlavljenik.Caption := rdjRodjendanTmp.getOsoba
      else
        lblSlavljenik.Caption := Concat(lblSlavljenik.Caption, ', ', rdjRodjendanTmp.getOsoba);

      if lblGodine.Caption = '' then
        lblGodine.Caption :=  IntToStr(YearsBetween(rdjRodjendanTmp.getDatum, cldCalendar.Date)+1)
      else
        lblGodine.Caption := Concat(lblGodine.Caption, ', ',
                IntToStr(YearsBetween(rdjRodjendanTmp.getDatum, cldCalendar.Date)+1));

    end;
  end;

  oblRodjendani.Free;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  rdmRodjendanManager := TRodjendanManager.Create('rodjendani.csv');
  rdmRodjendanManager.load;
  refreshAll;
end;

procedure TfrmMain.mnoExportClick(Sender: TObject);
var
  strSelectedFile: string;
  dlgDialog: TSaveDialog;
begin
  strSelectedFile := '';
  dlgDialog := TSaveDialog.Create(nil);
  try
    dlgDialog.InitialDir := GetCurrentDir;
    dlgDialog.Filter := 'Comma separated values (*.csv)|*.csv';
    dlgDialog.DefaultExt := 'csv';
    dlgDialog.Filterindex := 1;
    if dlgDialog.Execute(Handle) then
      strSelectedFile := dlgDialog.FileName;
  finally
    dlgDialog.Free;
  end;

  if strSelectedFile <> '' then
  begin
    rdmRodjendanManager.save(strSelectedFile);
    refreshAll;
  end;

end;

procedure TfrmMain.mnoImportClick(Sender: TObject);
var
  strSelectedFile: string;
  dlgDialog: TOpenDialog;
begin
  strSelectedFile := '';
  dlgDialog := TOpenDialog.Create(nil);
  try
    dlgDialog.InitialDir := GetCurrentDir;
    dlgDialog.Filter := 'Comma separated values (*.csv)|*.csv';
    dlgDialog.Options := [ofFileMustExist];
    if dlgDialog.Execute(Handle) then
      strSelectedFile := dlgDialog.FileName;
  finally
    dlgDialog.Free;
  end;

  if strSelectedFile <> '' then
  begin
    rdmRodjendanManager.load(strSelectedFile);
    refreshAll;
  end;

end;

procedure TfrmMain.refreshAll;
begin
  Self.refreshComboBox;
  cldCalendar.Date := TDateTime.Today;
  dtpRodjendan.Date := TDateTime.Today;
  Self.cldCalendarChange(self)
end;

procedure TfrmMain.refreshComboBox;
var
  rdjRodjendan : TRodjendan;
begin
  cboOsobe.Clear;
  for rdjRodjendan in rdmRodjendanManager.getdicRodjendani.Values do
    cboOsobe.AddItem(rdjRodjendan.getOsoba, rdjRodjendan);


end;

procedure TfrmMain.mnoSaveClick(Sender: TObject);
begin
  rdmRodjendanManager.save;
end;

end.
