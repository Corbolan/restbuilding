unit Unit17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.Client,
  Data.Win.ADODB, Vcl.StdCtrls, frxClass, frxDBSet, Vcl.ComCtrls;

type
  TForm17 = class(TForm)
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    txtNomeLocatario: TEdit;
    txtNomeInquilino: TEdit;
    txtNomeFiador: TEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    txtAbertura: TDateTimePicker;
    txtEncerramento: TDateTimePicker;
    btCarregaContrato: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btCarregaContratoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;


implementation

{$R *.dfm}

procedure TForm17.btCarregaContratoClick(Sender: TObject);
begin
txtNomeLocatario.Text := '';
txtNomeInquilino.Text :='';
txtNomeFiador.Text:='';
txtAbertura.Date := Now;
txtEncerramento.Date := Now;
try
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT contrato.idcontrato, contrato.data_inicial , contrato.data_final,cliente.nome,'+
      ' locatario.nome, contrato.fiador FROM contrato, cliente, locatario WHERE cliente.idcliente = contrato.idcliente '+
      'AND locatario.idlocatario = contrato.idlocatario order by contrato.idcontrato asc;');
      ADOQuery1.Open;
  Except
      ShowMessage('Houve um erro ao carregar a tabela');

  end;
end;

procedure TForm17.Button2Click(Sender: TObject);
begin

  try
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('select contrato.idcontrato, contrato.data_inicial, contrato.data_final, cliente.nome, locatario.nome, contrato.fiador from contrato,locatario,cliente where contrato.data_inicial  between #'+DateToStr(txtAbertura.Date)+'# and #'+DateToStr(txtEncerramento.Date)+'# and cliente.idcliente = contrato.idcliente and locatario.idlocatario = contrato.idlocatario order by contrato.idcontrato ;');
      ADOQuery1.Open;
  Except
      ShowMessage('Contrato Inválido ou não cadastrado');

  end;
end;

procedure TForm17.Button3Click(Sender: TObject);
begin
     try
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('Select contrato.idcontrato, contrato.data_inicial, contrato.data_final,'+
      'cliente.nome, locatario.nome, contrato.fiador from contrato,locatario,cliente where cliente.idcliente = contrato.idcliente and '+
      'locatario.idlocatario = contrato.idlocatario and locatario.nome like "%'+txtNomeLocatario.Text+'%"order by contrato.idcontrato asc;');
      ADOQuery1.Open;
  Except
      ShowMessage('Contrato Inválido ou não cadastrado');

  end;
end;

procedure TForm17.Button4Click(Sender: TObject);
begin
    try
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('Select contrato.idcontrato, contrato.data_inicial, contrato.data_final,'+
      'cliente.nome, locatario.nome, contrato.fiador from contrato,locatario,cliente where cliente.idcliente = contrato.idcliente and '+
      'locatario.idlocatario = contrato.idlocatario and contrato.fiador like "%'+txtNomeFiador.Text+'%" order by contrato.idcontrato asc;');
      ADOQuery1.Open;
  Except
      ShowMessage('Contrato Inválido ou não cadastrado');

  end;
end;

procedure TForm17.Button5Click(Sender: TObject);
begin
  try
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('Select contrato.idcontrato, contrato.data_inicial, contrato.data_final,'+
      'cliente.nome, locatario.nome, contrato.fiador from contrato,locatario,cliente where cliente.idcliente = contrato.idcliente and '+
      'locatario.idlocatario = contrato.idlocatario and cliente.nome like "%'+txtNomeInquilino.Text+'%"order by contrato.idcontrato asc;');
      ADOQuery1.Open;
  Except
      ShowMessage('Contrato Inválido ou não cadastrado');

  end;
end;

end.
