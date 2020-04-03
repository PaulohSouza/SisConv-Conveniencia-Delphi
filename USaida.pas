unit USaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  TFrmSaida = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Edit1: TEdit;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Edit4: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSaida: TFrmSaida;

implementation

{$R *.dfm}

end.
