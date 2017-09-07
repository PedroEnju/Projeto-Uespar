inherited F_Estado: TF_Estado
  Caption = 
    '                                                                ' +
    '                                     Cadastro de Estado'
  ExplicitWidth = 784
  ExplicitHeight = 586
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitLeft = 8
  end
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 8
      ExplicitTop = 22
      ExplicitWidth = 760
      ExplicitHeight = 459
      object Label1: TLabel
        Left = 23
        Top = 40
        Width = 55
        Height = 13
        Caption = 'ID Estado.:'
      end
      object Label2: TLabel
        Left = 43
        Top = 67
        Width = 35
        Height = 13
        Caption = 'Nome.:'
      end
      object Label3: TLabel
        Left = 48
        Top = 94
        Width = 30
        Height = 13
        Caption = 'Sigla.:'
      end
      object Edt_IDEstado: TEdit
        Left = 84
        Top = 32
        Width = 77
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object Edt_NomeEstado: TEdit
        Left = 84
        Top = 59
        Width = 333
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object Edt_Sigla: TEdit
        Left = 84
        Top = 86
        Width = 37
        Height = 21
        Enabled = False
        TabOrder = 2
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 760
      ExplicitHeight = 459
    end
  end
end
