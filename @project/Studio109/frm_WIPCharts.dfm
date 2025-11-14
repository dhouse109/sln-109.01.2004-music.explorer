inherited frmWIPCharts: TfrmWIPCharts
  Left = 95
  Top = 201
  ActiveControl = gridWAYLT_Summary_Posts
  Caption = 'WIP Charts'
  ClientHeight = 596
  ClientWidth = 1016
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited layoutAppModule: TdxLayoutControl
    Width = 1016
    Height = 596
    object pnlMain: TPanel [0]
      Left = 0
      Top = 0
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Color = 3355443
      TabOrder = 3
      object layoutMusic: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 185
        Height = 41
        Align = alClient
        BevelInner = bvNone
        ParentBackground = True
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = datMain.layoutLookFeelMain_WebAlt6
        object Shape2: TShape
          Left = 109
          Top = 14
          Width = 1
          Height = 44
          Pen.Color = 6710886
        end
        object page109Music: TcxPageControl
          Left = 4
          Top = 78
          Width = 1238
          Height = 463
          ActivePage = tabWIP
          HideTabs = True
          TabOrder = 8
          ClientRectBottom = 463
          ClientRectRight = 1238
          ClientRectTop = 0
          object tabWIP: TcxTabSheet
            Caption = 'WIP'
            ImageIndex = 0
            object layoutWAYLT: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 1238
              Height = 463
              Align = alClient
              ParentBackground = True
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = datMain.layoutLookFeelMain_Web
              object Shape3: TShape
                Left = 232
                Top = 148
                Width = 94
                Height = 1
                Pen.Color = 6710886
              end
              object Shape1: TShape
                Left = 225
                Top = 31
                Width = 1
                Height = 432
                Pen.Color = 6710886
              end
              object Shape6: TShape
                Left = 482
                Top = 6
                Width = 1
                Height = 449
                Pen.Color = 6710886
              end
              object imgWAYLT_MemPic: TcxDBImage
                Left = 233
                Top = 32
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
                Left = 349
                Top = 77
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
                TabOrder = 2
                OnClick = lblWAYLTClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblConnections: TcxLabel
                Left = 349
                Top = 31
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
                TabOrder = 3
                OnClick = lblConnectionsClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblMusicLinks: TcxLabel
                Left = 349
                Top = 54
                Width = 73
                Height = 17
                Cursor = crHandPoint
                Hint = 'View this member'#39's Music Links'
                Caption = 'My Music Links'
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
                OnClick = lblMusicLinksClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblStartConnection: TcxLabel
                Left = 349
                Top = 100
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
                TabOrder = 5
                OnClick = lblStartConnectionClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object vgridWAYLT_Mem: TcxDBVerticalGrid
                Left = 232
                Top = 155
                Width = 240
                Height = 350
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
                object vgridWAYLT_Mem_Name: TcxDBEditorRow
                  Properties.Caption = 'Resident ID:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.Alignment.Horz = taLeftJustify
                  Properties.DataBinding.FieldName = 'Name'
                  Properties.Options.Editing = False
                end
                object vgridWAYLT_Mem_Group: TcxDBEditorRow
                  Properties.Caption = 'Group:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.Options.Editing = False
                end
                object vgridWAYLT_Mem_Title: TcxDBEditorRow
                  Properties.Caption = 'Title:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.Options.Editing = False
                end
                object vgridWAYLT_Mem_Nickname: TcxDBEditorRow
                  Properties.Caption = 'Nickname:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'Nickname'
                  Properties.Options.Editing = False
                end
                object vgridWAYLT_Mem_Gender: TcxDBEditorRow
                  Properties.Caption = 'Gender:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'Gender'
                  Properties.Options.Editing = False
                end
                object vgridWAYLT_Mem_Age: TcxDBEditorRow
                  Properties.Caption = 'Age:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'Age'
                  Properties.Options.Editing = False
                end
                object vgridWAYLT_Mem_Location: TcxDBEditorRow
                  Properties.Caption = 'Location:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'Location'
                  Properties.Options.Editing = False
                end
                object vgridWAYLT_Mem_Hometown: TcxDBEditorRow
                  Properties.Caption = 'Hometown:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'Hometown'
                  Properties.Options.Editing = False
                end
                object vgridWAYLT_Mem_Occupation: TcxDBEditorRow
                  Properties.Caption = 'Occupation:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'Occupation'
                  Properties.Options.Editing = False
                end
                object vgridWAYLT_Mem_AboutMe: TcxDBEditorRow
                  Properties.Caption = 'About Me:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
                  Properties.EditProperties.BlobEditKind = bekMemo
                  Properties.EditProperties.BlobPaintStyle = bpsText
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.MemoScrollBars = ssVertical
                  Properties.DataBinding.FieldName = 'AboutMe'
                end
                object vgridWAYLT_Mem_Schools: TcxDBEditorRow
                  Properties.Caption = 'Schools:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
                  Properties.EditProperties.BlobEditKind = bekMemo
                  Properties.EditProperties.BlobPaintStyle = bpsText
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.MemoScrollBars = ssVertical
                  Properties.DataBinding.FieldName = 'Schools'
                end
                object vgridWAYLT_Mem_FavArtists: TcxDBEditorRow
                  Properties.Caption = 'Fav Artists:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
                  Properties.EditProperties.BlobEditKind = bekMemo
                  Properties.EditProperties.BlobPaintStyle = bpsText
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.MemoScrollBars = ssVertical
                  Properties.DataBinding.FieldName = 'FavArtists'
                end
              end
              object lblMemOpenLink: TcxLabel
                Left = 349
                Top = 123
                Width = 81
                Height = 17
                Cursor = crHandPoint
                Hint = 'Open browser to one of the links shown'
                Caption = 'Open Link To ...'
                ParentFont = False
                ParentShowHint = False
                Properties.Transparent = True
                ShowHint = True
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 6
                OnClick = lblMemOpenLinkClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object gridWAYLT_Summary: TcxGrid
                Left = 493
                Top = 73
                Width = 511
                Height = 356
                BorderStyle = cxcbsNone
                TabOrder = 7
                object gridviewWAYLT_Summary: TcxGridDBTableView
                  DataController.DataSource = datMain.dsWAYLT_Summary
                  DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  NavigatorButtons.ConfirmDelete = False
                  OnFocusedRecordChanged = gridviewWAYLT_SummaryFocusedRecordChanged
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
                  OptionsView.CellEndEllipsis = True
                  OptionsView.GridLineColor = 3355443
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderEndEllipsis = True
                  Styles.StyleSheet = datMain.cssTableView
                  object gridviewWAYLT_SummaryAVTitle: TcxGridDBColumn
                    Tag = 162897688
                    Caption = 'Title'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 117
                    DataBinding.FieldName = 'AVTitle'
                  end
                  object gridviewWAYLT_SummaryAVArtist: TcxGridDBColumn
                    Tag = 162900476
                    Caption = 'Artist'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 124
                    DataBinding.FieldName = 'AVArtist'
                  end
                  object gridviewWAYLT_SummaryAVAlbum: TcxGridDBColumn
                    Tag = 283127608
                    Caption = 'Album'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 107
                    DataBinding.FieldName = 'AVAlbum'
                  end
                  object gridviewWAYLT_SummaryAVGenre: TcxGridDBColumn
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
                  object gridviewWAYLT_SummaryTotalPosts: TcxGridDBColumn
                    Caption = 'Total Posts'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.Alignment.Horz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    SortOrder = soDescending
                    Width = 87
                    DataBinding.FieldName = 'TotalPosts'
                  end
                end
                object cxGridLevel9: TcxGridLevel
                  GridView = gridviewWAYLT_Summary
                end
              end
              object gridWAYLT_Summary_Posts: TcxGrid
                Left = 4
                Top = 31
                Width = 215
                Height = 398
                BorderStyle = cxcbsNone
                TabOrder = 8
                object gridviewWAYLT_Summary_Posts: TcxGridDBTableView
                  DataController.DataSource = datMain.dsWAYLT_Summary_Posts
                  DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  NavigatorButtons.ConfirmDelete = False
                  OnFocusedRecordChanged = gridviewWAYLT_Summary_PostsFocusedRecordChanged
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
                  OptionsView.CellEndEllipsis = True
                  OptionsView.GridLineColor = 3355443
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderEndEllipsis = True
                  Preview.Column = gridviewWAYLT_Summary_PostsMessage
                  Preview.Visible = True
                  Styles.StyleSheet = datMain.cssTableView
                  object gridviewWAYLT_Summary_PostsDatePosted: TcxGridDBColumn
                    Caption = 'Date'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Properties.SaveTime = False
                    Properties.ShowTime = False
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 72
                    DataBinding.FieldName = 'DatePosted'
                  end
                  object gridviewWAYLT_Summary_PostsName: TcxGridDBColumn
                    Caption = 'Resident ID'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 113
                    DataBinding.FieldName = 'Name'
                  end
                  object gridviewWAYLT_Summary_PostsMessage: TcxGridDBColumn
                    PropertiesClassName = 'TcxMemoProperties'
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 157
                    DataBinding.FieldName = 'Message'
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = gridviewWAYLT_Summary_Posts
                end
              end
              object lblWAYLT_Search109: TcxLabel
                Left = 499
                Top = 38
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
                TabOrder = 9
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblWAYLT_Preview: TcxLabel
                Left = 625
                Top = 38
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
                TabOrder = 10
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblWAYLT_Download: TcxLabel
                Left = 705
                Top = 38
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
                TabOrder = 11
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object dxLayoutGroup1: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object layoutWAYLTGroup9: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                  ShowCaption = False
                  ShowBorder = False
                end
                object dxLayoutGroup4: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object layoutWAYLT_Message: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    Caption = 'Last 10 Posts For This Track   '
                    CaptionOptions.AlignHorz = taCenter
                    LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                    LayoutDirection = ldHorizontal
                    object layoutWAYLTItem8: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahClient
                      AlignVert = avClient
                      Control = gridWAYLT_Summary_Posts
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem3: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahRight
                      AlignVert = avClient
                      Control = Shape1
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutGroup2: TdxLayoutGroup
                      AutoAligns = [aaVertical]
                      AlignHorz = ahRight
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object layoutWAYLTGroup5: TdxLayoutGroup
                        ShowCaption = False
                        Hidden = True
                        LayoutDirection = ldHorizontal
                        ShowBorder = False
                        object layoutWAYLTItem19: TdxLayoutItem
                          AutoAligns = [aaVertical]
                          Control = imgWAYLT_MemPic
                          ControlOptions.AutoColor = True
                        end
                        object layoutWAYLTGroup3: TdxLayoutGroup
                          AutoAligns = [aaVertical]
                          AlignHorz = ahClient
                          ShowCaption = False
                          Hidden = True
                          ShowBorder = False
                          object layoutWAYLTItem14: TdxLayoutItem
                            AutoAligns = [aaVertical]
                            Caption = 'cxLabel5'
                            ShowCaption = False
                            Control = lblConnections
                            ControlOptions.AutoColor = True
                            ControlOptions.ShowBorder = False
                          end
                          object layoutWAYLTItem3: TdxLayoutItem
                            AutoAligns = [aaVertical]
                            Caption = 'cxLabel3'
                            ShowCaption = False
                            Control = lblMusicLinks
                            ControlOptions.AutoColor = True
                            ControlOptions.ShowBorder = False
                          end
                          object layoutWAYLTItem9: TdxLayoutItem
                            AutoAligns = [aaVertical]
                            ShowCaption = False
                            Control = lblWAYLT
                            ControlOptions.AutoColor = True
                            ControlOptions.ShowBorder = False
                          end
                          object layoutWAYLTItem5: TdxLayoutItem
                            AutoAligns = [aaVertical]
                            Caption = 'cxLabel6'
                            ShowCaption = False
                            Control = lblStartConnection
                            ControlOptions.AutoColor = True
                            ControlOptions.ShowBorder = False
                          end
                          object layoutWAYLTItem12: TdxLayoutItem
                            Caption = 'cxLabel1'
                            ShowCaption = False
                            Control = lblMemOpenLink
                            ControlOptions.ShowBorder = False
                          end
                        end
                      end
                      object layoutWAYLTItem16: TdxLayoutItem
                        Control = Shape3
                        ControlOptions.ShowBorder = False
                      end
                      object layoutWAYLTItem20: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avClient
                        ShowCaption = False
                        Control = vgridWAYLT_Mem
                        ControlOptions.ShowBorder = False
                      end
                    end
                  end
                  object layoutWAYLTItem15: TdxLayoutItem
                    AutoAligns = []
                    AlignVert = avClient
                    Control = Shape6
                    ControlOptions.ShowBorder = False
                  end
                  object layoutWAYLTGroup8: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Top 40 Tracks'
                    LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                    object layoutWAYLTGroup12: TdxLayoutGroup
                      LookAndFeel = datMain.layoutLookFeelMain_Web
                      Offsets.Bottom = 3
                      ShowCaption = False
                      LayoutDirection = ldHorizontal
                      object layoutWAYLTItem17: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        Offsets.Left = 2
                        Offsets.Right = 3
                        ShowCaption = False
                        Control = lblWAYLT_Search109
                        ControlOptions.ShowBorder = False
                      end
                      object layoutWAYLTItem21: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        Offsets.Right = 3
                        ShowCaption = False
                        Control = lblWAYLT_Preview
                        ControlOptions.ShowBorder = False
                      end
                      object layoutWAYLTItem22: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        ShowCaption = False
                        Control = lblWAYLT_Download
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object layoutWAYLTItem7: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avClient
                      Control = gridWAYLT_Summary
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
              end
            end
          end
        end
        object cboWAYLT_Date: TcxComboBox
          Left = 181
          Top = 39
          Width = 120
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
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
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
          Text = 'Today'
        end
        object cboWAYLT_Genre: TcxComboBox
          Left = 388
          Top = 39
          Width = 120
          Height = 19
          ParentFont = False
          Properties.Alignment.Vert = taBottomJustify
          Properties.Items.Strings = (
            '')
          Style.BorderColor = 6710886
          Style.BorderStyle = ebsSingle
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.Shadow = False
          Style.TransparentBorder = False
          Style.ButtonStyle = btsHotFlat
          Style.ButtonTransparency = ebtHideUnselected
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 3
          OnKeyPress = cboWAYLT_GenreKeyPress
        end
        object cboWAYLT_Gender: TcxComboBox
          Left = 579
          Top = 14
          Width = 120
          Height = 19
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items.Strings = (
            ''
            'Male'
            'Female')
          Properties.MaxLength = 255
          Properties.OnChange = cboWAYLT_DatePropertiesChange
          Style.BorderColor = 6710886
          Style.BorderStyle = ebsSingle
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.Shadow = False
          Style.TransparentBorder = False
          Style.ButtonStyle = btsHotFlat
          Style.ButtonTransparency = ebtHideUnselected
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 4
        end
        object cboWAYLT_AgeRange: TcxComboBox
          Left = 579
          Top = 39
          Width = 120
          Height = 19
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items.Strings = (
            ''
            '13 - 17'
            '18 - 22'
            '23 - 27'
            '28 - 32'
            '33 - 37'
            '38 and up')
          Properties.MaxLength = 255
          Properties.OnChange = cboWAYLT_DatePropertiesChange
          Style.BorderColor = 6710886
          Style.BorderStyle = ebsSingle
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.Shadow = False
          Style.TransparentBorder = False
          Style.ButtonStyle = btsHotFlat
          Style.ButtonTransparency = ebtHideUnselected
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 5
        end
        object cboWAYLT_State: TcxComboBox
          Left = 756
          Top = 14
          Width = 120
          Height = 19
          ParentFont = False
          Properties.Alignment.Vert = taBottomJustify
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
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
          Properties.OnChange = cboWAYLT_DatePropertiesChange
          Style.BorderColor = 6710886
          Style.BorderStyle = ebsSingle
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.Shadow = False
          Style.TransparentBorder = False
          Style.ButtonStyle = btsHotFlat
          Style.ButtonTransparency = ebtHideUnselected
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 6
        end
        object cboWAYLT_Country: TcxComboBox
          Left = 756
          Top = 39
          Width = 120
          Height = 19
          ParentFont = False
          Properties.Alignment.Vert = taBottomJustify
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            ''
            'U.S.A.'
            'Canada')
          Properties.OnChange = cboWAYLT_DatePropertiesChange
          Style.BorderColor = 6710886
          Style.BorderStyle = ebsSingle
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.Shadow = False
          Style.TransparentBorder = False
          Style.ButtonStyle = btsHotFlat
          Style.ButtonTransparency = ebtHideUnselected
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 7
        end
        object lblWAYLT_BeginSearch: TcxLabel
          Left = 8
          Top = 16
          Width = 92
          Height = 17
          Cursor = crHandPoint
          AutoSize = False
          Caption = 'Begin Search'
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.Transparent = True
          Style.Color = 3355443
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 12
          OnClick = lblWAYLT_BeginSearchClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object lblWAYLT_ClearSearch: TcxLabel
          Left = 8
          Top = 39
          Width = 92
          Height = 17
          Cursor = crHandPoint
          AutoSize = False
          Caption = 'Clear Search'
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.Transparent = True
          Style.Color = 3355443
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 13
          OnClick = lblWAYLT_ClearSearchClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object cboWAYLT_MessagesFrom: TcxComboBox
          Left = 181
          Top = 14
          Width = 160
          Height = 19
          ParentFont = False
          Properties.Alignment.Vert = taBottomJustify
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items.Strings = (
            'My Friends'
            'My Friends & Their Friends'
            'Everyone')
          Style.BorderColor = 6710886
          Style.BorderStyle = ebsSingle
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
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
          Text = 'My Friends'
        end
        object cxComboBox1: TcxComboBox
          Left = 388
          Top = 14
          Width = 120
          Height = 19
          ParentFont = False
          Properties.Alignment.Vert = taBottomJustify
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items.Strings = (
            'All Residents'
            'Featured Residents'
            'Administrators'
            'Moderators')
          Style.BorderColor = 6710886
          Style.BorderStyle = ebsSingle
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.Shadow = False
          Style.TransparentBorder = False
          Style.ButtonStyle = btsHotFlat
          Style.ButtonTransparency = ebtHideUnselected
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 2
          Text = 'All Residents'
        end
        object dxLayoutGroup5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object layoutMusicGroup1: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'New Group'
            Offsets.Top = 7
            ShowCaption = False
            LayoutDirection = ldHorizontal
            object layoutMusicGroup3: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object layoutMusicGroup9: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avCenter
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object layoutMusicItem13: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahCenter
                  Offsets.Left = 4
                  Offsets.Right = 3
                  ShowCaption = False
                  Control = lblWAYLT_BeginSearch
                  ControlOptions.ShowBorder = False
                end
                object layoutMusicItem14: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahCenter
                  Offsets.Left = 4
                  Offsets.Right = 3
                  ShowCaption = False
                  Control = lblWAYLT_ClearSearch
                  ControlOptions.ShowBorder = False
                end
              end
              object layoutMusicItem5: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Control = Shape2
                ControlOptions.ShowBorder = False
              end
            end
            object layoutMusicGroup2: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object layoutMusicGroup5: TdxLayoutGroup
                AutoAligns = [aaVertical]
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object layoutMusicItem3: TdxLayoutItem
                  Caption = 'Posts From:'
                  CaptionOptions.AlignHorz = taRightJustify
                  Offsets.Left = 3
                  Control = cboWAYLT_MessagesFrom
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object layoutMusicItem2: TdxLayoutItem
                  Caption = 'Date:'
                  CaptionOptions.AlignHorz = taRightJustify
                  Offsets.Left = 3
                  Control = cboWAYLT_Date
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object layoutMusicGroup6: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object layoutMusicGroup7: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object layoutMusicGroup12: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object layoutMusicItem4: TdxLayoutItem
                      Caption = 'Group:'
                      CaptionOptions.AlignHorz = taRightJustify
                      Offsets.Left = 3
                      Control = cxComboBox1
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object layoutMusicItem6: TdxLayoutItem
                      Caption = 'Genre:'
                      CaptionOptions.AlignHorz = taRightJustify
                      Offsets.Left = 3
                      Control = cboWAYLT_Genre
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object layoutMusicGroup11: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object layoutMusicItem7: TdxLayoutItem
                      Caption = 'Gender:'
                      CaptionOptions.AlignHorz = taRightJustify
                      Offsets.Left = 3
                      Control = cboWAYLT_Gender
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object layoutMusicItem8: TdxLayoutItem
                      Caption = 'Age Range:'
                      CaptionOptions.AlignHorz = taRightJustify
                      Offsets.Left = 3
                      Control = cboWAYLT_AgeRange
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object layoutMusicGroup8: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object layoutMusicItem10: TdxLayoutItem
                    Caption = 'State:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 3
                    Control = cboWAYLT_State
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutMusicItem11: TdxLayoutItem
                    Caption = 'Country:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 3
                    Control = cboWAYLT_Country
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
          object layoutMusicGroup4: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
            ShowCaption = False
            object layoutMusicItem1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Control = page109Music
              ControlOptions.ShowBorder = False
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
  object barMusic: TdxBarManager
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
      'WAYLT'
      'Member Links')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageListBkColor = clBlack
    LargeImages = datMain.imglstMain_24
    MenusShowRecentItemsFirst = False
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 600
    Top = 8
    DockControlHeights = (
      0
      0
      0
      0)
    object mnuMemSendPM: TdxBarButton
      Caption = 'Send Private Message'
      Category = 2
      Hint = 'Send Private Message'
      Visible = ivAlways
    end
    object mnuMemForumProfile: TdxBarButton
      Caption = 'Forum Profile'
      Category = 2
      Hint = 'Forum Profile'
      Visible = ivAlways
    end
    object mnuMemForumPosts: TdxBarButton
      Caption = 'Forum Posts'
      Category = 2
      Hint = 'Forum Posts'
      Visible = ivAlways
      OnClick = mnuMemForumPostsClick
    end
    object mnuMemWebsite: TdxBarButton
      Caption = 'Website'
      Category = 2
      Hint = 'Website'
      Visible = ivAlways
      OnClick = mnuMemWebsiteClick
    end
    object mnuMemBlog: TdxBarButton
      Caption = 'Blog'
      Category = 2
      Hint = 'Blog'
      Visible = ivAlways
      OnClick = mnuMemBlogClick
    end
    object mnuMemPhotoAlbum: TdxBarButton
      Caption = 'Photo Album'
      Category = 2
      Hint = 'Photo Album'
      Visible = ivAlways
      OnClick = mnuMemPhotoAlbumClick
    end
  end
  object popmnuMemOpenLink: TdxBarPopupMenu
    BarManager = barMusic
    ItemLinks = <
      item
        Item = mnuMemSendPM
        Visible = True
      end
      item
        Item = mnuMemForumProfile
        Visible = True
      end
      item
        Item = mnuMemForumPosts
        Visible = True
      end
      item
        BeginGroup = True
        Item = mnuMemWebsite
        Visible = True
      end
      item
        Item = mnuMemBlog
        Visible = True
      end
      item
        Item = mnuMemPhotoAlbum
        Visible = True
      end>
    UseOwnFont = False
    Left = 631
    Top = 8
  end
end
