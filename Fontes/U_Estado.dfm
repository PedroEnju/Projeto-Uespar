inherited F_Estado: TF_Estado
  Caption = 
    '                                                                ' +
    '                                     Cadastro de Estado'
  ClientHeight = 439
  ClientWidth = 750
  Position = poDesigned
  ExplicitWidth = 766
  ExplicitHeight = 478
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 750
    ExplicitWidth = 750
  end
  inherited StatusBar1: TStatusBar
    Top = 420
    Width = 750
    ExplicitTop = 420
    ExplicitWidth = 750
  end
  inherited PC_Principal: TPageControl
    Width = 750
    Height = 379
    ActivePage = TabSheet1
    ExplicitWidth = 750
    ExplicitHeight = 379
    inherited TabSheet1: TTabSheet
      ExplicitHeight = 351
      object Label1: TLabel
        Left = 20
        Top = 10
        Width = 21
        Height = 16
        Caption = 'ID.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 20
        Top = 59
        Width = 42
        Height = 16
        Caption = 'Nome.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 20
        Top = 107
        Width = 37
        Height = 16
        Caption = 'Sigla.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edt_IDEstado: TEdit
        Left = 20
        Top = 32
        Width = 77
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object Edt_NomeEstado: TEdit
        Left = 20
        Top = 80
        Width = 461
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object Edt_Sigla: TEdit
        Left = 20
        Top = 129
        Width = 53
        Height = 21
        Enabled = False
        TabOrder = 2
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitWidth = 742
      ExplicitHeight = 351
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
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBG_ConsultaDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_ESTADO'
              Title.Caption = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_ESTADO'
              Title.Caption = 'NOME'
              Width = 423
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SIGLA_ESTADO'
              Title.Caption = 'UF'
              Width = 100
              Visible = True
            end>
        end
      end
    end
  end
  object DS: TDataSource
    DataSet = Q_Estado
    Left = 695
    Top = 140
  end
  object Q_Estado: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from Estado where Nome_Estado like :NomeEstado;')
    Left = 692
    Top = 81
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
end
