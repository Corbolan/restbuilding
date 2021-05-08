object Form6: TForm6
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Cadastro de Apartamentos'
  ClientHeight = 508
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  DesignSize = (
    735
    508)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 50
    Width = 74
    Height = 24
    Caption = 'N'#250'mero:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 24
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 46
    Top = 80
    Width = 52
    Height = 24
    Caption = 'Bloco:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 24
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 164
    Top = 50
    Width = 50
    Height = 24
    Caption = 'Valor:'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 24
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 164
    Top = 80
    Width = 50
    Height = 24
    Caption = 'Juros:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 24
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 328
    Top = 50
    Width = 47
    Height = 24
    Caption = 'Total:'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 24
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 29
    Top = 8
    Width = 86
    Height = 28
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = 28
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbCodigo: TLabel
    Left = 143
    Top = 8
    Width = 15
    Height = 28
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = 28
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 127
    Width = 719
    Height = 373
    Anchors = [akLeft, akRight, akBottom]
    DataSource = Fonte_Dados
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'idapartamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bloco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'juros'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 336
    Top = 84
    Width = 369
    Height = 37
    DataSource = Fonte_Dados
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbRefresh]
    TabOrder = 1
    OnClick = DBNavigator1Click
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 46
    Width = 54
    Height = 28
    DataField = 'numero'
    DataSource = Fonte_Dados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Cambria'
    Font.Style = []
    Font.Quality = fqClearType
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 104
    Top = 80
    Width = 54
    Height = 28
    DataField = 'bloco'
    DataSource = Fonte_Dados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Cambria'
    Font.Style = []
    Font.Quality = fqClearType
    ParentFont = False
    TabOrder = 3
    OnExit = DBEdit2Exit
  end
  object DBEdit3: TDBEdit
    Left = 220
    Top = 50
    Width = 93
    Height = 28
    DataField = 'valor'
    DataSource = Fonte_Dados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Cambria'
    Font.Style = []
    Font.Quality = fqClearType
    ParentFont = False
    TabOrder = 4
    OnChange = DBEdit3Change
  end
  object DBEdit4: TDBEdit
    Left = 220
    Top = 84
    Width = 61
    Height = 28
    DataField = 'juros'
    DataSource = Fonte_Dados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Cambria'
    Font.Style = []
    Font.Quality = fqClearType
    ParentFont = False
    TabOrder = 5
    OnExit = DBEdit4Exit
  end
  object DBEdit5: TDBEdit
    Left = 381
    Top = 50
    Width = 92
    Height = 28
    DataField = 'total'
    DataSource = Fonte_Dados
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Cambria'
    Font.Style = []
    Font.Quality = fqClearType
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    OnChange = DBEdit5Change
    OnExit = DBEdit5Exit
  end
  object conecta_banco: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Germano\De' +
      'sktop\Sistema\Win32\Debug\banco.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 552
    Top = 8
  end
  object Tabela_Apartamento: TADODataSet
    Active = True
    Connection = conecta_banco
    CursorType = ctStatic
    CommandText = 'select * from apartamento;'
    Parameters = <>
    Left = 640
    Top = 8
    object Tabela_Apartamentoidapartamento: TAutoIncField
      FieldName = 'idapartamento'
    end
    object Tabela_Apartamentonumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object Tabela_Apartamentobloco: TWideStringField
      FieldName = 'bloco'
      Size = 10
    end
    object Tabela_Apartamentovalor: TFloatField
      FieldName = 'valor'
      DisplayFormat = 'R$ 0.00'
    end
    object Tabela_Apartamentojuros: TFloatField
      FieldName = 'juros'
      DisplayFormat = '0%'
    end
    object Tabela_Apartamentototal: TFloatField
      FieldName = 'total'
      DisplayFormat = 'R$ 0.00'
    end
  end
  object Fonte_Dados: TDataSource
    DataSet = Tabela_Apartamento
    Left = 448
    Top = 8
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 304
  end
end
