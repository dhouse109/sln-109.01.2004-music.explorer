object frmTrackInfoDLG: TfrmTrackInfoDLG
  Left = 708
  Top = 201
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Track Info'
  ClientHeight = 266
  ClientWidth = 340
  Color = 15790320
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object layoutTrackInfo: TdxLayoutControl
    Left = 0
    Top = 18
    Width = 340
    Height = 248
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = datMain.layoutLookFeelMain_Web
    object Panel37: TPanel
      Left = 4
      Top = 7
      Width = 150
      Height = 13
      BevelOuter = bvNone
      Color = 10526880
      TabOrder = 0
    end
    object Panel38: TPanel
      Left = 4
      Top = 228
      Width = 150
      Height = 13
      BevelOuter = bvNone
      Color = 10526880
      TabOrder = 1
    end
    object lblEdit: TcxLabel
      Left = 141
      Top = 205
      Width = 22
      Height = 17
      Cursor = crHandPoint
      Caption = 'Edit'
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.Color = 5987163
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsUnderline]
      Style.HotTrack = False
      TabOrder = 2
      OnClick = lblEditClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object lblClose: TcxLabel
      Left = 169
      Top = 205
      Width = 30
      Height = 17
      Cursor = crHandPoint
      Caption = 'Close'
      ParentColor = False
      ParentFont = False
      Style.Color = 5987163
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsUnderline]
      Style.HotTrack = False
      TabOrder = 3
      OnClick = lblCloseClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object dxLayoutGroup17: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutGroup18: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'Sign In'
        CaptionOptions.AlignHorz = taCenter
        LookAndFeel = datMain.layoutLookFeelMain_WebAlt5
        ShowCaption = False
        object dxLayoutItem19: TdxLayoutItem
          ShowCaption = False
          Control = Panel37
          ControlOptions.ShowBorder = False
        end
        object layoutTrackInfoGroup3: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahCenter
          AlignVert = avBottom
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object layoutTrackInfoItem4: TdxLayoutItem
            AutoAligns = [aaVertical]
            ShowCaption = False
            Control = lblEdit
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object layoutTrackInfoItem1: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'cxLabel1'
            ShowCaption = False
            Control = lblClose
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutItem21: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          ShowCaption = False
          Control = Panel38
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object titleMain: TFlatTitlebar
    Left = 0
    Top = 0
    Width = 340
    Height = 18
    ActiveTextColor = clWhite
    InactiveTextColor = clSilver
    TitlebarColor = clGray
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Caption = 'Track Info'
  end
end
