unit URelVendaCodbarra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelVendaCodBarra = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRDBText1: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelVendaCodBarra: TFrmRelVendaCodBarra;

implementation

uses UDados, UEntrada;

{$R *.dfm}

end.
