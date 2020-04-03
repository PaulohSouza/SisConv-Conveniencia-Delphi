unit UCadastroUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, DB,
  IBCustomDataSet, IBTable;

type
  TFrmCadastroUsuarios = class(TForm)
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label15: TLabel;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    Label6: TLabel;
    RG: TRadioGroup;
    Button1: TButton;
    TblAuxUsuarios: TIBTable;
    TblAuxUsuariosUSU_CODIGO: TIntegerField;
    TblAuxUsuariosUSU_NOME: TIBStringField;
    TblAuxUsuariosUSU_LOGIN: TIBStringField;
    TblAuxUsuariosUSU_SENHA: TIBStringField;
    TblAuxUsuariosUSU_NIVELDEACESSO: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure RGClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroUsuarios: TFrmCadastroUsuarios;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmCadastroUsuarios.FormShow(Sender: TObject);
begin
UDados.UDMDados.TblUsuarios.open;
end;

procedure TFrmCadastroUsuarios.Edit1Change(Sender: TObject);
begin
Udados.UDMDados.TblUsuarios.Locate('Usu_Nome',edit1.Text,[loPartialkey,locaseInsensitive]);
end;

procedure TFrmCadastroUsuarios.RGClick(Sender: TObject);
begin
case RG.ItemIndex of
0: Udados.UDMDados.TblUsuarios.IndexName:= 'ind_Usu_codigo';
1: Udados.UDMDados.TblUsuarios.IndexName:= 'Ind_Usu_Nome';
end;
end;

procedure TFrmCadastroUsuarios.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
  var
  ultcod:integer;
  begin
  if Udados.UDMDados.TblUsuarios.State in [Dsinsert] then
  begin
    Udados.UDMDados.TblUsuarios.OPEN;
    Udados.UDMDados.TblUsuarios.Last;
    tblAuxUsuarios.Open;
    UltCOD:=Udados.UDMDados.TblUsuarios.FIELDBYNAME('USU_CODIGO').ASINTEGER+1;
    Udados.UDMDados.TblUsuarios.Append;
    DBEdit1.Text:=INTTOSTR(ULTCOD);
    DBEdit2.SETFOCUS;


   { var
 cod:integer;
begin
    cod:=0;
    UDMDADOS.Tbl_Usuario.OPEN;
    UDMDADOS.Tbl_Usuario.Last;
    COD:=UDMDADOS.Tbl_Usuario.FIELDBYNAME('USU_CODIGO').ASINTEGER+1;
    UDMDADOS.Tbl_Usuario.Append;
    DBEdit1.Text:=INTTOSTR(COD);
    DBEdit2.SETFOCUS;
  end;}
         end;
  end;


procedure TFrmCadastroUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
udados.UDMDados.TblUsuarios.Open;
Udados.UDMDados.TblUsuarios.Edit;
Udados.UDMDados.TblUsuarios.Post;
end;

end.
