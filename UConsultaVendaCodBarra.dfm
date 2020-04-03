object FrmConsultaVendaCodBarras: TFrmConsultaVendaCodBarras
  Left = 333
  Top = 122
  Width = 726
  Height = 480
  Caption = 'Consulta Vendas'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 48
    Top = 64
    Width = 585
    Height = 281
    Caption = 'Pesquisa por C'#243'digo de Barra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 32
      Width = 71
      Height = 16
      Caption = 'Cod Barra'
    end
    object SpeedButton1: TSpeedButton
      Left = 440
      Top = 16
      Width = 105
      Height = 33
      Caption = 'Pesquisar'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 392
      Top = 192
      Width = 153
      Height = 33
      Caption = 'Imprimir Resultado'
      OnClick = SpeedButton2Click
    end
    object Codbarra: TEdit
      Left = 128
      Top = 24
      Width = 241
      Height = 24
      TabOrder = 0
      Text = '0'
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 56
      Width = 521
      Height = 120
      DataSource = UDMDados.DsConsultaVendaCodBarra
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
  end
end
