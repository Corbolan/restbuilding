unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses ABOUT,  Unit8,Unit3, Unit4, Unit5, Unit6;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TForm7,Form7);
Form7.ShowModal;
Form7.FREE;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
Application.CreateForm(TForm6,Form6);
Form6.ShowModal;
Form6.FREE;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin

Application.CreateForm(TForm4,Form4);
Form4.ShowModal;
Form4.FREE;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
Application.CreateForm(TForm3,Form3);
Form3.ShowModal;
Form3.FREE;
end;

procedure TForm2.SpeedButton7Click(Sender: TObject);
begin
Application.CreateForm(TAboutBox,AboutBox);
AboutBox.ShowModal;
AboutBox.FREE;
end;

end.
