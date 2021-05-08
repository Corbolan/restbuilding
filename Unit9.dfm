object Form10: TForm10
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Locatario'
  ClientHeight = 474
  ClientWidth = 552
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 50
    Height = 21
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 192
    Top = 8
    Width = 68
    Height = 21
    Caption = 'Locatario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 120
    Width = 536
    Height = 346
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
        FieldName = 'idlocatario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 250
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 144
    Top = 89
    Width = 360
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 24
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '1'
  end
  object Edit2: TEdit
    Left = 192
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Germano'
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\RestBuilding\banco.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 312
    Top = 144
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT idlocatario, nome FROM locatario;')
    Left = 352
    Top = 224
    object FDQuery1idlocatario: TIntegerField
      FieldName = 'idlocatario'
      Origin = 'idlocatario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuery1nome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 384
    Top = 296
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 264
    Top = 240
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 420
    Top = 13
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'idlocatario'
      Control = Edit1
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'nome'
      Control = Edit2
      Track = True
    end
  end
end
