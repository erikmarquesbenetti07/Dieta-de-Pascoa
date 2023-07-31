program Pascoa;

uses
  Vcl.Forms,
  uProva in 'uProva.pas' {frmPascoa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPascoa, frmPascoa);
  Application.Run;
end.
