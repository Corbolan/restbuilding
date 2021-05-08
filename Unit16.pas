unit Unit16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  frxClass, frxDBSet, Data.Win.ADODB, Vcl.StdCtrls,MidasLib;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    ADOQuery1idapartamento: TIntegerField;
    ADOQuery1numero: TWideStringField;
    ADOQuery1bloco: TWideStringField;
    ADOQuery1valor: TFloatField;
    ADOQuery1juros: TFloatField;
    ADOQuery1total: TFloatField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    cbTipoDado: TComboBox;
    txtConsulta: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
if (cbTipoDado.ItemIndex.ToString = '0') or (cbTipoDado.ItemIndex.ToString='') then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from apartamento where idapartamento='+txtConsulta.Text+';');
ADOQuery1.Open;
end;
if (cbTipoDado.ItemIndex = 1) then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from apartamento where numero = "'+txtConsulta.Text+'";');
ADOQuery1.Open;
//ADOQuery1.Locate('nome',txtConsulta.Text,[loPartialKey]);
end;
if (cbTipoDado.ItemIndex = 2) then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from apartamento where bloco = "'+txtConsulta.Text+'";');
ADOQuery1.Open;
//ADOQuery1.Locate('rg',txtConsulta.Text,[loPartialKey]);
end;
if (cbTipoDado.ItemIndex = 3) then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from apartamento where valor = '+txtConsulta.Text+';');
ADOQuery1.Open;
//ADOQuery1.Locate('cpf',txtConsulta.Text,[loPartialKey]);
end;
if (cbTipoDado.ItemIndex = 4) then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from apartamento where juros = '+txtConsulta.Text+';');
ADOQuery1.Open;
//ADOQuery1.Locate('telefone',txtConsulta.Text,[loPartialKey]);
end;
if (cbTipoDado.ItemIndex = 5) then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from apartamento where total = '+txtConsulta.Text+';');
ADOQuery1.Open;
//ADOQuery1.Locate('telefone',txtConsulta.Text,[loPartialKey]);
end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
frxReport1.ShowReport;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from apartamento ;');
ADOQuery1.Open;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from apartamento ;');
ADOQuery1.Open;
end;

end.
