unit U_Estado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Modelo, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TF_Estado = class(TF_Modelo)
    Edt_IDEstado: TEdit;
    Edt_NomeEstado: TEdit;
    Edt_Sigla: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBG_Consulta: TDBGrid;
    Edt_Pesquisar: TEdit;
    Q_Estado: TFDQuery;
    Q_EstadoID_ESTADO: TIntegerField;
    Q_EstadoNOME_ESTADO: TStringField;
    Q_EstadoSIGLA_ESTADO: TStringField;
    DS: TDataSource;
    procedure Spb_NovoClick(Sender: TObject);
    procedure Spb_SalvarClick(Sender: TObject);
    procedure Spb_CancelarClick(Sender: TObject);
    procedure Spb_EditarClick(Sender: TObject);
    procedure Spb_ExcluirClick(Sender: TObject);
    procedure Edt_PesquisarChange(Sender: TObject);
  private
    procedure LimpaCampos;
    procedure HabilitaCampos;
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

procedure TF_Estado.Spb_CancelarClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
end;

procedure TF_Estado.Spb_EditarClick(Sender: TObject);
var
  SQL: string;
begin
  inherited;
  HabilitaCampos;
  Crud := 'Alterar';
  Edt_NomeEstado.SetFocus;
end;

procedure TF_Estado.Spb_ExcluirClick(Sender: TObject);
var
  SQL: string;
begin
  inherited;
  SQL := 'delete from estado where id_Estado =' + Edt_IDEstado.Text;
  DM.FDConnection1.ExecSQL(SQL);
  DM.FDConnection1.CommitRetaining;
end;

procedure TF_Estado.LimpaCampos;
begin
  Edt_IDEstado.Text := EmptyStr;
  Edt_NomeEstado.Text := EmptyStr;
  Edt_Sigla.Text := EmptyStr;
  Crud := EmptyStr;
  Edt_IDEstado.Enabled := False;
  Edt_NomeEstado.Enabled := False;
  Edt_Sigla.Enabled := False;
end;

procedure TF_Estado.Edt_PesquisarChange(Sender: TObject);
begin
  inherited;
  Q_Estado.Close;
  Q_Estado.ParamByName('NomeEstado').asString := Edt_Pesquisar.Text + '%';
  Q_Estado.Open();
end;

procedure TF_Estado.HabilitaCampos;
begin
  Edt_IDEstado.Enabled := True;
  Edt_NomeEstado.Enabled := True;
  Edt_Sigla.Enabled := True;
end;

procedure TF_Estado.Spb_NovoClick(Sender: TObject);
begin
  inherited;
  HabilitaCampos;
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
  end
  else
  begin
    SQL := 'update Estado set Nome_Estado =' + QuotedStr(Edt_NomeEstado.Text) +
    //
      ', Sigla_Estado =' + QuotedStr(Edt_Sigla.Text) + //
      ' where id_Estado =' + Edt_IDEstado.Text;
  end;

  DM.FDConnection1.ExecSQL(SQL);
  DM.FDConnection1.CommitRetaining;
  LimpaCampos;
end;

end.
