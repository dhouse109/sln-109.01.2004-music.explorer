inherited frmAbout: TfrmAbout
  Left = 171
  Top = 199
  Caption = 'About 109 Studios'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited layoutAppModule: TdxLayoutControl
    object imgLogo: THarmFade [0]
      Left = 204
      Top = 93
      Width = 390
      Height = 293
      Cursor = crHandPoint
      BlendRate = 128
      StretchToFit = False
      ProcessMsgs = True
      SwapOnReverse = False
      OnClick = lblWebsiteClick
    end
    object lblWebsite: TcxLabel [1]
      Left = 356
      Top = 393
      Width = 86
      Height = 17
      Cursor = crHandPoint
      Caption = 'The 109 Explorer'
      ParentFont = False
      Properties.Transparent = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsUnderline]
      Style.HotTrack = False
      TabOrder = 3
      OnClick = lblWebsiteClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object cxLabel2: TcxLabel [2]
      Left = 298
      Top = 439
      Width = 201
      Height = 17
      Caption = 'Copyright '#169' 2004.  All Rights Reserved. '
      ParentFont = False
      Properties.Transparent = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      TabOrder = 4
    end
    object llVersion: TcxLabel [3]
      Left = 370
      Top = 416
      Width = 58
      Height = 17
      Caption = 'Version 1.0'
      ParentFont = False
      Properties.Transparent = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      TabOrder = 5
    end
    inherited layoutAppModuleGroup_Root: TdxLayoutGroup
      object layoutAppModuleGroup1: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahCenter
        AlignVert = avCenter
        Caption = 'About 109Studios.com'
        CaptionOptions.AlignHorz = taCenter
        LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
        ShowCaption = False
        object layoutAppModuleItem1: TdxLayoutItem
          Control = imgLogo
        end
        object layoutAppModuleItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahCenter
          Caption = 'cxLabel1'
          ShowCaption = False
          Control = lblWebsite
          ControlOptions.ShowBorder = False
        end
        object layoutAppModuleItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahCenter
          ShowCaption = False
          Control = llVersion
          ControlOptions.ShowBorder = False
        end
        object layoutAppModuleItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahCenter
          Caption = 'cxLabel2'
          ShowCaption = False
          Control = cxLabel2
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object timerLoop: TThreadedTimer
    Interval = 3500
    OnTimer = timerLoopTimer
    Left = 181
    Top = 100
  end
end
