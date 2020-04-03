unit UDados;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBTable, IBDatabase, IBQuery;

type
  TUDMDados = class(TDataModule)
    DadosConveniencia: TIBDatabase;
    IBTrans: TIBTransaction;
    TblCadastroProdutos: TIBTable;
    DsCadastroProdutos: TDataSource;
    TblEntrada: TIBTable;
    DsEntrada: TDataSource;
    TblEntradaCODIGO: TIntegerField;
    TblEntradaCODIGO_BARRAS: TIBStringField;
    TblEntradaPRODUTO: TIBStringField;
    TblEntradaQUANTIDADE: TIntegerField;
    TblEntradaQUANTIDADEADD: TIntegerField;
    TblEntradaQUANTIDADETOTAL: TIntegerField;
    TblEntradaTIPO: TIBStringField;
    TblEntradaPRECO_DE_CUSTO: TIBBCDField;
    TblEntradaPERCENTUAL_LUCRO: TIBBCDField;
    TblEntradaLUCRO: TIBBCDField;
    TblEntradaPRECO_VENDA: TIBBCDField;
    TblEntradaFORNECEDOR: TIBStringField;
    TblEntradaDATA_ENTRADA: TDateField;
    TblEntradaOBS: TIBStringField;
    TblEntradaCO_PRODUTO: TIBBCDField;
    DSConsultaEntrada: TDataSource;
    SqlConsultaEntrada: TIBQuery;
    SqlConsultaEntradaCODIGO: TIntegerField;
    SqlConsultaEntradaCODIGO_BARRAS: TIBStringField;
    SqlConsultaEntradaPRODUTO: TIBStringField;
    SqlConsultaEntradaQUANTIDADE: TIntegerField;
    SqlConsultaEntradaQUANTIDADEADD: TIntegerField;
    SqlConsultaEntradaQUANTIDADETOTAL: TIntegerField;
    SqlConsultaEntradaTIPO: TIBStringField;
    SqlConsultaEntradaPRECO_DE_CUSTO: TIBBCDField;
    SqlConsultaEntradaPERCENTUAL_LUCRO: TIBBCDField;
    SqlConsultaEntradaLUCRO: TIBBCDField;
    SqlConsultaEntradaPRECO_VENDA: TIBBCDField;
    SqlConsultaEntradaFORNECEDOR: TIBStringField;
    SqlConsultaEntradaDATA_ENTRADA: TDateField;
    SqlConsultaEntradaOBS: TIBStringField;
    SqlConsultaEntradaCO_PRODUTO: TIBBCDField;
    DsConsultaEntradaData: TDataSource;
    SqlConsultaEntradaData: TIBQuery;
    TblUsuarios: TIBTable;
    DsUsuarios: TDataSource;
    TblUsuariosUSU_CODIGO: TIntegerField;
    TblUsuariosUSU_NOME: TIBStringField;
    TblUsuariosUSU_LOGIN: TIBStringField;
    TblUsuariosUSU_SENHA: TIBStringField;
    TblUsuariosUSU_NIVELDEACESSO: TIBStringField;
    TblVenda: TIBTable;
    DsVenda: TDataSource;
    TblVendaSaiProd_CodSaiProduto: TIntegerField;
    TblVendaSaiProd_Data: TDateField;
    TblVendaSaiProd_Produto: TIBStringField;
    TblVendaSaiProd_ValorProduto: TIBBCDField;
    TblVendaSaiProd_Quantidade: TIntegerField;
    TblVendaSaiProd_ValorTotal: TIBBCDField;
    TblVendaSaiProd_Lucro: TIBBCDField;
    SqlFiltroVenda: TIBQuery;
    DsFiltroVenda: TDataSource;
    TblCadastroProdutosCODIGO: TIntegerField;
    TblCadastroProdutosCODIGO_BARRAS: TIBStringField;
    TblCadastroProdutosPRODUTO: TIBStringField;
    TblCadastroProdutosQUANTIDADE: TIntegerField;
    TblCadastroProdutosTIPO: TIBStringField;
    TblCadastroProdutosPRECO_DE_CUSTO: TIBBCDField;
    TblCadastroProdutosPERCENTUAL_LUCRO: TIBBCDField;
    TblCadastroProdutosLUCRO: TIBBCDField;
    TblCadastroProdutosPRECO_VENDA: TIBBCDField;
    TblCadastroProdutosFORNECEDOR: TIBStringField;
    TblCadastroProdutosDATA_CADASTRO: TDateField;
    TblCadastroProdutosOBS: TIBStringField;
    TblCadastroProdutosLUCRO_UNIDADE: TIBBCDField;
    SqlFiltroVendaSaiProd_CodNota: TIntegerField;
    SqlFiltroVendaSaiProd_CodSaiProduto: TIntegerField;
    SqlFiltroVendaSaiProd_Data: TDateField;
    SqlFiltroVendaSaiProd_Produto: TIBStringField;
    SqlFiltroVendaSaiProd_ValorProduto: TIBBCDField;
    SqlFiltroVendaSaiProd_Quantidade: TIntegerField;
    SqlFiltroVendaSaiProd_ValorTotal: TIBBCDField;
    SqlFiltroVendaSaiProd_Lucro: TIBBCDField;
    TblSaida: TIBTable;
    DsSaida: TDataSource;
    TblSaidaSaiPai_codigo: TIntegerField;
    TblSaidaSaiPai_DataVenda: TDateTimeField;
    TblSaidaSaiPai_ValorTotal: TIBBCDField;
    TblSaidaSaiPai_Obs: TIBStringField;
    SqlConsultaSaidaCodigo: TIBQuery;
    DsconsultaSaidaCodigo: TDataSource;
    SqlConsultaSaidaData: TIBQuery;
    SqlConsultaVendaCodBarra: TIBQuery;
    DsConsultaSaidaData: TDataSource;
    SqlConsultaSaidaDataSaiPai_codigo: TIntegerField;
    SqlConsultaSaidaDataSaiPai_DataVenda: TDateTimeField;
    SqlConsultaSaidaDataSaiPai_ValorTotal: TIBBCDField;
    SqlConsultaSaidaDataSaiPai_Obs: TIBStringField;
    DsConsultaVendaCodBarra: TDataSource;
    TblVendaSaiProd_CodBarraProduto: TIBStringField;
    SqlFiltroVendaSaiProd_CodBarraProduto: TIBStringField;
    SqlConsultaVendaNF: TIBQuery;
    DsConsultaVendaNF: TDataSource;
    SqlConsultaVendaNFSaiProd_CodNota: TIntegerField;
    SqlConsultaVendaNFSaiProd_CodSaiProduto: TIntegerField;
    SqlConsultaVendaNFSaiProd_CodBarraProduto: TIBStringField;
    SqlConsultaVendaNFSaiProd_Data: TDateField;
    SqlConsultaVendaNFSaiProd_Produto: TIBStringField;
    SqlConsultaVendaNFSaiProd_ValorProduto: TIBBCDField;
    SqlConsultaVendaNFSaiProd_Quantidade: TIntegerField;
    SqlConsultaVendaNFSaiProd_ValorTotal: TIBBCDField;
    SqlConsultaVendaNFSaiProd_Lucro: TIBBCDField;
    SqlConsultaVendaData: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    DateField1: TDateField;
    IBStringField2: TIBStringField;
    IBBCDField1: TIBBCDField;
    IntegerField3: TIntegerField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    DsConsultaVendaData: TDataSource;
    CONSULTADBCCADASTROPRODUTOS: TIBTable;
    DsDBCCadastroProdutos: TDataSource;
    CONSULTADBCCADASTROPRODUTOSCODIGO: TIntegerField;
    CONSULTADBCCADASTROPRODUTOSCODIGO_BARRAS: TIBStringField;
    CONSULTADBCCADASTROPRODUTOSPRODUTO: TIBStringField;
    CONSULTADBCCADASTROPRODUTOSQUANTIDADE: TIntegerField;
    CONSULTADBCCADASTROPRODUTOSTIPO: TIBStringField;
    CONSULTADBCCADASTROPRODUTOSPRECO_DE_CUSTO: TIBBCDField;
    CONSULTADBCCADASTROPRODUTOSPERCENTUAL_LUCRO: TIBBCDField;
    CONSULTADBCCADASTROPRODUTOSLUCRO: TIBBCDField;
    CONSULTADBCCADASTROPRODUTOSPRECO_VENDA: TIBBCDField;
    CONSULTADBCCADASTROPRODUTOSFORNECEDOR: TIBStringField;
    CONSULTADBCCADASTROPRODUTOSDATA_CADASTRO: TDateField;
    CONSULTADBCCADASTROPRODUTOSOBS: TIBStringField;
    CONSULTADBCCADASTROPRODUTOSLUCRO_UNIDADE: TIBBCDField;
    SqlFiltroLucro: TIBQuery;
    SqlFiltroLucroTOTAL: TIBBCDField;
    DsLucro: TDataSource;
    FiltroLucroSQL: TIBQuery;
    FiltroLucroDs: TDataSource;
    FiltroLucroSQLTOTAL: TIBBCDField;
    TblVendaSaiProd_CodNota: TIntegerField;
    procedure TblVendaSaiProd_CodBarraProdutoValidate(Sender: TField);
    procedure TblVendaSaiProd_QuantidadeValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UDMDados: TUDMDados;

implementation

uses UConsulta;

{$R *.dfm}

procedure TUDMDados.TblVendaSaiProd_CodBarraProdutoValidate(
  Sender: TField);
begin
Udados.UDMDados.Tblvenda.Open;
Udados.UDMDados.Tblvenda.Edit;
udados.UDMDados.TblvendaSaiProd_ValorProduto.Value := Udados.UDMDados.TblCadastroProdutosPRECO_VENDA.Value;
Udados.UDMDados.TblvendaSaiProd_Lucro.Value := Udados.UDMDados.TblCadastroProdutosLUCRO_UNIDADE.Value * udados.UDMDados.TblvendaSaiProd_Quantidade.Value;
//Udados.UDMDados.Tblvenda.OPEN;
Udados.UDMDados.TblvendaSaiProd_ValorTotal.Value := udados.UDMDados.TblvendaSaiProd_Quantidade.Value * Udados.UDMDados.TblCadastroProdutosPRECO_VENDA.Value;
 end;

procedure TUDMDados.TblVendaSaiProd_QuantidadeValidate(Sender: TField);
begin

//Udados.UDMDados.TblvendaSaiProd_ValorTotal.Value := udados.UDMDados.TblvendaSaiProd_Quantidade.Value * Udados.UDMDados.TblCadastroProdutosPRECO_DE_CUSTO.Value;
END;
end.
