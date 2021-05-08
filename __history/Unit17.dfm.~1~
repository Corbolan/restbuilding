object Form17: TForm17
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Consulta de Contrato'
  ClientHeight = 607
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    748
    607)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 368
    Width = 732
    Height = 225
    Anchors = [akLeft, akRight, akBottom]
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idcontrato'
        Title.Caption = 'C'#243'digo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_inicial'
        Title.Caption = 'Data Abertura'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_final'
        Title.Caption = 'Data Final'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliente.nome'
        Title.Caption = 'Inquilino'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'locatario.nome'
        Title.Caption = 'Locatario'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fiador'
        Title.Caption = 'Fiador'
        Width = 150
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 337
    Height = 129
    Caption = 'Pesquisa por Data'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 28
      Width = 84
      Height = 13
      Caption = 'Data de Abertura'
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 108
      Height = 13
      Caption = 'Data de Encerramento'
    end
    object Button2: TButton
      Left = 232
      Top = 58
      Width = 93
      Height = 44
      Caption = 'Buscar'
      TabOrder = 0
      OnClick = Button2Click
    end
    object txtAbertura: TDateTimePicker
      Left = 16
      Top = 45
      Width = 186
      Height = 21
      Date = 43040.777192326390000000
      Time = 43040.777192326390000000
      TabOrder = 1
    end
    object txtEncerramento: TDateTimePicker
      Left = 16
      Top = 91
      Width = 186
      Height = 21
      Date = 43040.777192326390000000
      Time = 43040.777192326390000000
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 435
    Top = 8
    Width = 305
    Height = 145
    Caption = 'Pesquisa por Inquilino'
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 28
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Button5: TButton
      Left = 168
      Top = 96
      Width = 126
      Height = 38
      Caption = 'Buscar'
      TabOrder = 0
      OnClick = Button5Click
    end
    object txtNomeInquilino: TEdit
      Left = 24
      Top = 55
      Width = 273
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 175
    Width = 337
    Height = 145
    Caption = 'Pesquisa por Locatario'
    TabOrder = 3
    object Label4: TLabel
      Left = 16
      Top = 28
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Button3: TButton
      Left = 199
      Top = 96
      Width = 126
      Height = 38
      Caption = 'Buscar'
      TabOrder = 0
      OnClick = Button3Click
    end
    object txtNomeLocatario: TEdit
      Left = 16
      Top = 47
      Width = 273
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox4: TGroupBox
    Left = 435
    Top = 175
    Width = 305
    Height = 145
    Caption = 'Pesquisa por Fiador'
    TabOrder = 4
    object Label5: TLabel
      Left = 16
      Top = 28
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Button4: TButton
      Left = 168
      Top = 96
      Width = 126
      Height = 38
      Caption = 'Buscar'
      TabOrder = 0
      OnClick = Button4Click
    end
    object txtNomeFiador: TEdit
      Left = 16
      Top = 47
      Width = 273
      Height = 21
      TabOrder = 1
    end
  end
  object Button1: TButton
    Left = 544
    Top = 327
    Width = 180
    Height = 35
    Caption = 'Gerar Relat'#243'rio'
    TabOrder = 5
  end
  object btCarregaContrato: TButton
    Left = 296
    Top = 326
    Width = 182
    Height = 36
    Caption = 'Carregar Todos Registros'
    TabOrder = 6
    OnClick = btCarregaContratoClick
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\RestBuilding\ban' +
      'co.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 176
    Top = 464
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT contrato.idcontrato, contrato.data_inicial , contrato.dat' +
        'a_final,'
      ''
      'cliente.nome, locatario.nome, contrato.fiador'
      ''
      
        'FROM contrato, cliente, locatario WHERE cliente.idcliente = cont' +
        'rato.idcliente'
      ''
      'AND locatario.idlocatario = contrato.idlocatario'
      ''
      'order by contrato.idcontrato asc;')
    Left = 312
    Top = 456
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 408
    Top = 464
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ADOQuery1
    BCDToCurrency = False
    Left = 504
    Top = 464
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43040.762897037040000000
    ReportOptions.LastChange = 43040.762897037040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 584
    Top = 464
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
