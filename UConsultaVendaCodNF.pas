unit UConsultaVendaCodNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls;

type
  TFrmConsultaVendaNF = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Codnota: TEdit;
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
  FrmConsultaVendaNF: TFrmConsultaVendaNF;

implementation

uses UDados, URelEntradaPesquisaCodigo, URelVendaNF;

{$R *.dfm}

procedure TFrmConsultaVendaNF.SpeedButton1Click(Sender: TObject);
begin
Udados.UDMDados.SqlConsultaVendaNF.close;
Udados.UDMDados.SqlConsultaVendaNF.ParamByName('codnota').AsInteger := StrToInt(CodNota.Text);
Udados.UDMDados.SqlConsultaVendaNF.Open;
end;

procedure TFrmConsultaVendaNF.SpeedButton2Click(Sender: TObject);
var
FrmRelVendaNf:TFrmRelVendaNf;
begin
FrmRelVendaNf:=TFrmRelVendaNf.Create(Self);
Try
FrmRelVendaNf.QuickRep1.Preview;
Finally
FrmRelVendaNf.Free;
END;

end;


end.
