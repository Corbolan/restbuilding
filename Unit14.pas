unit Unit14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Data.Win.ADODB, frxClass, frxDBSet,MidasLib;

type
  TForm1 = class(TForm)
    txtConsulta: TEdit;
    cbTipoDado: TComboBox;
    btnPesquisa: TButton;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Button2: TButton;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    Button1: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure btnPesquisaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.btnPesquisaClick(Sender: TObject);
begin
if (cbTipoDado.ItemIndex.ToString = '0') or (cbTipoDado.ItemIndex.ToString='') then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from cliente where idcliente='+txtConsulta.Text+';');
ADOQuery1.Open;
end;
if (cbTipoDado.ItemIndex = 1) then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from cliente where nome like "'+txtConsulta.Text+'%";');
ADOQuery1.Open;
//ADOQuery1.Locate('nome',txtConsulta.Text,[loPartialKey]);
end;
if (cbTipoDado.ItemIndex = 2) then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from cliente where rg like "'+txtConsulta.Text+'%";');
ADOQuery1.Open;
//ADOQuery1.Locate('rg',txtConsulta.Text,[loPartialKey]);
end;
if (cbTipoDado.ItemIndex = 3) then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from cliente where cpf like "'+txtConsulta.Text+'%";');
ADOQuery1.Open;
//ADOQuery1.Locate('cpf',txtConsulta.Text,[loPartialKey]);
end;
if (cbTipoDado.ItemIndex = 4) then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from cliente where telefone Like "%'+txtConsulta.Text+'%'+'";');
ADOQuery1.Open;
//ADOQuery1.Locate('telefone',txtConsulta.Text,[loPartialKey]);
end;


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from cliente ;');
ADOQuery1.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
frxReport1.ShowReport;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from cliente ;');
ADOQuery1.Open;
end;

end.
