object FrmConsultaEntradaData: TFrmConsultaEntradaData
  Left = 333
  Top = 122
  Width = 726
  Height = 480
  Caption = 'Consulta Entrada de Mercadorias.:'
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
    Left = 64
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
      Top = 40
      Width = 83
      Height = 16
      Caption = 'DataInicial.:'
    end
    object Label2: TLabel
      Left = 224
      Top = 40
      Width = 80
      Height = 16
      Caption = 'Data Final.:'
    end
    object SpeedButton1: TSpeedButton
      Left = 456
      Top = 32
      Width = 105
      Height = 33
      Caption = 'Pesquisar'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 400
      Top = 208
      Width = 153
      Height = 33
      Caption = 'Imprimir Resultado'
      OnClick = SpeedButton2Click
    end
    object DBGrid1: TDBGrid
      Left = 32
      Top = 80
      Width = 529
      Height = 113
      DataSource = UDMDados.DsConsultaEntradaData
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
    object DataInicial: TDateEdit
      Left = 112
      Top = 40
      Width = 105
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DataFinal: TDateEdit
      Left = 312
      Top = 40
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
  end
end
