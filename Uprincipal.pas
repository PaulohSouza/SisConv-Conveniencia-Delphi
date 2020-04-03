unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, jpeg, ExtCtrls, StdCtrls, Menus, Buttons, RXClock  ;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Conveniencia1: TMenuItem;
    Entrada1: TMenuItem;
    N1: TMenuItem;
    Saida1: TMenuItem;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    N2: TMenuItem;
    Usuarios1: TMenuItem;
    N3: TMenuItem;
    Fornecedor1: TMenuItem;
    Relatrios1: TMenuItem;
    EntradadeMercadorias1: TMenuItem;
    N4: TMenuItem;
    VendadeProdutos1: TMenuItem;
    N5: TMenuItem;
    Estoque1: TMenuItem;
    Programa1: TMenuItem;
    SobreoPrograma1: TMenuItem;
    Label1: TLabel;
    Image1: TImage;
    SpeedButton3: TSpeedButton;
    StatusBar1: TStatusBar;
    Consulta1: TMenuItem;
    EntradadeMercadorias2: TMenuItem;
    N6: TMenuItem;
    PorCodigo1: TMenuItem;
    N7: TMenuItem;
    PorData1: TMenuItem;
    otaldeVendas1: TMenuItem;
    PorCodigo2: TMenuItem;
    N8: TMenuItem;
    PorData2: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    TotaldeVendas2: TMenuItem;
    ProdutosVendidos1: TMenuItem;
    N11: TMenuItem;
    CodigodeBarras1: TMenuItem;
    N12: TMenuItem;
    NotaFiscal1: TMenuItem;
    N13: TMenuItem;
    Data1: TMenuItem;
    N14: TMenuItem;
    USUARIOS2: TMenuItem;
    RxClock1: TRxClock;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PorData1Click(Sender: TObject);
    procedure PorCodigo1Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure PorCodigo2Click(Sender: TObject);
    procedure PorData2Click(Sender: TObject);
    procedure EntradadeMercadorias1Click(Sender: TObject);
    procedure TotaldeVendas2Click(Sender: TObject);
    procedure VendadeProdutos1Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    procedure CodigodeBarras1Click(Sender: TObject);
    procedure NotaFiscal1Click(Sender: TObject);
    procedure Data1Click(Sender: TObject);
    procedure USUARIOS2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Entrada1Click(Sender: TObject);
    procedure Saida1Click(Sender: TObject);
  private
    { Private declarations }
    
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses UCadastroProdutos, UEntrada, UConsulta, UDados,
  URelEntradaPesquisaData, UCadastroUsuarios, UVendas,
  UConsultaVendaCodigo, UConsultaSaidadata, UFrmRelEntradaGeral,
  URelSaidaGeral, URelVendaGeral, URelEstoque, UConsultaVendaCodBarra,
  UConsultaVendaCodNF, UConsultaVEndaDAta, URelUsuarios;

{$R *.dfm}

procedure TFrmPrincipal.SpeedButton3Click(Sender: TObject);
VAR
FrmCadastroProdutos:TFrmCadastroProdutos;
begin
FrmCadastroProdutos:=TFrmCadastroProdutos.Create(Self);
Try
FrmCadastroProdutos.ShowModal;
Finally
FrmCadastroProdutos.Free;

end;
              end;
     procedure TFrmPrincipal.SpeedButton1Click(Sender: TObject);
var
FrmEntrada:TFrmEntrada;
begin
FrmEntrada:=TFrmEntrada.Create(Self);
Try
FrmEntrada.ShowModal;
Finally
FrmEntrada.Free;

end;
  end;

procedure TFrmPrincipal.PorData1Click(Sender: TObject);
var
FrmConsultaEntradaData: TFrmConsultaEntradaData;
begin
FrmConsultaEntradaData:=TFrmConsultaEntradaData.Create(Self);
Try
FrmConsultaEntradaData.ShowModal;
Finally
FrmConsultaEntradaData.Free;
end;
         end;

procedure TFrmPrincipal.PorCodigo1Click(Sender: TObject);
var
FrmConsultaEntrada: TFrmConsultaEntrada;
begin
FrmConsultaEntrada:=TFrmConsultaEntrada.Create(Self);
Try
FrmConsultaEntrada.ShowModal;
Finally
FrmConsultaEntrada.Free;
end;
         end;
procedure TFrmPrincipal.Usuarios1Click(Sender: TObject);
var
FrmCadastroUsuarios:TFrmCadastroUsuarios;
begin
FrmCadastroUsuarios:=TFrmCadastroUsuarios.Create(Self);
Try
FrmCadastroUsuarios.ShowModal;
Finally
FrmCadastroUsuarios.Free;

end;

end;

procedure TFrmPrincipal.SpeedButton2Click(Sender: TObject);
var
FrmVendas:TFrmVendas;
begin
FrmVendas:=TFrmVendas.Create(Self);
Try
FrmVendas.ShowModal;
Finally
FrmVendas.Free;
end;


end;

procedure TFrmPrincipal.PorCodigo2Click(Sender: TObject);
var
FrmConsultaSaidaCodigo:TFrmConsultaSaidaCodigo;
begin
FrmConsultaSaidaCodigo:=TFrmConsultaSaidaCodigo.Create(Self);
Try
FrmConsultaSaidaCodigo.ShowModal;
Finally
FrmConsultaSaidaCodigo.Free;
end;

end;
procedure TFrmPrincipal.PorData2Click(Sender: TObject);
var
FrmConsultaSaidaData:TFrmConsultaSaidaData;
begin
FrmConsultaSaidaData:=TFrmConsultaSaidaData.Create(Self);
Try
FrmConsultaSaidaData.ShowModal;
Finally
FrmConsultaSaidaData.Free;
end;

end;

procedure TFrmPrincipal.EntradadeMercadorias1Click(Sender: TObject);
var
FrmRelEntradaGeral:TFrmRelEntradaGeral;
begin
FrmRelEntradaGeral:=TFrmRelEntradaGeral.Create(Self);
Try
FrmRelEntradaGeral.QuickRep1.Preview;
Finally
FrmRelEntradaGeral.Free;
end;

end;

procedure TFrmPrincipal.TotaldeVendas2Click(Sender: TObject);
var
FrmRelSaidaGeral:TFrmRelSaidaGeral;
begin
FrmRelSaidaGeral:=TFrmRelSaidaGeral.Create(Self);
Try
FrmRelSaidaGeral.QuickRep1.Preview;
Finally
FrmRelSaidaGeral.Free;
end;

end;

procedure TFrmPrincipal.VendadeProdutos1Click(Sender: TObject);
var
FrmRelVendageral:TFrmRelVendageral;
begin
FrmRelVendageral:=TFrmRelVendageral.Create(Self);
Try
FrmRelVendageral.QuickRep1.Preview;
Finally
FrmRelVendageral.Free;
end;

end;

procedure TFrmPrincipal.Estoque1Click(Sender: TObject);
var
FrmrelEstoque:TFrmrelEstoque;
begin
FrmrelEstoque:=TFrmrelEstoque.Create(Self);
Try
FrmrelEstoque.QuickRep1.Preview;
Finally
FrmrelEstoque.Free;
end;

end;

procedure TFrmPrincipal.CodigodeBarras1Click(Sender: TObject);
var
FrmConsultaVEndaCodBarras:TFrmConsultaVEndaCodBarras;
begin
FrmConsultaVEndaCodBarras:=TFrmConsultaVEndaCodBarras.Create(Self);
Try
FrmConsultaVEndaCodBarras.ShowModal;
Finally
FrmConsultaVEndaCodBarras.Free;

end;
  end;
procedure TFrmPrincipal.NotaFiscal1Click(Sender: TObject);
var
FrmConsultaVEndaNF:TFrmConsultaVEndaNF;
begin
FrmConsultaVEndaNF:=TFrmConsultaVEndaNF.Create(Self);
Try
FrmConsultaVEndaNF.ShowModal;
Finally
FrmConsultaVEndaNF.Free;
   end;
end;

procedure TFrmPrincipal.Data1Click(Sender: TObject);
var
FrmConsultaVendaData:TFrmConsultaVendaData;
begin
FrmConsultaVEndaData:=FrmConsultaVEndaData.Create(Self);
Try
FrmConsultaVEndaData.ShowModal;
Finally
FrmConsultaVEndaData.Free;
   end;
end;

procedure TFrmPrincipal.USUARIOS2Click(Sender: TObject);
var
FrmRelUsuarios:TFrmRelUsuarios;
begin
FrmRelUsuarios:=TFrmRelUsuarios.Create(Self);
Try
FrmRelUsuarios.QuickRep1.Preview;
Finally
FrmRelUsuarios.Free;
end;

end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
UDADOS.UDMDados.TblCadastroProdutos.Open;
UDADOS.UDMDados.TblEntrada.Open;
uDADOS.UDMDados.TblSaida.Open;
uDADOS.UDMDados.TblVenda.Open;

end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
UDADOS.UDMDados.TblCadastroProdutos.oPEN;;
UDADOS.UDMDados.TblCadastroProdutos.EDIT;
UDADOS.UDMDados.TblCadastroProdutos.poST;
UDADOS.UDMDados.TblCadastroProdutos.cLOSE;

UDADOS.UDMDados.TblEntrada.OPEN;
UDADOS.UDMDados.TblEntrada.eDIT;
UDADOS.UDMDados.TblEntrada.POST;
UDADOS.UDMDados.TblEntrada.cLOSE;

uDADOS.UDMDados.TblSaida.OPEN;
uDADOS.UDMDados.TblSaida.eDIT;
uDADOS.UDMDados.TblSaida.pOST;
uDADOS.UDMDados.TblSaida.cLOSE;

uDADOS.UDMDados.TblVenda.OPEN;
uDADOS.UDMDados.TblVenda.EDIT;
uDADOS.UDMDados.TblVenda.POST;
uDADOS.UDMDados.TblVenda.cLOSE;

end;

procedure TFrmPrincipal.Entrada1Click(Sender: TObject);
var
FrmEntrada:TFrmEntrada;
begin
FrmEntrada:=TFrmEntrada.Create(Self);
Try
FrmEntrada.ShowModal;
Finally
FrmEntrada.Free;

end;
  end;

procedure TFrmPrincipal.Saida1Click(Sender: TObject);
var
FrmVendas:TFrmVendas;
begin
FrmVendas:=TFrmVendas.Create(Self);
Try
FrmVendas.ShowModal;
Finally
FrmVendas.Free;

end;
end;

end.
