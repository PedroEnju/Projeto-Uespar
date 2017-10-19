unit U_Modelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TF_Modelo = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Spb_Novo: TSpeedButton;
    Spb_Salvar: TSpeedButton;
    Spb_Cancelar: TSpeedButton;
    Spb_Excluir: TSpeedButton;
    Spb_Editar: TSpeedButton;
    PC_Principal: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    procedure Spb_NovoClick(Sender: TObject);
    procedure Spb_SalvarClick(Sender: TObject);
    procedure Spb_CancelarClick(Sender: TObject);
    procedure Spb_ExcluirClick(Sender: TObject);
    procedure Spb_EditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Modelo: TF_Modelo;

implementation

{$R *.dfm}

procedure TF_Modelo.Spb_CancelarClick(Sender: TObject);
begin
  Spb_Novo.Enabled := True;
  Spb_Salvar.Enabled := False;
  Spb_Cancelar.Enabled := False;
  Spb_Excluir.Enabled := False;
  Spb_Editar.Enabled := False;
  StatusBar1.Panels[0].Text := 'Registro Cancelado';
end;

procedure TF_Modelo.Spb_EditarClick(Sender: TObject);
begin
  Spb_Novo.Enabled := False;
  Spb_Salvar.Enabled := True;
  Spb_Cancelar.Enabled := True;
  Spb_Excluir.Enabled := False;
  Spb_Editar.Enabled := False;
  StatusBar1.Panels[0].Text := 'Editando Registro Atual';
end;

procedure TF_Modelo.Spb_ExcluirClick(Sender: TObject);
begin
  Spb_Novo.Enabled := True;
  Spb_Salvar.Enabled := False;
  Spb_Cancelar.Enabled := False;
  Spb_Excluir.Enabled := False;
  Spb_Editar.Enabled := False;
  StatusBar1.Panels[0].Text := 'Excluido Com Sucesso';
end;

procedure TF_Modelo.Spb_NovoClick(Sender: TObject);
begin
  Spb_Salvar.Enabled := True;
  Spb_Cancelar.Enabled := True;
  Spb_Novo.Enabled := False;
  Spb_Excluir.Enabled := False;
  Spb_Editar.Enabled := False;
  StatusBar1.Panels[0].Text := 'Inserindo Registro';
end;

procedure TF_Modelo.Spb_SalvarClick(Sender: TObject);
begin
  Spb_Novo.Enabled := True;
  Spb_Salvar.Enabled := False;
  Spb_Cancelar.Enabled := False;
  Spb_Excluir.Enabled := True;
  Spb_Editar.Enabled := False;
  StatusBar1.Panels[0].Text := 'Registro Salvo Com Sucesso';
end;

end.
