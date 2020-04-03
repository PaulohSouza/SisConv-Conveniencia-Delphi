unit UCadastroProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Mask, Grids, DBGrids,DB,
  IBCustomDataSet, IBTable;

type
  TFrmCadastroProdutos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    DBNavigator1: TDBNavigator;
    RG: TRadioGroup;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Edit1: TEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBGrid1: TDBGrid;
    DBEdit11: TDBEdit;
    Label4: TLabel;
    TblAuxProdutos: TIBTable;
    TblAuxProdutosCODIGO: TIntegerField;
    TblAuxProdutosCODIGO_BARRAS: TIBStringField;
    TblAuxProdutosPRODUTO: TIBStringField;
    TblAuxProdutosQUANTIDADE: TIntegerField;
    TblAuxProdutosTIPO: TIBStringField;
    TblAuxProdutosPRECO_DE_CUSTO: TIBBCDField;
    TblAuxProdutosPERCENTUAL_LUCRO: TIBBCDField;
    TblAuxProdutosLUCRO: TIBBCDField;
    TblAuxProdutosPRECO_VENDA: TIBBCDField;
    TblAuxProdutosFORNECEDOR: TIBStringField;
    TblAuxProdutosDATA_CADASTRO: TDateField;
    TblAuxProdutosOBS: TIBStringField;
    TblAuxProdutosLUCRO_UNIDADE: TIBBCDField;
    Label5: TLabel;
    DBEdit12: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure RGClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroProdutos: TFrmCadastroProdutos;

implementation

uses UDados;

{$R *.dfm}



procedure TFrmCadastroProdutos.DBEdit6Exit(Sender: TObject);
//Custo, Venda, Porcentagem: Currency;
begin
    UDados.UDMDados.TblCadastroProdutosPRECO_VENDA.Value :=
   ((Udados.UDMDados.TblCadastroProdutosPRECO_DE_CUSTO.Value *
     UDados.UDMDados.TblCadastroProdutosPERCENTUAL_LUCRO.Value) /100)
     + Udados.UDMDados.TblCadastroProdutosPRECO_DE_CUSTO.Value;
       Udados.UDMDados.TblCadastroProdutosLUCRO.Value :=
    (Udados.UDMDados.TblCadastroProdutosPRECO_VENDA.Value - Udados.UDMDados.TblCadastroProdutosPRECO_DE_CUSTO.Value)*StrtoInt(Udados.UDMDados.TblCadastroProdutosQUANTIDADE.Text);
  //  Custo:=StrToFloat(UDados.UDMDados.TblCadastroProdutosPRECO_VENDA.Value);
    //Venda:=StrToFloat(Udados.UDMDados.TblCadastroProdutosPRECO_VENDA.Value);
   // Porcentagem:=StrToFloat(Udados.UDMDados.TblCadastroProdutosPERCENTUAL_LUCRO.Value);
   // ((Venda * Custo)/100 );
      Udados.UDMDados.TblCadastroProdutosLUCRO_UNIDADE.Value:=
     (Udados.UDMDados.TblEntradaPRECO_VENDA.Value - Udados.UDMDados.TblCadastroProdutosPRECO_DE_CUSTO.Value);

end;

procedure TFrmCadastroProdutos.DBEdit7Exit(Sender: TObject);
begin
uDADOS.UDMDados.TblCadastroProdutos.Edit;
 UDados.UDMDados.TblCadastroProdutosPERCENTUAL_LUCRO.Value:=
   ((Udados.UDMDados.TblCadastroProdutosPRECO_VENDA.Value /
     UDados.UDMDados.TblCadastroProdutosPRECO_DE_CUSTO.Value)*10);
     Udados.UDMDados.TblCadastroProdutosLUCRO.Value :=
    (Udados.UDMDados.TblCadastroProdutosPRECO_VENDA.Value - Udados.UDMDados.TblCadastroProdutosPRECO_DE_CUSTO.Value)*StrtoInt(Udados.UDMDados.TblCadastroProdutosQUANTIDADE.Text);
     ////////////////////
     Udados.UDMDados.TblCadastroProdutosLUCRO_UNIDADE.Value:=
     (Udados.UDMDados.TblEntradaPRECO_VENDA.Value - Udados.UDMDados.TblCadastroProdutosPRECO_DE_CUSTO.Value);

 {UDados.UDMDados.TblCadastroProdutosPRECO_VENDA.Value :=
   ((Udados.UDMDados.TblCadastroProdutosPRECO_DE_CUSTO.Value *
     UDados.UDMDados.TblCadastroProdutosPERCENTUAL_LUCRO.Value) /100)
     + Udados.UDMDados.TblCadastroProdutosPRECO_DE_CUSTO.Value;   }
end;

procedure TFrmCadastroProdutos.Edit1Click(Sender: TObject);
begin
Edit1.Clear;
end;

procedure TFrmCadastroProdutos.Edit1Change(Sender: TObject);
begin
Udados.UDMDados.TblCadastroProdutos.Locate('Codigo_Barras',edit1.Text,[locaseInsensitive]);
end;

procedure TFrmCadastroProdutos.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
var
  ultcod:integer;
  begin
  if Udados.UDMDados.TblCadastroProdutos.State in [Dsinsert] then
  begin
    Udados.UDMDados.TblCadastroProdutos.OPEN;
    Udados.UDMDados.TblCadastroProdutos.Last;
    tblAuxProdutos.Open;
    UltCOD:=Udados.UDMDados.TblCadastroProdutos.FIELDBYNAME('CODIGO').ASINTEGER+1;
    Udados.UDMDados.TblCadastroProdutos.Append;
    Udados.UDMDados.TblCadastroProdutosCODIGO.Value := (ULTCOD);
    Udados.UDMDados.TblCadastroProdutosDATA_CADASTRO.Value := DAte;
    DBEdit2.SETFOCUS;
    Udados.UDMDados.TblCadastroProdutos.Post;
    Udados.UDMDados.TblCadastroProdutos.edit;
end;
    end;
procedure TFrmCadastroProdutos.RGClick(Sender: TObject);
begin
case RG.ItemIndex of
0: Udados.UDMDados.TblCadastroProdutos.IndexName:= 'ind_Produto';
1: Udados.UDMDados.TblCadastroProdutos.IndexName:= 'Ind_NomeProduto';
end;
  end;
procedure TFrmCadastroProdutos.FormShow(Sender: TObject);
begin
UDADOS.UDMDados.TblCadastroProdutos.Open;
end;

procedure TFrmCadastroProdutos.Button1Click(Sender: TObject);
begin
UDADOS.UDMDados.TblCadastroProdutos.Edit;
UDADOS.UDMDados.TblCadastroProdutos.pOST;
end;

procedure TFrmCadastroProdutos.Button2Click(Sender: TObject);
var
  ultcod:integer;

  begin
    dBNAVIGATOR1.BtnClick(nbinsert);
    Udados.UDMDados.TblCadastroProdutos.OPEN;
    Udados.UDMDados.TblCadastroProdutos.Last;
    tblAuxProdutos.Open;
    UltCOD:=Udados.UDMDados.TblCadastroProdutos.FIELDBYNAME('CODIGO').ASINTEGER+1;
    Udados.UDMDados.TblCadastroProdutos.Append;
    Udados.UDMDados.TblCadastroProdutosCODIGO.Value := (ULTCOD);
    Udados.UDMDados.TblCadastroProdutosDATA_CADASTRO.Value := DAte;
    DBEdit2.SETFOCUS;
    END;
procedure TFrmCadastroProdutos.Button3Click(Sender: TObject);
begin
dBnAVIGATOR1.BtnClick(NBDELETE);
end;

end.
