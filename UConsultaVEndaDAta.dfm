object FrmConsultaVendaDAta: TFrmConsultaVendaDAta
  Left = 333
  Top = 122
  Width = 726
  Height = 480
  Caption = 'Consulta Vendas - DATA'
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
    Left = 40
    Top = 64
    Width = 585
    Height = 281
    Caption = 'Pesquisa por Data.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 79
      Height = 16
      Caption = 'Data Inicial'
    end
    object Label2: TLabel
      Left = 248
      Top = 32
      Width = 72
      Height = 16
      Caption = 'Data Final'
    end
    object SpeedButton1: TSpeedButton
      Left = 472
      Top = 16
      Width = 105
      Height = 33
      Caption = 'Pesquisar'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 392
      Top = 200
      Width = 153
      Height = 33
      Caption = 'Imprimir Resultado'
      OnClick = SpeedButton2Click
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 64
      Width = 521
      Height = 120
      DataSource = UDMDados.DSConsultaEntrada
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
    object DataInicial: TDateEdit
      Left = 112
      Top = 32
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DataFinal: TDateEdit
      Left = 336
      Top = 32
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
  end
end
