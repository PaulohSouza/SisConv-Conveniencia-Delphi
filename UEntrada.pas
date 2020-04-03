unit UEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Mask, Buttons, DB,
  IBCustomDataSet, IBTable, ToolEdit;

type
  TFrmEntrada = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit3: TEdit;
    Label10: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    DBNavigator1: TDBNavigator;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    SpeedButton1: TSpeedButton;
    Label12: TLabel;
    TblAuxEntrada: TIBTable;
    TblAuxEntradaCODIGO: TIntegerField;
    Edit1: TEdit;
    Button1: TButton;
    Label13: TLabel;
    Label14: TLabel;
    GroupBox2: TGroupBox;
    Edit4: TEdit;
    GroupBox3: TGroupBox;
    Edit5: TEdit;
    SpeedButton2: TSpeedButton;
    Edit2: TDateEdit;
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit5Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEntrada: TFrmEntrada;

implementation

uses UCadastroProdutos, UDados, URelEntrada;

{$R *.dfm}

procedure TFrmEntrada.Button3Click(Sender: TObject);
var
QuantidadeNova :String;
QuantidadeAtualizada: Integer;
   begin
If (Edit3.Text = '') or  (Edit2.Text = '') then
ShowMessage('Quantidade ou Data Não Inserida. Favor Verificar! Paulo')
else
begin
QuantidadeNova:=Edit3.Text;
QuantidadeAtualizada:=UDados.UDMDados.TblCadastroProdutosQUANTIDADE.Value +  StrtoInt(QuantidadeNova);
UDados.UDMDados.TblCadastroProdutosQUANTIDADE.Value := QuantidadeAtualizada;
/////////////////////////////// não confundir ////////
Showmessage('Produtos inseridos ao Estoque ' + Udados.UDMDados.TblCadastroProdutosPRODUTO.Text + ' A Quantidade atualizada é de.: ' + UDados.UDMDados.TblCadastroProdutosQUANTIDADE.Text + ' Unidades');
DBNavigator1.BtnClick(NbPost);
UDados.UDMDados.TblCadastroProdutos.Post;
Button1.Click;
end;
    end;

procedure TFrmEntrada.FormShow(Sender: TObject);
begin
UDados.UDMDados.TblCadastroProdutos.Edit;
UDados.UDMDados.TblEntrada.Edit;
Edit2.Text :=DateToStr(Date);

end;

procedure TFrmEntrada.Edit3Change(Sender: TObject);
begin
DBNAVIGATOR1.BtnClick(NBEDIT);
Edit2.Text :=DateToStr(Date);
end;

procedure TFrmEntrada.SpeedButton1Click(Sender: TObject);
begin
Edit3.Clear;
DBNavigator1.BtnClick(NbCancel);
end;

procedure TFrmEntrada.Button4Click(Sender: TObject);
var
FrmCadastroProdutos:TFrmCadastroProdutos;
begin
FrmCadastroProdutos:=TFrmCadastroProdutos.Create(Self);
Try
FrmCadastroProdutos.ShowModal;
Finally
FrmCadastroProdutos.Free;
end;

end;

procedure TFrmEntrada.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
  var
  ultcod: integer;
  begin
    UDados.UDMDados.TblEntrada.Open;
    UDados.UDMDados.TblEntrada.Last;
    TblAuxEntrada.Open;
    UltCOD:=UDados.UDMDados.TblEntrada.FIELDBYNAME('CODIGO').ASINTEGER+1;
    UDados.UDMDados.TblEntrada.Append;
    Edit1.Text:=INTTOSTR(ULTCOD);
    UDados.UDMDados.TblEntradaCODIGO.Value := StrToInt(Edit1.text);;
    UDados.UDMDados.TblEntradaCODIGO_BARRAS.Value := Udados.UDMDados.TblCadastroProdutosCODIGO_BARRAS.Value;
    UDados.UDMDados.TblEntradaPRODUTO.Value := Udados.UDMDados.TblCadastroProdutosPRODUTO.Value;
    UDados.UDMDados.TblEntradaQUANTIDADE.Value := Udados.UDMDados.TblCadastroProdutosQuantidade.Value;
    UDados.UDMDados.TblEntradaQUANTIDADEADD.Value := StrToInt(Edit3.Text);
    UDados.UDMDados.TblEntradaQUANTIDADETOTAL.Value := Udados.UDMDados.TblCadastroProdutosQUANTIDADE.Value + StrToInt(Edit3.Text);
    UDados.UDMDados.TblEntradaTIPO.Value := Udados.UDMDados.TblCadastroProdutosTIPO.Value;
    UDados.UDMDados.TblEntradaPRECO_DE_CUSTO.Value := Udados.UDMDados.TblCadastroProdutosPRECO_DE_CUSTO.Value;
    UDados.UDMDados.TblEntradaPERCENTUAL_LUCRO.Value := Udados.UDMDados.TblCadastroProdutosPERCENTUAL_LUCRO.Value;
    UDados.UDMDados.TblEntradaLUCRO.Value := Udados.UDMDados.TblCadastroProdutosLUCRO.Value;
    UDados.UDMDados.TblEntradaPRECO_VENDA.Value := Udados.UDMDados.TblCadastroProdutosPRECO_VENDA.Value;
    UDados.UDMDados.TblEntradaFORNECEDOR.Value := Udados.UDMDados.TblCadastroProdutosFORNECEDOR.Value;
    UDados.UDMDados.TblEntradaDATA_ENTRADA.Value := StrToDate(Edit2.Text);
    UDados.UDMDados.TblEntradaOBS.Value := Udados.UDMDados.TblCadastroProdutosOBS.Value;
    UDados.UDMDados.TblEntradaCO_PRODUTO.Value := UDados.UDMDados.TblCadastroProdutosCODIGO.Value;

end;

procedure TFrmEntrada.Button1Click(Sender: TObject);
var
  ultcod, Quantidade: integer;
  begin
    UDados.UDMDados.TblEntrada.Open;
    UDados.UDMDados.TblEntrada.Edit;
    UDados.UDMDados.TblEntrada.insert;
    UDados.UDMDados.TblEntrada.Last;
    TblAuxEntrada.Open;
    Quantidade:= StrToInt(Edit3.Text);
    UltCOD:=UDados.UDMDados.TblEntrada.FIELDBYNAME('CODIGO').ASINTEGER+1;
    UDados.UDMDados.TblEntrada.Append;
    Edit1.Text:=INTTOSTR(ULTCOD);
    UDados.UDMDados.TblEntradaCODIGO.Value := StrToInt(Edit1.text);;
    UDados.UDMDados.TblEntradaCODIGO_BARRAS.Value := Udados.UDMDados.TblCadastroProdutosCODIGO_BARRAS.Value;
    UDados.UDMDados.TblEntradaPRODUTO.Value := Udados.UDMDados.TblCadastroProdutosPRODUTO.Value;
    UDados.UDMDados.TblEntradaTIPO.Value := (Udados.UDMDados.TblCadastroProdutosTIPO.Value);
    UDados.UDMDados.TblEntradaPRECO_DE_CUSTO.Value := Udados.UDMDados.TblCadastroProdutosPRECO_DE_CUSTO.Value;
    UDados.UDMDados.TblEntradaPERCENTUAL_LUCRO.Value := Udados.UDMDados.TblCadastroProdutosPERCENTUAL_LUCRO.Value;
    UDados.UDMDados.TblEntradaLUCRO.Value := Udados.UDMDados.TblCadastroProdutosLUCRO.Value;
    UDados.UDMDados.TblEntradaPRECO_VENDA.Value := Udados.UDMDados.TblCadastroProdutosPRECO_VENDA.Value;
    UDados.UDMDados.TblEntradaFORNECEDOR.Value := Udados.UDMDados.TblCadastroProdutosFORNECEDOR.Value;
    UDados.UDMDados.TblEntradaDATA_ENTRADA.Value := StrToDate(Edit2.Text);
    UDados.UDMDados.TblEntradaOBS.Value := Udados.UDMDados.TblCadastroProdutosOBS.Value;
     UDados.UDMDados.TblEntradaQUANTIDADE.Value := Udados.UDMDados.TblCadastroProdutosQuantidade.Value;
     UDados.UDMDados.TblEntradaQUANTIDADEADD.Value := (Quantidade);
    UDados.UDMDados.TblEntradaQUANTIDADETOTAL.Value := Udados.UDMDados.TblCadastroProdutosQUANTIDADE.Value + Quantidade;
    UDados.UDMDados.TblEntradaCO_PRODUTO.Value := Udados.UDMDados.TblCadastroProdutosCODIGO.Value;
    UDados.UDMDados.TblEntrada.Post;
    Edit3.Clear;
    edit4.SetFocus;



end;

procedure TFrmEntrada.Edit2Click(Sender: TObject);
begin
Edit2.Clear;
end;

procedure TFrmEntrada.Edit4Click(Sender: TObject);
begin
Edit4.Clear;
end;

procedure TFrmEntrada.Edit4Change(Sender: TObject);
begin
//UdmDados.Tbl_Usuario.Locate('Usu_Nome',edit1.Text,[loPartialkey,locaseInsensitive]);
Udados.UDMDados.TblCadastroProdutos.Locate('Codigo_Barras',edit4.Text,[loPartialkey,locaseInsensitive]);
end;

procedure TFrmEntrada.Edit5Change(Sender: TObject);
begin
Udados.UDMDados.TblCadastroProdutos.Locate('Produto',edit5.Text,[loPartialkey,locaseInsensitive]);
end;

procedure TFrmEntrada.SpeedButton2Click(Sender: TObject);
var
QuantidadeNova :String;
QuantidadeAtualizada: Integer;
   begin
If (Edit3.Text = '') or (Edit2.Text = '')   then
ShowMessage('Quantidade ou Data não Inserida. Favor Verificar! Paulo')
else
begin
DBNAVIGATOR1.BtnClick(NBPOST);
UDados.UDMDados.TblCadastroProdutos.Edit;
UDados.UDMDados.TblEntrada.Edit;
QuantidadeNova:=Edit3.Text;
QuantidadeAtualizada:=UDados.UDMDados.TblCadastroProdutosQUANTIDADE.Value +  StrtoInt(QuantidadeNova);
UDados.UDMDados.TblCadastroProdutosQUANTIDADE.Value := QuantidadeAtualizada;
/////////////////////////////// não confundir ////////
Showmessage('Produtos inseridos ao Estoque ' + Udados.UDMDados.TblCadastroProdutosPRODUTO.Text + ' A Quantidade atualizada é de.: ' + UDados.UDMDados.TblCadastroProdutosQUANTIDADE.Text + ' Unidades');
DBNavigator1.BtnClick(NbPost);
UDados.UDMDados.TblCadastroProdutos.Post;
Button1.Click;
end;
    end;

procedure TFrmEntrada.Edit5Click(Sender: TObject);
begin
edit5.Clear;
end;

procedure TFrmEntrada.Button5Click(Sender: TObject);
begin
FrmRelEntrada.QuickRep1.Preview;
end;

procedure TFrmEntrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
udados.UDMDados.TblEntrada.Open;
Udados.UDMDados.TblEntrada.Edit;
Udados.UDMDados.TblEntrada.Post;
end;

end.
