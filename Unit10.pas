unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.Phys.ODBCBase,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet,MidasLib;

type
  TForm11 = class(TForm)
    DBGrid1: TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBLookupListBox1: TDBLookupListBox;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink;
    DataSource2: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    FDQuery4: TFDQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Label2: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldText: TLinkPropertyToField;
    FDQuery1idaluguel: TIntegerField;
    FDQuery1idapartamento: TIntegerField;
    FDQuery1idcontrato: TIntegerField;
    FDQuery1idcliente: TIntegerField;
    FDQuery1idapartamento_1: TIntegerField;
    FDQuery1numero: TWideStringField;
    FDQuery1bloco: TWideStringField;
    FDQuery1valor: TFloatField;
    FDQuery1juros: TFloatField;
    FDQuery1total: TFloatField;
    FDQuery1idcontrato_1: TIntegerField;
    FDQuery1data_inicial: TSQLTimeStampField;
    FDQuery1data_final: TSQLTimeStampField;
    FDQuery1idcliente_1: TIntegerField;
    FDQuery1idlocatario: TIntegerField;
    FDQuery1fiador: TWideStringField;
    FDQuery1testemunha: TWideStringField;
    FDQuery1idcliente_2: TIntegerField;
    FDQuery1nome: TWideStringField;
    FDQuery1telefone: TWideStringField;
    FDQuery1rg: TWideStringField;
    FDQuery1cpf: TWideStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Timer1: TTimer;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    FDQuery5: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    IntegerField6: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    IntegerField9: TIntegerField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    DataSource5: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FDQuery1AfterPost(DataSet: TDataSet);

    procedure FDQuery1AfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
begin
FDQuery1.Post;
FDConnection1.Connected:=False;
FDQuery4.Active:=False;
FDConnection1.Connected:=True;
FDQuery4.Active:=True;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
FDQuery1.Delete;
FDConnection1.Connected:=False;
FDQuery4.Active:=False;
FDConnection1.Connected:=True;
FDQuery4.Active:=True;
end;

procedure TForm11.FDQuery1AfterDelete(DataSet: TDataSet);
begin
FDQuery2.Refresh;
FDQuery3.Refresh;
FDQuery4.Refresh;
FDQuery5.Refresh;
end;

procedure TForm11.FDQuery1AfterPost(DataSet: TDataSet);
begin
FDQuery2.Refresh;
FDQuery3.Refresh;
FDQuery4.Refresh;
FDQuery5.Refresh;
end;

end.
