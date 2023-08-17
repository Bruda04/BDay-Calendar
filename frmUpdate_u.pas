unit frmUpdate_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  clsRodjendanManager_u, Vcl.WinXPickers;

type
  TfrmUpdate = class(TForm)
    pnlIzmenaMain: TPanel;
    lblOsoba: TLabel;
    edtOsobaUpdate: TEdit;
    lblDatum: TLabel;
    dtpRodjendanUpdate: TDatePicker;
    btnIzmeni: TButton;
    btnOdustani: TButton;
    procedure btnOdustaniClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIzmeniClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setParentParams(strOsobaSelected: String; rdmRodjendan: TRodjendanManager);
  end;

var
  frmUpdate : TfrmUpdate;
  rdmRodjendanManagerRef : TRodjendanManager;
  strOsoba : String;
  blnNeedUpdate : Boolean;
implementation

uses System.DateUtils, clsRodjendan_u, System.UITypes;

{$R *.dfm}

procedure TfrmUpdate.btnIzmeniClick(Sender: TObject);
begin
  if (edtOsobaUpdate.Text <> '') AND (dtpRodjendanUpdate.Date <= TDateTime.Today) then
  begin
    rdmRodjendanManagerRef.update(rdmRodjendanManagerRef.find(strOsoba).getId,edtOsobaUpdate.Text, dtpRodjendanUpdate.Date);
    edtOsobaUpdate.Text := '';
    dtpRodjendanUpdate.Date := TDateTime.Today;
    MessageDlg('Uspešno ste izmenili rođendan.', TMsgDlgType.mtInformation,
        [mbOk], 0, mbOk);
    self.Close
  end
  else
    MessageDlg('Morate uneti validne podatke!', mtError,
      [mbOk], 0, mbOk);
end;

procedure TfrmUpdate.btnOdustaniClick(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmUpdate.FormShow(Sender: TObject);
begin
  Self.edtOsobaUpdate.Text := strOsoba;
  dtpRodjendanUpdate.Date := rdmRodjendanManagerRef.find(strOsoba).getDatum;
end;

procedure TfrmUpdate.setParentParams(strOsobaSelected: String; rdmRodjendan: TRodjendanManager);
begin
  rdmRodjendanManagerRef := rdmRodjendan;
  strOsoba := strOsobaSelected;
end;

end.
