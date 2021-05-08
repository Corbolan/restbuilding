object DataModule7: TDataModule7
  OldCreateOrder = False
  Height = 262
  Width = 594
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Germano\De' +
      'sktop\Sistema\banco.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 8
  end
  object Aluguel_Inquilinos: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select aluguel.idaluguel, cliente.nome  from aluguel,cliente'#13#10'wh' +
      'ere cliente.idcliente = aluguel.idcliente;'
    Parameters = <>
    Left = 136
    Top = 8
    object Aluguel_Inquilinosidaluguel: TAutoIncField
      FieldName = 'idaluguel'
      ReadOnly = True
    end
    object Aluguel_Inquilinosnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
  end
  object DS_ALUGUEL_INQUILINOS: TDataSource
    DataSet = Aluguel_Inquilinos
    Left = 264
    Top = 8
  end
end
