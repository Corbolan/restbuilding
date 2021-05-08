object Form7: TForm7
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Contrato'
  ClientHeight = 528
  ClientWidth = 919
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
    Left = 32
    Top = 8
    Width = 56
    Height = 20
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 176
    Top = 6
    Width = 142
    Height = 20
    Caption = 'Data de Abertura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 368
    Top = 6
    Width = 183
    Height = 20
    Caption = 'Data de Encerramento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 70
    Width = 51
    Height = 20
    Caption = 'Fiador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 181
    Top = 70
    Width = 101
    Height = 20
    Caption = 'Testemunha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 392
    Top = 70
    Width = 72
    Height = 20
    Caption = 'Inquilino'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 32
    Top = 126
    Width = 76
    Height = 20
    Caption = 'Locat'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 231
    Width = 903
    Height = 289
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'data_inicial'
        Title.Caption = 'Data Inicial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_final'
        Title.Caption = 'Data Encerramento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliente.nome'
        Title.Caption = 'Inquilino'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'locatario.nome'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fiador'
        Title.Caption = 'Fiador'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'testemunha'
        Title.Caption = 'Testemunha'
        Width = 170
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 192
    Width = 280
    Height = 33
    DataSource = DataSource4
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost]
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 32
    Top = 32
    Width = 121
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = '1'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 176
    Top = 32
    Width = 186
    Height = 28
    Date = 43017.000000000000000000
    Time = 43017.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DateTimePicker2: TDateTimePicker
    Left = 368
    Top = 32
    Width = 186
    Height = 28
    Date = 43034.000000000000000000
    Time = 43034.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 32
    Top = 96
    Width = 121
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = 'Jefersoon'
  end
  object Edit3: TEdit
    Left = 176
    Top = 96
    Width = 186
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = 'Kananda'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 392
    Top = 96
    Width = 145
    Height = 28
    DataField = 'idcliente'
    DataSource = DataSource4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idcliente'
    ListField = 'nome'
    ListSource = DataSource2
    ParentFont = False
    TabOrder = 7
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 32
    Top = 152
    Width = 145
    Height = 28
    DataField = 'idlocatario'
    DataSource = DataSource4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idlocatario'
    ListField = 'nome'
    ListSource = DataSource3
    ParentFont = False
    TabOrder = 8
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\RestBuilding\ban' +
      'co.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 608
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 552
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 632
    Top = 144
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select cliente.nome,cliente.idcliente,locatario.nome, '#13#10#13#10'contra' +
      'to.data_inicial,contrato.data_final,contrato.idcontrato,'#13#10#13#10'cont' +
      'rato.fiador, contrato.testemunha,'#13#10#13#10'contrato.idcliente,contrato' +
      '.idlocatario'#13#10#13#10'from cliente , contrato  ,locatario'#13#10#13#10'where cli' +
      'ente.idcliente = contrato.idcliente'#13#10#13#10'and locatario.idlocatario' +
      ' = contrato.idlocatario'#13#10#13#10'order by idcontrato asc;'
    Parameters = <>
    Left = 360
    Top = 136
    object ADODataSet1clientenome: TWideStringField
      FieldName = 'cliente.nome'
      Size = 50
    end
    object ADODataSet1clienteidcliente: TIntegerField
      FieldName = 'cliente.idcliente'
    end
    object ADODataSet1locatarionome: TWideStringField
      DisplayLabel = 'Locatario'
      FieldName = 'locatario.nome'
      Size = 80
    end
    object ADODataSet1data_inicial: TDateTimeField
      FieldName = 'data_inicial'
    end
    object ADODataSet1data_final: TDateTimeField
      FieldName = 'data_final'
    end
    object ADODataSet1idcontrato: TIntegerField
      FieldName = 'idcontrato'
    end
    object ADODataSet1fiador: TWideStringField
      FieldName = 'fiador'
      Size = 80
    end
    object ADODataSet1testemunha: TWideStringField
      FieldName = 'testemunha'
      Size = 80
    end
    object ADODataSet1contratoidcliente: TIntegerField
      FieldName = 'contrato.idcliente'
    end
    object ADODataSet1idlocatario: TIntegerField
      FieldName = 'idlocatario'
    end
  end
  object ADODataSet2: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from cliente'
    Parameters = <>
    Left = 464
    Top = 152
    object ADODataSet2idcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object ADODataSet2nome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object ADODataSet2telefone: TWideStringField
      FieldName = 'telefone'
      Size = 255
    end
    object ADODataSet2rg: TWideStringField
      FieldName = 'rg'
      Size = 255
    end
    object ADODataSet2cpf: TWideStringField
      FieldName = 'cpf'
      Size = 255
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = ADODataSet1
    ScopeMappings = <>
    Left = 552
    Top = 184
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 332
    Top = 397
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'idcontrato'
      Control = Edit1
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'fiador'
      Control = Edit2
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'testemunha'
      Control = Edit3
      Track = True
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'data_inicial'
      Control = DateTimePicker1
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'data_final'
      Control = DateTimePicker2
      Track = True
    end
  end
  object ADODataSet3: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from locatario;'
    Parameters = <>
    Left = 296
    Top = 152
    object ADODataSet3idlocatario: TIntegerField
      FieldName = 'idlocatario'
    end
    object ADODataSet3nome: TWideStringField
      FieldName = 'nome'
      Size = 80
    end
    object ADODataSet3idusuario: TIntegerField
      FieldName = 'idusuario'
    end
  end
  object DataSource3: TDataSource
    DataSet = ADODataSet3
    Left = 688
    Top = 120
  end
  object ADODataSet4: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from contrato;'
    Parameters = <>
    Left = 216
    Top = 120
    object ADODataSet4idcontrato: TIntegerField
      FieldName = 'idcontrato'
    end
    object ADODataSet4data_inicial: TDateTimeField
      FieldName = 'data_inicial'
    end
    object ADODataSet4data_final: TDateTimeField
      FieldName = 'data_final'
    end
    object ADODataSet4idcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object ADODataSet4idlocatario: TIntegerField
      FieldName = 'idlocatario'
    end
    object ADODataSet4fiador: TWideStringField
      FieldName = 'fiador'
      Size = 80
    end
    object ADODataSet4testemunha: TWideStringField
      FieldName = 'testemunha'
      Size = 80
    end
  end
  object DataSource4: TDataSource
    DataSet = ADODataSet4
    Left = 696
    Top = 64
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = ADODataSet4
    ScopeMappings = <>
    Left = 448
    Top = 352
  end
  object Timer1: TTimer
    Interval = 150
    Left = 568
    Top = 16
  end
end
