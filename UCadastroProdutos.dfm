object FrmCadastroProdutos: TFrmCadastroProdutos
  Left = 233
  Top = 125
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 577
  ClientWidth = 920
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 112
    Width = 44
    Height = 13
    Caption = 'C'#242'digo '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 200
    Top = 112
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
    Left = 64
    Top = 152
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
  object Label6: TLabel
    Left = 224
    Top = 192
    Width = 116
    Height = 13
    Caption = 'Pre'#231'o de Custo R$.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 64
    Top = 192
    Width = 26
    Height = 13
    Caption = 'Tipo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 416
    Top = 192
    Width = 140
    Height = 13
    Caption = 'Percentual de Lucro.R$:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 56
    Top = 232
    Width = 100
    Height = 13
    Caption = 'Pre'#231'o de Venda.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 56
    Top = 264
    Width = 108
    Height = 13
    Caption = 'Data do Cadastro.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 56
    Top = 304
    Width = 31
    Height = 13
    Caption = 'Obs.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 352
    Top = 152
    Width = 74
    Height = 13
    Caption = 'Quantidade.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 312
    Top = 272
    Width = 74
    Height = 13
    Caption = 'Lucro Total.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 288
    Top = 232
    Width = 114
    Height = 13
    Caption = 'Lucro por Unidade.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 88
    Top = 16
    Width = 430
    Height = 65
    Hint = 
      'Primeiro Registro'#13#10'Registro Anterior'#13#10'Pr'#243'ximo Registro'#13#10'Ultimo R' +
      'egistro'#13#10'Inserir Registro'#13#10'Delete Registro'#13#10'Editar Registro'#13#10'Sal' +
      'var Cadastro'#13#10'Cancelar Edi'#231#227'o'#13#10'Atualizar'
    DataSource = UDMDados.DsCadastroProdutos
    Hints.Strings = (
      'Primeiro Registro'
      'Registro Anterior'
      'Pr'#243'ximo Registro'
      'Ultimo Registro'
      'Inserir Registro'
      'Delete Registro'
      'Editar Registro'
      'Salvar Cadastro'
      'Cancelar Edi'#231#227'o'
      'Atualizar')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = DBNavigator1Click
  end
  object RG: TRadioGroup
    Left = 640
    Top = 232
    Width = 233
    Height = 73
    Caption = 'Ordem de Visualiza'#231#227'o'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'C'#243'digo'
      'Nome')
    ParentFont = False
    TabOrder = 12
    OnClick = RGClick
  end
  object GroupBox1: TGroupBox
    Left = 608
    Top = 96
    Width = 265
    Height = 73
    Caption = 'Pesquisa via Sele'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 24
      Width = 249
      Height = 21
      KeyField = 'CODIGO'
      ListField = 'PRODUTO'
      ListSource = UDMDados.DsCadastroProdutos
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 592
    Top = 32
    Width = 305
    Height = 57
    Caption = 'Pesquisa via Digita'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    object Edit1: TEdit
      Left = 8
      Top = 16
      Width = 281
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'Insira o C'#243'digo de Barras!'
      OnChange = Edit1Change
      OnClick = Edit1Click
    end
  end
  object Button1: TButton
    Left = 400
    Top = 368
    Width = 105
    Height = 41
    Caption = 'Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 368
    Width = 113
    Height = 41
    Caption = 'Novo Cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 256
    Top = 368
    Width = 113
    Height = 41
    Caption = 'Exluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = Button3Click
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 112
    Width = 81
    Height = 21
    DataField = 'CODIGO'
    DataSource = UDMDados.DsCadastroProdutos
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 311
    Top = 109
    Width = 169
    Height = 21
    DataField = 'CODIGO_BARRAS'
    DataSource = UDMDados.DsCadastroProdutos
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 120
    Top = 152
    Width = 209
    Height = 21
    DataField = 'PRODUTO'
    DataSource = UDMDados.DsCadastroProdutos
    MaxLength = 25
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 432
    Top = 152
    Width = 113
    Height = 21
    DataField = 'QUANTIDADE'
    DataSource = UDMDados.DsCadastroProdutos
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 337
    Top = 187
    Width = 73
    Height = 21
    DataField = 'PRECO_DE_CUSTO'
    DataSource = UDMDados.DsCadastroProdutos
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 560
    Top = 184
    Width = 81
    Height = 21
    DataField = 'PERCENTUAL_LUCRO'
    DataSource = UDMDados.DsCadastroProdutos
    TabOrder = 7
    OnExit = DBEdit6Exit
  end
  object DBEdit7: TDBEdit
    Left = 168
    Top = 224
    Width = 105
    Height = 21
    DataField = 'PRECO_VENDA'
    DataSource = UDMDados.DsCadastroProdutos
    TabOrder = 8
    OnExit = DBEdit7Exit
  end
  object DBEdit8: TDBEdit
    Left = 96
    Top = 189
    Width = 121
    Height = 21
    DataField = 'TIPO'
    DataSource = UDMDados.DsCadastroProdutos
    TabOrder = 5
  end
  object DBEdit9: TDBEdit
    Left = 170
    Top = 262
    Width = 121
    Height = 21
    DataField = 'DATA_CADASTRO'
    DataSource = UDMDados.DsCadastroProdutos
    TabOrder = 9
  end
  object DBEdit10: TDBEdit
    Left = 96
    Top = 300
    Width = 457
    Height = 21
    DataField = 'OBS'
    DataSource = UDMDados.DsCadastroProdutos
    TabOrder = 11
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 424
    Width = 593
    Height = 120
    DataSource = UDMDados.DsCadastroProdutos
    TabOrder = 18
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_BARRAS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_DE_CUSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERCENTUAL_LUCRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LUCRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_CADASTRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LUCRO_UNIDADE'
        Visible = True
      end>
  end
  object DBEdit11: TDBEdit
    Left = 395
    Top = 267
    Width = 94
    Height = 21
    DataField = 'LUCRO'
    DataSource = UDMDados.DsCadastroProdutos
    Enabled = False
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 407
    Top = 230
    Width = 95
    Height = 21
    DataField = 'LUCRO_UNIDADE'
    DataSource = UDMDados.DsCadastroProdutos
    Enabled = False
    TabOrder = 19
  end
  object TblAuxProdutos: TIBTable
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
        Size = 50
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftInteger
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PRECO_DE_CUSTO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'PERCENTUAL_LUCRO'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'LUCRO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'PRECO_VENDA'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATA_CADASTRO'
        DataType = ftDate
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LUCRO_UNIDADE'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'IND_PRODUTO'
        Fields = 'CODIGO'
      end
      item
        Name = 'RDB$PRIMARY8'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IND_NOMEPRODUTO'
        Fields = 'PRODUTO'
      end>
    StoreDefs = True
    TableName = 'CADASTROPRODUTOS'
    Left = 64
    Top = 48
    object TblAuxProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object TblAuxProdutosCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 30
    end
    object TblAuxProdutosPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object TblAuxProdutosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object TblAuxProdutosTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object TblAuxProdutosPRECO_DE_CUSTO: TIBBCDField
      FieldName = 'PRECO_DE_CUSTO'
      Precision = 18
      Size = 2
    end
    object TblAuxProdutosPERCENTUAL_LUCRO: TIBBCDField
      FieldName = 'PERCENTUAL_LUCRO'
      Precision = 9
      Size = 2
    end
    object TblAuxProdutosLUCRO: TIBBCDField
      FieldName = 'LUCRO'
      Precision = 18
      Size = 2
    end
    object TblAuxProdutosPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object TblAuxProdutosFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
    end
    object TblAuxProdutosDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object TblAuxProdutosOBS: TIBStringField
      FieldName = 'OBS'
      Size = 50
    end
    object TblAuxProdutosLUCRO_UNIDADE: TIBBCDField
      FieldName = 'LUCRO_UNIDADE'
      Precision = 9
      Size = 2
    end
  end
end
