program BDayCalendar;

uses
  Vcl.Forms,
  frmMain_u in 'frmMain_u.pas' {frmMain},
  clsRodjendan_u in 'clsRodjendan_u.pas',
  clsRodjendanManager_u in 'clsRodjendanManager_u.pas',
  frmUpdate_u in 'frmUpdate_u.pas' {frmUpdate};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmUpdate, frmUpdate);
  Application.Run;
end.
