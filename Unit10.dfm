object Form11: TForm11
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Aluguel'
  ClientHeight = 396
  ClientWidth = 818
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
    Left = 8
    Top = 21
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 159
    Top = 77
    Width = 124
    Height = 13
    Caption = 'Apartamentos Disponiveis'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 8
    Top = 77
    Width = 104
    Height = 13
    Caption = 'Contratos Dispon'#237'veis'
    FocusControl = DBEdit1
  end
  object Label4: TLabel
    Left = 310
    Top = 77
    Width = 84
    Height = 13
    Caption = 'Data de Abertura'
    FocusControl = DBEdit1
  end
  object Label5: TLabel
    Left = 461
    Top = 77
    Width = 108
    Height = 13
    Caption = 'Data de Encerramento'
    FocusControl = DBEdit1
  end
  object Label6: TLabel
    Left = 159
    Top = 123
    Width = 40
    Height = 13
    Caption = 'Inquilino'
    FocusControl = DBEdit1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 208
    Width = 802
    Height = 180
    DataSource = DataSource5
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idaluguel'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_inicial'
        Title.Caption = 'Data Abertura'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_final'
        Title.Caption = 'Data de Encerramento'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'numero'
        Title.Caption = 'N'#250'mero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'juros'
        Title.Caption = 'Juros (%)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Title.Caption = 'Total'
        Visible = True
      end>
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 159
    Top = 96
    Width = 145
    Height = 21
    DataField = 'idapartamento'
    DataSource = DataSource1
    KeyField = 'idapartamento'
    ListField = 'numero'
    ListSource = DataSource2
    TabOrder = 1
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 310
    Top = 96
    Width = 145
    Height = 21
    DataField = 'idcontrato'
    DataSource = DataSource1
    KeyField = 'idcontrato'
    ListField = 'data_inicial'
    ListSource = DataSource3
    ReadOnly = True
    TabOrder = 2
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 461
    Top = 96
    Width = 145
    Height = 21
    DataField = 'idcontrato'
    DataSource = DataSource1
    KeyField = 'idcontrato'
    ListField = 'data_final'
    ListSource = DataSource3
    ReadOnly = True
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 184
    Width = 315
    Height = 18
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 4
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 40
    Width = 134
    Height = 21
    DataField = 'idaluguel'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBLookupListBox1: TDBLookupListBox
    Left = 8
    Top = 96
    Width = 121
    Height = 82
    DataField = 'idcontrato'
    DataSource = DataSource1
    KeyField = 'idcontrato'
    ListField = 'idcontrato'
    ListSource = DataSource3
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 159
    Top = 136
    Width = 145
    Height = 21
    DataField = 'idcliente'
    DataSource = DataSource1
    KeyField = 'idcliente'
    ListField = 'nome'
    ListSource = DataSource4
    TabOrder = 7
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\RestBuilding\banco.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 328
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 408
    Top = 160
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    Left = 200
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 472
    Top = 160
  end
  object FDQuery1: TFDQuery
    Active = True
    AfterPost = FDQuery1AfterPost
    AfterDelete = FDQuery1AfterDelete
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from aluguel,apartamento,contrato,cliente'
      ''
      'where cliente.idcliente = aluguel.idcliente'
      ''
      'and apartamento.idapartamento = aluguel.idapartamento'
      ''
      'and contrato.idcontrato = aluguel.idcontrato;')
    Left = 416
    Top = 16
    object FDQuery1idaluguel: TIntegerField
      FieldName = 'idaluguel'
      Origin = 'idaluguel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuery1idapartamento: TIntegerField
      FieldName = 'idapartamento'
      Origin = 'idapartamento'
    end
    object FDQuery1idcontrato: TIntegerField
      FieldName = 'idcontrato'
      Origin = 'idcontrato'
    end
    object FDQuery1idcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object FDQuery1idapartamento_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idapartamento_1'
      Origin = 'idapartamento'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1numero: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQuery1bloco: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'bloco'
      Origin = 'bloco'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQuery1valor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1juros: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'juros'
      Origin = 'juros'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1idcontrato_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcontrato_1'
      Origin = 'idcontrato'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1data_inicial: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'data_inicial'
      Origin = 'data_inicial'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1data_final: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'data_final'
      Origin = 'data_final'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1idcliente_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcliente_1'
      Origin = 'idcliente'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1idlocatario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idlocatario'
      Origin = 'idlocatario'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1fiador: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'fiador'
      Origin = 'fiador'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1testemunha: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'testemunha'
      Origin = 'testemunha'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQuery1idcliente_2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcliente_2'
      Origin = 'idcliente'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1nome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1telefone: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQuery1rg: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg'
      Origin = 'rg'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQuery1cpf: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select idapartamento,numero from apartamento'
      ''
      'where idapartamento not in'
      ''
      '(select idapartamento from aluguel);')
    Left = 480
    Top = 16
  end
  object FDQuery3: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select idcontrato, data_final, data_inicial from contrato'
      ''
      'where idcontrato not in'
      ''
      '(select idcontrato from aluguel);')
    Left = 544
    Top = 24
  end
  object FDQuery4: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from cliente;')
    Left = 576
    Top = 128
  end
  object DataSource3: TDataSource
    DataSet = FDQuery3
    Left = 448
    Top = 312
  end
  object DataSource4: TDataSource
    DataSet = FDQuery4
    Left = 544
    Top = 320
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 320
    Top = 200
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 244
    Top = 293
    object LinkPropertyToFieldText: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'idaluguel'
      Component = DBEdit1
      ComponentProperty = 'Text'
    end
  end
  object Timer1: TTimer
    Interval = 10000
    Left = 136
    Top = 304
  end
  object FDQuery5: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from aluguel,apartamento,contrato,cliente'
      ''
      'where cliente.idcliente = aluguel.idcliente'
      ''
      'and apartamento.idapartamento = aluguel.idapartamento'
      ''
      'and contrato.idcontrato = aluguel.idcontrato;')
    Left = 536
    Top = 152
    object IntegerField1: TIntegerField
      FieldName = 'idaluguel'
      Origin = 'idaluguel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField2: TIntegerField
      FieldName = 'idapartamento'
      Origin = 'idapartamento'
    end
    object IntegerField3: TIntegerField
      FieldName = 'idcontrato'
      Origin = 'idcontrato'
    end
    object IntegerField4: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object IntegerField5: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idapartamento_1'
      Origin = 'idapartamento'
      ProviderFlags = []
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object WideStringField2: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'bloco'
      Origin = 'bloco'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FloatField1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      ProviderFlags = []
      ReadOnly = True
    end
    object FloatField2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'juros'
      Origin = 'juros'
      ProviderFlags = []
      ReadOnly = True
    end
    object FloatField3: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
      ProviderFlags = []
      ReadOnly = True
    end
    object IntegerField6: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcontrato_1'
      Origin = 'idcontrato'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'data_inicial'
      Origin = 'data_inicial'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQLTimeStampField2: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'data_final'
      Origin = 'data_final'
      ProviderFlags = []
      ReadOnly = True
    end
    object IntegerField7: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcliente_1'
      Origin = 'idcliente'
      ProviderFlags = []
      ReadOnly = True
    end
    object IntegerField8: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idlocatario'
      Origin = 'idlocatario'
      ProviderFlags = []
      ReadOnly = True
    end
    object WideStringField3: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'fiador'
      Origin = 'fiador'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object WideStringField4: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'testemunha'
      Origin = 'testemunha'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object IntegerField9: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcliente_2'
      Origin = 'idcliente'
      ProviderFlags = []
      ReadOnly = True
    end
    object WideStringField5: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object WideStringField6: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object WideStringField7: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg'
      Origin = 'rg'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object WideStringField8: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
  end
  object DataSource5: TDataSource
    DataSet = FDQuery5
    Left = 576
    Top = 240
  end
end
