object frmInviteFriendsDLG: TfrmInviteFriendsDLG
  Left = 662
  Top = 220
  ActiveControl = edtName1
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Invite Your Friends'
  ClientHeight = 368
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
  object layoutInviteFriends: TdxLayoutControl
    Left = 0
    Top = 18
    Width = 307
    Height = 350
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
      TabOrder = 10
    end
    object Panel38: TPanel
      Left = 4
      Top = 330
      Width = 150
      Height = 13
      BevelOuter = bvNone
      Color = 10526880
      TabOrder = 11
    end
    object lblSubmit: TcxLabel
      Left = 96
      Top = 307
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
      TabOrder = 12
      OnClick = lblSubmitClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object lblCancel: TcxLabel
      Left = 138
      Top = 307
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
      TabOrder = 13
      OnClick = lblCancelClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object edtEmail1: TEdit
      Left = 162
      Top = 89
      Width = 140
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
      OnKeyPress = edtName1KeyPress
    end
    object lblPolicy: TcxLabel
      Left = 180
      Top = 307
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
      TabOrder = 14
      OnClick = lblPolicyClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object edtName1: TEdit
      Left = 5
      Top = 89
      Width = 140
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
      OnKeyPress = edtName1KeyPress
    end
    object lblCaption: TcxLabel
      Left = 25
      Top = 36
      Width = 257
      Height = 17
      Caption = 'Enter the Name and Email Address of up to 5 Friends'
      ParentFont = False
      Properties.Transparent = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      TabOrder = 15
    end
    object edtName2: TEdit
      Left = 5
      Top = 136
      Width = 140
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
      OnKeyPress = edtName1KeyPress
    end
    object edtEmail2: TEdit
      Left = 162
      Top = 136
      Width = 140
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
      TabOrder = 3
      OnKeyPress = edtName1KeyPress
    end
    object edtName3: TEdit
      Left = 5
      Top = 183
      Width = 140
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
      TabOrder = 4
      OnKeyPress = edtName1KeyPress
    end
    object edtEmail3: TEdit
      Left = 162
      Top = 183
      Width = 140
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
      TabOrder = 5
      OnKeyPress = edtName1KeyPress
    end
    object edtName4: TEdit
      Left = 5
      Top = 230
      Width = 140
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
      TabOrder = 6
      OnKeyPress = edtName1KeyPress
    end
    object edtEmail4: TEdit
      Left = 162
      Top = 230
      Width = 140
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
      TabOrder = 7
      OnKeyPress = edtName1KeyPress
    end
    object edtName5: TEdit
      Left = 5
      Top = 277
      Width = 140
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
      TabOrder = 8
      OnKeyPress = edtName1KeyPress
    end
    object edtEmail5: TEdit
      Left = 162
      Top = 277
      Width = 140
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
      TabOrder = 9
      OnKeyPress = edtName1KeyPress
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
        object layoutInviteFriendsItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahCenter
          Caption = 'cxLabel1'
          Offsets.Top = 10
          ShowCaption = False
          Control = lblCaption
          ControlOptions.ShowBorder = False
        end
        object layoutInviteFriendsGroup1: TdxLayoutGroup
          AutoAligns = [aaHorizontal]
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object layoutInviteFriendsGroup2: TdxLayoutGroup
            Offsets.Top = 10
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object layoutInviteFriendsItem3: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              Caption = 'Name:'
              CaptionOptions.Layout = clTop
              Control = edtName1
              ControlOptions.AutoColor = True
            end
            object layoutInviteFriendsItem7: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahRight
              Caption = 'Email:'
              CaptionOptions.Layout = clTop
              Control = edtEmail1
              ControlOptions.AutoColor = True
            end
          end
          object layoutInviteFriendsGroup4: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object layoutInviteFriendsGroup5: TdxLayoutGroup
              Offsets.Top = 3
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object layoutInviteFriendsItem5: TdxLayoutItem
                Caption = 'Name:'
                CaptionOptions.Layout = clTop
                Control = edtName2
                ControlOptions.AutoColor = True
              end
              object layoutInviteFriendsItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'Email:'
                CaptionOptions.Layout = clTop
                Control = edtEmail2
                ControlOptions.AutoColor = True
              end
            end
            object layoutInviteFriendsGroup6: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object layoutInviteFriendsGroup7: TdxLayoutGroup
                Offsets.Top = 3
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object layoutInviteFriendsItem9: TdxLayoutItem
                  Caption = 'Name:'
                  CaptionOptions.Layout = clTop
                  Control = edtName3
                  ControlOptions.AutoColor = True
                end
                object layoutInviteFriendsItem10: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahRight
                  Caption = 'Email:'
                  CaptionOptions.Layout = clTop
                  Control = edtEmail3
                  ControlOptions.AutoColor = True
                end
              end
              object layoutInviteFriendsGroup8: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object layoutInviteFriendsGroup9: TdxLayoutGroup
                  Offsets.Top = 3
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object layoutInviteFriendsItem11: TdxLayoutItem
                    Caption = 'Name:'
                    CaptionOptions.Layout = clTop
                    Control = edtName4
                    ControlOptions.AutoColor = True
                  end
                  object layoutInviteFriendsItem12: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahRight
                    Caption = 'Email:'
                    CaptionOptions.Layout = clTop
                    Control = edtEmail4
                    ControlOptions.AutoColor = True
                  end
                end
                object layoutInviteFriendsGroup10: TdxLayoutGroup
                  Offsets.Top = 3
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object layoutInviteFriendsItem13: TdxLayoutItem
                    Caption = 'Name:'
                    CaptionOptions.Layout = clTop
                    Control = edtName5
                    ControlOptions.AutoColor = True
                  end
                  object layoutInviteFriendsItem14: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahRight
                    Caption = 'Email:'
                    CaptionOptions.Layout = clTop
                    Control = edtEmail5
                    ControlOptions.AutoColor = True
                  end
                end
              end
            end
          end
        end
        object layoutInviteFriendsGroup3: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahCenter
          AlignVert = avBottom
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object layoutInviteFriendsItem4: TdxLayoutItem
            AutoAligns = [aaVertical]
            ShowCaption = False
            Control = lblSubmit
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object layoutInviteFriendsItem1: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'cxLabel1'
            ShowCaption = False
            Control = lblCancel
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object layoutInviteFriendsItem2: TdxLayoutItem
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
    Caption = 'Invite Your Friends'
  end
end
