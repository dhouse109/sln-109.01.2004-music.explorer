object frmEditProfilePicDLG: TfrmEditProfilePicDLG
  Left = 726
  Top = 223
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Change Avatar Picture'
  ClientHeight = 300
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
  object layoutEditProfilePic: TdxLayoutControl
    Left = 0
    Top = 18
    Width = 307
    Height = 282
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
      Top = 262
      Width = 150
      Height = 13
      BevelOuter = bvNone
      Color = 10526880
      TabOrder = 3
    end
    object lblSave: TcxLabel
      Left = 64
      Top = 239
      Width = 28
      Height = 17
      Cursor = crHandPoint
      Caption = 'Save'
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
      OnClick = lblSaveClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object lblCancel: TcxLabel
      Left = 169
      Top = 239
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
    object lblPolicy: TcxLabel
      Left = 211
      Top = 239
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
    object lblConfirmMsg: TcxLabel
      Left = 53
      Top = 156
      Width = 201
      Height = 17
      Caption = 'Max Width  x  Max Height  =  109  x  109'
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
    object edtPictureFile: TcxButtonEdit
      Left = 75
      Top = 199
      Width = 121
      Height = 21
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.HideCursor = True
      Properties.OnButtonClick = edtPictureFilePropertiesButtonClick
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
      Style.ButtonTransparency = ebtNone
      TabOrder = 1
    end
    object imgEditProfile_Pic: TcxDBImage
      Left = 99
      Top = 37
      Width = 109
      Height = 109
      DataBinding.DataField = 'MemPic'
      DataBinding.DataSource = datMain.dsProfileMemPic
      Properties.GraphicClassName = 'TJPEGImage'
      Properties.ImmediatePost = True
      Properties.PopupMenuLayout.MenuItems = [pmiCopy, pmiSave]
      Properties.ReadOnly = True
      Properties.ShowFocusRect = False
      Properties.Stretch = True
      Style.BorderColor = 10526880
      Style.BorderStyle = ebsSingle
      Style.Color = 5987163
      Style.HotTrack = False
      TabOrder = 0
    end
    object lblClearPic: TcxLabel
      Left = 98
      Top = 239
      Width = 65
      Height = 17
      Cursor = crHandPoint
      Caption = 'Clear Picture'
      ParentFont = False
      Properties.Transparent = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsUnderline]
      Style.HotTrack = False
      TabOrder = 8
      OnClick = lblClearPicClick
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
        CaptionOptions.AlignHorz = taCenter
        LookAndFeel = datMain.layoutLookFeelMain_WebAlt5
        ShowCaption = False
        object dxLayoutItem19: TdxLayoutItem
          ShowCaption = False
          Control = Panel37
          ControlOptions.ShowBorder = False
        end
        object layoutEditProfilePicItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahCenter
          Offsets.Top = 10
          ShowCaption = False
          Control = imgEditProfile_Pic
          ControlOptions.AutoColor = True
        end
        object layoutEditProfilePicItem9: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahCenter
          Caption = 'cxLabel2'
          Offsets.Top = 3
          ShowCaption = False
          Control = lblConfirmMsg
          ControlOptions.ShowBorder = False
        end
        object layoutEditProfilePicItem5: TdxLayoutItem
          Caption = 'Picture File:'
          CaptionOptions.AlignHorz = taRightJustify
          Offsets.Top = 20
          Control = edtPictureFile
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object layoutEditProfilePicGroup3: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahCenter
          AlignVert = avBottom
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object layoutEditProfilePicItem4: TdxLayoutItem
            AutoAligns = [aaVertical]
            ShowCaption = False
            Control = lblSave
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object layoutEditProfilePicItem3: TdxLayoutItem
            Caption = 'cxLabel1'
            ShowCaption = False
            Control = lblClearPic
            ControlOptions.ShowBorder = False
          end
          object layoutEditProfilePicItem1: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'cxLabel1'
            ShowCaption = False
            Control = lblCancel
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object layoutEditProfilePicItem2: TdxLayoutItem
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
    Caption = 'Change Avatar Picture'
  end
  object dlgOpen: TOpenDialog
    DefaultExt = '*.jpeg; *.jpg;'
    Filter = 'JPG Files|*.jpeg; *.jpg;'
    Options = [ofPathMustExist, ofFileMustExist, ofEnableSizing, ofForceShowHidden]
    Title = 'Please Select a JPG File'
    Left = 222
    Top = 64
  end
end
