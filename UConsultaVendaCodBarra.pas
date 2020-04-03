unit UConsultaVendaCodBarra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls;

type
  TFrmConsultaVendaCodBarras = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Codbarra: TEdit;
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
  FrmConsultaVendaCodBarras: TFrmConsultaVendaCodBarras;

implementation

uses UDados, URelEntradaPesquisaCodigo, URelVendaCodbarra;

{$R *.dfm}

procedure TFrmConsultaVendaCodBarras.SpeedButton1Click(Sender: TObject);
begin
Udados.UDMDados.SqlconsultaVendaCodBarra.close;
Udados.UDMDados.SqlconsultaVendaCodBarra.ParamByName('codBarra').AsString := (Codbarra.Text);
Udados.UDMDados.SqlconsultaVendaCodBarra.Open;
end;

procedure TFrmConsultaVendaCodBarras.SpeedButton2Click(Sender: TObject);
var
FrmRelVendaCodbarra:TFrmRelVendaCodbarra;
begin
FrmRelVendaCodbarra:=TFrmRelVendaCodbarra.Create(Self);
Try
FrmRelVendaCodbarra.QuickRep1.Preview;
Finally
FrmRelVendaCodbarra.Free;
END;

end;

end.
