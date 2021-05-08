unit Unit7;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule7 = class(TDataModule)
    ADOConnection1: TADOConnection;
    Aluguel_Inquilinos: TADODataSet;
    DS_ALUGUEL_INQUILINOS: TDataSource;
    Aluguel_Inquilinosidaluguel: TAutoIncField;
    Aluguel_Inquilinosnome: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule7: TDataModule7;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
