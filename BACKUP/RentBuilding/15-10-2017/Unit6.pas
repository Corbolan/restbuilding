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
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

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
    ADODataSet1clientenome: TWideStringField;
    ADODataSet1idcliente: TIntegerField;
    ADODataSet1locatarionome: TWideStringField;
    ADODataSet1data_inicial: TDateTimeField;
    ADODataSet1data_final: TDateTimeField;
    ADODataSet1fiador: TWideStringField;
    ADODataSet1testemunha: TWideStringField;
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
    procedure Timer1Timer(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses  Unit7;


procedure TForm7.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
  i :integer;
  begin
for i := 0 to ComponentCount-1 do

 begin
   if Components[i] is TDataSource then
   if (TDataSource(Components[i]).dataset.recno mod 2=0) then
   DBGrid1.Canvas.Brush.Color:=clyellow;
   DBGrid1.Canvas.Font.Color:=clblack;
   DBGrid1.DefaultDrawColumnCell(rect,datacol,column,state);


 end;

end;

procedure TForm7.Timer1Timer(Sender: TObject);
begin
ADODataSet1.Active:=False;
ADODataSet1.Active:=True;
end;

end.
