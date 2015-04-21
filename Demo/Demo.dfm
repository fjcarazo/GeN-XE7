object DemoDM: TDemoDM
  OldCreateOrder = False
  Height = 88
  Width = 103
  object Query: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 16
    Top = 8
  end
end
