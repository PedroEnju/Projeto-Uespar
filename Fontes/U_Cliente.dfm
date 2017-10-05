inherited F_Cliente: TF_Cliente
  Caption = 
    '                                                                ' +
    '                                     Cadastro de Cliente'
  ClientHeight = 418
  ClientWidth = 770
  ExplicitWidth = 786
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 770
    ExplicitWidth = 770
  end
  inherited StatusBar1: TStatusBar
    Top = 399
    Width = 770
    ExplicitTop = 399
    ExplicitWidth = 770
  end
  inherited PC_Principal: TPageControl
    Width = 770
    Height = 358
    ActivePage = TabSheet1
    ExplicitTop = 41
    ExplicitWidth = 770
    ExplicitHeight = 358
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 762
      ExplicitHeight = 330
      object Label1: TLabel
        Left = 24
        Top = 20
        Width = 19
        Height = 13
        Caption = 'ID.:'
      end
      object Label2: TLabel
        Left = 24
        Top = 59
        Width = 35
        Height = 13
        Caption = 'Nome.:'
      end
      object Label3: TLabel
        Left = 24
        Top = 99
        Width = 27
        Height = 13
        Caption = 'CPF.:'
      end
      object Label4: TLabel
        Left = 176
        Top = 99
        Width = 22
        Height = 13
        Caption = 'RG.:'
      end
      object Label5: TLabel
        Left = 24
        Top = 139
        Width = 32
        Height = 13
        Caption = 'Email.:'
      end
      object Label6: TLabel
        Left = 480
        Top = 139
        Width = 50
        Height = 13
        Caption = 'Telefone.:'
      end
      object Label7: TLabel
        Left = 336
        Top = 99
        Width = 104
        Height = 13
        Caption = 'Data de Nascimento.:'
      end
      object Label8: TLabel
        Left = 144
        Top = 20
        Width = 39
        Height = 13
        Caption = 'Status.:'
      end
      object Label9: TLabel
        Left = 480
        Top = 99
        Width = 41
        Height = 13
        Caption = 'Cidade.:'
      end
      object L_Debug: TLabel
        Left = 336
        Top = 230
        Width = 46
        Height = 19
        Caption = 'Debug'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edt_IDCliente: TEdit
        Left = 24
        Top = 32
        Width = 97
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object Edt_NomeCliente: TEdit
        Left = 24
        Top = 72
        Width = 609
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object Edt_CPF: TEdit
        Left = 24
        Top = 112
        Width = 137
        Height = 21
        Enabled = False
        TabOrder = 2
      end
      object Edt_RG: TEdit
        Left = 176
        Top = 112
        Width = 145
        Height = 21
        Enabled = False
        TabOrder = 3
      end
      object Edt_Email: TEdit
        Left = 24
        Top = 152
        Width = 433
        Height = 21
        Enabled = False
        TabOrder = 4
      end
      object Edt_Telefone: TEdit
        Left = 480
        Top = 152
        Width = 153
        Height = 21
        Enabled = False
        TabOrder = 5
      end
      object Edt_DataNasc: TEdit
        Left = 336
        Top = 112
        Width = 121
        Height = 21
        Enabled = False
        MaxLength = 10
        TabOrder = 6
        Text = 'aaaa-mm-dd'
        OnChange = Edt_DataNascChange
        OnClick = Edt_DataNascClick
      end
      object Edt_Status: TEdit
        Left = 144
        Top = 32
        Width = 39
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 7
      end
      object CB_IDCidade: TComboBox
        Left = 480
        Top = 112
        Width = 153
        Height = 21
        Enabled = False
        TabOrder = 8
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 762
      ExplicitHeight = 330
      inherited GroupBox1: TGroupBox
        object Edt_Consulta: TEdit
          Left = 23
          Top = 32
          Width = 706
          Height = 21
          TabOrder = 0
          OnChange = Edt_ConsultaChange
        end
      end
      inherited GroupBox2: TGroupBox
        Height = 151
        ExplicitHeight = 151
        object DBG_Consulta: TDBGrid
          Left = 16
          Top = 24
          Width = 721
          Height = 113
          DataSource = DS
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
              FieldName = 'ID_CLIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMECLIENTE'
              Title.Caption = 'NOME'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RG'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMAIL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELEFONE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTNASCIMENTO'
              Title.Caption = 'DT NASCIMENTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CIDADE'
              Title.Caption = 'ID Cidade'
              Visible = True
            end>
        end
      end
    end
  end
  object Q_Cidade: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select Nome_Cidade,ID_Cidade from Cidade order by Nome_Cidade;')
    Left = 708
    Top = 9
    object Q_CidadeNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Origin = 'NOME_CIDADE'
      Required = True
      Size = 50
    end
    object Q_CidadeID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DS: TDataSource
    DataSet = Q_Cliente
    Left = 671
    Top = 12
  end
  object Q_Cliente: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'select * from Cliente where NomeCliente like :NomeCliente order ' +
        'by ID_CLIENTE;')
    Left = 616
    Top = 8
    ParamData = <
      item
        Name = 'NOMECLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 100
        Value = Null
      end>
    object Q_ClienteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_ClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      Required = True
      Size = 100
    end
    object Q_ClienteCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      FixedChar = True
      Size = 11
    end
    object Q_ClienteRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 13
    end
    object Q_ClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object Q_ClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object Q_ClienteDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      Origin = 'DTNASCIMENTO'
    end
    object Q_ClienteSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object Q_ClienteID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      Required = True
    end
  end
end
