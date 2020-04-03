unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, jpeg, Db, Mask, DBCtrls, inifiles,
  Menus;

type
  TFrmLogin = class(TForm)
    StatusBar1: TStatusBar;
    GrpBxLogin: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    BtnOk: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Timer1: TTimer;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    NovoBancodeDados1: TMenuItem;
    OpenDialog1: TOpenDialog;
    Label5: TLabel;
    Label4: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOkClick(Sender: TObject);
    procedure NovoBancodeDados1Click(Sender: TObject);
  private
  tentou:integer;
  iniConf: TIniFile;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses UDados, UPrincipal, UVendas;

{$R *.dfm}

procedure TFrmLogin.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text :='' + FormatDateTime('hh:nn:ss',now);
  StatusBar1.Panels[1].Text :='' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now);
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin

tentou := 0;
iniconf:=TiniFile.create(ExtractFilePath(Application.ExeName) + 'Conf.ini');
edit1.SetFocus;

end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Udados.UDMDados.TblUsuarios.close;
end;

procedure TFrmLogin.BtnOkClick(Sender: TObject);
var
FrmPrincipal:TFrmPrincipal;
begin
Udados.UDMDados.TblUsuarios.Open;
if not (UdmDados.TblUsuarios.Locate('Usu_Senha',edit2.Text,[loPartialkey,locaseInsensitive])) then
begin
inc(tentou);//é o mesmo que tentou: tentou + 1
Showmessage('Usuario ou senha incorreto! Favor Verificar!');
if tentou = 1 then
Showmessage('Você errou O Usuario ou senha, você só tem mais chance!');
end;
 /////////////
begin
if not (Udados.UdmDados.TblUsuarios.Locate('Usu_Login',edit1.Text,[loPartialkey,locaseInsensitive])) then
begin
Showmessage('Usuario ou senha incorreto! Favor Verificar!');
end;
  ////////////////
  begin
if (Udados.UDMDados.TblUsuarios.Locate('Usu_Login',edit1.Text,[loPartialkey,locaseInsensitive])) then if edit2.Text = Udados.UDMDados.TblUsuariosUSU_SENHA.Value then if Udados.UDMDados.TblUsuariosUSU_NIVELDEACESSO.Value = '3' then
///if edit1.Text = UdmDados.Tbl_UsuarioUSU_LOGIN.Value then if Edit2.text = Udmdados.Tbl_UsuarioUSU_SENHA.Value then if UdmDados.Tbl_UsuarioUSU_NIVELDEACESSO = 3 then
begin
ShowMessage('Olá ' + Udados.UDMDados.TblUsuariosUSU_NOME.Value + ' Bem Vindo Ao Sistema Notesc! Bom Trabalho');
FrmPrincipal:=TFrmPrincipal.Create(Self);
Try
FrmPrincipal.ShowModal;
Finally
FrmPrincipal.Free;
end;
end;
    //////////////
if (Udados.UDMDados.TblUsuarios.Locate('Usu_Login',edit1.Text,[loPartialkey,locaseInsensitive])) then if edit2.Text = Udados.UDMDados.TblUsuariosUSU_SENHA.Value then if Udados.UDMDados.TblUsuariosUSU_NIVELDEACESSO.Value = '2' then
begin
ShowMessage('Olá ' + Udados.UDMDados.TblUsuariosUSU_NOME.Value + ' Bem Vindo Ao Sistema Notesc! Bom Trabalho');
FrmPrincipal:=TFrmPrincipal.Create(Self);
FrmPRINCIPAL.SpeedButton1.Enabled:= FALSE;
FrmPRINCIPAL.SpeedButton3.Enabled:= FALSE;
FrmPRINCIPAL.Usuarios1.Enabled:=False;
FrmPRINCIPAL.EntradadeMercadorias1.Enabled:=False;
FrmPRINCIPAL.Estoque1.Enabled:=False;
FrmVendas.SpeedButton4.Enabled := False;
Try
FrmPrincipal.ShowModal;
Finally
FrmPrincipal.Free;
end;
end;

if (Udados.UDMDados.TblUsuarios.Locate('Usu_Login',edit1.Text,[loPartialkey,locaseInsensitive])) then if edit2.Text = Udados.UDMDados.TblUsuariosUSU_SENHA.Value then if Udados.UDMDados.TblUsuariosUSU_NIVELDEACESSO.Value = '1' then
begin
ShowMessage('Olá ' + Udados.UDMDados.TblUsuariosUSU_NOME.Value + ' Bem Vindo Ao Sistema Notesc! Bom Trabalho');
FrmPrincipal:=TFrmPrincipal.Create(Self);
FrmPRINCIPAL.SpeedButton1.Enabled:= FALSE;
FrmPRINCIPAL.SpeedButton3.Enabled:= FALSE;
FrmPRINCIPAL.Usuarios1.Enabled:=False;
FrmPrincipal.Conveniencia1.Enabled:=False;
FrmPrincipal.Cadastros1.Enabled:=False;
Try
FrmPrincipal.ShowModal;
Finally
FrmPrincipal.Free;
end;
end;
end;
  if (image1.AutoSize = true) then
  begin
  end;
         end;
////////////////////////////////
if tentou = 2 then
begin
showmessage('Tentativas Inválidas!! Você Não tem Permissão para Acessar o Sistema!');
close;
end;
begin
//edit2.Text := '';
//edit1.Text := '' ;
//edit1.SetFocus;
         end;

end;




procedure TFrmLogin.NovoBancodeDados1Click(Sender: TObject);
begin
if opendialog1.Execute then
begin
Udados.UDMDados.DadosConveniencia.Connected:=False;
Udados.UDMDados.DadosConveniencia.DatabaseName:=Opendialog1.FileName;
iniconf.WriteString('DadosConveniencia', 'Path', Udados.UDMDados.DadosConveniencia.DatabaseName);
Udados.UDMDados.DadosConveniencia.Connected:=True;
end;

end;

end.
