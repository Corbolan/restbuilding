unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls,MidasLib;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Image1: TImage;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses ABOUT,  Unit8, Unit4,  Unit6, Unit9, Unit10, PassWord, Unit112,
  Unit13;

procedure TForm2.FormActivate(Sender: TObject);
begin
MessageBeep(0);
ShowMessage('Seja Bem-vindo '+PasswordDlg.x+' ao RentBuilding');
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TForm2.SpeedButton10Click(Sender: TObject);
begin
 Application.CreateForm(TForm9,Form9);
Form9.ShowModal;
Form9.FREE;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TForm7,Form7);
Form7.ShowModal;
Form7.FREE;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
 Application.CreateForm(TForm5,Form5);
Form5.ShowModal;
Form5.FREE;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
Application.CreateForm(TForm12,Form12);
Form12.ShowModal;
Form12.FREE;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin

Application.CreateForm(TForm4,Form4);
Form4.ShowModal;
Form4.FREE;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
MessageBeep(0);
MessageBox(Application.Handle,'Disponível na versão PRO'+#13+'Entre em Contato: 24 99873-6076','VERSÃO PROFESSIONAL',MB_ICONEXCLAMATION+MB_OK);

{Application.CreateForm(TForm3,Form3);
Form3.ShowModal;
Form3.FREE;}
end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
MessageBox(Application.Handle,'Projeto em construção','Em Construção',MB_ICONEXCLAMATION+MB_OK);
end;

procedure TForm2.SpeedButton7Click(Sender: TObject);
begin
Application.CreateForm(TAboutBox,AboutBox);
AboutBox.ShowModal;
AboutBox.FREE;
end;

procedure TForm2.SpeedButton8Click(Sender: TObject);
begin
Application.CreateForm(TForm10,Form10);
Form10.ShowModal;
Form10.FREE;
end;

procedure TForm2.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TForm11,Form11);
Form11.ShowModal;
Form11.FREE;
end;

end.
