program Conveniencia;

uses
  Forms,
  Uprincipal in 'Uprincipal.pas' {FrmPrincipal},
  UCadastroProdutos in 'UCadastroProdutos.pas' {FrmCadastroProdutos},
  UEntrada in 'UEntrada.pas' {FrmEntrada},
  USaida in 'USaida.pas' {FrmSaida},
  UDados in 'UDados.pas' {UDMDados: TDataModule},
  URelEntrada in 'URelEntrada.pas' {FrmRelEntrada},
  UConsulta in 'UConsulta.pas' {FrmConsultaEntrada},
  URelEntradaPesquisaCodigo in 'URelEntradaPesquisaCodigo.pas' {FrmRelEntradaPesquisa},
  URelEntradaPesquisaData in 'URelEntradaPesquisaData.pas' {FrmConsultaEntradaData},
  URelEntradaPesquisaData2 in 'URelEntradaPesquisaData2.pas' {FrmRelEntradaData},
  UCadastroUsuarios in 'UCadastroUsuarios.pas' {FrmCadastroUsuarios},
  ULogin in 'ULogin.pas' {FrmLogin},
  UVendas in 'UVendas.pas' {FrmVendas},
  UConsultaVendaCodigo in 'UConsultaVendaCodigo.pas' {FrmCOnsultaSaidaCodigo},
  URelSaidaCodigo in 'URelSaidaCodigo.pas' {FrmRelSaidaCodigo},
  UFrmRelSaidaData in 'UFrmRelSaidaData.pas' {FrmRelSaidaData},
  UConsultaSaidadata in 'UConsultaSaidadata.pas' {FrmConsultaSaidaData},
  UFrmRelEntradaGeral in 'UFrmRelEntradaGeral.pas' {FrmRelEntradaGeral},
  URelSaidaGeral in 'URelSaidaGeral.pas' {FrmRelSaidaGeral},
  URelVendaGeral in 'URelVendaGeral.pas' {FrmRelVendaGeral},
  URelEstoque in 'URelEstoque.pas' {FrmRelEstoque},
  UConsultaVendaCodBarra in 'UConsultaVendaCodBarra.pas' {FrmConsultaVendaCodBarras},
  URelVendaCodbarra in 'URelVendaCodbarra.pas' {FrmRelVendaCodBarra},
  UConsultaVendaCodNF in 'UConsultaVendaCodNF.pas' {FrmConsultaVendaNF},
  URelVendaNF in 'URelVendaNF.pas' {FrmRelVendaNF},
  UConsultaVEndaDAta in 'UConsultaVEndaDAta.pas' {FrmConsultaVendaDAta},
  URelVendaData in 'URelVendaData.pas' {FrmRelVendaData},
  URelUsuarios in 'URelUsuarios.pas' {FrmRelUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TUDMDados, UDMDados);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
