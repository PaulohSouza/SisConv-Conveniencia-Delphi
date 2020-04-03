unit UFrmRelSaidaData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelSaidaData = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel10: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelSaidaData: TFrmRelSaidaData;

implementation

uses UDados, UEntrada;

{$R *.dfm}

end.
