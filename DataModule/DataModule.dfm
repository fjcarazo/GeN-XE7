object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 120
  Width = 282
  object BaseDatos: TIBDatabase
    Connected = True
    DatabaseName = 'C:\DeGsoft\GeN\GeN.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252'
      'sql_role_name=3')
    LoginPrompt = False
    DefaultTransaction = Transaccion
    ServerType = 'IBServer'
    Left = 80
    Top = 16
  end
  object Transaccion: TIBTransaction
    Active = True
    DefaultDatabase = BaseDatos
    DefaultAction = TARollback
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 80
    Top = 64
  end
  object ConfigQuery: TIBQuery
    Database = BaseDatos
    Transaction = Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 152
    Top = 16
  end
  object Query: TIBQuery
    Database = BaseDatos
    Transaction = Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 152
    Top = 64
  end
end
