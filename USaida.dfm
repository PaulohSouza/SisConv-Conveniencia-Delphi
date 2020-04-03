object FrmSaida: TFrmSaida
  Left = 293
  Top = 75
  Width = 929
  Height = 589
  Caption = 'SAIDA DE MERCADORIAS'
  Color = 4227072
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 128
    Width = 39
    Height = 13
    Caption = 'C'#243'digo.:'
  end
  object Label2: TLabel
    Left = 248
    Top = 128
    Width = 87
    Height = 13
    Caption = 'C'#243'digo de Barras.:'
  end
  object Label3: TLabel
    Left = 88
    Top = 176
    Width = 43
    Height = 13
    Caption = 'Produto.:'
  end
  object Label4: TLabel
    Left = 88
    Top = 232
    Width = 34
    Height = 13
    Caption = 'Pre'#231'o.:'
  end
  object DBNavigator1: TDBNavigator
    Left = 208
    Top = 32
    Width = 270
    Height = 41
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 136
    Top = 120
    Width = 97
    Height = 21
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 344
    Top = 120
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object ListBox1: TListBox
    Left = 608
    Top = 88
    Width = 185
    Height = 177
    ItemHeight = 13
    Items.Strings = (
      'Corante'
      'dsds'
      'dsds')
    TabOrder = 3
  end
  object ListBox2: TListBox
    Left = 576
    Top = 88
    Width = 33
    Height = 177
    ItemHeight = 13
    Items.Strings = (
      '01x'
      '02x'
      '03x'
      '04x'
      '05x'
      '')
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 136
    Top = 176
    Width = 209
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
  end
  object GroupBox1: TGroupBox
    Left = 104
    Top = 288
    Width = 537
    Height = 169
    Caption = 'Venda.:'
    TabOrder = 6
    object Label5: TLabel
      Left = 32
      Top = 32
      Width = 41
      Height = 13
      Caption = 'TOTAL.:'
    end
    object Label6: TLabel
      Left = 40
      Top = 136
      Width = 58
      Height = 13
      Caption = 'Valor Pago.:'
    end
    object Label7: TLabel
      Left = 264
      Top = 136
      Width = 34
      Height = 13
      Caption = 'Troco.:'
    end
    object Edit2: TEdit
      Left = 80
      Top = 24
      Width = 257
      Height = 21
      TabOrder = 0
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 104
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 312
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Edit4'
    end
  end
end
