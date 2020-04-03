unit UConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls;

type
  TFrmConsultaEntrada = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Datainicial: TEdit;
    DataFinal: TEdit;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaEntrada: TFrmConsultaEntrada;

implementation

uses UDados, URelEntradaPesquisaCodigo;

{$R *.dfm}

procedure TFrmConsultaEntrada.SpeedButton1Click(Sender: TObject);
begin
Udados.UDMDados.SqlConsultaEntrada.close;
Udados.UDMDados.SqlConsultaEntrada.ParamByName('codini').AsInteger := StrToInt(Datainicial.Text);
Udados.UDMDados.SqlConsultaEntrada.ParamByName('CodFinal').AsInteger := StrToInt(Datafinal.Text);
Udados.UDMDados.SqlConsultaEntrada.Open;
end;

procedure TFrmConsultaEntrada.SpeedButton2Click(Sender: TObject);
var
FrmRelEntradaPesquisa:TFrmRelEntradaPesquisa;
begin
FrmRelEntradaPesquisa:=TFrmRelEntradaPesquisa.Create(Self);
Try
FrmRelEntradaPesquisa.QuickRep1.Preview;
Finally
FrmRelEntradaPesquisa.Free;
end;

end;

end.
