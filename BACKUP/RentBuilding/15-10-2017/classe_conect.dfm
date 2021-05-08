object DataModule4: TDataModule4
  OldCreateOrder = False
  Height = 249
  Width = 644
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Germano\De' +
      'sktop\Sistema\Win32\Debug\banco.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 64
  end
  object ADODataSet_Inquilino: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from cliente;'
    Parameters = <>
    Left = 216
    Top = 16
    object ADODataSet_Inquilinoidcliente: TAutoIncField
      FieldName = 'idcliente'
      ReadOnly = True
    end
    object ADODataSet_Inquilinonome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object ADODataSet_Inquilinoiddocumento: TIntegerField
      FieldName = 'iddocumento'
    end
    object ADODataSet_Inquilinoidtelefone: TIntegerField
      FieldName = 'idtelefone'
    end
  end
  object DS_Inquilino: TDataSource
    DataSet = ADODataSet_Inquilino
    Left = 312
    Top = 16
  end
  object DS_Apartamento: TDataSource
    DataSet = ADODataSet_Apartamento
    Left = 312
    Top = 88
  end
  object ADODataSet_Apartamento: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select *  from apartamento;'
    Parameters = <>
    Left = 200
    Top = 88
    object ADODataSet_Apartamentoidapartamento: TAutoIncField
      FieldName = 'idapartamento'
      ReadOnly = True
    end
    object ADODataSet_Apartamentonumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object ADODataSet_Apartamentobloco: TWideStringField
      FieldName = 'bloco'
      Size = 10
    end
    object ADODataSet_Apartamentovalor: TFloatField
      FieldName = 'valor'
    end
    object ADODataSet_Apartamentojuros: TFloatField
      FieldName = 'juros'
    end
    object ADODataSet_Apartamentototal: TFloatField
      FieldName = 'total'
    end
  end
end
