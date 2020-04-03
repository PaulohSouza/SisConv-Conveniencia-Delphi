object FrmConsultaEntrada: TFrmConsultaEntrada
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
    Left = 48
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
      Left = 40
      Top = 32
      Width = 86
      Height = 16
      Caption = 'Cod. Inicial.:'
    end
    object Label2: TLabel
      Left = 248
      Top = 32
      Width = 75
      Height = 16
      Caption = 'Cod Final.:'
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
    object Datainicial: TEdit
      Left = 128
      Top = 24
      Width = 105
      Height = 24
      TabOrder = 0
      Text = '0'
    end
    object DataFinal: TEdit
      Tag = 999
      Left = 336
      Top = 24
      Width = 89
      Height = 24
      TabOrder = 1
      Text = '99'
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 56
      Width = 521
      Height = 120
      DataSource = UDMDados.DSConsultaEntrada
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
  end
end
