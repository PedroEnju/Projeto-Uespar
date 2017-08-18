unit U_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Modelo, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TF_Produto = class(TF_Modelo)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Produto: TF_Produto;

implementation

{$R *.dfm}

end.
