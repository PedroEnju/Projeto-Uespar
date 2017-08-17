object F_Principal: TF_Principal
  Left = 0
  Top = 0
  Caption = 
    '                                                                ' +
    '                                        Menu Principal'
  ClientHeight = 521
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 256
    Top = 208
    Width = 30
    Height = 13
    Caption = 'TESTE'
  end
  object MainMenu1: TMainMenu
    Left = 408
    Top = 96
    object as1: TMenuItem
      Caption = 'Cadastros'
      object Estado1: TMenuItem
        Caption = 'Estado'
        OnClick = Estado1Click
      end
      object Cidade1: TMenuItem
        Caption = 'Cidade'
        OnClick = Cidade1Click
      end
      object Cliente1: TMenuItem
        Caption = 'Clientes'
        OnClick = Cliente1Click
      end
    end
  end
end
