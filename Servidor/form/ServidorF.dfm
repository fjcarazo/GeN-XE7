object Servidor: TServidor
  Left = 0
  Top = 0
  Anchors = []
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Servidor - DeGsoft GeN - ERP'
  ClientHeight = 434
  ClientWidth = 494
  Color = clWhite
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  ScreenSnap = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 155
    Top = 0
    Width = 175
    Height = 77
    Caption = 'areas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 174
    Top = 349
    Width = 135
    Height = 77
    Caption = 'GeN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object m5Image: TImage
    Left = 162
    Top = 162
    Width = 172
    Height = 103
    Cursor = crHandPoint
    Hint = 'MODULO EXPRESS DE LIBRE DISTRIBUCION'
    Center = True
    DragCursor = crDefault
    ParentShowHint = False
    ShowHint = True
    OnClick = m5ImageClick
  end
  object m1Image: TImage
    Left = 36
    Top = 96
    Width = 120
    Height = 60
    Cursor = crHandPoint
    Hint = 'MODULO DE COMPRAS Y VENTAS'
    Center = True
    DragCursor = crDefault
    ParentShowHint = False
    ShowHint = True
    OnClick = m1ImageClick
  end
  object m3Image: TImage
    Left = 340
    Top = 96
    Width = 120
    Height = 60
    Cursor = crHandPoint
    Hint = 'MODULO DE CREDITOS'
    Center = True
    DragCursor = crDefault
    ParentShowHint = False
    ShowHint = True
    OnClick = m3ImageClick
  end
  object m2Image: TImage
    Left = 189
    Top = 96
    Width = 120
    Height = 60
    Cursor = crHandPoint
    Hint = 'MODULO CONTABLE'
    Center = True
    DragCursor = crDefault
    ParentShowHint = False
    ShowHint = True
    OnClick = m2ImageClick
  end
  object m7Image: TImage
    Left = 36
    Top = 271
    Width = 120
    Height = 60
    Cursor = crHandPoint
    Hint = 'MODULO DE AYUDA'
    Center = True
    DragCursor = crDefault
    ParentShowHint = False
    ShowHint = True
    OnClick = m7ImageClick
  end
  object m6Image: TImage
    Left = 340
    Top = 185
    Width = 120
    Height = 60
    Cursor = crHandPoint
    Hint = 'MODULO DE COBRANZAS'
    Center = True
    DragCursor = crDefault
    ParentShowHint = False
    ShowHint = True
    OnClick = m6ImageClick
  end
  object m8Image: TImage
    Left = 186
    Top = 271
    Width = 120
    Height = 60
    Cursor = crHandPoint
    Hint = 'MODULO COMPLETO'
    Center = True
    DragCursor = crDefault
    ParentShowHint = False
    ShowHint = True
    OnClick = m8ImageClick
  end
  object m9Image: TImage
    Left = 340
    Top = 271
    Width = 120
    Height = 60
    Cursor = crHandPoint
    Hint = 'MODULO LICENCIA'
    Center = True
    DragCursor = crDefault
    ParentShowHint = False
    ShowHint = True
    OnClick = m9ImageClick
  end
  object m4Image: TImage
    Left = 36
    Top = 185
    Width = 120
    Height = 60
    Cursor = crHandPoint
    Hint = 'MODULO DE VIGIILANCIA'
    Center = True
    DragCursor = crDefault
    ParentShowHint = False
    ShowHint = True
    OnClick = m4ImageClick
  end
  object TrayIcon1: TTrayIcon
    Hint = 'Servidor GeN'
    PopupMenu = PopupMenu1
    Visible = True
    Left = 80
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    Left = 24
    Top = 32
    object Cerrar1: TMenuItem
      Caption = 'Cerrar'
      OnClick = Cerrar1Click
    end
  end
end
