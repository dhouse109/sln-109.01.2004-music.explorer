object frmSplash: TfrmSplash
  Left = 256
  Top = 153
  BorderIcons = []
  BorderStyle = bsNone
  Caption = '109 Studios'
  ClientHeight = 444
  ClientWidth = 400
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
  object layoutSignIn: TdxLayoutControl
    Left = 0
    Top = 18
    Width = 400
    Height = 426
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = datMain.layoutLookFeelMain_Web
    object imgLogo: THarmFade
      Left = 5
      Top = 27
      Width = 390
      Height = 293
      Cursor = crHandPoint
      BlendRate = 128
      StretchToFit = False
      ProcessMsgs = True
      SwapOnReverse = False
      OnClick = imgLogoClick
    end
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
      Top = 406
      Width = 392
      Height = 13
      BevelOuter = bvNone
      Color = 10526880
      TabOrder = 3
    end
    object cboSignIn_MemberID: TcxComboBox
      Left = 79
      Top = 327
      Width = 200
      Height = 21
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Sorted = True
      Style.BorderColor = 10526880
      Style.BorderStyle = ebsSingle
      Style.Color = 5987163
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.ButtonTransparency = ebtHideUnselected
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
    end
    object lbSignIn_SignIn: TcxLabel
      Left = 52
      Top = 383
      Width = 37
      Height = 17
      Cursor = crHandPoint
      Caption = 'Sign In'
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
      TabOrder = 4
      OnClick = lbSignIn_SignInClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object lblSignIn_CreateID: TcxLabel
      Left = 95
      Top = 383
      Width = 95
      Height = 17
      Cursor = crHandPoint
      Caption = 'Become a Resident'
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.Color = 5987163
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsUnderline]
      Style.HotTrack = False
      TabOrder = 5
      OnClick = lblSignIn_CreateIDClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object edtSignIn_Password: TMaskEdit
      Left = 80
      Top = 355
      Width = 200
      Height = 17
      BorderStyle = bsNone
      Color = 5987163
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = #8226
      TabOrder = 1
      Text = 'love7505'
      OnKeyPress = edtSignIn_PasswordKeyPress
    end
    object lblSignIn_ForgotPassword: TcxLabel
      Left = 196
      Top = 383
      Width = 115
      Height = 17
      Cursor = crHandPoint
      Caption = 'Forgot Your Password?'
      ParentColor = False
      ParentFont = False
      Style.Color = 5987163
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsUnderline]
      Style.HotTrack = False
      TabOrder = 6
      OnClick = lblSignIn_ForgotPasswordClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object lblClose: TcxLabel
      Left = 317
      Top = 383
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
      TabOrder = 7
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
        object dxLayoutItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahCenter
          ShowCaption = False
          Control = imgLogo
        end
        object layoutSignInItem2: TdxLayoutItem
          Caption = 'Resident ID:'
          CaptionOptions.AlignHorz = taRightJustify
          Control = cboSignIn_MemberID
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object layoutSignInItem6: TdxLayoutItem
          Caption = 'Password:'
          CaptionOptions.AlignHorz = taRightJustify
          Control = edtSignIn_Password
          ControlOptions.AutoColor = True
        end
        object layoutSignInGroup3: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahCenter
          AlignVert = avBottom
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object layoutSignInItem4: TdxLayoutItem
            AutoAligns = [aaVertical]
            ShowCaption = False
            Control = lbSignIn_SignIn
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object layoutSignInItem5: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'cxLabel5'
            ShowCaption = False
            Control = lblSignIn_CreateID
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem2: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'cxLabel3'
            ShowCaption = False
            Control = lblSignIn_ForgotPassword
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object layoutSignInItem1: TdxLayoutItem
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
    Width = 400
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
    Caption = 'The 109 Explorer'
  end
  object timerLoop: TThreadedTimer
    Enabled = True
    Interval = 3500
    OnTimer = timerLoopTimer
    Left = 181
    Top = 100
  end
end
