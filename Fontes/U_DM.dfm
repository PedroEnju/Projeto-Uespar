object DM: TDM
  OldCreateOrder = False
  Height = 525
  Width = 625
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Documentos\ProjetoUespar\BancoDados\BD.GDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FDQ_Estado: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max(ID_ESTADO) from Estado;')
    Left = 128
    Top = 24
    object FDQ_EstadoMAX: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = '"MAX"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQ_Cidade: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max(ID_CIDADE) from Cidade;')
    Left = 224
    Top = 24
    object FDQ_CidadeMAX: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = '"MAX"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQ_Cliente: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max(ID_CLIENTE) from CLIENTE;')
    Left = 296
    Top = 24
    object FDQ_ClienteMAX: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = '"MAX"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
