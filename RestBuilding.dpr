program RestBuilding;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {Form2},
  ABOUT in 'ABOUT.pas' {AboutBox},
  Unit4 in 'Unit4.pas' {Form4},
  Unit6 in 'Unit6.pas' {Form7},
  Unit8 in 'Unit8.pas' {Form9},
  Unit9 in 'Unit9.pas' {Form10},
  Unit10 in 'Unit10.pas' {Form11},
  PassWord in 'PassWord.pas' {PasswordDlg},
  Unit112 in 'Unit112.pas' {Form12},
  Unit13 in 'Unit13.pas' {Form5},
  Unit14 in 'Unit14.pas' {Form1},
  Unit16 in 'Unit16.pas' {Form3},
  Unit17 in 'Unit17.pas' {Form17};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm17, Form17);
  Application.CreateForm(TPasswordDlg, PasswordDlg);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
