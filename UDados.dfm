object UDMDados: TUDMDados
  OldCreateOrder = False
  Left = 261
  Top = 174
  Height = 528
  Width = 923
  object DadosConveniencia: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Sistema Conveniencia\CONVENIENCIA.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTrans
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 40
    Top = 16
  end
  object IBTrans: TIBTransaction
    Active = True
    DefaultDatabase = DadosConveniencia
    AutoStopAction = saNone
    Left = 144
    Top = 16
  end
  object TblCadastroProdutos: TIBTable
    Database = DadosConveniencia
    Transaction = IBTrans
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
    Left = 40
    Top = 80
    object TblCadastroProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object TblCadastroProdutosCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 30
    end
    object TblCadastroProdutosPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object TblCadastroProdutosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object TblCadastroProdutosTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object TblCadastroProdutosPRECO_DE_CUSTO: TIBBCDField
      FieldName = 'PRECO_DE_CUSTO'
      Precision = 18
      Size = 2
    end
    object TblCadastroProdutosPERCENTUAL_LUCRO: TIBBCDField
      FieldName = 'PERCENTUAL_LUCRO'
      Precision = 9
      Size = 2
    end
    object TblCadastroProdutosLUCRO: TIBBCDField
      FieldName = 'LUCRO'
      Precision = 18
      Size = 2
    end
    object TblCadastroProdutosPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object TblCadastroProdutosFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
    end
    object TblCadastroProdutosDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object TblCadastroProdutosOBS: TIBStringField
      FieldName = 'OBS'
      Size = 50
    end
    object TblCadastroProdutosLUCRO_UNIDADE: TIBBCDField
      FieldName = 'LUCRO_UNIDADE'
      Precision = 9
      Size = 2
    end
  end
  object DsCadastroProdutos: TDataSource
    DataSet = TblCadastroProdutos
    Left = 152
    Top = 80
  end
  object TblEntrada: TIBTable
    Database = DadosConveniencia
    Transaction = IBTrans
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
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'PERCENTUAL_LUCRO'
        DataType = ftBCD
        Precision = 18
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
        Name = 'RDB$PRIMARY6'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'ENTRADAMERCADORIAS'
    Left = 40
    Top = 152
    object TblEntradaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object TblEntradaCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 30
    end
    object TblEntradaPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 30
    end
    object TblEntradaQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object TblEntradaQUANTIDADEADD: TIntegerField
      FieldName = 'QUANTIDADEADD'
    end
    object TblEntradaQUANTIDADETOTAL: TIntegerField
      FieldName = 'QUANTIDADETOTAL'
    end
    object TblEntradaTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object TblEntradaPRECO_DE_CUSTO: TIBBCDField
      FieldName = 'PRECO_DE_CUSTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object TblEntradaPERCENTUAL_LUCRO: TIBBCDField
      FieldName = 'PERCENTUAL_LUCRO'
      Precision = 18
      Size = 2
    end
    object TblEntradaLUCRO: TIBBCDField
      FieldName = 'LUCRO'
      currency = True
      Precision = 18
      Size = 2
    end
    object TblEntradaPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 18
      Size = 2
    end
    object TblEntradaFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
    end
    object TblEntradaDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object TblEntradaOBS: TIBStringField
      FieldName = 'OBS'
      Size = 50
    end
    object TblEntradaCO_PRODUTO: TIBBCDField
      FieldName = 'CO_PRODUTO'
      Precision = 9
      Size = 2
    end
  end
  object DsEntrada: TDataSource
    DataSet = TblEntrada
    Left = 144
    Top = 152
  end
  object DSConsultaEntrada: TDataSource
    DataSet = SqlConsultaEntrada
    Left = 144
    Top = 216
  end
  object SqlConsultaEntrada: TIBQuery
    Database = DadosConveniencia
    Transaction = IBTrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ENTRADAMERCADORIAS where CODIGO'
      '> :codini and CODIGO < :codfinal')
    Left = 40
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codini'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'codfinal'
        ParamType = ptUnknown
      end>
    object SqlConsultaEntradaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ENTRADAMERCADORIAS.CODIGO'
      Required = True
    end
    object SqlConsultaEntradaCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'ENTRADAMERCADORIAS.CODIGO_BARRAS'
      Size = 30
    end
    object SqlConsultaEntradaPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = 'ENTRADAMERCADORIAS.PRODUTO'
      Size = 30
    end
    object SqlConsultaEntradaQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'ENTRADAMERCADORIAS.QUANTIDADE'
    end
    object SqlConsultaEntradaQUANTIDADEADD: TIntegerField
      FieldName = 'QUANTIDADEADD'
      Origin = 'ENTRADAMERCADORIAS.QUANTIDADEADD'
    end
    object SqlConsultaEntradaQUANTIDADETOTAL: TIntegerField
      FieldName = 'QUANTIDADETOTAL'
      Origin = 'ENTRADAMERCADORIAS.QUANTIDADETOTAL'
    end
    object SqlConsultaEntradaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'ENTRADAMERCADORIAS.TIPO'
      Size = 15
    end
    object SqlConsultaEntradaPRECO_DE_CUSTO: TIBBCDField
      FieldName = 'PRECO_DE_CUSTO'
      Origin = 'ENTRADAMERCADORIAS.PRECO_DE_CUSTO'
      Precision = 18
      Size = 2
    end
    object SqlConsultaEntradaPERCENTUAL_LUCRO: TIBBCDField
      FieldName = 'PERCENTUAL_LUCRO'
      Origin = 'ENTRADAMERCADORIAS.PERCENTUAL_LUCRO'
      Precision = 18
      Size = 2
    end
    object SqlConsultaEntradaLUCRO: TIBBCDField
      FieldName = 'LUCRO'
      Origin = 'ENTRADAMERCADORIAS.LUCRO'
      Precision = 18
      Size = 2
    end
    object SqlConsultaEntradaPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'ENTRADAMERCADORIAS.PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object SqlConsultaEntradaFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = 'ENTRADAMERCADORIAS.FORNECEDOR'
    end
    object SqlConsultaEntradaDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      Origin = 'ENTRADAMERCADORIAS.DATA_ENTRADA'
    end
    object SqlConsultaEntradaOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'ENTRADAMERCADORIAS.OBS'
      Size = 50
    end
    object SqlConsultaEntradaCO_PRODUTO: TIBBCDField
      FieldName = 'CO_PRODUTO'
      Origin = 'ENTRADAMERCADORIAS.CO_PRODUTO'
      Precision = 9
      Size = 2
    end
  end
  object DsConsultaEntradaData: TDataSource
    DataSet = SqlConsultaEntradaData
    Left = 152
    Top = 288
  end
  object SqlConsultaEntradaData: TIBQuery
    Database = DadosConveniencia
    Transaction = IBTrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ENTRADAMERCADORIAS where DATA_ENTRADA'
      '>= :codini and DATA_ENTRADA <= :codfinal')
    Left = 40
    Top = 288
    ParamData = <
      item
        DataType = ftDate
        Name = 'codini'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'codfinal'
        ParamType = ptUnknown
      end>
  end
  object TblUsuarios: TIBTable
    Database = DadosConveniencia
    Transaction = IBTrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'USU_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'USU_NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'USU_LOGIN'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'USU_SENHA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'USU_NIVEL DE ACESSO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY9'
        Fields = 'USU_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IND_USU_CODIGO'
        Fields = 'USU_CODIGO'
      end
      item
        Name = 'IND_USU_NOME'
        Fields = 'USU_NOME'
      end>
    IndexName = 'IND_USU_CODIGO'
    StoreDefs = True
    TableName = 'USUARIOS'
    Left = 40
    Top = 352
    object TblUsuariosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object TblUsuariosUSU_NOME: TIBStringField
      FieldName = 'USU_NOME'
      Size = 30
    end
    object TblUsuariosUSU_LOGIN: TIBStringField
      FieldName = 'USU_LOGIN'
      Size = 30
    end
    object TblUsuariosUSU_SENHA: TIBStringField
      FieldName = 'USU_SENHA'
      Size = 25
    end
    object TblUsuariosUSU_NIVELDEACESSO: TIBStringField
      FieldName = 'USU_NIVEL DE ACESSO'
      Size = 1
    end
  end
  object DsUsuarios: TDataSource
    DataSet = TblUsuarios
    Left = 152
    Top = 344
  end
  object TblVenda: TIBTable
    Database = DadosConveniencia
    Transaction = IBTrans
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
    Left = 40
    Top = 416
    object TblVendaSaiProd_CodSaiProduto: TIntegerField
      FieldName = 'SaiProd_CodSaiProduto'
      Required = True
    end
    object TblVendaSaiProd_Data: TDateField
      FieldName = 'SaiProd_Data'
    end
    object TblVendaSaiProd_Produto: TIBStringField
      FieldName = 'SaiProd_Produto'
      Size = 50
    end
    object TblVendaSaiProd_ValorProduto: TIBBCDField
      FieldName = 'SaiProd_ValorProduto'
      OnValidate = TblVendaSaiProd_QuantidadeValidate
      currency = True
      Precision = 9
      Size = 2
    end
    object TblVendaSaiProd_Quantidade: TIntegerField
      FieldName = 'SaiProd_Quantidade'
      OnValidate = TblVendaSaiProd_QuantidadeValidate
    end
    object TblVendaSaiProd_Lucro: TIBBCDField
      FieldName = 'SaiProd_Lucro'
      currency = True
      Precision = 9
      Size = 2
    end
    object TblVendaSaiProd_ValorTotal: TIBBCDField
      FieldName = 'SaiProd_ValorTotal'
      currency = True
      Precision = 9
      Size = 2
    end
    object TblVendaSaiProd_CodBarraProduto: TIBStringField
      FieldName = 'SaiProd_CodBarraProduto'
      OnValidate = TblVendaSaiProd_CodBarraProdutoValidate
      Size = 30
    end
    object TblVendaSaiProd_CodNota: TIntegerField
      FieldName = 'SaiProd_CodNota'
    end
  end
  object DsVenda: TDataSource
    DataSet = TblVenda
    Left = 152
    Top = 416
  end
  object SqlFiltroVenda: TIBQuery
    Database = DadosConveniencia
    Transaction = IBTrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * From TABELAVENDA where  "SaiProd_CodNota" = :codnota')
    Left = 312
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codnota'
        ParamType = ptUnknown
      end>
    object SqlFiltroVendaSaiProd_CodNota: TIntegerField
      FieldName = 'SaiProd_CodNota'
      Origin = 'TABELAVENDA.SaiProd_CodNota'
      Required = True
    end
    object SqlFiltroVendaSaiProd_CodSaiProduto: TIntegerField
      FieldName = 'SaiProd_CodSaiProduto'
      Origin = 'TABELAVENDA.SaiProd_CodSaiProduto'
      Required = True
    end
    object SqlFiltroVendaSaiProd_Data: TDateField
      FieldName = 'SaiProd_Data'
      Origin = 'TABELAVENDA.SaiProd_Data'
    end
    object SqlFiltroVendaSaiProd_Produto: TIBStringField
      FieldName = 'SaiProd_Produto'
      Origin = 'TABELAVENDA.SaiProd_Produto'
      Size = 50
    end
    object SqlFiltroVendaSaiProd_ValorProduto: TIBBCDField
      FieldName = 'SaiProd_ValorProduto'
      Origin = 'TABELAVENDA.SaiProd_ValorProduto'
      Precision = 9
      Size = 2
    end
    object SqlFiltroVendaSaiProd_Quantidade: TIntegerField
      FieldName = 'SaiProd_Quantidade'
      Origin = 'TABELAVENDA.SaiProd_Quantidade'
    end
    object SqlFiltroVendaSaiProd_ValorTotal: TIBBCDField
      FieldName = 'SaiProd_ValorTotal'
      Origin = 'TABELAVENDA.SaiProd_ValorTotal'
      Precision = 9
      Size = 2
    end
    object SqlFiltroVendaSaiProd_Lucro: TIBBCDField
      FieldName = 'SaiProd_Lucro'
      Origin = 'TABELAVENDA.SaiProd_Lucro'
      Precision = 9
      Size = 2
    end
    object SqlFiltroVendaSaiProd_CodBarraProduto: TIBStringField
      FieldName = 'SaiProd_CodBarraProduto'
      Origin = 'TABELAVENDA.SaiProd_CodBarraProduto'
      Required = True
      Size = 30
    end
  end
  object DsFiltroVenda: TDataSource
    DataSet = SqlFiltroVenda
    Left = 408
    Top = 32
  end
  object TblSaida: TIBTable
    Database = DadosConveniencia
    Transaction = IBTrans
    ObjectView = True
    Active = True
    BufferChunks = 1000
    CachedUpdates = True
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
    Left = 312
    Top = 112
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
    Left = 400
    Top = 104
  end
  object SqlConsultaSaidaCodigo: TIBQuery
    Database = DadosConveniencia
    Transaction = IBTrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * From "Saida_Pai" where  "SaiPai_codigo"'
      '> :codini and "SaiPai_codigo"  < :codfinal'
      '')
    Left = 328
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codfinal'
        ParamType = ptUnknown
      end>
  end
  object DsconsultaSaidaCodigo: TDataSource
    DataSet = SqlConsultaSaidaCodigo
    Left = 432
    Top = 176
  end
  object SqlConsultaSaidaData: TIBQuery
    Database = DadosConveniencia
    Transaction = IBTrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * From "Saida_Pai" where  "SaiPai_DataVenda"'
      '> :codini and  "SaiPai_DataVenda"  < :codfinal'
      '')
    Left = 328
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codfinal'
        ParamType = ptUnknown
      end>
    object SqlConsultaSaidaDataSaiPai_codigo: TIntegerField
      FieldName = 'SaiPai_codigo'
      Origin = 'Saida_Pai.SaiPai_codigo'
      Required = True
    end
    object SqlConsultaSaidaDataSaiPai_DataVenda: TDateTimeField
      FieldName = 'SaiPai_DataVenda'
      Origin = 'Saida_Pai.SaiPai_DataVenda'
      Required = True
    end
    object SqlConsultaSaidaDataSaiPai_ValorTotal: TIBBCDField
      FieldName = 'SaiPai_ValorTotal'
      Origin = 'Saida_Pai.SaiPai_ValorTotal'
      Precision = 18
      Size = 2
    end
    object SqlConsultaSaidaDataSaiPai_Obs: TIBStringField
      FieldName = 'SaiPai_Obs'
      Origin = 'Saida_Pai.SaiPai_Obs'
      Size = 150
    end
  end
  object SqlConsultaVendaCodBarra: TIBQuery
    Database = DadosConveniencia
    Transaction = IBTrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * From "TABELAVENDA" where  "SaiProd_CodBarraProduto"'
      '= :codbarra'
      '')
    Left = 328
    Top = 312
    ParamData = <
      item
        DataType = ftString
        Name = 'codbarra'
        ParamType = ptUnknown
      end>
  end
  object DsConsultaSaidaData: TDataSource
    DataSet = SqlConsultaSaidaData
    Left = 432
    Top = 240
  end
  object DsConsultaVendaCodBarra: TDataSource
    DataSet = SqlConsultaVendaCodBarra
    Left = 456
    Top = 312
  end
  object SqlConsultaVendaNF: TIBQuery
    Database = DadosConveniencia
    Transaction = IBTrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * From "TABELAVENDA" where  "SaiProd_CodNota"'
      '= :codnota'
      '')
    Left = 336
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codnota'
        ParamType = ptUnknown
      end>
    object SqlConsultaVendaNFSaiProd_CodNota: TIntegerField
      FieldName = 'SaiProd_CodNota'
      Origin = 'TABELAVENDA.SaiProd_CodNota'
      Required = True
    end
    object SqlConsultaVendaNFSaiProd_CodSaiProduto: TIntegerField
      FieldName = 'SaiProd_CodSaiProduto'
      Origin = 'TABELAVENDA.SaiProd_CodSaiProduto'
      Required = True
    end
    object SqlConsultaVendaNFSaiProd_CodBarraProduto: TIBStringField
      FieldName = 'SaiProd_CodBarraProduto'
      Origin = 'TABELAVENDA.SaiProd_CodBarraProduto'
      Required = True
      Size = 30
    end
    object SqlConsultaVendaNFSaiProd_Data: TDateField
      FieldName = 'SaiProd_Data'
      Origin = 'TABELAVENDA.SaiProd_Data'
    end
    object SqlConsultaVendaNFSaiProd_Produto: TIBStringField
      FieldName = 'SaiProd_Produto'
      Origin = 'TABELAVENDA.SaiProd_Produto'
      Size = 50
    end
    object SqlConsultaVendaNFSaiProd_ValorProduto: TIBBCDField
      FieldName = 'SaiProd_ValorProduto'
      Origin = 'TABELAVENDA.SaiProd_ValorProduto'
      Precision = 9
      Size = 2
    end
    object SqlConsultaVendaNFSaiProd_Quantidade: TIntegerField
      FieldName = 'SaiProd_Quantidade'
      Origin = 'TABELAVENDA.SaiProd_Quantidade'
    end
    object SqlConsultaVendaNFSaiProd_ValorTotal: TIBBCDField
      FieldName = 'SaiProd_ValorTotal'
      Origin = 'TABELAVENDA.SaiProd_ValorTotal'
      Precision = 9
      Size = 2
    end
    object SqlConsultaVendaNFSaiProd_Lucro: TIBBCDField
      FieldName = 'SaiProd_Lucro'
      Origin = 'TABELAVENDA.SaiProd_Lucro'
      Precision = 9
      Size = 2
    end
  end
  object DsConsultaVendaNF: TDataSource
    DataSet = SqlConsultaVendaNF
    Left = 432
    Top = 376
  end
  object SqlConsultaVendaData: TIBQuery
    Database = DadosConveniencia
    Transaction = IBTrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TABELAVENDA where "SaiProd_Data"'
      '>= :codini and "SaiProd_Data" <= :codfinal'
      '')
    Left = 552
    Top = 40
    ParamData = <
      item
        DataType = ftDate
        Name = 'codini'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'codfinal'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'SaiProd_CodNota'
      Origin = 'TABELAVENDA.SaiProd_CodNota'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'SaiProd_CodSaiProduto'
      Origin = 'TABELAVENDA.SaiProd_CodSaiProduto'
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'SaiProd_CodBarraProduto'
      Origin = 'TABELAVENDA.SaiProd_CodBarraProduto'
      Required = True
      Size = 30
    end
    object DateField1: TDateField
      FieldName = 'SaiProd_Data'
      Origin = 'TABELAVENDA.SaiProd_Data'
    end
    object IBStringField2: TIBStringField
      FieldName = 'SaiProd_Produto'
      Origin = 'TABELAVENDA.SaiProd_Produto'
      Size = 50
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'SaiProd_ValorProduto'
      Origin = 'TABELAVENDA.SaiProd_ValorProduto'
      Precision = 9
      Size = 2
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'SaiProd_Lucro'
      Origin = 'TABELAVENDA.SaiProd_Lucro'
      Precision = 9
      Size = 2
    end
    object IntegerField3: TIntegerField
      FieldName = 'SaiProd_Quantidade'
      Origin = 'TABELAVENDA.SaiProd_Quantidade'
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'SaiProd_ValorTotal'
      Origin = 'TABELAVENDA.SaiProd_ValorTotal'
      Precision = 9
      Size = 2
    end
  end
  object DsConsultaVendaData: TDataSource
    DataSet = SqlConsultaVendaData
    Left = 680
    Top = 40
  end
  object CONSULTADBCCADASTROPRODUTOS: TIBTable
    Database = DadosConveniencia
    Transaction = IBTrans
    Active = True
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
    Left = 552
    Top = 104
    object CONSULTADBCCADASTROPRODUTOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CONSULTADBCCADASTROPRODUTOSCODIGO_BARRAS: TIBStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 30
    end
    object CONSULTADBCCADASTROPRODUTOSPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object CONSULTADBCCADASTROPRODUTOSQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object CONSULTADBCCADASTROPRODUTOSTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object CONSULTADBCCADASTROPRODUTOSPRECO_DE_CUSTO: TIBBCDField
      FieldName = 'PRECO_DE_CUSTO'
      Precision = 18
      Size = 2
    end
    object CONSULTADBCCADASTROPRODUTOSPERCENTUAL_LUCRO: TIBBCDField
      FieldName = 'PERCENTUAL_LUCRO'
      Precision = 9
      Size = 2
    end
    object CONSULTADBCCADASTROPRODUTOSLUCRO: TIBBCDField
      FieldName = 'LUCRO'
      Precision = 18
      Size = 2
    end
    object CONSULTADBCCADASTROPRODUTOSPRECO_VENDA: TIBBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object CONSULTADBCCADASTROPRODUTOSFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
    end
    object CONSULTADBCCADASTROPRODUTOSDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object CONSULTADBCCADASTROPRODUTOSOBS: TIBStringField
      FieldName = 'OBS'
      Size = 50
    end
    object CONSULTADBCCADASTROPRODUTOSLUCRO_UNIDADE: TIBBCDField
      FieldName = 'LUCRO_UNIDADE'
      Precision = 9
      Size = 2
    end
  end
  object DsDBCCadastroProdutos: TDataSource
    DataSet = CONSULTADBCCADASTROPRODUTOS
    Left = 680
    Top = 112
  end
  object SqlFiltroLucro: TIBQuery
    Database = DadosConveniencia
    Transaction = IBTrans
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
  object FiltroLucroSQL: TIBQuery
    Database = DadosConveniencia
    Transaction = IBTrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select SUM("SaiProd_Lucro") as Total From TABELAVENDA where  "Sa' +
        'iProd_CodNota" = :codnota ')
    Left = 546
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codnota'
        ParamType = ptUnknown
      end>
    object FiltroLucroSQLTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object FiltroLucroDs: TDataSource
    DataSet = FiltroLucroSQL
    Left = 640
    Top = 184
  end
end
