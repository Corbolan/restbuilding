object Form7: TForm7
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Contrato'
  ClientHeight = 528
  ClientWidth = 739
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
  object DBGrid1: TDBGrid
    Left = 16
    Top = 231
    Width = 705
    Height = 289
    DataSource = DataSource1
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
        FieldName = 'data_inicial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_final'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliente.nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'locatario.nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fiador'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'testemunha'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 192
    Width = 216
    Height = 33
    DataSource = DataSource4
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost]
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 32
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '1'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 176
    Top = 32
    Width = 186
    Height = 21
    Date = 43017.000000000000000000
    Time = 43017.000000000000000000
    TabOrder = 3
  end
  object DateTimePicker2: TDateTimePicker
    Left = 368
    Top = 32
    Width = 186
    Height = 21
    Date = 43034.000000000000000000
    Time = 43034.000000000000000000
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 32
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Jefersoon'
  end
  object Edit3: TEdit
    Left = 176
    Top = 80
    Width = 186
    Height = 21
    TabOrder = 6
    Text = 'Kananda'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 392
    Top = 80
    Width = 145
    Height = 21
    DataField = 'idcliente'
    DataSource = DataSource4
    KeyField = 'idcliente'
    ListField = 'nome'
    ListSource = DataSource2
    TabOrder = 7
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 32
    Top = 120
    Width = 145
    Height = 21
    DataField = 'idlocatario'
    DataSource = DataSource4
    KeyField = 'idlocatario'
    ListField = 'nome'
    ListSource = DataSource3
    TabOrder = 8
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Germano\De' +
      'sktop\Sistema\Win32\Debug\banco.mdb;Persist Security Info=False'
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
      'to.data_inicial,contrato.data_final,'#13#10#13#10'contrato.fiador, contrat' +
      'o.testemunha'#13#10#13#10'from cliente , contrato  ,locatario'#13#10#13#10'where cli' +
      'ente.idcliente = contrato.idcliente'#13#10#13#10'and locatario.idlocatario' +
      ' = contrato.idlocatario'#13#10';'
    Parameters = <>
    Left = 360
    Top = 136
    object ADODataSet1clientenome: TWideStringField
      FieldName = 'cliente.nome'
      Size = 50
    end
    object ADODataSet1idcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object ADODataSet1locatarionome: TWideStringField
      FieldName = 'locatario.nome'
      Size = 80
    end
    object ADODataSet1data_inicial: TDateTimeField
      FieldName = 'data_inicial'
    end
    object ADODataSet1data_final: TDateTimeField
      FieldName = 'data_final'
    end
    object ADODataSet1fiador: TWideStringField
      FieldName = 'fiador'
      Size = 80
    end
    object ADODataSet1testemunha: TWideStringField
      FieldName = 'testemunha'
      Size = 80
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
    Left = 20
    Top = 5
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
    Left = 360
    Top = 264
  end
  object Timer1: TTimer
    Interval = 80
    OnTimer = Timer1Timer
    Left = 568
    Top = 16
  end
end
