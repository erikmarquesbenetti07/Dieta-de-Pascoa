unit uProva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, Buttons, Spin, ExtCtrls, ComCtrls;

type
  TfrmPascoa = class(TForm)
    grbOvo: TGroupBox;
    cmbOvo: TComboBox;
    rdgCrocante: TRadioGroup;
    btnCalcular: TSpeedButton;
    lblCalcular: TLabel;
    grbBombons: TGroupBox;
    lblQtde: TLabel;
    chkLicor: TCheckBox;
    chkTrufas: TCheckBox;
    chkLeite: TCheckBox;
    chkRecheado: TCheckBox;
    edtLicor: TEdit;
    edtTrufas: TEdit;
    edtRecheado: TEdit;
    edtLeite: TEdit;
    grbPeso: TGroupBox;
    spiPeso: TSpinEdit;
    grbAcucar: TGroupBox;
    chkNormal: TCheckBox;
    chkDiet: TCheckBox;
    lblCalorias: TLabel;
    procedure chkLicorClick(Sender: TObject);
    procedure chkTrufasClick(Sender: TObject);
    procedure chkRecheadoClick(Sender: TObject);
    procedure chkLeiteClick(Sender: TObject);
    procedure chkNormalClick(Sender: TObject);
    procedure chkDietClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure cmbOvoExit(Sender: TObject);
    procedure VerificarQtde(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPascoa: TfrmPascoa;

implementation

{$R *.DFM}

procedure TfrmPascoa.btnCalcularClick(Sender: TObject);
var Calorias: Single;
begin
   Calorias  := 0;
   Calorias := spiPeso.Value * 45;
   case cmbOvo.ItemIndex of
      1: Calorias := Calorias * 1.05;
      2: Calorias := Calorias * 1.15;

   end;

   if rdgCrocante.ItemIndex = 0 then
      Calorias := Calorias * 1.1;

   if chkDiet.Checked then
      Calorias := Calorias * 0.65;

   Calorias := Calorias +
   (StrToInt(edtTrufas.Text) +
   StrToInt(edtLicor.Text) +
   StrToInt(edtRecheado.Text) +
   StrToInt(edtLeite.Text)) * 60 ;

   lblCalorias.Caption := 'Nro de Calorias = ' +
      FloatToStr(Calorias);





end;

procedure TfrmPascoa.chkDietClick(Sender: TObject);
begin
   { if chkDiet.Checked then
       chkNormal.Checked := False
    else
       chkNormal.Checked := True;}
    chkNormal.Checked :=  Not chkDiet.Checked;
end;
procedure TfrmPascoa.chkNormalClick(Sender: TObject);
begin
   {  if chkNormal.Checked then
        chkDiet.Checked := False
     else
         chkDiet.Checked := True; }
     chkDiet.Checked := Not chkNormal.Checked;
end;

procedure TfrmPascoa.chkLeiteClick(Sender: TObject);
begin
      edtLeite.Enabled := chkLeite.Checked;
end;

procedure TfrmPascoa.chkLicorClick(Sender: TObject);
begin
    {if chkLicor.Checked then
       edtLicor.Enabled := True
    else
       edtLicor.Enabled := False;  }

    edtLicor.Enabled := chkLicor.Checked;

end;



procedure TfrmPascoa.chkRecheadoClick(Sender: TObject);
begin
     edtRecheado.Enabled := chkRecheado.Checked;
end;

procedure TfrmPascoa.chkTrufasClick(Sender: TObject);
begin
     edtTrufas.Enabled := chkTrufas.Checked;
end;

procedure TfrmPascoa.cmbOvoExit(Sender: TObject);
begin
     if cmbOvo.ItemIndex = -1 then
        begin
          MessageDlg('Escolha um tipo de ovo',
          TMsgDlgType.mtError, [mbOk], 0);
          cmbOvo.SetFocus;
          btnCalcular.Enabled := False;
        end
     else
        btnCalcular.Enabled := True;
end;

procedure TfrmPascoa.VerificarQtde(Sender: TObject);
begin
     if (Sender as TEdit).Text = '' then
      begin
         MessageDlg('Qtde nao pode ser inferior a 0', mtError, [mbok], 0);
         (Sender as TEdit).SetFocus;
         (Sender as TEdit).Text := '0';

      end;
end;

end.
