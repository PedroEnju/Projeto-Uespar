unit U_Estado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Modelo, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TF_Estado = class(TF_Modelo)
    Edt_IDEstado: TEdit;
    Edt_NomeEstado: TEdit;
    Edt_Sigla: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Spb_NovoClick(Sender: TObject);
    procedure Spb_SalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Crud: string;
  end;

var
  F_Estado: TF_Estado;

implementation

{$R *.dfm}

uses U_DM;

procedure TF_Estado.Spb_NovoClick(Sender: TObject);
begin
  inherited;

  Edt_IDEstado.Enabled := True;
  Edt_NomeEstado.Enabled := True;
  Edt_Sigla.Enabled := True;
  Edt_IDEstado.SetFocus;
  Crud := 'Inserir';
end;

procedure TF_Estado.Spb_SalvarClick(Sender: TObject);
var
  SQL: string;
begin
  inherited;

  if Crud = 'Inserir' then
  begin
    SQL := 'insert into Estado values(' + //
      Edt_IDEstado.Text + ',' + //
      QuotedStr(Edt_NomeEstado.Text) + ',' + //
      QuotedStr(Edt_Sigla.Text) + ');';
  end;
  DM.FDConnection1.ExecSQL(SQL);
end;

end.
