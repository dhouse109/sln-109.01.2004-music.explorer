object frmOptionsDLG: TfrmOptionsDLG
  Left = 684
  Top = 190
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Options'
  ClientHeight = 208
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
  object layoutOptions: TdxLayoutControl
    Left = 0
    Top = 18
    Width = 340
    Height = 190
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
      Top = 170
      Width = 150
      Height = 13
      BevelOuter = bvNone
      Color = 10526880
      TabOrder = 3
    end
    object lblClose: TcxLabel
      Left = 155
      Top = 147
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
      TabOrder = 4
      OnClick = lblCloseClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object edtMediaFolder: TcxButtonEdit
      Left = 86
      Top = 66
      Width = 238
      Height = 21
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.HideCursor = True
      Properties.OnButtonClick = edtMediaFolderPropertiesButtonClick
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
      TabOrder = 0
    end
    object chkLoopNowPlaying: TcxCheckBox
      Left = 176
      Top = 103
      Width = 160
      Height = 21
      ParentColor = False
      ParentFont = False
      Properties.Alignment = taRightJustify
      Properties.DisplayUnchecked = 'False'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chkLoopNowPlayingPropertiesChange
      Properties.Caption = 'Loop "Now Playing" Playlist:'
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
        object layoutOptionsItem2: TdxLayoutItem
          Caption = 'Media Folder'
          Offsets.Left = 4
          Offsets.Right = 4
          Offsets.Top = 40
          Control = edtMediaFolder
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object layoutOptionsItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Offsets.Top = 10
          ShowCaption = False
          Control = chkLoopNowPlaying
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object layoutOptionsGroup3: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahCenter
          AlignVert = avBottom
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object layoutOptionsItem1: TdxLayoutItem
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
    Caption = 'Options'
  end
  object dlgMediaFolder: TcxShellBrowserDialog
    FolderLabelCaption = 'Media Folder:'
    Options.ContextMenus = False
    Options.ShowHidden = True
    Options.ShowToolTip = False
    Options.TrackShellChanges = False
    ShowRoot = False
    Title = 'Select A Folder'
    Left = 156
    Top = 46
  end
end
