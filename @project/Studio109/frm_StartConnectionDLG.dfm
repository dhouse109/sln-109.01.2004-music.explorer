object frmStartConnectionDLG: TfrmStartConnectionDLG
  Left = 697
  Top = 229
  ActiveControl = edtFName
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Start A Connection'
  ClientHeight = 282
  ClientWidth = 307
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
  object layoutStartConnection: TdxLayoutControl
    Left = 0
    Top = 18
    Width = 307
    Height = 264
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
      TabOrder = 2
    end
    object Panel38: TPanel
      Left = 4
      Top = 244
      Width = 150
      Height = 13
      BevelOuter = bvNone
      Color = 10526880
      TabOrder = 3
    end
    object lblConfirm: TcxLabel
      Left = 93
      Top = 221
      Width = 41
      Height = 17
      Cursor = crHandPoint
      Caption = 'Confirm'
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Transparent = True
      Style.Color = 5987163
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsUnderline]
      Style.HotTrack = False
      TabOrder = 4
      OnClick = lblConfirmClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object lblCancel: TcxLabel
      Left = 140
      Top = 221
      Width = 36
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
      ParentColor = False
      ParentFont = False
      Properties.Transparent = True
      Style.Color = 5987163
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsUnderline]
      Style.HotTrack = False
      TabOrder = 5
      OnClick = lblCancelClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object edtLName: TEdit
      Left = 74
      Top = 148
      Width = 263
      Height = 17
      BorderStyle = bsNone
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edtFNameKeyPress
    end
    object lblPolicy: TcxLabel
      Left = 182
      Top = 221
      Width = 31
      Height = 17
      Cursor = crHandPoint
      Caption = 'Policy'
      ParentColor = False
      ParentFont = False
      Properties.Transparent = True
      Style.Color = 5987163
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsUnderline]
      Style.HotTrack = False
      TabOrder = 6
      OnClick = lblPolicyClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object edtFName: TEdit
      Left = 74
      Top = 123
      Width = 256
      Height = 17
      BorderStyle = bsNone
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edtFNameKeyPress
    end
    object lblCaption: TcxLabel
      Left = 105
      Top = 36
      Width = 97
      Height = 17
      Caption = 'Connect To dhouse'
      ParentFont = False
      Properties.Transparent = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      TabOrder = 7
    end
    object lblConfirmMsg: TcxLabel
      Left = 57
      Top = 89
      Width = 193
      Height = 17
      Caption = 'Confirm First and Last Name of Member'
      ParentFont = False
      Properties.Transparent = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      TabOrder = 8
    end
    object dxLayoutGroup17: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutGroup18: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.AlignHorz = taCenter
        LookAndFeel = datMain.layoutLookFeelMain_WebAlt5
        ShowCaption = False
        object dxLayoutItem19: TdxLayoutItem
          ShowCaption = False
          Control = Panel37
          ControlOptions.ShowBorder = False
        end
        object layoutStartConnectionItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahCenter
          Caption = 'cxLabel1'
          Offsets.Top = 10
          ShowCaption = False
          Control = lblCaption
          ControlOptions.ShowBorder = False
        end
        object layoutStartConnectionItem9: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahCenter
          Caption = 'cxLabel2'
          Offsets.Top = 30
          ShowCaption = False
          Control = lblConfirmMsg
          ControlOptions.ShowBorder = False
        end
        object layoutStartConnectionItem3: TdxLayoutItem
          Caption = 'First Name:'
          CaptionOptions.AlignHorz = taRightJustify
          Offsets.Top = 10
          Control = edtFName
          ControlOptions.AutoColor = True
        end
        object layoutStartConnectionItem7: TdxLayoutItem
          Caption = 'Last Name:'
          CaptionOptions.AlignHorz = taRightJustify
          Control = edtLName
          ControlOptions.AutoColor = True
        end
        object layoutStartConnectionGroup3: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahCenter
          AlignVert = avBottom
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object layoutStartConnectionItem4: TdxLayoutItem
            AutoAligns = [aaVertical]
            ShowCaption = False
            Control = lblConfirm
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object layoutStartConnectionItem1: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'cxLabel1'
            ShowCaption = False
            Control = lblCancel
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object layoutStartConnectionItem2: TdxLayoutItem
            AutoAligns = [aaVertical]
            ShowCaption = False
            Control = lblPolicy
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
    Width = 307
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
    Caption = 'Start A Connection'
  end
end
