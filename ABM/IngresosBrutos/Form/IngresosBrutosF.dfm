object IngresosBrutosForm: TIngresosBrutosForm
  Left = 287
  Top = 153
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Ingresos Brutos'
  ClientHeight = 256
  ClientWidth = 436
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 66
    Top = 94
    Width = 54
    Height = 13
    Caption = 'Actividad'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 58
    Top = 121
    Width = 62
    Height = 13
    Caption = 'Porcentaje'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 79
    Top = 145
    Width = 41
    Height = 13
    Caption = 'Detalle'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 214
    Top = 123
    Width = 8
    Height = 13
    Caption = '%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 36
    Top = 20
    Width = 360
    Height = 50
    DataSource = DSIngresosBrutos
    Hints.Strings = (
      'Primer registro'
      'Registro anterior'
      'Registro siguiente'
      #218'ltimo registro'
      'Insertar registro'
      'Eliminar registro'
      'Editar registro'
      'Guardar cambios'
      'Cancelar edici'#243'n'
      'Refrescar datos'
      '')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object SiBitBtn: TBitBtn
    Left = 316
    Top = 179
    Width = 80
    Height = 50
    Caption = 'grabar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 6
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    OnClick = SiBitBtnClick
  end
  object DBEdit2: TDBEdit
    Left = 126
    Top = 91
    Width = 97
    Height = 21
    DataField = 'CODIGO'
    DataSource = DSIngresosBrutos
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 126
    Top = 118
    Width = 86
    Height = 21
    DataField = 'PORCENTAJE'
    DataSource = DSIngresosBrutos
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 126
    Top = 145
    Width = 270
    Height = 21
    DataField = 'DESCRIPCION'
    DataSource = DSIngresosBrutos
    TabOrder = 4
  end
  object DSIngresosBrutos: TDataSource
    DataSet = Tabla
    Left = 136
    Top = 193
  end
  object Tabla: TIBTable
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    AfterCancel = TablaAfterCancel
    AfterDelete = TablaAfterDelete
    AfterPost = TablaAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'PORCENTAJE'
        DataType = ftFloat
      end
      item
        Name = 'COEF1'
        DataType = ftFloat
      end
      item
        Name = 'COEF2'
        DataType = ftFloat
      end
      item
        Name = 'COEF3'
        DataType = ftFloat
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'PK_Articulo'
        Fields = 'CODIGO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'IIBB'
    UniDirectional = False
    Left = 59
    Top = 193
  end
end
