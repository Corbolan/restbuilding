object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Inquilino'
  ClientHeight = 406
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 6
    Width = 50
    Height = 20
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 112
    Top = 6
    Width = 42
    Height = 20
    Caption = 'Nome'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 456
    Top = 13
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 208
    Top = 56
    Width = 14
    Height = 13
    Caption = 'RG'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 112
    Top = 56
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit5
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 99
    Width = 721
    Height = 299
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Font.Quality = fqClearType
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idcliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 32
    Width = 73
    Height = 21
    Color = clBtnHighlight
    DataField = 'idcliente'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 32
    Width = 329
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 456
    Top = 32
    Width = 98
    Height = 21
    DataField = 'telefone'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 208
    Top = 72
    Width = 65
    Height = 21
    DataField = 'rg'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 112
    Top = 72
    Width = 74
    Height = 21
    DataField = 'cpf'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 384
    Top = 72
    Width = 306
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 6
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\RestBuilding\ban' +
      'co.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 272
    Top = 256
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from cliente'
    Parameters = <>
    Left = 368
    Top = 240
    object ADODataSet1idcliente: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'idcliente'
    end
    object ADODataSet1nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 50
    end
    object ADODataSet1telefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      EditMask = '!\(999\)0000-0000;1;_'
      Size = 15
    end
    object ADODataSet1rg: TWideStringField
      DisplayLabel = 'RG'
      FieldName = 'rg'
      EditMask = '9.999.999-9;1;_'
      Size = 15
    end
    object ADODataSet1cpf: TWideStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      EditMask = '999.999.99-99;1;_'
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 528
    Top = 224
  end
end
