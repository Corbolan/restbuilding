unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,MidasLib,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    Panel4: TPanel;
    Label4: TLabel;
    Panel5: TPanel;
    Label5: TLabel;
    Image1: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Panel6: TPanel;
    Label6: TLabel;
    Image2: TImage;
    Image3: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit14, Unit112, Unit16, Unit17;

procedure TForm5.Button1Click(Sender: TObject);
begin
Application.CreateForm(TForm1,Form1);
Form1.ShowModal;
Form1.FREE;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Application.CreateForm(TForm3,Form3);
Form3.ShowModal;
Form3.FREE;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
Application.CreateForm(TForm17,Form17);
Form17.ShowModal;
Form17.FREE;
end;

end.
