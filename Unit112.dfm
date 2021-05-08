object Form12: TForm12
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Apartamento'
  ClientHeight = 350
  ClientWidth = 731
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
    Left = 40
    Top = 16
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 24
    Top = 16
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label3: TLabel
    Left = 216
    Top = 22
    Width = 25
    Height = 13
    Caption = 'Bloco'
  end
  object Label4: TLabel
    Left = 24
    Top = 56
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label5: TLabel
    Left = 216
    Top = 56
    Width = 48
    Height = 13
    Caption = 'Juros (%)'
  end
  object Label7: TLabel
    Left = 500
    Top = 28
    Width = 66
    Height = 18
    Caption = 'Juros(%):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 529
    Top = 52
    Width = 37
    Height = 18
    Caption = 'Valor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 585
    Top = 28
    Width = 23
    Height = 18
    Caption = '0%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 585
    Top = 52
    Width = 8
    Height = 18
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 360
    Top = 16
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object Label12: TLabel
    Left = 585
    Top = 76
    Width = 10
    Height = 18
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 529
    Top = 76
    Width = 43
    Height = 18
    Caption = 'Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 160
    Width = 697
    Height = 182
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 24
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '1'
  end
  object Edit2: TEdit
    Left = 216
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '2'
  end
  object Edit3: TEdit
    Left = 24
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '379,99'
    OnKeyUp = Edit3KeyUp
  end
  object Edit4: TEdit
    Left = 216
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '30'
    OnKeyUp = Edit4KeyUp
  end
  object Button1: TButton
    Left = 24
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 5
    Visible = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 6
    Visible = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 216
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 7
    Visible = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 309
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 8
    Visible = False
    OnClick = Button4Click
  end
  object Edit5: TEdit
    Left = 360
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 9
    Text = '493,987'
  end
  object DBNavigator1: TDBNavigator
    Left = 390
    Top = 120
    Width = 315
    Height = 34
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 10
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Re' +
      'stBuilding\banco.mdb;Mode=Share Deny None;Persist Security Info=' +
      'False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Je' +
      't OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:D' +
      'atabase Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet O' +
      'LEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password=' +
      '"";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Data' +
      'base=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLED' +
      'B:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 384
    Top = 272
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from apartamento'
    Parameters = <>
    Left = 192
    Top = 280
    object ADODataSet1idapartamento: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'idapartamento'
    end
    object ADODataSet1numero: TWideStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'numero'
      Size = 10
    end
    object ADODataSet1bloco: TWideStringField
      DisplayLabel = 'Bloco'
      FieldName = 'bloco'
      Size = 10
    end
    object ADODataSet1valor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
    object ADODataSet1juros: TFloatField
      DisplayLabel = 'Juros (%)'
      FieldName = 'juros'
    end
    object ADODataSet1total: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'total'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 280
    Top = 280
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    Left = 584
    Top = 216
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = ADODataSet1
    ScopeMappings = <>
    Left = 656
    Top = 264
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 508
    Top = 253
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'idapartamento'
      Control = Edit1
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'bloco'
      Control = Edit2
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'juros'
      Control = Edit4
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'valor'
      Control = Edit3
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'total'
      Control = Edit5
      Track = True
    end
  end
end
