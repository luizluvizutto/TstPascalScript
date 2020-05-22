object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Testes com o Pascal Script'
  ClientHeight = 489
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    805
    489)
  PixelsPerInch = 96
  TextHeight = 13
  object MemoScript: TSynEdit
    Left = 0
    Top = 0
    Width = 805
    Height = 446
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    TabOrder = 0
    CodeFolding.GutterShapeSize = 11
    CodeFolding.CollapsedLineColor = clGrayText
    CodeFolding.FolderBarLinesColor = clGrayText
    CodeFolding.IndentGuidesColor = clGray
    CodeFolding.IndentGuides = True
    CodeFolding.ShowCollapsedLine = False
    CodeFolding.ShowHintMark = True
    UseCodeFolding = False
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Gutter.ShowLineNumbers = True
    Gutter.ShowModification = True
    Highlighter = SynPasSyn1
    FontSmoothing = fsmNone
    ExplicitWidth = 797
    ExplicitHeight = 445
  end
  object btExecutar: TButton
    Left = 8
    Top = 456
    Width = 257
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '&Executar Script'
    TabOrder = 1
    OnClick = btExecutarClick
    ExplicitTop = 455
  end
  object btSalvar: TButton
    Left = 722
    Top = 456
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Salvar'
    TabOrder = 2
    OnClick = btSalvarClick
    ExplicitLeft = 714
    ExplicitTop = 455
  end
  object Button1: TButton
    Left = 271
    Top = 456
    Width = 281
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Executar Delphi'
    TabOrder = 3
    OnClick = Button1Click
    ExplicitTop = 455
  end
  object SynPasSyn1: TSynPasSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    Left = 96
    Top = 16
  end
  object ActionList1: TActionList
    Left = 168
    Top = 16
    object ActSalvar: TAction
      Caption = 'ActSalvar'
      ShortCut = 16467
      OnExecute = ActSalvarExecute
    end
    object ActExecutar: TAction
      Caption = 'ActExecutar'
      ShortCut = 16453
      OnExecute = ActExecutarExecute
    end
  end
  object Scripter: TPSScript
    CompilerOptions = []
    OnCompile = ScripterCompile
    OnExecImport = ScripterExecImport
    Plugins = <>
    UsePreProcessor = False
    Left = 432
    Top = 128
  end
end
