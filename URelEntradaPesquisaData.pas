unit URelEntradaPesquisaData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, Mask, ToolEdit;

type
  TFrmConsultaEntradaData = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBGrid1: TDBGrid;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaEntradaData: TFrmConsultaEntradaData;

implementation

uses UDados, URelEntradaPesquisaCodigo, URelEntradaPesquisaData2;

{$R *.dfm}

procedure TFrmConsultaEntradaData.SpeedButton1Click(Sender: TObject);
begin
Udados.UDMDados.SqlConsultaEntradaData.close;
Udados.UDMDados.SqlConsultaEntradaData.ParamByName('codini').AsDate := StrToDate(Datainicial.Text);
Udados.UDMDados.SqlConsultaEntradaData.ParamByName('CodFinal').AsDAte := StrToDate(Datafinal.Text);
Udados.UDMDados.SqlConsultaEntradaData.Open;
end;

procedure TFrmConsultaEntradaData.SpeedButton2Click(Sender: TObject);
var
FrmRelEntradaData:TFrmRelEntradaData;
begin
FrmRelEntradaData:=TFrmRelEntradaData.Create(Self);
Try
FrmRelEntradaData.QuickRep1.Preview;
Finally
FrmRelEntradaData.Free;
end;

end;

end.
