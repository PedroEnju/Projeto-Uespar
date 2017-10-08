unit U_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.FMTBcd, Data.SqlExpr;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQ_Estado: TFDQuery;
    FDQ_EstadoMAX: TIntegerField;
    FDQ_Cidade: TFDQuery;
    FDQ_CidadeMAX: TIntegerField;
    FDQ_Cliente: TFDQuery;
    FDQ_ClienteMAX: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
