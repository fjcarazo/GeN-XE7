object FMainForm: TFMainForm
  Left = 425
  Top = 258
  Align = alTop
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'DeGsoft GeN - ERP - Menu Principal'
  ClientHeight = 3
  ClientWidth = 751
  Color = clBtnFace
  ParentFont = True
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 751
    Height = 3
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 376
    ExplicitTop = 120
    ExplicitWidth = 300
    ExplicitHeight = 150
    ControlData = {
      4C0000009E4D00004F0000000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object MainMenu1: TMainMenu
    Left = 16
    object Operaciones1: TMenuItem
      Caption = 'OPERACION'
      object REGISTRO1: TMenuItem
        Caption = 'REGISTRO'
      end
      object GESTION1: TMenuItem
        Caption = 'GESTION'
        object EMPRANA1: TMenuItem
          Caption = 'TEMPRANA'
        end
        object EXTRAJUDICIAL1: TMenuItem
          Caption = 'EXTRA JUDICIAL'
        end
        object JUDICIAL1: TMenuItem
          Caption = 'JUDICIAL'
        end
        object INCOBRABLE1: TMenuItem
          Caption = 'INCOBRABLE'
        end
      end
      object CuentaCorriente1: TMenuItem
        Caption = 'CUENTA CORRIENTE'
        OnClick = CuentaCorriente1Click
      end
      object AnularVenta1: TMenuItem
        Caption = 'ANULAR VENTA'
        OnClick = AnularVenta1Click
      end
      object DevolverMercadera1: TMenuItem
        Caption = 'DEVOLUCION'
        Visible = False
      end
    end
    object Listados1: TMenuItem
      Caption = 'LISTADO'
      object ESTADODECUENTA1: TMenuItem
        Caption = 'ESTADO DE CUENTA'
        OnClick = ESTADODECUENTA1Click
      end
      object CLIENTES1: TMenuItem
        Caption = 'CLIENTES'
        OnClick = Clientes1Click
      end
    end
    object Configuracion1: TMenuItem
      Caption = 'CONFIGURACION'
      object Empresa1: TMenuItem
        Caption = 'EMPRESA'
        OnClick = Empresa1Click
      end
      object Login1: TMenuItem
        Caption = 'USUARIOS'
        OnClick = Login1Click
      end
      object Sistema1: TMenuItem
        Caption = 'SISTEMA'
        OnClick = Sistema1Click
      end
      object VaciarBasedeDatos1: TMenuItem
        Caption = 'RESTAURAR SISTEMA'
        OnClick = VaciarBasedeDatos1Click
      end
      object BACKUPCopiadeSeguridad1: TMenuItem
        Caption = 'COPIA DE SEGURIDAD'
        OnClick = BACKUPCopiadeSeguridad1Click
      end
      object MIGRAR1: TMenuItem
        Caption = 'MIGRAR'
        Hint = 'MIGRAR DESDE VERSIONES ANTERIORES'
        OnClick = MIGRAR1Click
      end
      object LICENCIA1: TMenuItem
        Caption = 'LICENCIA'
        OnClick = LICENCIA1Click
      end
    end
    object N1: TMenuItem
      Caption = 'SALIR'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '?'
      object Ayuda1: TMenuItem
        Caption = 'Ayuda'
        OnClick = Ayuda1Click
      end
      object Acercade1: TMenuItem
        Caption = 'Acerca de...'
        OnClick = Acercade1Click
      end
    end
  end
end
