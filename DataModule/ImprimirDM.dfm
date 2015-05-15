object ImprimirDataModule: TImprimirDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 278
  Width = 518
  object Query: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      '')
    Left = 40
    Top = 8
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Query
    BCDToCurrency = False
    Left = 280
    Top = 8
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 37871.995957488400000000
    ReportOptions.Description.Strings = (
      'This report shows how to use multiple groups.')
    ReportOptions.LastChange = 40515.545472361100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.000000000000000000
      PaperHeight = 290.000000000000000000
      PaperSize = 256
      Columns = 6
      ColumnWidth = 35.800000000000000000
      ColumnPositions.Strings = (
        '0'
        '35.80'
        '71.70'
        '107.50'
        '143.30'
        '179.20')
      object Shape1: TfrxShapeView
        Left = 1.157742700000000000
        Top = 146.984262950000000000
        Width = 132.283464570000000000
        Height = 84.283464570000000000
        Visible = False
        Fill.BackColor = clWhite
      end
      object Band1: TfrxPageFooter
        FillType = ftBrush
        Top = 336.378170000000000000
        Width = 812.598950000000000000
      end
      object Band2: TfrxReportTitle
        FillType = ftBrush
        Top = 18.897650000000000000
        Width = 812.598950000000000000
      end
      object Band3: TfrxPageHeader
        FillType = ftBrush
        Top = 41.574830000000000000
        Width = 812.598950000000000000
        PrintOnFirstPage = False
      end
      object Band4: TfrxGroupHeader
        FillType = ftBrush
        Top = 102.047310000000000000
        Width = 135.307174000000000000
        Condition = 'frxDBDataset1."CUOTA"'
      end
      object Band5: TfrxGroupHeader
        FillType = ftBrush
        Top = 124.724490000000000000
        Width = 135.307174000000000000
        Condition = 'frxDBDataset1."CUOTA"'
      end
      object Band6: TfrxMasterData
        FillType = ftBrush
        Height = 84.283464570000000000
        Top = 147.401670000000000000
        Width = 135.307174000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object BarCode1: TfrxBarCodeView
          Left = 23.460884990000000000
          Top = 20.259770510000000000
          Width = 103.000000000000000000
          Height = 37.795243860000000000
          BarType = bcCodeEAN13
          DataField = 'CB'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Expression = '<frxDBDataset1."CB">'
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object frxDBDataset1CLIENTE: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."CLIENTE"]')
          ParentFont = False
        end
        object frxDBDataset1OPERACION: TfrxMemoView
          Left = 3.779530000000000000
          Top = 54.472480000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'plan: [frxDBDataset1."OPERACION"]')
          ParentFont = False
        end
        object frxDBDataset1CUOTA: TfrxMemoView
          Left = 3.779530000000000000
          Top = 66.811070000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'cuota: [frxDBDataset1."CUOTA"]')
          ParentFont = False
        end
        object frxDBDataset1IMPORTE: TfrxMemoView
          Left = 64.252010000000000000
          Top = 66.811070000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '$[frxDBDataset1."IMPORTE"]')
          ParentFont = False
        end
        object frxDBDataset1VENCE: TfrxMemoView
          Left = 52.913420000000000000
          Top = 54.472480000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'VENCE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VENCE"]')
          ParentFont = False
        end
      end
      object Band7: TfrxGroupFooter
        FillType = ftBrush
        Top = 275.905690000000000000
        Width = 135.307174000000000000
      end
      object Band8: TfrxGroupFooter
        FillType = ftBrush
        Top = 253.228510000000000000
        Width = 135.307174000000000000
      end
    end
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 184
    Top = 88
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 176
    Top = 8
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 272
    Top = 88
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 184
    Top = 160
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 272
    Top = 160
  end
  object frxChartObject1: TfrxChartObject
    Left = 360
    Top = 8
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 352
    Top = 88
  end
  object frxRichObject1: TfrxRichObject
    Left = 352
    Top = 160
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 440
    Top = 8
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 440
    Top = 88
  end
  object frxDotMatrixExport2: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 440
    Top = 160
  end
  object frxGZipCompressor1: TfrxGZipCompressor
    Left = 104
    Top = 160
  end
  object frxCrypt1: TfrxCrypt
    Left = 104
    Top = 96
  end
end
