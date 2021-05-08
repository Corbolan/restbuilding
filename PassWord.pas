unit PASSWORD;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Win.ADODB, Datasnap.Provider, Datasnap.DBClient,Winapi.Messages,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls,MidasLib;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    Label2: TLabel;
    Edit1: TEdit;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    ADOConnection1: TADOConnection;
    ADODataSet1: TADODataSet;
    ADODataSet1idusuario: TIntegerField;
    ADODataSet1nome: TWideStringField;
    ADODataSet1senha: TWideStringField;
    ClientDataSet1idusuario: TIntegerField;
    ClientDataSet1nome: TWideStringField;
    ClientDataSet1senha: TWideStringField;
    Image1: TImage;
    procedure CancelBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
         x : string;
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

{$R *.dfm}

uses Unit2;

procedure TPasswordDlg.CancelBtnClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TPasswordDlg.FormActivate(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure TPasswordDlg.OKBtnClick(Sender: TObject);



begin
//Botão para Logar
ClientDataSet1.Close;

ClientDataSet1.Params[0].AsString := Edit1.Text;
ClientDataSet1.Params[1].AsString := Password.Text;
 x := Edit1.Text;
ClientDataSet1.Open;

  if ClientDataSet1.IsEmpty then
  begin

      MessageBeep(0);

      MessageBox(Application.Handle,'Usuário ou Senha inválido','Erro',MB_OK+MB_ICONERROR);
      Edit1.Text := '';
      Password.Text :='';
      Edit1.SetFocus;
    end
  Else
   begin
      Application.CreateForm(TForm2,Form2);
      Form2.ShowModal;
      Form2.FREE;
      PasswordDlg.Destroy;
      PasswordDlg.Close;
   end;
end;


end.
 
