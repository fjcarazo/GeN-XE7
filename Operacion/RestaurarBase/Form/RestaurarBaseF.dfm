object RestaurarBaseForm: TRestaurarBaseForm
  Left = 0
  Top = 0
  ClientHeight = 326
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 168
    Top = 256
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Borrar: TIBScript
    Terminator = ';'
    Left = 8
    Top = 8
  end
end
