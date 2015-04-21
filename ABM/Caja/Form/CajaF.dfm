object ABMCajaForm: TABMCajaForm
  Left = 0
  Top = 0
  Caption = 'Caja'
  ClientHeight = 466
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 82
    Width = 698
    Height = 384
    Align = alClient
    DataSource = DataSource
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Detalle'
        Width = 387
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Debe'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Haber'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hora'
        Width = 100
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 50
    Width = 792
    Height = 32
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label3: TLabel
      Left = 4
      Top = 6
      Width = 44
      Height = 20
      Caption = 'Debe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 255
      Top = 6
      Width = 50
      Height = 20
      Caption = 'Haber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 535
      Top = 6
      Width = 47
      Height = 20
      Caption = 'Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Debe: TLabel
      Left = 53
      Top = 10
      Width = 21
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Haber: TLabel
      Left = 311
      Top = 10
      Width = 21
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Saldo: TLabel
      Left = 763
      Top = 10
      Width = 21
      Height = 13
      Alignment = taRightJustify
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 698
    Top = 82
    Width = 94
    Height = 384
    Align = alRight
    Color = clBlack
    ParentBackground = False
    TabOrder = 2
    object Label10: TLabel
      Left = 8
      Top = 7
      Width = 69
      Height = 13
      Alignment = taCenter
      Caption = 'F4: Ingresar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 8
      Top = 37
      Width = 61
      Height = 13
      Alignment = taCenter
      Caption = 'F5: Retirar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 17
      Top = 207
      Width = 58
      Height = 13
      Alignment = taCenter
      Caption = 'Ordenar X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CancelarBitBtn: TBitBtn
      Left = 6
      Top = 327
      Width = 80
      Height = 50
      Cancel = True
      Caption = 'Salir'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = CancelarBitBtnClick
    end
    object DetalleBitBtn: TBitBtn
      Left = 6
      Top = 151
      Width = 80
      Height = 50
      Caption = 'Detalle'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = DetalleBitBtnClick
    end
    object FechaBitBtn: TBitBtn
      Left = 6
      Top = 226
      Width = 80
      Height = 50
      Caption = 'Fecha'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      OnClick = FechaBitBtnClick
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 792
    Height = 50
    DataSource = DataSource
    Align = alTop
    TabOrder = 3
    Visible = False
  end
  object DataSource: TDataSource
    DataSet = Query
    Left = 432
    Top = 200
  end
  object EmpresaQuery: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    SQL.Strings = (
      'select * from "Empresa"')
    Left = 248
    Top = 200
  end
  object Query: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    SQL.Strings = (
      'SELECT * FROM "Caja" Order by Fecha DESC')
    Left = 384
    Top = 200
  end
  object QTemp: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    SQL.Strings = (
      'SELECT * FROM "Caja" Order by Fecha DESC')
    Left = 504
    Top = 200
  end
end
