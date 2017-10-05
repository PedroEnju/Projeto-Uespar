unit U_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Modelo, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TF_Cliente = class(TF_Modelo)
    Label1: TLabel;
    Edt_IDCliente: TEdit;
    Label2: TLabel;
    Edt_NomeCliente: TEdit;
    Label3: TLabel;
    Edt_CPF: TEdit;
    Label4: TLabel;
    Edt_RG: TEdit;
    Label5: TLabel;
    Edt_Email: TEdit;
    Edt_Telefone: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edt_DataNasc: TEdit;
    Edt_Status: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    CB_IDCidade: TComboBox;
    Q_Cidade: TFDQuery;
    Q_CidadeNOME_CIDADE: TStringField;
    Q_CidadeID_CIDADE: TIntegerField;
    Edt_Consulta: TEdit;
    DBG_Consulta: TDBGrid;
    DS: TDataSource;
    Q_Cliente: TFDQuery;
    Q_ClienteID_CLIENTE: TIntegerField;
    Q_ClienteNOMECLIENTE: TStringField;
    Q_ClienteCPF: TStringField;
    Q_ClienteRG: TStringField;
    Q_ClienteEMAIL: TStringField;
    Q_ClienteTELEFONE: TStringField;
    Q_ClienteDTNASCIMENTO: TDateField;
    Q_ClienteSTATUS: TStringField;
    Q_ClienteID_CIDADE: TIntegerField;
    procedure Spb_NovoClick(Sender: TObject);
    procedure Spb_SalvarClick(Sender: TObject);
    procedure Edt_ConsultaChange(Sender: TObject);
    procedure DBG_ConsultaDblClick(Sender: TObject);
    procedure Spb_EditarClick(Sender: TObject);
    procedure Spb_CancelarClick(Sender: TObject);
    procedure Spb_ExcluirClick(Sender: TObject);
  private
    procedure LiberaCampos;
    procedure DesativaCampos;
    procedure LimpaCampos;
    { Private declarations }
  public
    { Public declarations }
    Crud: string;
  end;

var
  F_Cliente: TF_Cliente;

implementation

{$R *.dfm}

uses U_DM;

procedure TF_Cliente.Spb_CancelarClick(Sender: TObject);
begin
  inherited;
  DesativaCampos;
  LimpaCampos;
end;

procedure TF_Cliente.Spb_EditarClick(Sender: TObject);
begin
  inherited;
  LiberaCampos;
end;

procedure TF_Cliente.Spb_ExcluirClick(Sender: TObject);
begin
  inherited;
  DesativaCampos;
end;

procedure TF_Cliente.Spb_NovoClick(Sender: TObject);
var
  X, Y, Max: integer;
begin
  inherited;
  Crud := 'Inserir';
  LiberaCampos;
  PC_Principal.TabIndex := 0;

  X := 0;
  Dm.FDQ_Cidade.Close;
  Dm.FDQ_Cidade.Open();
  Y := Dm.FDQ_CidadeMAX.AsInteger;
  Q_Cidade.Close;
  Q_Cidade.Open();
  Q_Cidade.First;
  CB_IDCidade.Text := IntToStr((Q_CidadeID_CIDADE.AsInteger)) + '   ' +
    (Q_CidadeNOME_CIDADE.AsString);
  while X < Y do
  begin
    CB_IDCidade.Items.Add(IntToStr((Q_CidadeID_CIDADE.AsInteger)) + '   ' +
      Q_CidadeNOME_CIDADE.AsString);
    Q_Cidade.Next;
    X := X + 1;
  end;
end;

procedure TF_Cliente.Spb_SalvarClick(Sender: TObject);
var
  SQL: string;
  Convert: real;
begin
  inherited;

  if Crud = 'Inserir' then
  begin
    Convert := StrToFloat(CB_IDCidade.Text);
    SQL := 'insert into Cliente(id_cliente,nomecliente,cpf,rg,email,telefone,dtnascimento,status,id_cidade) values('
      + //
      Edt_IDCliente.Text + ',' + //
      QuotedStr(Edt_NomeCliente.Text) + ',' + //
      QuotedStr(Edt_CPF.Text) + ',' + //
      QuotedStr(Edt_RG.Text) + ',' + //
      QuotedStr(Edt_Email.Text) + ',' + //
      QuotedStr(Edt_Telefone.Text) + ',' + //
      QuotedStr(Edt_DataNasc.Text) + ',' + //
      QuotedStr(Edt_Status.Text) + ',' + //
      FloatToStr(Convert) + ');';
  end
  else
  begin

  end;
  LimpaCampos;
end;

procedure TF_Cliente.DBG_ConsultaDblClick(Sender: TObject);
var
  X, Y: integer;
begin
  inherited;
  Edt_IDCliente.Text := Q_ClienteID_CLIENTE.AsString;
  Edt_NomeCliente.Text := Q_ClienteNOMECLIENTE.AsString;
  Edt_CPF.Text := Q_ClienteCPF.AsString;
  Edt_RG.Text := Q_ClienteRG.AsString;
  Edt_Email.Text := Q_ClienteEMAIL.AsString;
  Edt_Telefone.Text := Q_ClienteTELEFONE.AsString;
  Edt_DataNasc.Text := Q_ClienteDTNASCIMENTO.AsString;
  Edt_Status.Text := Q_ClienteSTATUS.AsString;
  PC_Principal.TabIndex := 0;
  Spb_Excluir.Enabled := True;
  Spb_Editar.Enabled := True;

  X := 0;
  Dm.FDQ_Cidade.Close;
  Dm.FDQ_Cidade.Open();
  Y := Dm.FDQ_CidadeMAX.AsInteger;
  Q_Cidade.Close;
  Q_Cidade.Open();
  Q_Cidade.First;
  while X < Y do
  begin
    CB_IDCidade.Items.Add(IntToStr((Q_CidadeID_CIDADE.AsInteger)) + '   ' +
      Q_CidadeNOME_CIDADE.AsString);
    Q_Cidade.Next;
    X := X + 1;
  end;

  DesativaCampos;

end;

procedure TF_Cliente.Edt_ConsultaChange(Sender: TObject);
begin
  inherited;
  Q_Cliente.Close;
  Q_Cliente.ParamByName('NomeCliente').AsString := Edt_Consulta.Text + '%';
  Q_Cliente.Open();
end;

procedure TF_Cliente.LiberaCampos;
begin
  Edt_IDCliente.Enabled := True;
  Edt_NomeCliente.Enabled := True;
  Edt_CPF.Enabled := True;
  Edt_RG.Enabled := True;
  Edt_Email.Enabled := True;
  Edt_Telefone.Enabled := True;
  Edt_DataNasc.Enabled := True;
  Edt_Status.Enabled := True;
  CB_IDCidade.Enabled := True;
end;

procedure TF_Cliente.DesativaCampos;
begin
  Edt_IDCliente.Enabled := False;
  Edt_NomeCliente.Enabled := False;
  Edt_CPF.Enabled := False;
  Edt_RG.Enabled := False;
  Edt_Email.Enabled := False;
  Edt_Telefone.Enabled := False;
  Edt_DataNasc.Enabled := False;
  Edt_Status.Enabled := False;
  CB_IDCidade.Enabled := False;
end;

procedure TF_Cliente.LimpaCampos;
begin
  Edt_IDCliente.Text := EmptyStr;
  Edt_NomeCliente.Text := EmptyStr;
  Edt_CPF.Text := EmptyStr;
  Edt_RG.Text := EmptyStr;
  Edt_Email.Text := EmptyStr;
  Edt_Telefone.Text := EmptyStr;
  Edt_DataNasc.Text := EmptyStr;
  Edt_Status.Text := EmptyStr;
  CB_IDCidade.Text := EmptyStr;
end;

end.
