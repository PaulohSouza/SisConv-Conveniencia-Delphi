object FrmVendas: TFrmVendas
  Left = 202
  Top = 93
  BorderStyle = bsSingle
  Caption = 'Vendas'
  ClientHeight = 677
  ClientWidth = 1101
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 128
    Width = 134
    Height = 20
    Caption = 'CODIGO NOTA.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 168
    Width = 58
    Height = 20
    Caption = 'DATA.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 976
    Top = 0
    Width = 85
    Height = 16
    Caption = 'Calculadora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton2: TSpeedButton
    Left = 40
    Top = 8
    Width = 121
    Height = 65
    BiDiMode = bdLeftToRight
    Caption = 'NOVA VENDA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
      FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
      990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
      990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
      FFFF3333333333333F333333333FFFFF0FFF3333333333337FF333333333FFF0
      00FF33333333333777FF333333333F00000F33FFFFF33777777F300000333000
      0000377777F33777777730EEE033333000FF37F337F3333777F330EEE0333330
      00FF37F337F3333777F330EEE033333000FF37FFF7F333F77733300000333000
      03FF3777773337777333333333333333333F3333333333333333}
    Layout = blGlyphTop
    NumGlyphs = 2
    ParentFont = False
    ParentBiDiMode = False
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 184
    Top = 8
    Width = 145
    Height = 65
    Caption = 'ENTRADA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555FFFFFFFFFF5F5557777777777505555777777777757F55555555555555
      055555555555FF5575F555555550055030555555555775F7F7F55555550FB000
      005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
      B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
      305555577F555557F7F5550E0BFBFB003055557575F55577F7F550EEE0BFB0B0
      305557FF575F5757F7F5000EEE0BFBF03055777FF575FFF7F7F50000EEE00000
      30557777FF577777F7F500000E05555BB05577777F75555777F5500000555550
      3055577777555557F7F555000555555999555577755555577755}
    Layout = blGlyphTop
    NumGlyphs = 2
    ParentFont = False
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 344
    Top = 8
    Width = 145
    Height = 65
    Caption = 'ESTOQUE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
      55555575555555775F55509999999901055557F55555557F75F5001111111101
      105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
      01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
      8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
      0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
      0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
      05555555575FF777755555555500055555555555557775555555}
    Layout = blGlyphTop
    NumGlyphs = 2
    ParentFont = False
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 512
    Top = 8
    Width = 145
    Height = 65
    Caption = 'PRINCIPAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333FFF33F333FF3F330E0330FFFCCFCC33777FF7F3377F7730EEE030FFFC
      CFCC377777F7F33773770EEE0000FFFFFCCF777777773F33377FEEE0BFBF0FFF
      FCCF7777333373F337730E0BFBFBF0FFCCFF77733333373F77F330BFBFBFBF0F
      CCFF37F333333F7F773330FBFBFB0B0FFFFF37F3F33F737FFFFF30B0BF0FB000
      000037F73F73F777777730FB0BF0FB0FFFFF373F73F73F7F333F330030BF0F0F
      FF993F77373F737F3377CC33330BF00FFF9977FFF373F77F3F77CC993330009F
      99FF7777F337777F77F333993330F99F99FF3F77FF37F773773F993CC330FFF9
      9F9977F77F37F3377F77993CC330FFF99F997737733733377377}
    Layout = blGlyphTop
    NumGlyphs = 2
    ParentFont = False
    OnClick = SpeedButton5Click
  end
  object Label4: TLabel
    Left = 48
    Top = 520
    Width = 191
    Height = 24
    Caption = 'Produtos Vendidos.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label9: TLabel
    Left = 48
    Top = 520
    Width = 132
    Height = 24
    Caption = 'Venda Total.:;'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object DBNavigator1: TDBNavigator
    Left = 160
    Top = 488
    Width = 340
    Height = 41
    DataSource = DsFiltroVenda
    TabOrder = 0
    Visible = False
  end
  object Edit1: TEdit
    Left = 200
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '1'
  end
  object DateEdit1: TDateEdit
    Left = 144
    Top = 168
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object RxCalcEdit1: TRxCalcEdit
    Left = 968
    Top = 24
    Width = 121
    Height = 21
    AutoSize = False
    NumGlyphs = 2
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 744
    Top = 56
    Width = 353
    Height = 81
    DataSource = UDMDados.DsFiltroVenda
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'SaiProd_CodNota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_CodSaiProduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_CodBarraProduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_ValorProduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_ValorTotal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_Lucro'
        Visible = True
      end>
  end
  object GroupBox2: TGroupBox
    Left = 552
    Top = 80
    Width = 297
    Height = 89
    Caption = 'VALOR TOTAL.:'
    TabOrder = 5
    object Edit6: TEdit
      Left = 104
      Top = 16
      Width = 185
      Height = 45
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -32
      Font.Name = 'Berlin Sans FB Demi'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      Text = 'Edit6'
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 0
      Width = 297
      Height = 89
      Caption = 'VALOR TOTAL.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label14: TLabel
        Left = 8
        Top = 32
        Width = 85
        Height = 40
        Caption = 'R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -32
        Font.Name = 'Wide Latin'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit5: TEdit
        Left = 104
        Top = 28
        Width = 145
        Height = 53
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -37
        Font.Name = 'Lucida Sans Unicode'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'Edit5'
      end
    end
  end
  object DBNavigator2: TDBNavigator
    Left = 680
    Top = 8
    Width = 270
    Height = 33
    DataSource = UDMDados.DsVenda
    TabOrder = 6
    Visible = False
  end
  object Button1: TButton
    Left = 896
    Top = 504
    Width = 89
    Height = 25
    Caption = 'Calcular Soma.:'
    TabOrder = 7
    Visible = False
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 48
    Top = 240
    Width = 481
    Height = 209
    Caption = 'VENDA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    Visible = False
    object Label5: TLabel
      Left = 16
      Top = 24
      Width = 124
      Height = 13
      Caption = 'C'#211'DIGO DE BARRA.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 112
      Width = 82
      Height = 13
      Caption = 'QUANTIDADE'
    end
    object DBText1: TDBText
      Left = 112
      Top = 144
      Width = 65
      Height = 17
      DataField = 'PRODUTO'
      DataSource = UDMDados.DsCadastroProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 144
      Width = 70
      Height = 13
      Caption = 'PRODUTO.:'
    end
    object Label8: TLabel
      Left = 24
      Top = 176
      Width = 115
      Height = 13
      Caption = 'PRE'#199'O UNIT'#192'RIO.:'
    end
    object DBText2: TDBText
      Left = 144
      Top = 176
      Width = 65
      Height = 17
      DataField = 'LUCRO_UNIDADE'
      DataSource = UDMDados.DsCadastroProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 232
      Top = 24
      Width = 92
      Height = 13
      Caption = 'COD PRODUTO'
    end
    object Edit3: TEdit
      Left = 16
      Top = 48
      Width = 425
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'INSIRA O C'#211'DIGO'
      OnChange = Edit3Change
      OnClick = Edit3Click
      OnExit = Edit3Exit
      OnKeyDown = Edit3KeyDown
    end
    object Edit4: TEdit
      Left = 104
      Top = 107
      Width = 81
      Height = 21
      TabOrder = 1
      Text = '1'
    end
    object Edit8: TEdit
      Left = 328
      Top = 16
      Width = 97
      Height = 21
      TabOrder = 3
      Text = '1'
    end
    object BitBtn2: TBitBtn
      Left = 312
      Top = 104
      Width = 137
      Height = 65
      Caption = 'EFETUAR VENDA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      WordWrap = True
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
        FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
        990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
        990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
        FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
        00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
        00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
        00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
        03FF33337FFF77777333333300000333333F3333777773333333}
      NumGlyphs = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 904
    Top = 464
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 9
    Visible = False
    OnClick = BitBtn1Click
  end
  object DBGrid2: TDBGrid
    Left = 32
    Top = 552
    Width = 985
    Height = 129
    DataSource = UDMDados.DsVenda
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'SaiProd_CodNota'
        Title.Caption = 'NF'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_CodSaiProduto'
        Title.Caption = 'COD SAI PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_CodBarraProduto'
        Title.Caption = 'COD BARRA'
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_Data'
        Title.Caption = 'DATA'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_Produto'
        Title.Caption = 'PRODUTO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_ValorProduto'
        Title.Caption = 'VALOR PRODUTO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_Quantidade'
        Title.Caption = 'QUANTIDADE'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_ValorTotal'
        Title.Caption = 'VALOR LUCRO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiProd_Lucro'
        Title.Caption = 'LUCRO'
        Visible = True
      end>
  end
  object Edit7: TEdit
    Left = 784
    Top = 368
    Width = 105
    Height = 37
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    Text = '1'
    Visible = False
  end
  object BitBtn3: TBitBtn
    Left = 624
    Top = 184
    Width = 169
    Height = 49
    Caption = 'Efetuar Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = BitBtn3Click
  end
  object GroupBox4: TGroupBox
    Left = 576
    Top = 264
    Width = 313
    Height = 97
    Caption = 'Valor Pago'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    Visible = False
    object Edit9: TEdit
      Left = 16
      Top = 16
      Width = 185
      Height = 87
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'ISOCPEUR'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object Button2: TButton
      Left = 224
      Top = 24
      Width = 65
      Height = 49
      Caption = 'OK'
      TabOrder = 1
      Visible = False
      OnClick = Button2Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 576
    Top = 424
    Width = 233
    Height = 105
    Caption = 'TROCO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    Visible = False
    object Edit10: TEdit
      Left = 8
      Top = 16
      Width = 217
      Height = 80
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'Lucida Bright'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
  end
  object DBGrid3: TDBGrid
    Left = 32
    Top = 552
    Width = 785
    Height = 120
    DataSource = DsSaida
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'SaiPai_codigo'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiPai_DataVenda'
        Title.Caption = 'Data Venda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiPai_ValorTotal'
        Title.Caption = 'Valor Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaiPai_Obs'
        Title.Caption = 'Lucro'
        Width = 100
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 280
    Top = 168
    Width = 249
    Height = 21
    TabOrder = 16
    Visible = False
  end
  object RxClock1: TRxClock
    Left = 352
    Top = 88
    Width = 169
    Height = 65
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid4: TDBGrid
    Left = 928
    Top = 384
    Width = 320
    Height = 120
    DataSource = DsLucro
    TabOrder = 18
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object DBNavigator3: TDBNavigator
    Left = 912
    Top = 296
    Width = 240
    Height = 25
    DataSource = DsSaida
    TabOrder = 19
    Visible = False
  end
  object DBNavigator4: TDBNavigator
    Left = 904
    Top = 328
    Width = 240
    Height = 25
    DataSource = UDMDados.DsCadastroProdutos
    TabOrder = 20
    Visible = False
  end
  object TblAuxiliarVenda: TIBTable
    Database = UDMDados.DadosConveniencia
    Transaction = UDMDados.IBTrans
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'SaiProd_CodNota'
        DataType = ftInteger
      end
      item
        Name = 'SaiProd_CodSaiProduto'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SaiProd_CodBarraProduto'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SaiProd_Data'
        DataType = ftDate
      end
      item
        Name = 'SaiProd_Produto'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SaiProd_ValorProduto'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'SaiProd_Quantidade'
        DataType = ftInteger
      end
      item
        Name = 'SaiProd_ValorTotal'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'SaiProd_Lucro'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY18'
        Fields = 'SaiProd_CodSaiProduto;SaiProd_CodBarraProduto'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'TABELAVENDA'
    Left = 48
    Top = 96
    object TblAuxiliarVendaSaiProd_CodSaiProduto: TIntegerField
      FieldName = 'SaiProd_CodSaiProduto'
      Required = True
    end
    object TblAuxiliarVendaSaiProd_CodBarraProduto: TIBStringField
      FieldName = 'SaiProd_CodBarraProduto'
      Required = True
      Size = 30
    end
    object TblAuxiliarVendaSaiProd_Data: TDateField
      FieldName = 'SaiProd_Data'
    end
    object TblAuxiliarVendaSaiProd_Produto: TIBStringField
      FieldName = 'SaiProd_Produto'
      Size = 50
    end
    object TblAuxiliarVendaSaiProd_ValorProduto: TIBBCDField
      FieldName = 'SaiProd_ValorProduto'
      Precision = 9
      Size = 2
    end
    object TblAuxiliarVendaSaiProd_Quantidade: TIntegerField
      FieldName = 'SaiProd_Quantidade'
    end
    object TblAuxiliarVendaSaiProd_ValorTotal: TIBBCDField
      FieldName = 'SaiProd_ValorTotal'
      Precision = 9
      Size = 2
    end
    object TblAuxiliarVendaSaiProd_Lucro: TIBBCDField
      FieldName = 'SaiProd_Lucro'
      Precision = 9
      Size = 2
    end
    object TblAuxiliarVendaSaiProd_CodNota: TIntegerField
      FieldName = 'SaiProd_CodNota'
    end
  end
  object SqlFiltroVenda: TIBQuery
    Database = UDMDados.DadosConveniencia
    Transaction = UDMDados.IBTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select SUM("SaiProd_ValorTotal") as Total From TABELAVENDA where' +
        '  "SaiProd_CodNota" = :codnota')
    Left = 912
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codnota'
        ParamType = ptUnknown
      end>
    object SqlFiltroVendaTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object DsFiltroVenda: TDataSource
    DataSet = SqlFiltroVenda
    Left = 960
    Top = 328
  end
  object SqlFiltroLucro: TIBQuery
    Database = UDMDados.DadosConveniencia
    Transaction = UDMDados.IBTrans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select SUM("SaiProd_Lucro") as Total From TABELAVENDA where  "Sa' +
        'iProd_CodNota" = :codnota ')
    Left = 920
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codnota'
        ParamType = ptUnknown
      end>
    object SqlFiltroLucroTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object DsLucro: TDataSource
    DataSet = SqlFiltroLucro
    Left = 984
    Top = 432
  end
  object TblSaida: TIBTable
    Database = UDMDados.DadosConveniencia
    Transaction = UDMDados.IBTrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'SaiPai_codigo'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SaiPai_DataVenda'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'SaiPai_ValorTotal'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'SaiPai_Obs'
        DataType = ftString
        Size = 150
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY11'
        Fields = 'SaiPai_codigo'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'Saida_Pai'
    Left = 912
    Top = 200
    object TblSaidaSaiPai_codigo: TIntegerField
      FieldName = 'SaiPai_codigo'
    end
    object TblSaidaSaiPai_DataVenda: TDateTimeField
      FieldName = 'SaiPai_DataVenda'
    end
    object TblSaidaSaiPai_ValorTotal: TIBBCDField
      FieldName = 'SaiPai_ValorTotal'
      Precision = 18
      Size = 2
    end
    object TblSaidaSaiPai_Obs: TIBStringField
      FieldName = 'SaiPai_Obs'
      Size = 150
    end
  end
  object DsSaida: TDataSource
    DataSet = TblSaida
    Left = 976
    Top = 200
  end
end
