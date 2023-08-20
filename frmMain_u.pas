unit frmMain_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
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
    pnlSearch: TPanel;
    lblSearchTitle: TLabel;
    pnlSearchText: TPanel;
    pnlSearchAdvanced: TPanel;
    lblDatumSearch: TLabel;
    lblDatumSearchTitle: TLabel;
    cboOsobaSearch: TComboBox;
    lblOsobaSearch: TLabel;
    lblMesecSearch: TLabel;
    cboMesecSearch: TComboBox;
    memRodjendaniMesec: TMemo;
    edtFilter: TEdit;
    lblSearchAdvanced: TLabel;
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
    procedure btnIzvestaj1Click(Sender: TObject);
    procedure btnIzvestaj2Click(Sender: TObject);
    procedure cboOsobaSearchChange(Sender: TObject);
    procedure cboMesecSearchChange(Sender: TObject);
    procedure mnoExitClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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
  blnNeedSave : Boolean;

implementation

uses
  clsRodjendan_u, frmUpdate_u, System.SysUtils;

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
    blnNeedSave := True;
    Self.Caption := 'BDayCalendar - *';
    Self.refreshAll;
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
      blnNeedSave := True;
      Self.Caption := 'BDayCalendar - *';
      Self.refreshAll;
      MessageDlg('Uspešno ste obrisali rođendan.', TMsgDlgType.mtInformation,
        [mbOk], 0, mbOk);
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
      blnNeedSave := True;
      Self.Caption := 'BDayCalendar - *';
      Self.refreshAll;
    end
  else
    begin
      MessageDlg('Morate označiti rođendan za izmenu!', mtError,
      [mbOk], 0, mbOk);
    end;
end;

procedure TfrmMain.btnIzvestaj1Click(Sender: TObject);
var
  dicIzvestaj : TDictionary<Byte, Integer>;
  strTekst : String;
  intMesec : Integer;
  fstFormatSettings : TFormatSettings;
begin
  dicIzvestaj := rdmRodjendanManager.izvestajMesecMax;
  strTekst := '';
  fstFormatSettings := TFormatSettings.Create;

  for intMesec := 1 to 12 do
  begin
    if dicIzvestaj.ContainsKey(intMesec) then
      strTekst := Concat(strTekst, fstFormatSettings.LongMonthNames[intMesec],
         ' - ',  IntToStr(dicIzvestaj[intMesec]), #13);
  end;

  dicIzvestaj.Destroy;

  MessageDlg(strTekst, mtInformation,
      [mbOk], 0, mbOk);
end;

procedure TfrmMain.btnIzvestaj2Click(Sender: TObject);
var
  dicIzvestaj : TDictionary<Byte, Integer>;
  strTekst : String;
  intMesec : Integer;
  fstFormatSettings : TFormatSettings;
begin
  dicIzvestaj := rdmRodjendanManager.izvestajMesecMin;
  strTekst := '';
  fstFormatSettings := TFormatSettings.Create;

  for intMesec := 1 to 12 do
  begin
    if dicIzvestaj.ContainsKey(intMesec) then
      strTekst := Concat(strTekst, fstFormatSettings.LongMonthNames[intMesec],
         ' - ',  IntToStr(dicIzvestaj[intMesec]), #13);
  end;



  dicIzvestaj.Destroy;

  MessageDlg(strTekst, mtInformation,
      [mbOk], 0, mbOk);
end;

procedure TfrmMain.btnIzvestaj4Click(Sender: TObject);
var
  strTekst : String;
  rdjTmp : TRodjendan;
  oblIzvestaj : TObjectList<TRodjendan>;
begin
  strTekst := '';
  oblIzvestaj := rdmRodjendanManager.izvestajNajstariji;
  for rdjTmp in oblIzvestaj do
    strTekst := Concat(strTekst, rdjTmp.toString, ' - ',
         IntToStr(rdjTmp.yearsBetween(TDateTime.Today)), #13);

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
         IntToStr(rdjTmp.yearsBetween(TDateTime.Today)), #13);

  oblIzvestaj.Destroy;

  if strTekst = '' then
    strTekst := 'Nema podataka!';

  MessageDlg(strTekst, mtInformation,
      [mbOk], 0, mbOk);
end;

procedure TfrmMain.cboMesecSearchChange(Sender: TObject);
var
  oblRodjendatni : TObjectList<TRodjendan>;
  rdjTmp : TRodjendan;
  bytMesec : Byte;
  strFilter : String;
begin
  memRodjendaniMesec.Clear;

  oblRodjendatni := TObjectList<TRodjendan>.Create(False);

  bytMesec := cboMesecSearch.ItemIndex + 1;
  strFilter := LowerCase(edtFilter.Text);

  rdmRodjendanManager.findByMonth(bytMesec, oblRodjendatni);

  for rdjTmp in oblRodjendatni do
  begin
    if strFilter <> '' then
    begin
       if LowerCase(rdjTmp.toString).Contains(strFilter) then
          memRodjendaniMesec.Lines.Add(rdjTmp.ToString)
    end
    else
      memRodjendaniMesec.Lines.Add(rdjTmp.ToString)
  end;

  oblRodjendatni.Destroy;


end;

procedure TfrmMain.cboOsobaSearchChange(Sender: TObject);
begin
  lblDatumSearch.Caption := FormatDateTime('dd/mm/yyyy', rdmRodjendanManager.find(cboOsobaSearch.Items[cboOsobaSearch.ItemIndex]).getDatum);
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
                IntToStr(rdjRodjendanTmp.yearsBetween(cldCalendar.Date)));


        lblSlavljenik.Caption := Concat(lblSlavljenik.Caption, '...');
        lblGodine.Caption := Concat(lblGodine.Caption, '...');
      end
      else if intLoops > 3 then
      begin
        strSlavljenici := Concat(strSlavljenici, ', ', rdjRodjendanTmp.getOsoba);
        strGodine := Concat(strGodine, ', ',
                IntToStr(rdjRodjendanTmp.yearsBetween(cldCalendar.Date)));
      end
      else if intLoops < 3 then
      begin
        if lblSlavljenik.Caption = '' then
        lblSlavljenik.Caption := rdjRodjendanTmp.getOsoba
        else
          lblSlavljenik.Caption := Concat(lblSlavljenik.Caption, ', ', rdjRodjendanTmp.getOsoba);

        if lblGodine.Caption = '' then
          lblGodine.Caption :=  IntToStr(rdjRodjendanTmp.yearsBetween(cldCalendar.Date))
        else
          lblGodine.Caption := Concat(lblGodine.Caption, ', ',
                IntToStr(rdjRodjendanTmp.yearsBetween(cldCalendar.Date)));
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
        lblGodine.Caption :=  IntToStr(rdjRodjendanTmp.yearsBetween(cldCalendar.Date))
      else
        lblGodine.Caption := Concat(lblGodine.Caption, ', ',
                IntToStr(rdjRodjendanTmp.yearsBetween(cldCalendar.Date)));

    end;
  end;

  oblRodjendani.Free;
end;


procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if blnNeedSave then
  begin
    if MessageDlg('Da li želite da sačuvate izmene?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
       rdmRodjendanManager.save;
    end;

  end;

end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  rdmRodjendanManager := TRodjendanManager.Create('rodjendani.csv');
  rdmRodjendanManager.load;
  blnNeedSave := False;
  refreshAll;
end;

procedure TfrmMain.mnoExitClick(Sender: TObject);
begin
  Application.Terminate;
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
  Self.cldCalendarChange(Self);
  cboMesecSearch.ItemIndex := MonthOf(TDateTime.Today) - 1;
  Self.cboMesecSearchChange(Self)
end;

procedure TfrmMain.refreshComboBox;
var
  rdjRodjendan : TRodjendan;
begin
  cboOsobe.Clear;
  cboOsobaSearch.Clear;
  for rdjRodjendan in rdmRodjendanManager.getdicRodjendani.Values do
  begin
    cboOsobe.Items.Add (rdjRodjendan.getOsoba);
    cboOsobaSearch.Items.Add(rdjRodjendan.getOsoba);
  end;

end;

procedure TfrmMain.mnoSaveClick(Sender: TObject);
begin
  rdmRodjendanManager.save;
  blnNeedSave := False;
  Self.Caption := 'BDayCalendar';
end;

end.
