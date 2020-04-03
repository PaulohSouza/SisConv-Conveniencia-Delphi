unit URelEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelEstoque = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRDBText1: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelEstoque: TFrmRelEstoque;

implementation

uses UDados, UEntrada;

{$R *.dfm}

end.
