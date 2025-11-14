object frmBulletinBoardDLG: TfrmBulletinBoardDLG
  Left = 697
  Top = 268
  ActiveControl = edtMessageTitle
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Shout Board Message'
  ClientHeight = 266
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
  object layoutBB: TdxLayoutControl
    Left = 0
    Top = 18
    Width = 307
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
      TabOrder = 4
    end
    object Panel38: TPanel
      Left = 4
      Top = 228
      Width = 150
      Height = 13
      BevelOuter = bvNone
      Color = 10526880
      TabOrder = 5
    end
    object lblSubmit: TcxLabel
      Left = 96
      Top = 205
      Width = 36
      Height = 17
      Cursor = crHandPoint
      Caption = 'Submit'
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
      TabOrder = 6
      OnClick = lblSubmitClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object lblCancel: TcxLabel
      Left = 138
      Top = 205
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
      TabOrder = 7
      OnClick = lblCancelClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object cboMessageFor: TcxComboBox
      Left = 91
      Top = 26
      Width = 265
      Height = 21
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'My Friends'
        'My Friends & Their Friends')
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
      Text = 'My Friends'
    end
    object edtMessageTitle: TEdit
      Left = 92
      Top = 81
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
      TabOrder = 2
    end
    object mmoMessage: TcxMemo
      Left = 91
      Top = 105
      Width = 265
      Height = 89
      ParentFont = False
      Properties.MaxLength = 255
      Style.BorderColor = 10526880
      Style.BorderStyle = ebsSingle
      Style.Color = 5987163
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      TabOrder = 3
    end
    object lblPolicy: TcxLabel
      Left = 180
      Top = 205
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
      TabOrder = 8
      OnClick = lblPolicyClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object edtLink: TcxMaskEdit
      Left = 91
      Top = 53
      Width = 121
      Height = 21
      ParentFont = False
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = 'http://[a-zA-Z0-9].+'
      Properties.MaxLength = 0
      Style.BorderColor = 10526880
      Style.BorderStyle = ebsSingle
      Style.Color = 5987163
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      TabOrder = 1
      Text = 'http://'
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
        object layoutBBItem6: TdxLayoutItem
          Caption = 'Visible To:'
          CaptionOptions.AlignHorz = taRightJustify
          Control = cboMessageFor
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object layoutBBItem5: TdxLayoutItem
          Caption = 'Web Link:'
          CaptionOptions.AlignHorz = taRightJustify
          Control = edtLink
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object layoutBBItem7: TdxLayoutItem
          Caption = 'Message Title:'
          CaptionOptions.AlignHorz = taRightJustify
          Control = edtMessageTitle
          ControlOptions.AutoColor = True
        end
        object layoutBBItem8: TdxLayoutItem
          Caption = 'Message:'
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.AlignVert = tavTop
          Control = mmoMessage
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object layoutBBGroup3: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahCenter
          AlignVert = avBottom
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object layoutBBItem4: TdxLayoutItem
            AutoAligns = [aaVertical]
            ShowCaption = False
            Control = lblSubmit
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object layoutBBItem1: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'cxLabel1'
            ShowCaption = False
            Control = lblCancel
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object layoutBBItem2: TdxLayoutItem
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
    Caption = 'Post A Message'
  end
end
