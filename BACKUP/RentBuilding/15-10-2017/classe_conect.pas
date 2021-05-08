unit classe_conect;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule4 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADODataSet_Inquilino: TADODataSet;
    DS_Inquilino: TDataSource;
    DS_Apartamento: TDataSource;
    ADODataSet_Apartamento: TADODataSet;
    ADODataSet_Apartamentoidapartamento: TAutoIncField;
    ADODataSet_Apartamentonumero: TWideStringField;
    ADODataSet_Apartamentobloco: TWideStringField;
    ADODataSet_Apartamentovalor: TFloatField;
    ADODataSet_Apartamentojuros: TFloatField;
    ADODataSet_Apartamentototal: TFloatField;
    ADODataSet_Inquilinoidcliente: TAutoIncField;
    ADODataSet_Inquilinonome: TWideStringField;
    ADODataSet_Inquilinoiddocumento: TIntegerField;
    ADODataSet_Inquilinoidtelefone: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses Unit3;

{$R *.dfm}

end.
