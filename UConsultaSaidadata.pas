unit UConsultaSaidadata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, Mask, ToolEdit;

type
  TFrmConsultaSaidaData = class(TForm)
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
  FrmConsultaSaidaData: TFrmConsultaSaidaData;

implementation

uses UDados, URelEntradaPesquisaCodigo, UFrmRelSaidaData;

{$R *.dfm}

procedure TFrmConsultaSaidaData.SpeedButton1Click(Sender: TObject);
begin
Udados.UDMDados.SqlConsultaSaidaData.close;
Udados.UDMDados.SqlConsultaSaidaData.ParamByName('codini').AsDATE:= StrToDATE(Datainicial.Text);
Udados.UDMDados.SqlConsultaSaidaData.ParamByName('CodFinal').AsDATE := StrToDATE(Datafinal.Text);
Udados.UDMDados.SqlConsultaSaidaData.Open;
end;

procedure TFrmConsultaSaidaData.SpeedButton2Click(Sender: TObject);
var
FrmRelSaidaData:TFrmRelSaidaData;
begin
FrmRelSaidaData:=TFrmRelSaidaData.Create(Self);
Try
FrmRelSaidaData.QuickRep1.Preview;
Finally
FrmRelSaidaData.Free;
END;
end;

end.
