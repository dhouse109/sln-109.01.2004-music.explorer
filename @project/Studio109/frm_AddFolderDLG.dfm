object frmAddFolderDLG: TfrmAddFolderDLG
  Left = 723
  Top = 237
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Add Folder To My Library'
  ClientHeight = 265
  ClientWidth = 386
  Color = 15790320
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object layoutAddFolder: TdxLayoutControl
    Left = 0
    Top = 18
    Width = 386
    Height = 247
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = datMain.layoutLookFeelMain_Web
    object Panel37: TPanel
      Left = 4
      Top = 7
      Width = 378
      Height = 13
      BevelOuter = bvNone
      Color = 10526880
      TabOrder = 2
    end
    object Panel38: TPanel
      Left = 4
      Top = 227
      Width = 150
      Height = 13
      BevelOuter = bvNone
      Color = 10526880
      TabOrder = 3
    end
    object lblStartScan: TcxLabel
      Left = 145
      Top = 204
      Width = 54
      Height = 17
      Cursor = crHandPoint
      Caption = 'Start Scan'
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Transparent = True
      Style.Color = 5987163
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsUnderline]
      Style.HotTrack = False
      TabOrder = 4
      OnClick = lblStartScanClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object lblCancel: TcxLabel
      Left = 205
      Top = 204
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
    object lblScanStatus: TcxLabel
      Left = 14
      Top = 120
      Width = 350
      Height = 17
      AutoSize = False
      Caption = 'Scanning For Files and Retrieving File Info . . .'
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Transparent = True
      Style.Color = 5987163
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      TabOrder = 6
    end
    object lblScanStatus_Count: TcxLabel
      Left = 15
      Top = 144
      Width = 350
      Height = 17
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Transparent = True
      Style.Color = 5987163
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      TabOrder = 7
    end
    object progScanStatus: TcxProgressBar
      Left = 15
      Top = 169
      Width = 350
      Height = 21
      ParentColor = False
      ParentFont = False
      Properties.BeginColor = clWhite
      Properties.ShowText = False
      Properties.PeakValue = 5.000000000000000000
      Style.BorderColor = 10526880
      Style.Color = 5987163
      Style.Edges = []
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 8
    end
    object edtPathToScan: TcxButtonEdit
      Left = 96
      Top = 36
      Width = 321
      Height = 21
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edtPathToScanPropertiesButtonClick
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
      TabOrder = 0
    end
    object chkRecurseSubDirs: TcxCheckBox
      Left = 235
      Top = 63
      Width = 137
      Height = 21
      ParentColor = False
      ParentFont = False
      Properties.Alignment = taRightJustify
      Properties.DisplayUnchecked = 'False'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.Caption = 'Include Subdirectories:'
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
        object layoutAddFolder_PathToScan: TdxLayoutItem
          Caption = 'Path To Scan:'
          CaptionOptions.AlignHorz = taRightJustify
          Offsets.Left = 10
          Offsets.Right = 10
          Offsets.Top = 10
          Control = edtPathToScan
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object layoutAddFolder_IncludeSub: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          CaptionOptions.AlignHorz = taRightJustify
          Offsets.Right = 10
          ShowCaption = False
          Control = chkRecurseSubDirs
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object layoutMain_lblScanStatus: TdxLayoutItem
          Caption = 'New Item'
          Offsets.Left = 10
          Offsets.Right = 10
          Offsets.Top = 30
          ShowCaption = False
          Control = lblScanStatus
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object layoutMain_lblScanStatus_Count: TdxLayoutItem
          Caption = 'New Item'
          Offsets.Left = 10
          Offsets.Right = 10
          ShowCaption = False
          Control = lblScanStatus_Count
          ControlOptions.AutoColor = True
        end
        object layoutMain_progScanStatus: TdxLayoutItem
          Offsets.Left = 10
          Offsets.Right = 10
          ShowCaption = False
          Control = progScanStatus
          ControlOptions.AutoColor = True
        end
        object layoutAddFolderGroup3: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahCenter
          AlignVert = avBottom
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object layoutAddFolderItem5: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'cxLabel5'
            ShowCaption = False
            Control = lblStartScan
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem2: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'cxLabel3'
            ShowCaption = False
            Control = lblCancel
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
    Width = 386
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
    Caption = 'Add Folder To My Library'
  end
  object dlgPathToScan: TcxShellBrowserDialog
    FolderLabelCaption = 'Path To Scan:'
    Options.ContextMenus = False
    Options.ShowHidden = True
    Options.ShowToolTip = False
    Options.TrackShellChanges = False
    ShowRoot = False
    Title = 'Add Folder To My Library'
    Left = 183
    Top = 103
  end
end
