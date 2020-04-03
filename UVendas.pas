unit UVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, DBCtrls, StdCtrls, CurrEdit, Mask,
  ToolEdit, ExtCtrls, DB, IBCustomDataSet, IBTable, IBQuery, RXClock;

type
  TFrmVendas = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Edit1: TEdit;
    DateEdit1: TDateEdit;
    RxCalcEdit1: TRxCalcEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Edit6: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    TblAuxiliarVenda: TIBTable;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit8: TEdit;
    Edit5: TEdit;
    BitBtn1: TBitBtn;
    SqlFiltroVenda: TIBQuery;
    DsFiltroVenda: TDataSource;
    DBGrid2: TDBGrid;
    Edit7: TEdit;
    SqlFiltroVendaTOTAL: TIBBCDField;
    SqlFiltroLucro: TIBQuery;
    DsLucro: TDataSource;
    SqlFiltroLucroTOTAL: TIBBCDField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox4: TGroupBox;
    Edit9: TEdit;
    Button2: TButton;
    GroupBox5: TGroupBox;
    Edit10: TEdit;
    TblSaida: TIBTable;
    DsSaida: TDataSource;
    TblSaidaSaiPai_codigo: TIntegerField;
    TblSaidaSaiPai_DataVenda: TDateTimeField;
    TblSaidaSaiPai_ValorTotal: TIBBCDField;
    TblSaidaSaiPai_Obs: TIBStringField;
    DBGrid3: TDBGrid;
    Edit2: TEdit;
    RxClock1: TRxClock;
    DBGrid4: TDBGrid;
    SpeedButton5: TSpeedButton;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    Label4: TLabel;
    Label9: TLabel;
    TblAuxiliarVendaSaiProd_CodSaiProduto: TIntegerField;
    TblAuxiliarVendaSaiProd_CodBarraProduto: TIBStringField;
    TblAuxiliarVendaSaiProd_Data: TDateField;
    TblAuxiliarVendaSaiProd_Produto: TIBStringField;
    TblAuxiliarVendaSaiProd_ValorProduto: TIBBCDField;
    TblAuxiliarVendaSaiProd_Quantidade: TIntegerField;
    TblAuxiliarVendaSaiProd_ValorTotal: TIBBCDField;
    TblAuxiliarVendaSaiProd_Lucro: TIBBCDField;
    TblAuxiliarVendaSaiProd_CodNota: TIntegerField;
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendas: TFrmVendas;

implementation

uses UDados, UCadastroProdutos, Uprincipal, UEntrada;

{$R *.dfm}

procedure TFrmVendas.SpeedButton2Click(Sender: TObject);
 var
  ultcod:integer;
      begin
     // uDADOS.UDMDados.TblCadastroProdutos.Close;
     //uDADOS.UDMDados.TblCadastroProdutos.OPEN;
     Udados.UDMDados.Tblvenda.Open;
     //uDADOS.UDMDados.TblVenda.Insert;
     //Udados.UDMDados.Tblvenda.eDIT;
     Udados.UDMDados.Tblvenda.Last;
     TblAuxiliarVenda.Open;
     UltCOD:=UDADOS.UDMDados.Tblvenda.FIELDBYNAME('SaiProd_CodNota').ASINTEGER+1;
     Udados.UDMDados.Tblvenda.Append;
     Edit1.Text := IntToStr(ultCod);
     DateEdit1.Text := DateToStr(Date);
    DateEdit1.SetFocus;
     gROUPBOX1.Visible := TRUE;
     dBGRID2.Visible:= tRUE;
     Label4.Visible := True;
     Label9.Visible := False;
     DbGrid3.Visible := False;  
    {UDMDADOS.TblUsuarios.OPEN;
    UDMDADOS.TblUsuarios.Last;
    tblAuxUsuarios.Open;
    UltCOD:=UDMDADOS.TblUsuarios.FIELDBYNAME('USU_CODIGO').ASINTEGER+1;
    UDMDADOS.TblUsuarios.Append;
    DBEdit1.Text:=INTTOSTR(ULTCOD);
    DBEdit2.SETFOCUS;  }
    Groupbox4.Visible := False;
   GroupBox5.Visible := False;
   eDIT9.Visible := fALSE;
   eDIT10.Visible := fALSE;
   bUTTON2.Visible := fALSE;
   //Edit3.Clear;
     //Edit3.SetFocus;
end;

procedure TFrmVendas.Edit3Click(Sender: TObject);
 var
  ultcod:integer;
  begin
     Udados.UDMDados.Tblvenda.Open;
     Udados.UDMDados.Tblvenda.Last;
     TblAuxiliarVenda.Open;
     UltCOD:=UDADOS.UDMDados.Tblvenda.FIELDBYNAME('SaiProd_CodSaiProduto').ASINTEGER+1;
     Udados.UDMDados.Tblvenda.Append;
     Edit8.Text := IntToStr(ultCod);
     Edit3.Clear;
     Edit3.SetFocus;

end;

procedure TFrmVendas.SpeedButton1Click(Sender: TObject);
var
  ultcod:integer;
  begin
      Udados.UDMDados.Tblvenda.Open;
     Udados.UDMDados.Tblvenda.Last;
     TblAuxiliarVenda.Open;
     UltCOD:=UDADOS.UDMDados.Tblvenda.FIELDBYNAME('SaiProd_CodSaiProduto').ASINTEGER+1;
     Udados.UDMDados.Tblvenda.Append;
     Edit8.Text := IntToStr(ultCod);
     Edit3.SetFocus;
     ///////////////
     Udados.UDMDados.Tblvenda.Close;
     Udados.UDMDados.Tblvenda.Open;
     Udados.UDMDados.Tblvenda.insert;
     Udados.UDMDados.Tblvenda.Edit;
     Dbnavigator2.BtnClick(nbEdit);
     Udados.UDMDados.TblvendaSaiProd_CodNota.Value := StrToINt(Edit1.Text);
     Udados.UDMDados.TblvendaSaiProd_Quantidade.Value := StrToINT(Edit4.Text);
     Udados.UDMDados.TblvendaSaiProd_CodSaiProduto.Value := StrToINt(Edit8.text);
     Udados.UDMDados.TblvendaSaiProd_CodBarraProduto.Value := (Edit3.Text);
    Udados.UDMDados.TblvendaSaiProd_Produto.Value := Udados.UDMDados.TblCadastroProdutosPRODUTO.Value;
     Udados.UDMDados.TblvendaSaiProd_Data.Value := StrToDate(DateEdit1.Text);
     {Udados.UDMDados.TblvendaSaiProd_ValorProduto.Value := Udados.UDMDados.TblEntradaPRECO_DE_CUSTO.Value;
    }
   {  Udados.UDMDados.TblvendaSaiProd_ValorTotal.Value := StrtoFloat( dbtext2.Caption) * StrToFloat(Edit4.Text);
     Udados.UDMDados.TblvendaSaiProd_Lucro.Value := StrtoCurr( dbtext3.Caption) * StrToFloat(Edit4.Text);
   } Udados.UDMDados.Tblvenda.post;
     bITBTN1.Click;
   Button1.Click;
   Edit3.Clear;
    Edit3.SetFocus;
end;

procedure TFrmVendas.Edit3Change(Sender: TObject);
begin
dBNAVIGATOR2.BtnClick(NBINSERT);
dBNAVIGATOR3.BtnClick(NBEDIT);
dBNAVIGATOR4.BtnClick(NBEDIT);
Udados.UDMDados.TblCadastroProdutos.Locate('Codigo_Barras',edit3.Text,[locaseInsensitive]);
    
end;

procedure TFrmVendas.Edit3Exit(Sender: TObject);

begin
{ValorTotal:= StrtoFloat( dbtext2.Caption) * StrToFloat(Edit4.Text);
Edit5.Text:= FloatToStr(ValorTotal);
Lucro:= StrtoFloat( dbtext3.Caption) * StrToFloat(Edit4.Text);
Edit7.Text:= FloatToStr(Lucro);
Edit4.SetFocus;
     }    
      end;
procedure TFrmVendas.Button1Click(Sender: TObject);
var
Soma, Lucro: currency;
begin
// Soma:= 0;
// Lucro:=0;
 //udados.UDMDados.SqlFiltroVenda.FIRST;
// While Not udados.UDMDados.SqlFiltroVenda.Eof do
// begin
 //Soma:= Soma + Udados.UDMDados.SqlFiltroVendaSaiProd_ValorTotal.Value;
// Lucro:= Lucro + Udados.UDMDados.SqlFiltroVendaSaiProd_Lucro.Value;
 //Udados.UDMDados.Tblvenda.Next;
SqlFiltroVenda.Close;
SqlFiltroVenda.OPEN;
SqlFiltroLucro.Close;
SqlFiltroLucro.Open;

    Edit5.Text:= CurrTOSTR(SqlFiltrovendaTOTAL.Value);
    Edit7.Text := CurrToStr(SqlFiltroLucroTOTAL.Value);
//end;
   // Edit5.Text:= CurrToStr(Soma);
    // Edit7.Text := CurrToStr(Lucro);
end;

procedure TFrmVendas.BitBtn1Click(Sender: TObject);
begin
SqlFiltroVEnda.Close;
SqlFiltroVEnda.ParamByName('codnota').AsInteger := StrToInt(edit1.Text);
SqlFiltroVEnda.Open;
SqlFiltroLucro.Close;
SqlFiltroLucro.ParamByName('codnota').AsInteger := StrToInt(edit1.Text);
SqlFiltroLucro.Open;
end;

procedure TFrmVendas.BitBtn2Click(Sender: TObject);
var
  ultcod:integer;
  begin
   If (Udados.UDMDados.TblCadastroProdutosQUANTIDADE.Value < StrToInt(Edit4.Text)) then
   BEGIN
  showmessage('Quantidade não disponivel em estoque');
     end
       else
      begin

     ///////////////
    { Udados.UDMDados.Tblvenda.Close;
     Udados.UDMDados.Tblvenda.Open;
     Udados.UDMDados.Tblvenda.insert;
     Udados.UDMDados.Tblvenda.Edit;   }
    // Dbnavigator2.BtnClick(nbEdit);
     Udados.UDMDados.Tblvenda.Open;
     Udados.UDMDados.Tblvenda.Last;
     TblAuxiliarVenda.Open;
     UltCOD:=UDADOS.UDMDados.Tblvenda.FIELDBYNAME('SaiProd_CodSaiProduto').ASINTEGER+1;
     Udados.UDMDados.Tblvenda.Append;
     Edit8.Text := IntToStr(ultCod);
     Edit3.SetFocus;
     /////////
    dBNAVIGATOR3.BtnClick(NBEDIT);
     dBNAVIGATOR4.BtnClick(NBEDIT);
     Udados.UDMDados.TblvendaSaiProd_CodNota.Value := StrToINt(Edit1.Text);
     Udados.UDMDados.TblvendaSaiProd_Quantidade.Value := StrToINT(Edit4.Text);
     Udados.UDMDados.TblvendaSaiProd_CodSaiProduto.Value := StrToINt(Edit8.text);
     Udados.UDMDados.TblvendaSaiProd_CodBarraProduto.Value := (Edit3.Text);
    Udados.UDMDados.TblvendaSaiProd_Produto.Value := Udados.UDMDados.TblCadastroProdutosPRODUTO.Value;
//    uDADOS.UDMDados.TblVendaSaiProd_Lucro.Value := uDADOS.UDMDados.TblCadastroProdutosLUCRO_UNIDADE.Value * sTRtOiNT(eDIT4.Text);
     Udados.UDMDados.TblvendaSaiProd_Data.Value := StrToDate(DateEdit1.Text);

    // uDADOS.UDMDados.TblCadastroProdutos.Open;
    // UDADOS.UDMDados.TblCadastroProdutos.Edit;
     Udados.UDMDados.TblCadastroProdutosQUANTIDADE.Value :=  Udados.UDMDados.TblCadastroProdutosQUANTIDADE.Value - Strtoint(Edit4.Text);
     dBNAVIGATOR2.BtnClick(NBPOST);
    dBNAVIGATOR3.BtnClick(NBpOST);
    dBNAVIGATOR4.BtnClick(NBpoST);
     bITBTN1.Click;
   Button1.Click;
     {Udados.UDMDados.TblvendaSaiProd_ValorProduto.Value := Udados.UDMDados.TblEntradaPRECO_DE_CUSTO.Value;
    }
   {  Udados.UDMDados.TblvendaSaiProd_ValorTotal.Value := StrtoFloat( dbtext2.Caption) * StrToFloat(Edit4.Text);
     Udados.UDMDados.TblvendaSaiProd_Lucro.Value := StrtoCurr( dbtext3.Caption) * StrToFloat(Edit4.Text);
   } //Udados.UDMDados.Tblvenda.post;
   //uDADOS.UDMDados.TblCadastroProdutos.Post;

   //Edit3.Clear;
         /////////////////////////
      END;
end;

procedure TFrmVendas.Button2Click(Sender: TObject);
VAR
Soma: Currency;
begin
//uDADOS.UDMDados.TblSaida.Open;
//TblSaida.Insert;
//Udados.UDMDados.TblSaida.Edit;
//dBNAVIGATOR3.BtnClick(NBPOST);
 //dBNAVIGATOR3.BtnClick(NBinsert);
 dBNAVIGATOR3.BtnClick(NBinsert);
TblSaidaSaiPai_codigo.Value := sTRtOiNT(EDIT1.Text);
TblSaidaSaiPai_DataVenda.Value := (dATE);
TblSaidaSaiPai_ValorTotal.Value :=  sTRtOcURR(eDIT5.Text);
TblSaidaSaiPai_Obs.Value := (eDIT7.Text);

//dBNAVIGATOR3.BtnClick(NBPOST);
//uDADOS.UDMDados.TblSaida.Post;
//////////////
Soma:= (sTRtOcURR(eDIT9.Text) - sTRtOcURR(eDIT5.Text));
Edit10.Text:= CurrToStr(Soma);
sHOWMESSAGE('COMPRA EFETUADA COM SUCESSO!');
{udados.UDMDados.TblSaida.Open;
Udados.UDMDados.TblSaida.Edit;
Udados.UDMDados.TblSaida.Post;
udados.UDMDados.TblVenda.Open;
Udados.UDMDados.TblVenda.Edit;
Udados.UDMDados.TblVenda.Post; }

    dBNAVIGATOR3.BtnClick(NBpOST);
    dBNAVIGATOR4.BtnClick(NBpoST);
    udados.UDMDados.TblSaida.Open;
Udados.UDMDados.TblSaida.Edit;
Udados.UDMDados.TblSaida.Post;
udados.UDMDados.TblVenda.Open;
Udados.UDMDados.TblVenda.Edit;
Udados.UDMDados.TblVenda.Post; 

end;

procedure TFrmVendas.BitBtn3Click(Sender: TObject);
begin
Groupbox4.Visible := True;
   GroupBox5.Visible := TRUE;
   Edit9.Clear;
   edit10.Clear;
   eDIT9.Visible := TRUE;
   eDIT10.Visible := TRUE;
   bUTTON2.Visible := TRUE;
    gROUPBOX1.Visible := fALSE;
    dBGRID2.Visible:= fALSE;
     Label4.Visible := False;
     Label9.Visible := true;
     DbGrid3.Visible := True;
    
    dBNAVIGATOR4.BtnClick(NBedit);
end;

procedure TFrmVendas.FormShow(Sender: TObject);
begin
 DateEdit1.Text := DateToStr(Date);
end;

procedure TFrmVendas.SpeedButton4Click(Sender: TObject);
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

procedure TFrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{udados.UDMDados.TblSaida.Open;
Udados.UDMDados.TblSaida.Edit;
Udados.UDMDados.TblSaida.Post;
udados.UDMDados.TblVenda.Open;
Udados.UDMDados.TblVenda.Edit;
Udados.UDMDados.TblVenda.n}


end;

procedure TFrmVendas.SpeedButton3Click(Sender: TObject);
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

procedure TFrmVendas.SpeedButton5Click(Sender: TObject);
var
FrmPRINCIPAL:TFrmPRINCIPAL;
begin
FrmPRINCIPAL:=TFrmPRINCIPAL.Create(Self);
Try
FrmPRINCIPAL.ShowModal;
Finally
FrmPRINCIPAL.Free;

end;
  end;


procedure TFrmVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = Vk_f5 then
Begin
bitbtn2.Click
end;
 if (Edit3.Text = '') then
 begin
    showmessage('Codigo de Barra não inserido ou inválido');
         END;
end;

procedure TFrmVendas.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = Vk_f5 then
Begin
bitbtn2.Click;
eDIT3.SetFocus;
end;
end;

end.
