unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    conecta_banco: TADOConnection;
    Tabela_Apartamento: TADODataSet;
    DBGrid1: TDBGrid;
    Fonte_Dados: TDataSource;
    DBNavigator1: TDBNavigator;
    Tabela_Apartamentoidapartamento: TAutoIncField;
    Tabela_Apartamentonumero: TWideStringField;
    Tabela_Apartamentobloco: TWideStringField;
    Tabela_Apartamentovalor: TFloatField;
    Tabela_Apartamentojuros: TFloatField;
    Tabela_Apartamentototal: TFloatField;
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
    Label6: TLabel;
    lbCodigo: TLabel;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBEdit3Change(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit4;

procedure TForm6.DBEdit2Exit(Sender: TObject);
begin
DBEdit5.Text := FloatToStr(Tabela_Apartamentovalor.Value + ((tabela_apartamentojuros.Value/100)*tabela_apartamentovalor.Value));
end;

procedure TForm6.DBEdit3Change(Sender: TObject);
begin
DBEdit5.Text := FloatToStr(Tabela_Apartamentovalor.Value + ((tabela_apartamentojuros.Value/100)*tabela_apartamentovalor.Value));
end;

procedure TForm6.DBEdit3Exit(Sender: TObject);
begin
DBEdit5.Text := FloatToStr(Tabela_Apartamentovalor.Value + ((tabela_apartamentojuros.Value/100)*tabela_apartamentovalor.Value));end;

procedure TForm6.DBEdit4Exit(Sender: TObject);
begin
DBEdit5.Text := FloatToStr(Tabela_Apartamentovalor.Value + ((tabela_apartamentojuros.Value/100)*tabela_apartamentovalor.Value));end;

procedure TForm6.DBEdit5Change(Sender: TObject);
begin
DBEdit5.Text := FloatToStr(Tabela_Apartamentovalor.Value + ((tabela_apartamentojuros.Value/100)*tabela_apartamentovalor.Value));
end;

procedure TForm6.DBEdit5Exit(Sender: TObject);
begin
DBEdit5.Text := FloatToStr(Tabela_Apartamentovalor.Value + ((tabela_apartamentojuros.Value/100)*tabela_apartamentovalor.Value));end;

procedure TForm6.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure TForm6.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
DBEdit5.Text := FloatToStr(Tabela_Apartamentovalor.Value + ((tabela_apartamentojuros.Value/100)*tabela_apartamentovalor.Value));end;

procedure TForm6.FormActivate(Sender: TObject);
begin
DBEdit5.Text := FloatToStr(Tabela_Apartamentovalor.Value + ((tabela_apartamentojuros.Value/100)*tabela_apartamentovalor.Value));///*********************************************************/
///*********************************************************/
///*********************************************************/
///*********************************************************/
lbCodigo.Caption := Tabela_Apartamentoidapartamento.AsString;



end;

procedure TForm6.Timer1Timer(Sender: TObject);
begin
lbCodigo.Caption := Tabela_Apartamentoidapartamento.AsString;
end;

end.
