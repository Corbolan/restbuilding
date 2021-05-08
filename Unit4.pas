unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Win.ADODB, Vcl.Mask,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.DBScope,MidasLib;

type
  TForm4 = class(TForm)
    ADOConnection1: TADOConnection;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADODataSet1idcliente: TIntegerField;
    ADODataSet1nome: TWideStringField;
    ADODataSet1telefone: TWideStringField;
    ADODataSet1rg: TWideStringField;
    ADODataSet1cpf: TWideStringField;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormActivate(Sender: TObject);
begin
ADOConnection1.Connected:=True;
ADODataSet1.Active :=True;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADOConnection1.Connected:=False;
ADODataSet1.Active :=False;
end;

end.
