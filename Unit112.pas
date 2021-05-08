unit Unit112;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope,MidasLib;

type
  TForm12 = class(TForm)
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADODataSet1idapartamento: TIntegerField;
    ADODataSet1numero: TWideStringField;
    ADODataSet1bloco: TWideStringField;
    ADODataSet1valor: TFloatField;
    ADODataSet1juros: TFloatField;
    ADODataSet1total: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Timer1: TTimer;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit5: TEdit;
    LinkControlToField5: TLinkControlToField;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    auxiliar : string;
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
ADODataSet1.Insert;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
ADODataSet1.Edit;
ADODataSet1.Refresh;
end;

procedure TForm12.Button3Click(Sender: TObject);
begin
ADODataSet1.Delete;
ADODataSet1.Refresh;
end;

procedure TForm12.Button4Click(Sender: TObject);

begin

ADODataSet1.Post;
ADODataSet1.Refresh;
end;

procedure TForm12.Edit3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Label10.Caption := 'R$'+Edit3.Text;
end;

procedure TForm12.Edit4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    var
x : double;
z : double;
begin
x := StrToFloat( Edit3.Text);
z := StrToFloat(Edit4.Text);


Label9.Caption := Edit4.Text+' %';
Label10.Caption := 'R$'+Edit3.Text;

Label12.Caption := 'R$'+FloatToStr(x+(x*(z/100)));
end;

end.
