program ProjetoUespar;

uses
  Vcl.Forms,
  U_Modelo in 'U_Modelo.pas' {F_Modelo},
  U_Cidade in 'U_Cidade.pas' {F_Cidade},
  U_Estado in 'U_Estado.pas' {F_Estado},
  U_Cliente in 'U_Cliente.pas' {F_Cliente},
  U_Principal in 'U_Principal.pas' {F_Principal},
  U_Produto in 'U_Produto.pas' {F_Produto},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cobalt XEMedia');
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TF_Modelo, F_Modelo);
  Application.CreateForm(TF_Cidade, F_Cidade);
  Application.CreateForm(TF_Estado, F_Estado);
  Application.CreateForm(TF_Cliente, F_Cliente);
  Application.CreateForm(TF_Produto, F_Produto);
  Application.Run;
end.
