inherited F_Estado: TF_Estado
  Caption = 
    '                                                                ' +
    '                                     Cadastro de Estado'
  ClientHeight = 438
  ExplicitHeight = 477
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 419
  end
  inherited PageControl1: TPageControl
    Height = 378
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
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
      inherited GroupBox1: TGroupBox
        object Label4: TLabel
          Left = 16
          Top = 24
          Width = 54
          Height = 13
          Caption = 'Pesquisar.:'
        end
        object Edt_Pesquisar: TEdit
          Left = 16
          Top = 43
          Width = 721
          Height = 21
          TabOrder = 0
          OnChange = Edt_PesquisarChange
        end
      end
      inherited GroupBox2: TGroupBox
        Height = 223
        ExplicitHeight = 223
        object DBG_Consulta: TDBGrid
          Left = 16
          Top = 24
          Width = 721
          Height = 177
          DataSource = DS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
  end
  object Q_Estado: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from Estado where Nome_Estado like :NomeEstado')
    Left = 695
    Top = 236
    ParamData = <
      item
        Name = 'NOMEESTADO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
    object Q_EstadoID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_EstadoNOME_ESTADO: TStringField
      FieldName = 'NOME_ESTADO'
      Origin = 'NOME_ESTADO'
      Required = True
      Size = 50
    end
    object Q_EstadoSIGLA_ESTADO: TStringField
      FieldName = 'SIGLA_ESTADO'
      Origin = 'SIGLA_ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object DS: TDataSource
    DataSet = Q_Estado
    Left = 695
    Top = 300
  end
end
