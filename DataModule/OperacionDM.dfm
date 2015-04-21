object OperacionDataModule: TOperacionDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 285
  Width = 295
  object Q: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 120
    Top = 96
  end
  object T: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 120
    Top = 176
  end
end
