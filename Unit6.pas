unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Data.Win.ADODB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Mask, IBX.IBConnectionBroker, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Phys.ODBCBase, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI,MidasLib;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Edit2: TEdit;
    Edit3: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADODataSet1: TADODataSet;
    ADODataSet2: TADODataSet;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    DBLookupComboBox2: TDBLookupComboBox;
    ADODataSet3: TADODataSet;
    DataSource3: TDataSource;
    ADODataSet3idlocatario: TIntegerField;
    ADODataSet3nome: TWideStringField;
    ADODataSet3idusuario: TIntegerField;
    ADODataSet4: TADODataSet;
    ADODataSet4idcontrato: TIntegerField;
    ADODataSet4data_inicial: TDateTimeField;
    ADODataSet4data_final: TDateTimeField;
    ADODataSet4idcliente: TIntegerField;
    ADODataSet4idlocatario: TIntegerField;
    ADODataSet4fiador: TWideStringField;
    ADODataSet4testemunha: TWideStringField;
    DataSource4: TDataSource;
    BindSourceDB2: TBindSourceDB;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ADODataSet2idcliente: TIntegerField;
    ADODataSet2nome: TWideStringField;
    ADODataSet2telefone: TWideStringField;
    ADODataSet2rg: TWideStringField;
    ADODataSet2cpf: TWideStringField;
    ADODataSet1clientenome: TWideStringField;
    ADODataSet1clienteidcliente: TIntegerField;
    ADODataSet1locatarionome: TWideStringField;
    ADODataSet1data_inicial: TDateTimeField;
    ADODataSet1data_final: TDateTimeField;
    ADODataSet1idcontrato: TIntegerField;
    ADODataSet1fiador: TWideStringField;
    ADODataSet1testemunha: TWideStringField;
    ADODataSet1contratoidcliente: TIntegerField;
    ADODataSet1idlocatario: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}




procedure TForm7.DBGrid1CellClick(Column: TColumn);
begin
//*******************************************
//*******************************************
Edit1.Text := ADODataSet1idcontrato.AsString;
Edit2.Text := ADODataSet1fiador.AsString;
Edit3.Text := ADODataSet1testemunha.AsString;
//*******************************************
//*******************************************
DateTimePicker1.Date := ADODataSet1data_inicial.Value;
DateTimePicker2.Date := ADODataSet1data_final.Value;

//*******************************************
//*******************************************

//DBLookupComboBox2.DataField := ADODataSet1idlocatario;

//*******************************************
//*******************************************
end;

procedure TForm7.FormActivate(Sender: TObject);
begin
ADOConnection1.Connected:=True;
ADODataSet1.Active :=True;
ADODataSet2.Active :=True;
ADODataSet3.Active :=True;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADOConnection1.Connected:=False;
ADODataSet1.Active :=False;
ADODataSet2.Active :=False;
ADODataSet3.Active :=False;
end;

end.
