unit UConsultaVendaCodigo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls;

type
  TFrmCOnsultaSaidaCodigo = class(TForm)
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
  FrmCOnsultaSaidaCodigo: TFrmCOnsultaSaidaCodigo;

implementation

uses UDados, URelEntradaPesquisaCodigo, URelSaidaCodigo;

{$R *.dfm}

procedure TFrmCOnsultaSaidaCodigo.SpeedButton1Click(Sender: TObject);
begin
Udados.UDMDados.SqlConsultaSaidaCodigo.close;
Udados.UDMDados.SqlConsultaSaidaCodigo.ParamByName('codini').AsInteger := StrToInt(Datainicial.Text);
Udados.UDMDados.SqlConsultaSaidaCodigo.ParamByName('CodFinal').AsInteger := StrToInt(Datafinal.Text);
Udados.UDMDados.SqlConsultaSaidaCodigo.Open;
end;

procedure TFrmCOnsultaSaidaCodigo.SpeedButton2Click(Sender: TObject);
var
FrmRelSaidaCodigo:TFrmRelSaidaCodigo;
begin
FrmRelSaidaCodigo:=TFrmRelSaidaCodigo.Create(Self);
Try
FrmRelSaidaCodigo.QuickRep1.Preview;
Finally
FrmRelSaidaCodigo.Free;
END;
end;

end.
