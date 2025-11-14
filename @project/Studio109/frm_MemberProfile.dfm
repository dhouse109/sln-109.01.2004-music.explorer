inherited frmMemberProfile: TfrmMemberProfile
  Left = 0
  Top = 210
  Caption = 'Member Profile'
  ClientHeight = 483
  ClientWidth = 1016
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited layoutAppModule: TdxLayoutControl
    Width = 1016
    Height = 483
    object pnlMain: TPanel [0]
      Left = 0
      Top = 0
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Color = 3355443
      TabOrder = 3
      object layoutMemberProfile: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 185
        Height = 41
        Align = alClient
        ParentBackground = True
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = datMain.layoutLookFeelMain_WebAlt6
        object Shape3: TShape
          Left = 8
          Top = 193
          Width = 94
          Height = 1
          Pen.Color = 6710886
        end
        object Shape1: TShape
          Left = 258
          Top = 51
          Width = 1
          Height = 425
          Pen.Color = 6710886
        end
        object imgMemPic: TcxDBImage
          Left = 9
          Top = 77
          Width = 109
          Height = 109
          DataBinding.DataField = 'MemPic'
          DataBinding.DataSource = datMain.dsMemPic
          Properties.GraphicClassName = 'TJPEGImage'
          Properties.PopupMenuLayout.MenuItems = [pmiCopy, pmiSave]
          Properties.ReadOnly = True
          Properties.ShowFocusRect = False
          Properties.Stretch = True
          Style.BorderColor = 6710886
          Style.BorderStyle = ebsSingle
          Style.Color = 3355443
          Style.HotTrack = False
          TabOrder = 0
        end
        object lblWAYLT: TcxLabel
          Left = 125
          Top = 99
          Width = 84
          Height = 17
          Cursor = crHandPoint
          Hint = 'View what this member is playing'
          Caption = 'What I'#39'm Playing'
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          Properties.Transparent = True
          ShowHint = True
          Style.Color = 3355443
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 3
          OnClick = lblWAYLTClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblConnections: TcxLabel
          Left = 125
          Top = 76
          Width = 108
          Height = 17
          Cursor = crHandPoint
          Hint = 'View this member'#39's connections'
          Caption = 'Resident Connections'
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          Properties.Transparent = True
          ShowHint = True
          Style.Color = 3355443
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 4
          OnClick = lblConnectionsClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblMyProfile: TcxLabel
          Left = 7
          Top = 14
          Width = 51
          Height = 17
          Cursor = crHandPoint
          Caption = 'My Profile'
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 5
          OnClick = lblMyProfileClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object lblSendPM: TcxLabel
          Left = 125
          Top = 145
          Width = 110
          Height = 17
          Cursor = crHandPoint
          Hint = 'Send a private message to this member'
          Caption = 'Send Private Message'
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          Properties.Transparent = True
          ShowHint = True
          Style.Color = 3355443
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 6
          OnClick = lblSendPMClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblStartConnection: TcxLabel
          Left = 125
          Top = 122
          Width = 95
          Height = 17
          Cursor = crHandPoint
          Hint = 'Start a connection with this member'
          Caption = 'Start A Connection'
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          Properties.Transparent = True
          ShowHint = True
          Style.Color = 3355443
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 7
          OnClick = lblStartConnectionClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object pageMain: TcxPageControl
          Left = 265
          Top = 51
          Width = 289
          Height = 193
          Cursor = crHandPoint
          ActivePage = tabConnections
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          HideTabs = True
          Images = datMain.imglstMain_1616
          LookAndFeel.Kind = lfUltraFlat
          ParentFont = False
          Rotate = True
          Style = 3
          TabOrder = 2
          TabPosition = tpLeft
          OnPageChanging = pageMainPageChanging
          ClientRectBottom = 193
          ClientRectRight = 289
          ClientRectTop = 0
          object tabConnections: TcxTabSheet
            Caption = 'Connections'
            ImageIndex = 2
            object layoutConnections: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 289
              Height = 193
              Align = alClient
              ParentBackground = True
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = datMain.layoutLookFeelMain_Web
              object Shape2: TShape
                Left = 216
                Top = 32
                Width = 1
                Height = 19
                Pen.Color = 6710886
              end
              object mtreeCommunity_Profile: TMetaTree
                Left = 14
                Top = 64
                Width = 487
                Height = 263
                Cursor = crHandPoint
                HelpType = htKeyword
                Animated = True
                AutoMoveCenter = True
                AutoMoveSpeed = 10
                BorderStyle = bsNone
                Color = 3355443
                DefaultColor = 153
                DisableColor = 153
                Distance = 110
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Images = datMain.imglstMetaTree
                ImagePosition = ipTop
                Indent = 10
                LineColor = 6710886
                Style = mtsBoth
                MinSector = 11.000000000000000000
                MTBorderColor = 6710886
                SelectedColor = 10526880
                SelectionType = mtstPolyline
                ShowMTBorder = True
                ShowHint = True
                TabOrder = 1
                TabStop = True
                OnInfoTip = mtreeCommunity_ProfileInfoTip
                OnClick = mtreeCommunity_ProfileClick
                OnMouseUp = mtreeCommunity_ProfileMouseUp
              end
              object trackCommunity_Profile_Distance: TcxTrackBar
                Left = 155
                Top = 400
                Width = 589
                Height = 18
                Cursor = crHandPoint
                ParentColor = False
                PopupMenu = popmnuProfile_TrackDistance
                Position = 6
                Properties.AutoSize = False
                Properties.Frequency = 5
                Properties.Min = 1
                Properties.Max = 20
                Properties.PageSize = 2
                Properties.SelectionColor = clWhite
                Properties.ShowTicks = False
                Properties.TickColor = clWhite
                Properties.TickMarks = cxtmBoth
                Properties.TickSize = 1
                Properties.TrackColor = 6710886
                Properties.ThumbHeight = 10
                Properties.ThumbWidth = 10
                Properties.ThumbColor = clWhite
                Properties.ThumbHighlightColor = clWhite
                Properties.OnChange = cxTrackBar1PropertiesChange
                Style.BorderColor = clWhite
                Style.BorderStyle = ebsNone
                Style.Color = 3355443
                Style.HotTrack = False
                Style.TransparentBorder = True
                TabOrder = 3
              end
              object trackCommunity_Profile_MinSector: TcxTrackBar
                Left = 155
                Top = 373
                Width = 588
                Height = 18
                Cursor = crHandPoint
                ParentColor = False
                PopupMenu = popmnuProfile_TrackArc
                Position = 11
                Properties.AutoSize = False
                Properties.Frequency = 10
                Properties.Min = 1
                Properties.Max = 40
                Properties.PageSize = 2
                Properties.SelectionColor = clWhite
                Properties.ShowTicks = False
                Properties.TickColor = clWhite
                Properties.TickMarks = cxtmBoth
                Properties.TickSize = 1
                Properties.TrackColor = 6710886
                Properties.ThumbHeight = 10
                Properties.ThumbWidth = 10
                Properties.ThumbColor = clWhite
                Properties.ThumbHighlightColor = clWhite
                Properties.OnChange = trackCommunity_Profile_MinSectorPropertiesChange
                Style.BorderColor = clWhite
                Style.BorderStyle = ebsNone
                Style.Color = 3355443
                Style.Edges = [bLeft, bTop, bRight, bBottom]
                Style.HotTrack = False
                TabOrder = 2
              end
              object cboMemberProfile: TcxComboBox
                Left = 444
                Top = 32
                Width = 130
                Height = 19
                ParentFont = False
                Properties.Items.Strings = (
                  'dhouse')
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = 10066329
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.Shadow = False
                Style.TransparentBorder = False
                Style.ButtonStyle = btsHotFlat
                Style.ButtonTransparency = ebtHideUnselected
                Style.PopupBorderStyle = epbsSingle
                TabOrder = 0
                Text = 'dhouse'
                OnKeyPress = cboMemberProfileKeyPress
              end
              object lblGetUserProfile: TcxLabel
                Left = 348
                Top = 32
                Width = 90
                Height = 17
                Cursor = crHandPoint
                Caption = 'Goto Resident ID:'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Properties.ShadowedColor = clNone
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 7
                OnClick = lblGetUserProfileClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblConnectionTree: TcxLabel
                Left = 124
                Top = 32
                Width = 83
                Height = 17
                Cursor = crHandPoint
                Caption = 'Connection Tree'
                ParentColor = False
                ParentFont = False
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 8
                OnClick = lblConnectionTreeClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblEditMyConnections: TcxLabel
                Left = 11
                Top = 32
                Width = 101
                Height = 17
                Cursor = crHandPoint
                Caption = 'Edit My Connections'
                ParentFont = False
                Properties.Transparent = True
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 9
                OnClick = lblEditMyConnectionsClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblRefreshRoot: TcxLabel
                Left = 226
                Top = 32
                Width = 113
                Height = 17
                Cursor = crHandPoint
                Caption = 'Refresh Root Resident'
                ParentFont = False
                Properties.Transparent = True
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 10
                OnClick = lblRefreshRootClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object dxLayoutGroup4: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object layoutConnectionsGroup1: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'Resident Connections'
                  LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                  object layoutConnectionsGroup2: TdxLayoutGroup
                    LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                    ShowCaption = False
                    LayoutDirection = ldHorizontal
                    object layoutConnections_Edit: TdxLayoutItem
                      Caption = 'cxLabel1'
                      Offsets.Left = 3
                      Offsets.Right = 3
                      ShowCaption = False
                      Control = lblEditMyConnections
                      ControlOptions.ShowBorder = False
                    end
                    object layoutConnectionsItem8: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      Caption = 'cxLabel5'
                      Offsets.Left = 3
                      Offsets.Right = 3
                      ShowCaption = False
                      Control = lblConnectionTree
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object layoutConnectionsItem7: TdxLayoutItem
                      ShowCaption = False
                      Control = Shape2
                      ControlOptions.ShowBorder = False
                    end
                    object layoutConnectionsItem4: TdxLayoutItem
                      Caption = 'cxLabel1'
                      Offsets.Left = 3
                      ShowCaption = False
                      Control = lblRefreshRoot
                      ControlOptions.ShowBorder = False
                    end
                    object layoutConnectionsItem5: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      Caption = 'New Item'
                      Offsets.Left = 3
                      ShowCaption = False
                      Control = lblGetUserProfile
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object layoutConnectionsItem6: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avCenter
                      Offsets.Right = 3
                      ShowCaption = False
                      Control = cboMemberProfile
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object layoutConnectionsItem1: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avClient
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 10
                    ShowCaption = False
                    Control = mtreeCommunity_Profile
                    ControlOptions.Opaque = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutConnectionsItem3: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avBottom
                    Caption = 'Connection Arc:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 10
                    Control = trackCommunity_Profile_MinSector
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutConnectionsItem2: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avBottom
                    Caption = 'Distance Between Members:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 10
                    Offsets.Top = 3
                    Control = trackCommunity_Profile_Distance
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
          object tabWAYLT: TcxTabSheet
            Caption = 'WIP'
            ImageIndex = 24
            object layoutWAYLT: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 289
              Height = 193
              Align = alClient
              ParentBackground = True
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = datMain.layoutLookFeelMain_WebAlt6
              object Shape7: TShape
                Left = 454
                Top = 32
                Width = 1
                Height = 17
                Pen.Color = 6710886
              end
              object Shape8: TShape
                Left = 296
                Top = 32
                Width = 1
                Height = 17
                Pen.Color = 6710886
              end
              object cboWAYLT_Date: TcxComboBox
                Left = 40
                Top = 32
                Width = 100
                Height = 19
                ParentFont = False
                Properties.Alignment.Vert = taBottomJustify
                Properties.DropDownListStyle = lsFixedList
                Properties.ImmediatePost = True
                Properties.ImmediateUpdateText = True
                Properties.Items.Strings = (
                  'Today'
                  'Last 7 Days'
                  'Last 30 Days')
                Properties.OnChange = cboWAYLT_DatePropertiesChange
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = 10066329
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.Shadow = False
                Style.TransparentBorder = False
                Style.ButtonStyle = btsHotFlat
                Style.ButtonTransparency = ebtHideUnselected
                Style.PopupBorderStyle = epbsSingle
                TabOrder = 0
                Text = 'Today'
              end
              object cboPageNav: TcxComboBox
                Left = 497
                Top = 32
                Width = 80
                Height = 19
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.DropDownListStyle = lsFixedList
                Properties.ImmediatePost = True
                Properties.ImmediateUpdateText = True
                Properties.PopupAlignment = taRightJustify
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = cboPageNavPropertiesChange
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.TransparentBorder = False
                Style.ButtonStyle = btsHotFlat
                Style.ButtonTransparency = ebtHideUnselected
                Style.PopupBorderStyle = epbsSingle
                TabOrder = 2
              end
              object lblPageTotal: TcxLabel
                Left = 583
                Top = 32
                Width = 55
                Height = 17
                Caption = 'No Results'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                TabOrder = 4
              end
              object lblFirst: TcxLabel
                Left = 306
                Top = 32
                Width = 25
                Height = 17
                Cursor = crHandPoint
                Caption = 'First'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 6
                OnClick = lblFirstClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblPrevious: TcxLabel
                Left = 337
                Top = 32
                Width = 45
                Height = 17
                Cursor = crHandPoint
                Caption = 'Previous'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 7
                OnClick = lblPreviousClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblNext: TcxLabel
                Left = 388
                Top = 32
                Width = 27
                Height = 17
                Cursor = crHandPoint
                Caption = 'Next'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 3
                OnClick = lblNextClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblLast: TcxLabel
                Left = 421
                Top = 32
                Width = 24
                Height = 17
                Cursor = crHandPoint
                Caption = 'Last'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 5
                OnClick = lblLastClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object gridWAYLT: TcxGrid
                Left = 133
                Top = 64
                Width = 923
                Height = 500
                BorderStyle = cxcbsNone
                TabOrder = 8
                object gridviewWAYLT: TcxGridDBTableView
                  DataController.DataSource = datMain.dsMem_WAYLT
                  DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  NavigatorButtons.ConfirmDelete = False
                  OptionsBehavior.CellHints = True
                  OptionsBehavior.PullFocusing = True
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnGrouping = False
                  OptionsCustomize.ColumnHidingOnGrouping = False
                  OptionsCustomize.ColumnMoving = False
                  OptionsCustomize.ColumnSorting = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Inserting = False
                  OptionsSelection.CellSelect = False
                  OptionsSelection.HideSelection = True
                  OptionsView.CellEndEllipsis = True
                  OptionsView.GridLineColor = 3355443
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderEndEllipsis = True
                  Preview.Column = gridviewWAYLTMessage
                  Preview.LeftIndent = 50
                  Preview.MaxLineCount = 4
                  Preview.Visible = True
                  Styles.StyleSheet = datMain.cssTableView
                  object gridviewWAYLTDatePosted: TcxGridDBColumn
                    Tag = 192293460
                    Caption = 'Date'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 65
                    DataBinding.FieldName = 'DatePosted'
                  end
                  object gridviewWAYLTTimePosted: TcxGridDBColumn
                    Tag = 162895800
                    Caption = 'Time'
                    PropertiesClassName = 'TcxTimeEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 63
                    DataBinding.FieldName = 'TimePosted'
                  end
                  object gridviewWAYLTAVTitle: TcxGridDBColumn
                    Tag = 162897688
                    Caption = 'Title'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.HideCursor = True
                    Properties.MaxLength = 0
                    Properties.OnButtonClick = gridviewWAYLTAVTitlePropertiesButtonClick
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 129
                    DataBinding.FieldName = 'AVTitle'
                  end
                  object gridviewWAYLTAVLength: TcxGridDBColumn
                    Tag = 162898832
                    Caption = 'Length'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.MaxLength = 0
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 58
                    DataBinding.FieldName = 'AVLength'
                  end
                  object gridviewWAYLTAVArtist: TcxGridDBColumn
                    Tag = 162900476
                    Caption = 'Artist'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.HideCursor = True
                    Properties.MaxLength = 0
                    Properties.OnButtonClick = gridviewWAYLTAVArtistPropertiesButtonClick
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 117
                    DataBinding.FieldName = 'AVArtist'
                  end
                  object gridviewWAYLTAVAlbum: TcxGridDBColumn
                    Tag = 283127608
                    Caption = 'Album'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.HideCursor = True
                    Properties.MaxLength = 0
                    Properties.OnButtonClick = gridviewWAYLTAVAlbumPropertiesButtonClick
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 111
                    DataBinding.FieldName = 'AVAlbum'
                  end
                  object gridviewWAYLTAVGenre: TcxGridDBColumn
                    Tag = 189240772
                    Caption = 'Genre'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.MaxLength = 0
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 85
                    DataBinding.FieldName = 'AVGenre'
                  end
                  object gridviewWAYLTMessage: TcxGridDBColumn
                    Tag = 161967188
                    PropertiesClassName = 'TcxMemoProperties'
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 208
                    DataBinding.FieldName = 'Message'
                  end
                end
                object cxGridLevel6: TcxGridLevel
                  GridView = gridviewWAYLT
                end
              end
              object lblWAYLT_Close: TcxLabel
                Left = 21
                Top = 64
                Width = 103
                Height = 17
                Cursor = crHandPoint
                Caption = 'Back To Connections'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 9
                OnClick = lblWAYLT_CloseClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object cboGenre: TcxComboBox
                Left = 187
                Top = 32
                Width = 100
                Height = 19
                ParentFont = False
                Properties.Alignment.Vert = taBottomJustify
                Properties.ImmediatePost = True
                Properties.ImmediateUpdateText = True
                Properties.Items.Strings = (
                  '')
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = 10066329
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.Shadow = False
                Style.TransparentBorder = False
                Style.ButtonStyle = btsHotFlat
                Style.ButtonTransparency = ebtHideUnselected
                Style.PopupBorderStyle = epbsSingle
                TabOrder = 1
                OnKeyPress = cboGenreKeyPress
              end
              object cxLabel1: TcxLabel
                Left = 7
                Top = 87
                Width = 117
                Height = 17
                Cursor = crHandPoint
                Caption = 'Search for Track @ 109'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 10
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object cxLabel2: TcxLabel
                Left = 53
                Top = 110
                Width = 71
                Height = 17
                Cursor = crHandPoint
                Caption = 'Preview Track'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 11
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object cxLabel3: TcxLabel
                Left = 44
                Top = 133
                Width = 80
                Height = 17
                Cursor = crHandPoint
                Caption = 'Download Track'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 12
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object dxLayoutGroup2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutGroup11: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'What I'#39'm Playing'
                  LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                  object layoutWAYLTGroup6: TdxLayoutGroup
                    Caption = 'New Group'
                    LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                    ShowCaption = False
                    LayoutDirection = ldHorizontal
                    object dxLayoutItem10: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      Caption = 'Date:'
                      Offsets.Right = 3
                      Control = cboWAYLT_Date
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object layoutWAYLTItem2: TdxLayoutItem
                      Caption = 'Genre:'
                      Offsets.Right = 3
                      Control = cboGenre
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object layoutWAYLTItem22: TdxLayoutItem
                      Control = Shape8
                      ControlOptions.ShowBorder = False
                    end
                    object layoutWAYLTItem10: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      Caption = 'New Item'
                      Offsets.Left = 3
                      ShowCaption = False
                      Control = lblFirst
                      ControlOptions.ShowBorder = False
                    end
                    object layoutWAYLTItem11: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      Caption = 'New Item'
                      ShowCaption = False
                      Control = lblPrevious
                      ControlOptions.ShowBorder = False
                    end
                    object layoutWAYLTItem13: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      Caption = 'New Item'
                      ShowCaption = False
                      Control = lblNext
                      ControlOptions.ShowBorder = False
                    end
                    object layoutWAYLTItem17: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      Caption = 'New Item'
                      Offsets.Right = 3
                      ShowCaption = False
                      Control = lblLast
                      ControlOptions.ShowBorder = False
                    end
                    object layoutWAYLTItem18: TdxLayoutItem
                      Control = Shape7
                      ControlOptions.ShowBorder = False
                    end
                    object layoutWAYLTItem7: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      Caption = 'Page:'
                      Offsets.Left = 3
                      Control = cboPageNav
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object layoutWAYLTItem8: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      Caption = 'New Item'
                      ShowCaption = False
                      Control = lblPageTotal
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object layoutWAYLTGroup1: TdxLayoutGroup
                    AutoAligns = [aaHorizontal]
                    AlignVert = avClient
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object layoutWAYLTGroup2: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object layoutWAYLTItem1: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        AlignHorz = ahRight
                        Offsets.Left = 3
                        ShowCaption = False
                        Control = lblWAYLT_Close
                        ControlOptions.ShowBorder = False
                      end
                      object layoutWAYLTItem3: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        AlignHorz = ahRight
                        Offsets.Left = 3
                        ShowCaption = False
                        Control = cxLabel1
                        ControlOptions.ShowBorder = False
                      end
                      object layoutWAYLTItem4: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        AlignHorz = ahRight
                        Offsets.Left = 3
                        ShowCaption = False
                        Control = cxLabel2
                        ControlOptions.ShowBorder = False
                      end
                      object layoutWAYLTItem5: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        AlignHorz = ahRight
                        Offsets.Left = 3
                        ShowCaption = False
                        Control = cxLabel3
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object dxLayoutItem13: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahClient
                      AlignVert = avClient
                      Offsets.Left = 3
                      ShowCaption = False
                      Control = gridWAYLT
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
              end
            end
          end
          object tabEditConnections: TcxTabSheet
            Caption = 'Edit My Connections'
            ImageIndex = 2
            object layoutEditConnections: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 289
              Height = 193
              Align = alClient
              ParentBackground = True
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = datMain.layoutLookFeelMain_WebAlt6
              object Shape4: TShape
                Left = 403
                Top = 32
                Width = 1
                Height = 17
                Pen.Color = 6710886
              end
              object Shape5: TShape
                Left = 207
                Top = 32
                Width = 1
                Height = 17
                Pen.Color = 6710886
              end
              object cboConn_PageNav: TcxComboBox
                Left = 446
                Top = 32
                Width = 80
                Height = 19
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.DropDownListStyle = lsFixedList
                Properties.ImmediatePost = True
                Properties.ImmediateUpdateText = True
                Properties.PopupAlignment = taRightJustify
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = cboConn_PageNavPropertiesChange
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.TransparentBorder = False
                Style.ButtonStyle = btsHotFlat
                Style.ButtonTransparency = ebtHideUnselected
                Style.PopupBorderStyle = epbsSingle
                TabOrder = 0
              end
              object lblConn_PageTotal: TcxLabel
                Left = 532
                Top = 33
                Width = 55
                Height = 17
                Caption = 'No Results'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                TabOrder = 1
              end
              object lblConn_Delete: TcxLabel
                Left = 217
                Top = 32
                Width = 79
                Height = 17
                Cursor = crHandPoint
                Caption = 'Delete Selected'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 2
                OnClick = lblConn_DeleteClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblConn_Approve: TcxLabel
                Left = 305
                Top = 32
                Width = 89
                Height = 17
                Cursor = crHandPoint
                Caption = 'Approve Selected'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 3
                OnClick = lblConn_ApproveClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object gridConnections: TcxGrid
                Left = 4
                Top = 64
                Width = 923
                Height = 500
                BorderStyle = cxcbsNone
                TabOrder = 4
                object gridviewEditConnections: TcxGridDBTableView
                  DataController.DataSource = datMain.dsMems_Connects
                  DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  NavigatorButtons.ConfirmDelete = False
                  OnFocusedRecordChanged = gridviewEditConnectionsFocusedRecordChanged
                  OptionsBehavior.CellHints = True
                  OptionsBehavior.PullFocusing = True
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnGrouping = False
                  OptionsCustomize.ColumnHidingOnGrouping = False
                  OptionsCustomize.ColumnMoving = False
                  OptionsCustomize.ColumnSorting = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Inserting = False
                  OptionsSelection.HideSelection = True
                  OptionsView.CellEndEllipsis = True
                  OptionsView.GridLineColor = 3355443
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderEndEllipsis = True
                  Styles.StyleSheet = datMain.cssTableView
                  object gridviewEditConnectionsSelected: TcxGridDBColumn
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.DisplayUnchecked = 'False'
                    Properties.ImmediatePost = True
                    Properties.NullStyle = nssUnchecked
                    MinWidth = 18
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.HorzSizing = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 18
                    DataBinding.FieldName = 'Selected'
                    IsCaptionAssigned = True
                  end
                  object gridviewEditConnectionsName: TcxGridDBColumn
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 160
                    DataBinding.FieldName = 'Name'
                  end
                  object gridviewEditConnectionsEmail: TcxGridDBColumn
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 190
                    DataBinding.FieldName = 'Email'
                  end
                  object gridviewEditConnectionsIsMember: TcxGridDBColumn
                    Caption = 'Registered'
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.DisplayUnchecked = 'False'
                    Properties.ImmediatePost = True
                    Properties.NullStyle = nssUnchecked
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 73
                    DataBinding.FieldName = 'IsMember'
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = gridviewEditConnections
                end
              end
              object lblConn_Viewing: TcxLabel
                Left = 57
                Top = 32
                Width = 141
                Height = 17
                Cursor = crHandPoint
                Caption = 'View:  Connections I Started'
                ParentFont = False
                Properties.Transparent = True
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 5
                OnClick = lblConn_ViewingClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblConn_Finished: TcxLabel
                Left = 8
                Top = 32
                Width = 43
                Height = 17
                Cursor = crHandPoint
                Caption = 'Finished'
                ParentFont = False
                Properties.Transparent = True
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 6
                OnClick = lblConn_FinishedClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object dxLayoutGroup3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutGroup7: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'Edit My Connections'
                  LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                  object dxLayoutGroup10: TdxLayoutGroup
                    Caption = 'New Group'
                    LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                    ShowCaption = False
                    LayoutDirection = ldHorizontal
                    object layoutEditConnectionsItem2: TdxLayoutItem
                      Caption = 'cxLabel1'
                      ShowCaption = False
                      Control = lblConn_Finished
                      ControlOptions.ShowBorder = False
                    end
                    object layoutEditConnectionsItem1: TdxLayoutItem
                      Caption = 'cxLabel1'
                      Offsets.Right = 3
                      ShowCaption = False
                      Control = lblConn_Viewing
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem2: TdxLayoutItem
                      Control = Shape5
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem3: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      Caption = 'New Item'
                      Offsets.Left = 3
                      Offsets.Right = 3
                      ShowCaption = False
                      Control = lblConn_Delete
                      ControlOptions.ShowBorder = False
                    end
                    object layoutEditConnections_Approve: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      Caption = 'New Item'
                      Offsets.Right = 3
                      ShowCaption = False
                      Control = lblConn_Approve
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem7: TdxLayoutItem
                      Control = Shape4
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem8: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      Caption = 'Page:'
                      Offsets.Left = 3
                      Control = cboConn_PageNav
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem9: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avCenter
                      Caption = 'New Item'
                      ShowCaption = False
                      Control = lblConn_PageTotal
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutItem11: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahClient
                    AlignVert = avClient
                    ShowCaption = False
                    Control = gridConnections
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
          object tabEditProfile: TcxTabSheet
            Caption = 'Edit My Profile'
            ImageIndex = 3
            object layoutEditProfile: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 289
              Height = 193
              Align = alClient
              ParentBackground = True
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = datMain.layoutLookFeelMain_WebAlt6
              object Shape6: TShape
                Left = 4
                Top = 142
                Width = 113
                Height = 1
                Pen.Color = 6710886
              end
              object lblEditProfile_Close: TcxLabel
                Left = 45
                Top = 241
                Width = 30
                Height = 17
                Cursor = crHandPoint
                Caption = 'Close'
                ParentFont = False
                Properties.Transparent = True
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 2
                OnClick = lblEditProfile_CloseClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblEditProfile_Save: TcxLabel
                Left = 46
                Top = 218
                Width = 28
                Height = 17
                Cursor = crHandPoint
                Caption = 'Save'
                ParentFont = False
                Properties.Transparent = True
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 3
                OnClick = lblEditProfile_SaveClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object imgEditProfile_Pic: TcxDBImage
                Left = 5
                Top = 26
                Width = 109
                Height = 109
                DataBinding.DataField = 'MemPic'
                DataBinding.DataSource = datMain.dsProfileMemPic
                Properties.GraphicClassName = 'TJPEGImage'
                Properties.PopupMenuLayout.MenuItems = [pmiCopy, pmiSave]
                Properties.ReadOnly = True
                Properties.ShowFocusRect = False
                Properties.Stretch = True
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.HotTrack = False
                TabOrder = 0
              end
              object vgridEditProfile: TcxDBVerticalGrid
                Left = 126
                Top = 26
                Width = 698
                Height = 391
                BorderStyle = cxcbsNone
                Styles.Background = datMain.styleVertGrid_Content
                Styles.Content = datMain.styleVertGrid_Content
                Styles.Inactive = datMain.styleVertGrid_Header2
                Styles.Selection = datMain.styleVertGrid_Header2
                Styles.StyleSheet = datMain.cssVertGrid
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                LayoutStyle = lsBandsView
                OptionsView.CellEndEllipsis = True
                OptionsView.AutoScaleBands = False
                OptionsView.BandsInterval = 0
                OptionsView.GridLineColor = 3355443
                OptionsView.RowHeaderMinWidth = 116
                OptionsView.RowHeaderWidth = 116
                OptionsView.ValueWidth = 150
                OptionsView.ValueMinWidth = 150
                OptionsBehavior.BandSizing = False
                OptionsBehavior.HeaderSizing = False
                OptionsBehavior.RowTracking = False
                OptionsBehavior.AllowChangeRecord = False
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                ParentFont = False
                TabOrder = 1
                DataController.DataSource = datMain.dsMems_Profile
                object cxDBEditorRow6: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Resident ID:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.Alignment.Horz = taLeftJustify
                  Properties.EditProperties.MaxLength = 255
                  Properties.EditProperties.ReadOnly = True
                  Properties.DataBinding.FieldName = 'Name'
                  Properties.Options.Editing = False
                end
                object vgridEditProfileDBEditorRow6: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'First Name:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.MaxLength = 50
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'FName'
                end
                object vgridEditProfileDBEditorRow7: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Last Name:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.MaxLength = 50
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'LName'
                end
                object cxDBEditorRow7: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Nickname:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.MaxLength = 100
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'Nickname'
                end
                object cxDBEditorRow9: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Gender:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
                  Properties.EditProperties.DropDownListStyle = lsFixedList
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.Items.Strings = (
                    ''
                    'Male'
                    'Female')
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'Gender'
                end
                object vgridEditProfileDBEditorRow1: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Birthday:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxDateEditProperties'
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.ReadOnly = False
                  Properties.EditProperties.SaveTime = False
                  Properties.EditProperties.ShowTime = False
                  Properties.DataBinding.FieldName = 'Birthday'
                end
                object cxDBEditorRow11: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Location:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.MaxLength = 128
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'Location'
                end
                object cxDBEditorRow12: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Hometown:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.MaxLength = 255
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'Hometown'
                end
                object vgridEditProfileDBEditorRow8: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'City:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.MaxLength = 100
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'City'
                end
                object vgridEditProfileDBEditorRow9: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'State:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
                  Properties.EditProperties.DropDownListStyle = lsFixedList
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.ImmediateUpdateText = True
                  Properties.EditProperties.Items.Strings = (
                    ''
                    'Alabama'
                    'Alaska'
                    'Alberta'
                    'American Samoa'
                    'Arizona'
                    'Arkansas'
                    'British Columbia'
                    'California'
                    'Colorado'
                    'Connecticut'
                    'Delaware'
                    'District of Columbia'
                    'Federated States of Micronesia1'
                    'Florida'
                    'Georgia'
                    'Guam'
                    'Hawaii'
                    'Idaho'
                    'Illinois'
                    'Indiana'
                    'Iowa'
                    'Kansas'
                    'Kentucky'
                    'Louisiana'
                    'Maine'
                    'Manitoba'
                    'Marshall Islands1'
                    'Maryland'
                    'Massachusetts'
                    'Michigan'
                    'Minnesota'
                    'Mississippi'
                    'Missouri'
                    'Montana'
                    'Nebraska'
                    'Nevada'
                    'New Brunswick'
                    'New Hampshire'
                    'New Jersey'
                    'New Mexico'
                    'New York'
                    'Newfoundland and Labrador'
                    'North Carolina'
                    'North Dakota'
                    'Northern Mariana Islands'
                    'Northwest Territories'
                    'Nova Scotia'
                    'Nunavut'
                    'Ohio'
                    'Oklahoma'
                    'Ontario'
                    'Oregon'
                    'Palau1'
                    'Pennsylvania'
                    'Prince Edward Island'
                    'Puerto Rico'
                    'Quebec'
                    'Rhode Island'
                    'Saskatchewan'
                    'South Carolina'
                    'South Dakota'
                    'Tennessee'
                    'Texas'
                    'Utah'
                    'Vermont'
                    'Virgin Island'
                    'Virginia'
                    'Washington'
                    'West Virginia'
                    'Wisconsin'
                    'Wyoming'
                    'Yukon')
                  Properties.EditProperties.MaxLength = 20
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'State'
                end
                object vgridEditProfileDBEditorRow10: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Zip:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.MaxLength = 10
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'Zip'
                end
                object vgridEditProfileDBEditorRow11: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Country:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
                  Properties.EditProperties.DropDownListStyle = lsFixedList
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.Items.Strings = (
                    ''
                    'U.S.A.'
                    'Canada')
                  Properties.EditProperties.MaxLength = 100
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'Country'
                end
                object cxDBEditorRow13: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Occupation:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.MaxLength = 50
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'Occupation'
                end
                object cxDBEditorRow14: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'About Me:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
                  Properties.EditProperties.BlobEditKind = bekMemo
                  Properties.EditProperties.BlobPaintStyle = bpsText
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.MemoMaxLength = 255
                  Properties.EditProperties.MemoScrollBars = ssVertical
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'AboutMe'
                end
                object cxDBEditorRow15: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Schools:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
                  Properties.EditProperties.BlobEditKind = bekMemo
                  Properties.EditProperties.BlobPaintStyle = bpsText
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.MemoMaxLength = 255
                  Properties.EditProperties.MemoScrollBars = ssVertical
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'Schools'
                end
                object cxDBEditorRow16: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Favorite Artists:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
                  Properties.EditProperties.BlobEditKind = bekMemo
                  Properties.EditProperties.BlobPaintStyle = bpsText
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.MemoMaxLength = 255
                  Properties.EditProperties.MemoScrollBars = ssVertical
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'FavArtists'
                end
                object cxDBEditorRow17: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'AIM:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.MaxLength = 40
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'aim_name'
                end
                object cxDBEditorRow18: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'MSN:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.MaxLength = 64
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'msnname'
                end
                object cxDBEditorRow19: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Yahoo:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.MaxLength = 32
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'yahoo'
                end
                object vgridEditProfileDBEditorRow2: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Website:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
                  Properties.EditProperties.MaskKind = emkRegExprEx
                  Properties.EditProperties.EditMask = 'http://[a-zA-Z0-9].+'
                  Properties.EditProperties.MaxLength = 0
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'website'
                end
                object vgridEditProfileDBEditorRow3: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Blog:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
                  Properties.EditProperties.MaskKind = emkRegExprEx
                  Properties.EditProperties.EditMask = 'http://[a-zA-Z0-9].+'
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'BlogURL'
                end
                object vgridEditProfileDBEditorRow5: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'Photo Album:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
                  Properties.EditProperties.MaskKind = emkRegExprEx
                  Properties.EditProperties.EditMask = 'http://[a-zA-Z0-9].+'
                  Properties.EditProperties.ReadOnly = False
                  Properties.DataBinding.FieldName = 'PhotoAlbumURL'
                end
                object vgridEditProfileDBEditorRow4: TcxDBEditorRow
                  Options.CanAutoHeight = False
                  Options.CanMovedToCustomizationForm = False
                  Properties.Caption = 'List In Directory'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.EditProperties.Alignment = taLeftJustify
                  Properties.EditProperties.DisplayUnchecked = 'False'
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.NullStyle = nssUnchecked
                  Properties.EditProperties.ReadOnly = False
                  Properties.EditProperties.ValueChecked = '1'
                  Properties.EditProperties.ValueGrayed = 0
                  Properties.EditProperties.ValueUnchecked = '0'
                  Properties.DataBinding.FieldName = 'ListInDirectory'
                end
              end
              object lblChangePass: TcxLabel
                Left = 15
                Top = 172
                Width = 90
                Height = 17
                Cursor = crHandPoint
                Caption = 'Change Password'
                ParentFont = False
                Properties.Transparent = True
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 4
                OnClick = lblChangePassClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblChangeEmail: TcxLabel
                Left = 26
                Top = 195
                Width = 68
                Height = 17
                Cursor = crHandPoint
                Caption = 'Change Email'
                ParentFont = False
                Properties.Transparent = True
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 5
                OnClick = lblChangeEmailClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblChangeAvatar: TcxLabel
                Left = 4
                Top = 149
                Width = 113
                Height = 17
                Cursor = crHandPoint
                Caption = 'Change Avatar Picture'
                ParentFont = False
                Properties.Transparent = True
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 6
                OnClick = lblChangeAvatarClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object dxLayoutGroup12: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutGroup13: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'Edit My Profile'
                  LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                  LayoutDirection = ldHorizontal
                  object layoutEditProfileGroup3: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object layoutEditProfileItem1: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      ShowCaption = False
                      Control = imgEditProfile_Pic
                      ControlOptions.AutoColor = True
                    end
                    object layoutEditProfileItem6: TdxLayoutItem
                      Control = Shape6
                      ControlOptions.ShowBorder = False
                    end
                    object layoutEditProfileGroup4: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object layoutEditProfileItem5: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        AlignHorz = ahCenter
                        Caption = 'cxLabel1'
                        ShowCaption = False
                        Control = lblChangeAvatar
                        ControlOptions.ShowBorder = False
                      end
                      object layoutEditProfileItem2: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        AlignHorz = ahCenter
                        Caption = 'cxLabel1'
                        ShowCaption = False
                        Control = lblChangePass
                        ControlOptions.ShowBorder = False
                      end
                      object layoutEditProfileItem4: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        AlignHorz = ahCenter
                        Caption = 'cxLabel2'
                        ShowCaption = False
                        Control = lblChangeEmail
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem1: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        AlignHorz = ahCenter
                        Caption = 'cxLabel1'
                        ShowCaption = False
                        Control = lblEditProfile_Save
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem4: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        AlignHorz = ahCenter
                        Caption = 'cxLabel1'
                        ShowCaption = False
                        Control = lblEditProfile_Close
                        ControlOptions.ShowBorder = False
                      end
                    end
                  end
                  object layoutEditProfileItem3: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahClient
                    AlignVert = avClient
                    Caption = 'New Item'
                    Offsets.Left = 2
                    ShowCaption = False
                    Control = vgridEditProfile
                  end
                end
              end
            end
          end
        end
        object lblMyInbox: TcxLabel
          Left = 538
          Top = 14
          Width = 49
          Height = 17
          Cursor = crHandPoint
          Caption = 'My Inbox'
          ParentColor = False
          ParentFont = False
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 11
          OnClick = lblMyInboxClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object lblComposeMessage: TcxLabel
          Left = 596
          Top = 14
          Width = 93
          Height = 17
          Cursor = crHandPoint
          Caption = 'Compose Message'
          ParentColor = False
          ParentFont = False
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 12
          OnClick = lblComposeMessageClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object vgridMemberProfile_Left: TcxDBVerticalGrid
          Left = 8
          Top = 200
          Width = 240
          Height = 299
          BorderStyle = cxcbsNone
          Styles.Background = datMain.styleVertGrid_Content
          Styles.Content = datMain.styleVertGrid_Content
          Styles.Inactive = datMain.styleVertGrid_Header2
          Styles.Selection = datMain.styleVertGrid_Header2
          Styles.StyleSheet = datMain.cssVertGrid
          OptionsView.CellEndEllipsis = True
          OptionsView.GridLineColor = 3355443
          OptionsView.RowHeaderMinWidth = 109
          OptionsView.RowHeaderWidth = 109
          OptionsBehavior.HeaderSizing = False
          OptionsBehavior.RowTracking = False
          OptionsBehavior.AllowChangeRecord = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          TabOrder = 1
          DataController.DataSource = datMain.dsMems_MiniProfile
          object vgridMemberProfile_LeftDBEditorRow1: TcxDBEditorRow
            Properties.Caption = 'Resident ID:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.EditProperties.Alignment.Horz = taLeftJustify
            Properties.DataBinding.FieldName = 'Name'
            Properties.Options.Editing = False
          end
          object cxDBEditorRow1: TcxDBEditorRow
            Properties.Caption = 'Nickname:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'Nickname'
            Properties.Options.Editing = False
          end
          object cxDBEditorRow2: TcxDBEditorRow
            Properties.Caption = 'Gender:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'Gender'
            Properties.Options.Editing = False
          end
          object vgridMemberProfile_LeftDBEditorRow2: TcxDBEditorRow
            Properties.Caption = 'Age:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'Age'
            Properties.Options.Editing = False
          end
          object cxDBEditorRow3: TcxDBEditorRow
            Properties.Caption = 'Location:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'Location'
            Properties.Options.Editing = False
          end
          object cxDBEditorRow4: TcxDBEditorRow
            Properties.Caption = 'Hometown:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'Hometown'
            Properties.Options.Editing = False
          end
          object vgridMemberProfile_LeftDBEditorRow8: TcxDBEditorRow
            Properties.Caption = 'Occupation:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'Occupation'
            Properties.Options.Editing = False
          end
          object cxDBEditorRow5: TcxDBEditorRow
            Properties.Caption = 'About Me:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
            Properties.EditProperties.BlobEditKind = bekMemo
            Properties.EditProperties.BlobPaintStyle = bpsText
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.MemoScrollBars = ssVertical
            Properties.DataBinding.FieldName = 'AboutMe'
          end
          object vgridMemberProfile_LeftDBEditorRow6: TcxDBEditorRow
            Properties.Caption = 'Schools:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
            Properties.EditProperties.BlobEditKind = bekMemo
            Properties.EditProperties.BlobPaintStyle = bpsText
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.MemoScrollBars = ssVertical
            Properties.DataBinding.FieldName = 'Schools'
          end
          object vgridMemberProfile_LeftDBEditorRow9: TcxDBEditorRow
            Options.CanAutoHeight = False
            Options.CanMovedToCustomizationForm = False
            Properties.Caption = 'Fav Artists:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
            Properties.EditProperties.BlobEditKind = bekMemo
            Properties.EditProperties.BlobPaintStyle = bpsText
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.MemoScrollBars = ssVertical
            Properties.DataBinding.FieldName = 'FavArtists'
          end
          object vgridMemberProfile_LeftDBEditorRow4: TcxDBEditorRow
            Properties.Caption = 'AIM:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'aim_name'
          end
          object vgridMemberProfile_LeftDBEditorRow5: TcxDBEditorRow
            Properties.Caption = 'MSN:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'msnname'
          end
          object vgridMemberProfile_LeftDBEditorRow7: TcxDBEditorRow
            Properties.Caption = 'Yahoo:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'yahoo'
          end
        end
        object lblOpenLink: TcxLabel
          Left = 125
          Top = 168
          Width = 81
          Height = 17
          Cursor = crHandPoint
          Hint = 'Open browser to one of the links shown'
          Caption = 'Open Link To ...'
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          Properties.Transparent = True
          ShowHint = True
          Style.Color = 3355443
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 13
          OnClick = lblOpenLinkClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblEditConnections_Approve: TcxLabel
          Left = 258
          Top = 14
          Width = 192
          Height = 17
          Cursor = crHandPoint
          Caption = '0 Connection(s) Pending Your Approval'
          ParentFont = False
          Properties.Transparent = True
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 14
          OnClick = lblEditConnections_ApproveClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object lblInviteFriends: TcxLabel
          Left = 459
          Top = 14
          Width = 70
          Height = 17
          Cursor = crHandPoint
          Caption = 'Invite Friends'
          ParentFont = False
          Properties.Transparent = True
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 15
          OnClick = lblInviteFriendsClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object lblEditMyProfile: TcxLabel
          Left = 67
          Top = 14
          Width = 72
          Height = 17
          Cursor = crHandPoint
          Caption = 'Edit My Profile'
          ParentFont = False
          Properties.Transparent = True
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 16
          OnClick = lblEditMyProfileClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object lblEditConnectionsPage: TcxLabel
          Left = 148
          Top = 14
          Width = 101
          Height = 17
          Cursor = crHandPoint
          Caption = 'Edit My Connections'
          ParentFont = False
          Properties.Transparent = True
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 17
          OnClick = lblEditConnectionsPageClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object dxLayoutGroup5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup6: TdxLayoutGroup
            Caption = 'Filter'
            Offsets.Top = 7
            ShowCaption = False
            LayoutDirection = ldHorizontal
            object dxLayoutGroup8: TdxLayoutGroup
              AutoAligns = []
              AlignVert = avClient
              Caption = 'New Group'
              ShowCaption = False
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutGroup1: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avCenter
                Caption = 'Actions   '
                CaptionOptions.AlignHorz = taCenter
                ShowCaption = False
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object layoutMemberProfileItem15: TdxLayoutItem
                  AutoAligns = []
                  AlignVert = avCenter
                  Caption = 'cxLabel6'
                  Offsets.Left = 3
                  ShowCaption = False
                  Control = lblMyProfile
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object layoutMemberProfileItem13: TdxLayoutItem
                  Caption = 'cxLabel1'
                  Offsets.Left = 3
                  ShowCaption = False
                  Control = lblEditMyProfile
                  ControlOptions.ShowBorder = False
                end
                object layoutMemberProfileItem17: TdxLayoutItem
                  Caption = 'cxLabel2'
                  Offsets.Left = 3
                  ShowCaption = False
                  Control = lblEditConnectionsPage
                  ControlOptions.ShowBorder = False
                end
                object layoutMemberProfileItem11: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avCenter
                  Caption = 'cxLabel1'
                  Offsets.Left = 3
                  ShowCaption = False
                  Control = lblEditConnections_Approve
                  ControlOptions.ShowBorder = False
                end
                object layoutMemberProfileItem12: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avCenter
                  Caption = 'cxLabel2'
                  Offsets.Left = 3
                  ShowCaption = False
                  Control = lblInviteFriends
                  ControlOptions.ShowBorder = False
                end
                object layoutMemberProfileItem2: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avCenter
                  Caption = 'cxLabel1'
                  Offsets.Left = 3
                  ShowCaption = False
                  Control = lblMyInbox
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object layoutMemberProfileItem4: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avCenter
                  Caption = 'cxLabel2'
                  Offsets.Left = 3
                  ShowCaption = False
                  Control = lblComposeMessage
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object layoutMemberProfileItem6: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxLayoutGroup9: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'Bulletin Board'
            LookAndFeel = datMain.layoutLookFeelMain_Web
            ShowCaption = False
            LayoutDirection = ldHorizontal
            object layoutMemberProfileGroup8: TdxLayoutGroup
              AllowRemove = False
              Caption = 'Actions   '
              CaptionOptions.AlignHorz = taCenter
              LookAndFeel = datMain.layoutLookFeelMain_Web
              ShowCaption = False
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object layoutMemberProfile_Member: TdxLayoutGroup
                Caption = 'Resident   '
                CaptionOptions.AlignHorz = taCenter
                LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                object layoutMemberProfileGroup1: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object layoutMemberProfileItem19: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Control = imgMemPic
                    ControlOptions.AutoColor = True
                  end
                  object layoutMemberProfileGroup3: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object layoutMemberProfileItem14: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'cxLabel5'
                      ShowCaption = False
                      Control = lblConnections
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object layoutMemberProfileItem9: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      ShowCaption = False
                      Control = lblWAYLT
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object layoutMemberProfileItem5: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'cxLabel6'
                      ShowCaption = False
                      Control = lblStartConnection
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object layoutMemberProfileItem3: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'cxLabel3'
                      ShowCaption = False
                      Control = lblSendPM
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object layoutMemberProfileItem8: TdxLayoutItem
                      Caption = 'cxLabel3'
                      ShowCaption = False
                      Control = lblOpenLink
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object layoutMemberProfileItem16: TdxLayoutItem
                  Control = Shape3
                  ControlOptions.ShowBorder = False
                end
                object layoutMemberProfileItem7: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  ShowCaption = False
                  Control = vgridMemberProfile_Left
                  ControlOptions.ShowBorder = False
                end
              end
              object layoutMemberProfile_Spacer: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Control = Shape1
                ControlOptions.ShowBorder = False
              end
            end
            object layoutMemberProfileGroup4: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'New Group'
              LookAndFeel = datMain.layoutLookFeelMain_WebAlt4
              ShowCaption = False
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object layoutMemberProfileItem1: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                ShowCaption = False
                Control = pageMain
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    inherited layoutAppModuleGroup_Root: TdxLayoutGroup
      object layoutAppModuleItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Control = pnlMain
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
  object barMemberProfile: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'Track Distance'
      'Track Arc'
      'MetaTree'
      'MetaTree Node'
      'Edit Connections')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True)
    ImageListBkColor = clBlack
    LargeImages = datMain.imglstMain_24
    MenusShowRecentItemsFirst = False
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 15
    Top = 83
    DockControlHeights = (
      0
      0
      0
      0)
    object mnuWAYLT: TdxBarButton
      Caption = 'What I'#39'm Playing'
      Category = 0
      Hint = 'What I'#39'm Playing'
      Visible = ivAlways
      OnClick = mnuWAYLTClick
    end
    object mnuStartAConnection: TdxBarButton
      Caption = 'Start A Connection'
      Category = 0
      Hint = 'Start A Connection'
      Visible = ivAlways
      OnClick = mnuStartAConnectionClick
    end
    object mnuSendPM: TdxBarButton
      Caption = 'Send Private Message'
      Category = 0
      Hint = 'Send Private Message'
      Visible = ivAlways
      OnClick = mnuSendPMClick
    end
    object mnuWebsite: TdxBarButton
      Caption = 'Website'
      Category = 0
      Hint = 'Website'
      Visible = ivAlways
      OnClick = mnuWebsiteClick
    end
    object mnuBlog: TdxBarButton
      Caption = 'Blog'
      Category = 0
      Hint = 'Blog'
      Visible = ivAlways
      OnClick = mnuBlogClick
    end
    object mnuPhotoAlbum: TdxBarButton
      Caption = 'Photo Album'
      Category = 0
      Hint = 'Photo Album'
      Visible = ivAlways
      OnClick = mnuPhotoAlbumClick
    end
    object mnuForumPosts: TdxBarButton
      Caption = 'Forum Posts'
      Category = 0
      Hint = 'Forum Posts'
      Visible = ivAlways
      OnClick = mnuForumPostsClick
    end
    object mnuProfile_TrackDistance: TdxBarButton
      Caption = 'Reset'
      Category = 1
      Hint = 'Reset'
      Visible = ivAlways
      OnClick = mnuResetDistanceClick
    end
    object mnuTrackArc: TdxBarButton
      Caption = 'Reset'
      Category = 2
      Hint = 'Reset'
      Visible = ivAlways
      OnClick = mnuResetArcClick
    end
    object mnuCenterRootMember: TdxBarButton
      Caption = 'Recenter Tree'
      Category = 3
      Hint = 'Recenter Tree'
      Visible = ivAlways
      OnClick = mnuCenterRootMemberClick
    end
    object mnuExpandAll: TdxBarButton
      Caption = 'Expand All'
      Category = 3
      Hint = 'Expand All'
      Visible = ivAlways
      OnClick = mnuExpandAllClick
    end
    object mnuCollapseAll: TdxBarButton
      Caption = 'Collapse All'
      Category = 3
      Hint = 'Collapse All'
      Visible = ivAlways
      OnClick = mnuCollapseAllClick
    end
    object mnuResetArc: TdxBarButton
      Caption = 'Reset Arc'
      Category = 3
      Hint = 'Reset Arc'
      Visible = ivAlways
      OnClick = mnuResetArcClick
    end
    object mnuResetDistance: TdxBarButton
      Caption = 'Reset Distance'
      Category = 3
      Hint = 'Reset Distance'
      Visible = ivAlways
      OnClick = mnuResetDistanceClick
    end
    object mnuResetDistanceAndArc: TdxBarButton
      Caption = 'Reset Arc and Distance'
      Category = 3
      Hint = 'Reset Arc and Distance'
      Visible = ivAlways
      OnClick = mnuResetDistanceAndArcClick
    end
    object mnuCenterMember: TdxBarButton
      Caption = 'Center Resident'
      Category = 4
      Hint = 'Center Resident'
      Visible = ivAlways
      OnClick = mnuCenterMemberClick
    end
    object mnuExpand: TdxBarButton
      Caption = 'Expand'
      Category = 4
      Hint = 'Expand'
      Visible = ivAlways
      OnClick = mnuExpandClick
    end
    object mnuCollapse: TdxBarButton
      Caption = 'Collapse'
      Category = 4
      Hint = 'Collapse'
      Visible = ivAlways
      OnClick = mnuCollapseClick
    end
    object mnuMyConnections: TdxBarButton
      Caption = 'Connections I Started'
      Category = 5
      Hint = 'Connections I Started'
      Visible = ivAlways
      OnClick = mnuMyConnectionsClick
    end
    object mnuUserConnections: TdxBarButton
      Caption = 'Connections I Approved'
      Category = 5
      Hint = 'Connections I Approved'
      Visible = ivAlways
      OnClick = mnuUserConnectionsClick
    end
    object mnuConn_MyApproval: TdxBarButton
      Caption = 'Pending My Approval'
      Category = 5
      Hint = 'Pending My Approval'
      Visible = ivAlways
      OnClick = mnuConn_MyApprovalClick
    end
    object mnuConn_UserApproval: TdxBarButton
      Caption = 'Pending User Approval'
      Category = 5
      Hint = 'Pending User Approval'
      Visible = ivAlways
      OnClick = mnuConn_UserApprovalClick
    end
  end
  object popmnuProfile_TrackDistance: TdxBarPopupMenu
    BarManager = barMemberProfile
    ItemLinks = <
      item
        Item = mnuProfile_TrackDistance
        Visible = True
      end>
    UseOwnFont = False
    Left = 15
    Top = 115
  end
  object popmnuProfile_TrackArc: TdxBarPopupMenu
    BarManager = barMemberProfile
    ItemLinks = <
      item
        Item = mnuTrackArc
        Visible = True
      end>
    UseOwnFont = False
    Left = 50
    Top = 84
  end
  object popmnuProfile_MetaTree: TdxBarPopupMenu
    BarManager = barMemberProfile
    ItemLinks = <
      item
        Item = mnuCenterRootMember
        Visible = True
      end
      item
        Item = mnuExpandAll
        Visible = True
      end
      item
        Item = mnuCollapseAll
        Visible = True
      end
      item
        BeginGroup = True
        Item = mnuResetArc
        Visible = True
      end
      item
        Item = mnuResetDistance
        Visible = True
      end
      item
        Item = mnuResetDistanceAndArc
        Visible = True
      end>
    UseOwnFont = False
    Left = 83
    Top = 84
  end
  object popmnuProfile_MetaTreeNode: TdxBarPopupMenu
    BarManager = barMemberProfile
    ItemLinks = <
      item
        Item = mnuCenterMember
        Visible = True
      end
      item
        Item = mnuWAYLT
        Visible = True
      end
      item
        Item = mnuStartAConnection
        Visible = True
      end
      item
        Item = mnuSendPM
        Visible = True
      end
      item
        BeginGroup = True
        Item = mnuWebsite
        Visible = True
      end
      item
        Item = mnuBlog
        Visible = True
      end
      item
        Item = mnuPhotoAlbum
        Visible = True
      end
      item
        Item = mnuForumPosts
        Visible = True
      end>
    UseOwnFont = False
    Left = 50
    Top = 115
  end
  object popmnuOpenLink: TdxBarPopupMenu
    BarManager = barMemberProfile
    ItemLinks = <
      item
        Item = mnuWebsite
        Visible = True
      end
      item
        Item = mnuBlog
        Visible = True
      end
      item
        Item = mnuPhotoAlbum
        Visible = True
      end
      item
        Item = mnuForumPosts
        Visible = True
      end>
    UseOwnFont = False
    Left = 84
    Top = 116
  end
  object popmnuEditConnections: TdxBarPopupMenu
    BarManager = barMemberProfile
    ItemLinks = <
      item
        Item = mnuMyConnections
        Visible = True
      end
      item
        Item = mnuUserConnections
        Visible = True
      end
      item
        Item = mnuConn_MyApproval
        Visible = True
      end
      item
        Item = mnuConn_UserApproval
        Visible = True
      end>
    UseOwnFont = False
    Left = 16
    Top = 147
  end
end
