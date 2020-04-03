object FrmEntrada: TFrmEntrada
  Left = 200
  Top = 97
  BorderStyle = bsSingle
  Caption = 'Entrada de Mercadoria'
  ClientHeight = 576
  ClientWidth = 1086
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 184
    Width = 48
    Height = 13
    Caption = 'C'#243'digo.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 224
    Top = 184
    Width = 106
    Height = 13
    Caption = 'C'#243'digo de Barras.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 264
    Width = 193
    Height = 40
    Caption = 'Quantidade a inserir no Estoque.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label10: TLabel
    Left = 64
    Top = 232
    Width = 53
    Height = 13
    Caption = 'Produto.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 320
    Top = 232
    Width = 107
    Height = 13
    Caption = 'Quantidade Atual.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 192
    Top = 440
    Width = 97
    Height = 49
    Caption = '&CANCELAR'
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
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
      993337777F777F3377F3393999707333993337F77737333337FF993399933333
      399377F3777FF333377F993339903333399377F33737FF33377F993333707333
      399377F333377FF3377F993333101933399377F333777FFF377F993333000993
      399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
      99333773FF777F777733339993707339933333773FF7FFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Label12: TLabel
    Left = 344
    Top = 16
    Width = 86
    Height = 20
    Caption = 'ESTOQUE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 320
    Top = 288
    Width = 50
    Height = 16
    Caption = 'DATA.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 72
    Top = 152
    Width = 3
    Height = 13
  end
  object SpeedButton2: TSpeedButton
    Left = 328
    Top = 440
    Width = 111
    Height = 49
    Caption = '&SALVAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
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
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object GroupBox1: TGroupBox
    Left = 64
    Top = 328
    Width = 561
    Height = 97
    Caption = 'Informa'#231#245'es do Produto.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 16
      Top = 24
      Width = 142
      Height = 13
      Caption = 'Quantidade no Estoque.:'
    end
    object Label5: TLabel
      Left = 240
      Top = 24
      Width = 34
      Height = 13
      Caption = 'Tipo.:'
    end
    object Label6: TLabel
      Left = 376
      Top = 24
      Width = 73
      Height = 13
      Caption = 'Fornecedor.:'
    end
    object Label7: TLabel
      Left = 16
      Top = 56
      Width = 124
      Height = 13
      Caption = 'Percentual de Lucro.:'
    end
    object Label8: TLabel
      Left = 208
      Top = 56
      Width = 112
      Height = 13
      Caption = 'Pre'#231'o de Custo.R$:'
    end
    object Label9: TLabel
      Left = 368
      Top = 56
      Width = 98
      Height = 13
      Caption = 'Pre'#231'o Venda.R$:'
    end
    object DBText1: TDBText
      Left = 168
      Top = 24
      Width = 65
      Height = 17
      DataField = 'QUANTIDADE'
      DataSource = UDMDados.DsCadastroProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 280
      Top = 24
      Width = 65
      Height = 17
      DataField = 'TIPO'
      DataSource = UDMDados.DsCadastroProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 464
      Top = 24
      Width = 65
      Height = 17
      DataField = 'FORNECEDOR'
      DataSource = UDMDados.DsCadastroProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 152
      Top = 56
      Width = 65
      Height = 17
      DataField = 'PERCENTUAL_LUCRO'
      DataSource = UDMDados.DsCadastroProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 328
      Top = 56
      Width = 41
      Height = 17
      DataField = 'PRECO_DE_CUSTO'
      DataSource = UDMDados.DsCadastroProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 480
      Top = 56
      Width = 65
      Height = 17
      DataField = 'PRECO_VENDA'
      DataSource = UDMDados.DsCadastroProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Edit3: TEdit
    Left = 160
    Top = 288
    Width = 97
    Height = 21
    TabOrder = 1
    OnChange = Edit3Change
  end
  object Button3: TButton
    Left = 520
    Top = 496
    Width = 97
    Height = 49
    Caption = '&SALVAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 568
    Top = 192
    Width = 129
    Height = 49
    Caption = 'Cadastrar Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 568
    Top = 256
    Width = 129
    Height = 49
    Caption = 'Relat'#243'rio  de Entrada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button5Click
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 184
    Width = 81
    Height = 21
    DataField = 'CODIGO'
    DataSource = UDMDados.DsCadastroProdutos
    Enabled = False
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 349
    Top = 181
    Width = 180
    Height = 21
    DataField = 'CODIGO_BARRAS'
    DataSource = UDMDados.DsCadastroProdutos
    Enabled = False
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 112
    Top = 228
    Width = 193
    Height = 21
    DataField = 'PRODUTO'
    DataSource = UDMDados.DsCadastroProdutos
    Enabled = False
    MaxLength = 25
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 40
    Width = 657
    Height = 121
    DataSource = UDMDados.DsCadastroProdutos
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBEdit4: TDBEdit
    Left = 429
    Top = 227
    Width = 92
    Height = 21
    DataField = 'QUANTIDADE'
    DataSource = UDMDados.DsCadastroProdutos
    Enabled = False
    TabOrder = 9
  end
  object DBNavigator1: TDBNavigator
    Left = 496
    Top = 456
    Width = 240
    Height = 25
    DataSource = UDMDados.DsEntrada
    TabOrder = 10
    Visible = False
  end
  object Edit1: TEdit
    Left = 656
    Top = 424
    Width = 121
    Height = 21
    TabOrder = 11
    Visible = False
  end
  object Button1: TButton
    Left = 792
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Button1'
    Enabled = False
    TabOrder = 12
    Visible = False
    OnClick = Button1Click
  end
  object GroupBox2: TGroupBox
    Left = 728
    Top = 40
    Width = 337
    Height = 73
    Caption = 'Localizar produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    object Edit4: TEdit
      Left = 8
      Top = 24
      Width = 313
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'Insira seu c'#243'digo de Barras Aqui!'
      OnChange = Edit4Change
      OnClick = Edit4Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 728
    Top = 120
    Width = 337
    Height = 57
    Caption = 'Localizar Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    object Edit5: TEdit
      Left = 8
      Top = 16
      Width = 313
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      TabOrder = 0
      Text = 'Insira o Nome do Produto!'
      OnChange = Edit5Change
      OnClick = Edit5Click
    end
  end
  object Edit2: TDateEdit
    Left = 376
    Top = 280
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 15
  end
  object TblAuxEntrada: TIBTable
    Database = UDMDados.DadosConveniencia
    Transaction = UDMDados.IBTrans
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODIGO_BARRAS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PRODUTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftInteger
      end
      item
        Name = 'QUANTIDADEADD'
        DataType = ftInteger
      end
      item
        Name = 'QUANTIDADETOTAL'
        DataType = ftInteger
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PRECO_DE_CUSTO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PERCENTUAL_LUCRO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'LUCRO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PRECO_VENDA'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATA_ENTRADA'
        DataType = ftDate
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CO_PRODUTO'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'ENTRADAMERCADORIAS'
    Left = 736
    Top = 336
    object TblAuxEntradaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
end
