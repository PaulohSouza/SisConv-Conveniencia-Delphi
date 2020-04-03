unit URelSaidaGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelSaidaGeral = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel10: TQRLabel;
    QRExpr1: TQRExpr;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelSaidaGeral: TFrmRelSaidaGeral;

implementation

uses UDados, UEntrada;

{$R *.dfm}

procedure TFrmRelSaidaGeral.FormShow(Sender: TObject);
begin
uDADOS.UDMDados.TblSaida.Open;
end;

end.
