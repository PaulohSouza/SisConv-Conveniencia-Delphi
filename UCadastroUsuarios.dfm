object FrmCadastroUsuarios: TFrmCadastroUsuarios
  Left = 219
  Top = 133
  BorderStyle = bsSingle
  Caption = 'NOTESC 4 -  Cadastro de Usuarios'
  ClientHeight = 490
  ClientWidth = 938
  Color = 8421440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label15: TLabel
    Left = 696
    Top = 208
    Width = 130
    Height = 29
    Caption = 'NOTESC 4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 296
    Top = 16
    Width = 227
    Height = 20
    Caption = 'CADASTRO DE USUARIOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 240
    Top = 48
    Width = 340
    Height = 33
    DataSource = UDMDados.DsUsuarios
    Hints.Strings = (
      'Primeiro Registro'
      'Registro Anterior'
      'Proximo Registro'
      'Ultimo Registro'
      'Novo Registro'
      'Excluir Registro'
      'Editar Registro'
      'Gravar Registro'
      'Cancelar'
      'Atualizar dados')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = DBNavigator1Click
  end
  object GroupBox1: TGroupBox
    Left = 160
    Top = 96
    Width = 473
    Height = 217
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 40
      Height = 13
      Caption = 'Codigo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 72
      Width = 32
      Height = 13
      Caption = 'Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 32
      Top = 96
      Width = 37
      Height = 13
      Caption = 'Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 32
      Top = 120
      Width = 93
      Height = 13
      Caption = 'Nivel de Acesso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 16
      Width = 65
      Height = 21
      DataField = 'USU_CODIGO'
      DataSource = UDMDados.DsUsuarios
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 72
      Top = 48
      Width = 249
      Height = 21
      DataField = 'USU_NOME'
      DataSource = UDMDados.DsUsuarios
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 72
      Top = 72
      Width = 249
      Height = 21
      DataField = 'USU_LOGIN'
      DataSource = UDMDados.DsUsuarios
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 72
      Top = 96
      Width = 217
      Height = 21
      DataField = 'USU_SENHA'
      DataSource = UDMDados.DsUsuarios
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 128
      Top = 120
      Width = 81
      Height = 21
      DataField = 'USU_NIVEL DE ACESSO'
      DataSource = UDMDados.DsUsuarios
      TabOrder = 4
    end
    object GroupBox3: TGroupBox
      Left = 32
      Top = 160
      Width = 401
      Height = 49
      TabOrder = 5
      object Memo1: TMemo
        Left = 8
        Top = 8
        Width = 385
        Height = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Obs: Nivel 3: Administrador,  Nivel 1: Funcion'#225'rio')
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 632
    Top = 24
    Width = 233
    Height = 57
    Caption = 'Consulta Via Digita'#231#227'o - Insira o NOME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Edit1: TEdit
      Left = 16
      Top = 24
      Width = 201
      Height = 21
      Hint = 'Insira Aqui o Nome do Usuaio que deseja Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 120
    Top = 336
    Width = 593
    Height = 105
    Hint = 'Dados Cadastrados no Sistema Notesc'
    DataSource = UDMDados.DsUsuarios
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'USU_CODIGO'
        Title.Caption = 'CODIGO'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOME'
        Title.Caption = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_LOGIN'
        Title.Caption = 'LOGIN'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_SENHA'
        Title.Caption = 'SENHA'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NIVEL DE ACESSO'
        Title.Caption = 'NIVEL DE ACESSO'
        Width = 105
        Visible = True
      end>
  end
  object RG: TRadioGroup
    Left = 664
    Top = 120
    Width = 201
    Height = 65
    Hint = 'Escolha sua Ordem de Visualiza'#231#227'o'
    Caption = 'Ordem de Visualiza'#231#227'o'
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Codigo'
      'Nome')
    ParentFont = False
    TabOrder = 4
    OnClick = RGClick
  end
  object Button1: TButton
    Left = 744
    Top = 360
    Width = 169
    Height = 41
    Hint = 'Clique para Visualizar o Relat'#243'rio de Usu'#225'rios'
    Caption = 'RELAT'#211'RIO DE USU'#193'RIOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object TblAuxUsuarios: TIBTable
    Database = UDMDados.DadosConveniencia
    Transaction = UDMDados.IBTrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'USU_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'USU_NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'USU_LOGIN'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'USU_SENHA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'USU_NIVEL DE ACESSO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY9'
        Fields = 'USU_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IND_USU_CODIGO'
        Fields = 'USU_CODIGO'
      end
      item
        Name = 'IND_USU_NOME'
        Fields = 'USU_NOME'
      end>
    StoreDefs = True
    TableName = 'USUARIOS'
    Left = 72
    Top = 144
    object TblAuxUsuariosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object TblAuxUsuariosUSU_NOME: TIBStringField
      FieldName = 'USU_NOME'
      Size = 30
    end
    object TblAuxUsuariosUSU_LOGIN: TIBStringField
      FieldName = 'USU_LOGIN'
      Size = 30
    end
    object TblAuxUsuariosUSU_SENHA: TIBStringField
      FieldName = 'USU_SENHA'
      Size = 25
    end
    object TblAuxUsuariosUSU_NIVELDEACESSO: TIBStringField
      FieldName = 'USU_NIVEL DE ACESSO'
      Size = 1
    end
  end
end
