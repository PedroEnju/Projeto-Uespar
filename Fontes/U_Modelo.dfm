object F_Modelo: TF_Modelo
  Left = 0
  Top = 0
  Caption = 
    '                                                                ' +
    '                                                 Modelo'
  ClientHeight = 547
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    000000000000330077000000000000000000000000003B077070000000000000
    000000000000BB807007000000000000000000000300B0007000700000000000
    00000000330070070700070000000000000000003B0700700070007000000000
    00000000BB800700000700070000000000000300B00070000000700070000000
    0000330070070000000007000700000000003B07007000000000007007000000
    0000BB800700000000000007070000000300B000700000000070000077000000
    330070070000000007000000803300003B070070000000000000000800330000
    BB8007000000000000000080BBBB0300B000700000000070000008000BB03300
    70070000000707000000803300003B070070000000707000000800330000BB80
    07000000070700000080BBBB0000B000700000000070000008000BB000007007
    0000000007000000803300000000707000007770000000080033000000008700
    0007070700000080BBBB00000000080000077777000008000BB0000000000080
    0007070700008033000000000000000800007770000800330000000000000000
    800000000080BBBB00000000000000000800000008000BB00000000000000000
    0080000080330000000000000000000000080008003300000000000000000000
    00008080BBBB00000000000000000000000008000BB00000000000000000FFFF
    33FFFFFF21FFFFFF00FFFFFB007FFFF3003FFFF2001FFFF0000FFFB00007FF30
    0003FF200003FF000003FB000003F3000000F2000000F0000010B00000393000
    000F2000000F0000010F0000039F000000FF000000FF000010FF800039FFC000
    0FFFE0000FFFF0010FFFF8039FFFFC00FFFFFE00FFFFFF10FFFFFFB9FFFF}
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 41
    Align = alTop
    TabOrder = 0
    object Spb_Novo: TSpeedButton
      Left = 8
      Top = 8
      Width = 23
      Height = 22
      Hint = 'Inserir Novo Registro'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      OnClick = Spb_NovoClick
    end
    object Spb_Salvar: TSpeedButton
      Left = 48
      Top = 8
      Width = 23
      Height = 22
      Hint = 'Salvar Registro'
      Enabled = False
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      OnClick = Spb_SalvarClick
    end
    object Spb_Cancelar: TSpeedButton
      Left = 88
      Top = 8
      Width = 23
      Height = 22
      Hint = 'Cancelar Opera'#231#227'o'
      Enabled = False
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      OnClick = Spb_CancelarClick
    end
    object Spb_Excluir: TSpeedButton
      Left = 128
      Top = 8
      Width = 23
      Height = 22
      Hint = 'Excluir'
      Enabled = False
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
      OnClick = Spb_ExcluirClick
    end
    object Spb_Editar: TSpeedButton
      Left = 168
      Top = 8
      Width = 23
      Height = 22
      Hint = 'Editar'
      Enabled = False
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      OnClick = Spb_EditarClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 528
    Width = 768
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Alignment = taCenter
        Text = 'Projeto Uespar 1.0'
        Width = 50
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 768
    Height = 487
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 754
        Height = 129
        Caption = 'Filtro'
        TabOrder = 0
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 138
        Width = 754
        Height = 135
        Caption = 'Resultado da Consulta'
        TabOrder = 1
      end
    end
  end
end
