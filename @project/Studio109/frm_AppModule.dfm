object frmAppModule: TfrmAppModule
  Left = 273
  Top = 159
  BorderStyle = bsNone
  Caption = 'frmAppModule'
  ClientHeight = 548
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  PixelsPerInch = 96
  TextHeight = 13
  object layoutAppModule: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 798
    Height = 548
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = datMain.layoutLookFeelMain_Web
    object layoutAppModuleGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
    end
  end
end
