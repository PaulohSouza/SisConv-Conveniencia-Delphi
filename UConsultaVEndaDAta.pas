unit UConsultaVEndaDAta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, Mask, ToolEdit;

type
  TFrmConsultaVendaDAta = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
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
  FrmConsultaVendaDAta: TFrmConsultaVendaDAta;

implementation

uses UDados, URelEntradaPesquisaCodigo, URelVendaData;

{$R *.dfm}

procedure TFrmConsultaVendaDAta.SpeedButton1Click(Sender: TObject);
begin
Udados.UDMDados.SqlConsultaVendaData.close;
Udados.UDMDados.SqlConsultaVendaData.ParamByName('codini').AsDate := StrToDate(Datainicial.Text);
Udados.UDMDados.SqlConsultaVendaData.ParamByName('CodFinal').AsDate := StrToDate(Datafinal.Text);
Udados.UDMDados.SqlConsultaVendaData.Open;
end;

procedure TFrmConsultaVendaDAta.SpeedButton2Click(Sender: TObject);
var
FrmRelVendaDAta:TFrmRelVendaDAta;
begin
FrmRelVendaDAta:=TFrmRelVendaDAta.Create(Self);
Try
FrmRelVendaDAta.QuickRep1.Preview;
Finally
FrmRelVendaDAta.Free;
END;

end;


end.
