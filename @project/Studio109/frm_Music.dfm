inherited frmMusic: TfrmMusic
  Left = 115
  Top = 82
  Caption = 'Music'
  ClientHeight = 565
  ClientWidth = 915
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited layoutAppModule: TdxLayoutControl
    Width = 915
    Height = 565
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
        ParentBackground = True
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = datMain.layoutLookFeelMain_WebAlt6
        object Shape3: TShape
          Left = 268
          Top = 7
          Width = 1
          Height = 488
          Pen.Color = 6710886
        end
        object pageMain: TcxPageControl
          Left = 275
          Top = 7
          Width = 600
          Height = 551
          Cursor = crHandPoint
          ActivePage = tabMyLibrary
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
          TabOrder = 0
          TabPosition = tpLeft
          ClientRectBottom = 551
          ClientRectRight = 600
          ClientRectTop = 0
          object tabMyLibrary: TcxTabSheet
            Caption = 'My Library'
            ImageIndex = 2
            object layoutMyLibrary: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 600
              Height = 551
              Align = alClient
              ParentBackground = True
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = datMain.layoutLookFeelMain_Web
              object Shape8: TShape
                Left = 179
                Top = 0
                Width = 1
                Height = 389
                Pen.Color = 6710886
              end
              object gridTracks: TcxGrid
                Left = 190
                Top = 65
                Width = 400
                Height = 462
                BorderStyle = cxcbsNone
                DragMode = dmAutomatic
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object gridviewTracks: TcxGridDBTableView
                  DragMode = dmAutomatic
                  OnDragDrop = gridviewTracksDragDrop
                  OnDragOver = gridviewTracksDragOver
                  OnMouseUp = GridMouseUp
                  DataController.DataSource = datMain.dsTracks
                  DataController.Filter.Options = [fcoCaseInsensitive]
                  DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  NavigatorButtons.ConfirmDelete = False
                  Filtering.CustomizeDialog = False
                  OptionsBehavior.CellHints = True
                  OptionsBehavior.IncSearch = True
                  OptionsBehavior.PullFocusing = True
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnGrouping = False
                  OptionsCustomize.ColumnHidingOnGrouping = False
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Inserting = False
                  OptionsSelection.HideSelection = True
                  OptionsSelection.MultiSelect = True
                  OptionsView.CellEndEllipsis = True
                  OptionsView.GridLineColor = 3355443
                  OptionsView.GroupByBox = False
                  Styles.StyleSheet = datMain.cssTableView
                  object gridviewTracks_ID: TcxGridDBColumn
                    Tag = 94207568
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.MaxLength = 0
                    Visible = False
                    Hidden = True
                    DataBinding.FieldName = 'ID'
                  end
                  object gridviewTracks_Play: TcxGridDBColumn
                    Tag = 94505084
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Buttons = <
                      item
                        Default = True
                        Glyph.Data = {
                          A6020000424DA60200000000000036000000280000000F0000000D0000000100
                          18000000000070020000120B0000120B00000000000000000000FFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                          FFFFFFF5F5F5E1E1E1E1E1E1F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFE1E1E1BAB8B8B2AEAEC5C3C3E1
                          E1E1F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                          FFFFFFD7D7D79E9A9A807C7C969090B2AEAEC5C3C3D7D7D7E1E1E1F5F5F5FFFF
                          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFD7D7D79C9A9A76727278727280
                          7C7C9490909A9A9AAEAEAECDCDCDF5F5F5FFFFFFFFFFFF000000FFFFFFFFFFFF
                          FFFFFFD7D7D79A9A9A727272747272767272747272727272868686C3C3C3EBEB
                          EBFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFD7D7D79A9A9A7272727272727C
                          7C7C9090909A9A9AAEAEAECDCDCDF5F5F5FFFFFFFFFFFF000000FFFFFFFFFFFF
                          FFFFFFD7D7D79A9A9A7C7C7C909090AEAEAEC3C3C3D7D7D7E1E1E1F5F5F5FFFF
                          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFE1E1E1B8B8B8AEAEAEC3C3C3E1
                          E1E1F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                          FFFFFFF5F5F5E1E1E1E1E1E1F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFF000000}
                        Kind = bkGlyph
                        LeftAlignment = True
                      end>
                    Properties.HideCursor = True
                    Properties.MaxLength = 0
                    Properties.OnButtonClick = gridviewTracks_PlayPropertiesButtonClick
                    Hidden = True
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.ShowEditButtons = isebAlways
                    Options.Grouping = False
                    Options.HorzSizing = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 20
                    IsCaptionAssigned = True
                  end
                  object gridviewTracks_AVTitle: TcxGridDBColumn
                    Tag = 94506932
                    Caption = 'Track Title'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end
                      item
                        Kind = bkEllipsis
                      end>
                    Properties.HideCursor = True
                    Properties.MaxLength = 50
                    Properties.OnButtonClick = gridviewTracks_AVTitlePropertiesButtonClick
                    Hidden = True
                    Options.Grouping = False
                    Width = 196
                    DataBinding.FieldName = 'AVTitle'
                  end
                  object gridviewTracks_AVDuration: TcxGridDBColumn
                    Tag = 94508444
                    Caption = 'Length'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.MaxLength = 50
                    Properties.ReadOnly = True
                    Hidden = True
                    Options.Editing = False
                    Options.Grouping = False
                    Width = 59
                    DataBinding.FieldName = 'AVDuration'
                  end
                  object gridviewTracks_AVArtist: TcxGridDBColumn
                    Tag = 91910552
                    Caption = 'Artist'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.HideCursor = True
                    Properties.MaxLength = 50
                    Properties.OnButtonClick = gridviewTracks_AVArtistPropertiesButtonClick
                    Hidden = True
                    Options.Grouping = False
                    Width = 124
                    DataBinding.FieldName = 'AVArtist'
                  end
                  object gridviewTracks_AVAlbum: TcxGridDBColumn
                    Tag = 91912292
                    Caption = 'Album'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.HideCursor = True
                    Properties.MaxLength = 50
                    Properties.OnButtonClick = gridviewTracks_AVAlbumPropertiesButtonClick
                    Hidden = True
                    Options.Grouping = False
                    Width = 144
                    DataBinding.FieldName = 'AVAlbum'
                  end
                  object gridviewTracks_AVGenre: TcxGridDBColumn
                    Tag = 91912024
                    Caption = 'Genre'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.MaxLength = 50
                    Properties.ReadOnly = True
                    Options.Editing = False
                    Options.Grouping = False
                    Width = 67
                    DataBinding.FieldName = 'AVGenre'
                  end
                  object gridviewTracks_Rating: TcxGridDBColumn
                    Tag = 94455720
                    PropertiesClassName = 'TcxComboBoxProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.CaseInsensitive = False
                    Properties.DropDownListStyle = lsFixedList
                    Properties.DropDownRows = 11
                    Properties.ImmediatePost = True
                    Properties.ImmediateUpdateText = True
                    Properties.Items.Strings = (
                      ''
                      #8226
                      #8226#8226
                      #8226#8226#8226
                      #8226#8226#8226#8226
                      #8226#8226#8226#8226#8226
                      #8226#8226#8226#8226#8226#8226
                      #8226#8226#8226#8226#8226#8226#8226
                      #8226#8226#8226#8226#8226#8226#8226#8226
                      #8226#8226#8226#8226#8226#8226#8226#8226#8226
                      #8226#8226#8226#8226#8226#8226#8226#8226#8226#8226)
                    Properties.MaxLength = 0
                    Properties.OnChange = gridviewTracks_RatingPropertiesChange
                    Options.Grouping = False
                    Width = 87
                    DataBinding.FieldName = 'Rating'
                  end
                  object gridviewTracks_DateCreated: TcxGridDBColumn
                    Tag = 91913660
                    Caption = 'Date Created'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Properties.ImmediatePost = True
                    Properties.ReadOnly = True
                    Properties.SaveTime = False
                    Options.Editing = False
                    Options.Grouping = False
                    Width = 121
                    DataBinding.FieldName = 'DateCreated'
                  end
                  object gridviewTracks_DateImported: TcxGridDBColumn
                    Tag = 94552984
                    Caption = 'Date Imported'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Properties.ImmediatePost = True
                    Properties.ReadOnly = True
                    Properties.SaveTime = False
                    Options.Editing = False
                    Options.Grouping = False
                    Width = 108
                    DataBinding.FieldName = 'DateImported'
                  end
                  object gridviewTracks_AVTrackPlaylist: TcxGridDBColumn
                    Tag = 94555020
                    Caption = 'Track Playlist'
                    PropertiesClassName = 'TcxMemoProperties'
                    Properties.MaxLength = 0
                    Visible = False
                    Hidden = True
                    DataBinding.FieldName = 'AVTrackPlaylist'
                  end
                end
                object cxGridLevel2: TcxGridLevel
                  GridView = gridviewTracks
                end
              end
              object gridPlaylists: TcxGrid
                Left = 4
                Top = 63
                Width = 165
                Height = 475
                BorderStyle = cxcbsNone
                DragMode = dmAutomatic
                TabOrder = 2
                object gridviewPlaylists: TcxGridDBTableView
                  DragMode = dmAutomatic
                  OnDragDrop = gridviewPlaylistsDragDrop
                  OnDragOver = gridviewPlaylistsDragOver
                  OnMouseUp = gridviewPlaylistsMouseUp
                  DataController.DataSource = datMain.dsPlaylists
                  DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  NavigatorButtons.ConfirmDelete = False
                  OptionsBehavior.CellHints = True
                  OptionsBehavior.IncSearch = True
                  OptionsBehavior.PullFocusing = True
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnGrouping = False
                  OptionsCustomize.ColumnHidingOnGrouping = False
                  OptionsCustomize.ColumnHorzSizing = False
                  OptionsCustomize.ColumnMoving = False
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Inserting = False
                  OptionsSelection.HideSelection = True
                  OptionsView.CellEndEllipsis = True
                  OptionsView.GridLineColor = 3355443
                  OptionsView.GroupByBox = False
                  OptionsView.Header = False
                  Styles.StyleSheet = datMain.cssTableView
                  object gridviewPlaylistsID: TcxGridDBColumn
                    Visible = False
                    MinWidth = 64
                    DataBinding.FieldName = 'ID'
                  end
                  object gridviewPlaylists_Play: TcxGridDBColumn
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Glyph.Data = {
                          A6020000424DA60200000000000036000000280000000F0000000D0000000100
                          18000000000070020000120B0000120B00000000000000000000FFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                          FFFFFFF5F5F5E1E1E1E1E1E1F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFE1E1E1BAB8B8B2AEAEC5C3C3E1
                          E1E1F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                          FFFFFFD7D7D79E9A9A807C7C969090B2AEAEC5C3C3D7D7D7E1E1E1F5F5F5FFFF
                          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFD7D7D79C9A9A76727278727280
                          7C7C9490909A9A9AAEAEAECDCDCDF5F5F5FFFFFFFFFFFF000000FFFFFFFFFFFF
                          FFFFFFD7D7D79A9A9A727272747272767272747272727272868686C3C3C3EBEB
                          EBFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFD7D7D79A9A9A7272727272727C
                          7C7C9090909A9A9AAEAEAECDCDCDF5F5F5FFFFFFFFFFFF000000FFFFFFFFFFFF
                          FFFFFFD7D7D79A9A9A7C7C7C909090AEAEAEC3C3C3D7D7D7E1E1E1F5F5F5FFFF
                          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFE1E1E1B8B8B8AEAEAEC3C3C3E1
                          E1E1F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                          FFFFFFF5F5F5E1E1E1E1E1E1F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFF000000}
                        Kind = bkGlyph
                        LeftAlignment = True
                      end>
                    Properties.HideCursor = True
                    Properties.OnButtonClick = gridviewPlaylists_PlayPropertiesButtonClick
                    Hidden = True
                    Options.Filtering = False
                    Options.IncSearch = False
                    Options.ShowEditButtons = isebAlways
                    Options.Grouping = False
                    Options.HorzSizing = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 20
                  end
                  object gridviewPlaylistsName: TcxGridDBColumn
                    Caption = 'Playlist'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.HideCursor = True
                    Properties.ReadOnly = True
                    Properties.OnButtonClick = gridviewPlaylistsNamePropertiesButtonClick
                    MinWidth = 126
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.HorzSizing = False
                    Options.Moving = False
                    Options.Sorting = False
                    SortOrder = soAscending
                    Width = 126
                    DataBinding.FieldName = 'Name'
                  end
                end
                object cxGridLevel8: TcxGridLevel
                  GridView = gridviewPlaylists
                end
              end
              object lblMyLibrary_AllMusic: TcxLabel
                Left = 50
                Top = 30
                Width = 74
                Height = 17
                Cursor = crHandPoint
                Caption = 'View All Tracks'
                ParentFont = False
                Properties.Transparent = True
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 3
                OnClick = lblMyLibrary_AllMusicClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblMyLibrary_Playlist: TcxLabel
                Left = 4
                Top = 30
                Width = 37
                Height = 17
                Cursor = crHandPoint
                Caption = 'Playlist'
                ParentFont = False
                Properties.Transparent = True
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 4
                OnClick = lblMyLibrary_PlaylistClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblMyLibrary_Track: TcxLabel
                Left = 190
                Top = 30
                Width = 30
                Height = 17
                Cursor = crHandPoint
                Caption = 'Track'
                ParentFont = False
                Properties.Transparent = True
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 5
                OnClick = lblMyLibrary_TrackClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblMyLibrary_Add: TcxLabel
                Left = 229
                Top = 30
                Width = 74
                Height = 17
                Cursor = crHandPoint
                Caption = 'Add To Library'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 9
                OnClick = lblMyLibrary_AddClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblMyLibrary_Search: TcxLabel
                Left = 312
                Top = 30
                Width = 55
                Height = 17
                Cursor = crHandPoint
                Caption = 'Search All:'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 6
                OnClick = lblMyLibrary_SearchClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblMyLibrary_FilterCols: TcxLabel
                Left = 503
                Top = 30
                Width = 71
                Height = 17
                Cursor = crHandPoint
                Caption = 'Filter Columns'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 7
                OnClick = lblMyLibrary_FilterColsClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblMyLibrary_Clear: TcxLabel
                Left = 583
                Top = 30
                Width = 29
                Height = 17
                Cursor = crHandPoint
                Caption = 'Clear'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 8
                OnClick = lblMyLibrary_ClearClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object edtMyLibrary_Search: TcxButtonEdit
                Left = 373
                Top = 30
                Width = 121
                Height = 19
                ParentFont = False
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = edtMyLibrary_SearchPropertiesButtonClick
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
                TabOrder = 0
                OnKeyPress = edtMyLibrary_SearchKeyPress
              end
              object dxLayoutGroup4: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object layoutMyLibraryGroup3: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  Caption = 'New Group'
                  ShowCaption = False
                  ShowBorder = False
                  object layoutMyLibraryItem8: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avCenter
                    Caption = 'New Item'
                    ShowCaption = False
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutMyLibraryGroup2: TdxLayoutGroup
                    AutoAligns = [aaHorizontal]
                    AlignVert = avClient
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object layoutMyLibraryGroup1: TdxLayoutGroup
                      Caption = 'Playlists'
                      LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                      object layoutMyLibraryGroup4: TdxLayoutGroup
                        Offsets.Top = 5
                        ShowCaption = False
                        Hidden = True
                        LayoutDirection = ldHorizontal
                        ShowBorder = False
                        object layoutMyLibraryItem3: TdxLayoutItem
                          Caption = 'cxLabel1'
                          ShowCaption = False
                          Control = lblMyLibrary_Playlist
                          ControlOptions.ShowBorder = False
                        end
                        object layoutMyLibraryItem2: TdxLayoutItem
                          Caption = 'cxLabel1'
                          Offsets.Left = 3
                          ShowCaption = False
                          Control = lblMyLibrary_AllMusic
                          ControlOptions.ShowBorder = False
                        end
                      end
                      object layoutMyLibraryItem10: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avClient
                        Offsets.Top = 10
                        ShowCaption = False
                        Control = gridPlaylists
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object layoutMyLibraryItem15: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avClient
                      Control = Shape8
                      ControlOptions.ShowBorder = False
                    end
                    object layoutMyLibrary_Tracks: TdxLayoutGroup
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      Caption = 'All Tracks'
                      LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                      object layoutMyLibraryGroup5: TdxLayoutGroup
                        Offsets.Top = 5
                        ShowCaption = False
                        Hidden = True
                        LayoutDirection = ldHorizontal
                        ShowBorder = False
                        object layoutMyLibraryItem4: TdxLayoutItem
                          Caption = 'cxLabel2'
                          ShowCaption = False
                          Control = lblMyLibrary_Track
                          ControlOptions.ShowBorder = False
                        end
                        object layoutMyLibraryItem5: TdxLayoutItem
                          Caption = 'cxLabel1'
                          Offsets.Left = 3
                          ShowCaption = False
                          Control = lblMyLibrary_Add
                          ControlOptions.ShowBorder = False
                        end
                        object layoutMyLibraryItem6: TdxLayoutItem
                          Caption = 'cxLabel2'
                          Offsets.Left = 3
                          ShowCaption = False
                          Control = lblMyLibrary_Search
                          ControlOptions.ShowBorder = False
                        end
                        object layoutMyLibraryItem11: TdxLayoutItem
                          ShowCaption = False
                          Control = edtMyLibrary_Search
                          ControlOptions.AutoColor = True
                          ControlOptions.ShowBorder = False
                        end
                        object layoutMyLibraryItem7: TdxLayoutItem
                          Caption = 'cxLabel3'
                          Offsets.Left = 3
                          ShowCaption = False
                          Control = lblMyLibrary_FilterCols
                          ControlOptions.ShowBorder = False
                        end
                        object layoutMyLibraryItem9: TdxLayoutItem
                          Caption = 'cxLabel4'
                          Offsets.Left = 3
                          ShowCaption = False
                          Control = lblMyLibrary_Clear
                          ControlOptions.ShowBorder = False
                        end
                      end
                      object layoutMyLibraryItem1: TdxLayoutItem
                        AutoAligns = []
                        AlignHorz = ahClient
                        AlignVert = avClient
                        Offsets.Top = 10
                        ShowCaption = False
                        Control = gridTracks
                        ControlOptions.ShowBorder = False
                      end
                    end
                  end
                end
              end
            end
          end
        end
        object gridNowPlaying: TcxGrid
          Left = 8
          Top = 70
          Width = 250
          Height = 481
          BorderStyle = cxcbsNone
          DragMode = dmAutomatic
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object gridNowPlayingDBTableView1: TcxGridDBTableView
            DragMode = dmAutomatic
            OnDblClick = gridNowPlayingDBTableView1DblClick
            OnDragDrop = gridNowPlayingDBTableView1DragDrop
            OnDragOver = gridNowPlayingDBTableView1DragOver
            DataController.DataSource = datMain.dsNowPlaying
            DataController.KeyFieldNames = 'RecId'
            DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OptionsBehavior.CellHints = True
            OptionsBehavior.DragFocusing = dfDragOver
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideSelection = True
            OptionsSelection.MultiSelect = True
            OptionsView.CellEndEllipsis = True
            OptionsView.GridLineColor = 3355443
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            Styles.Background = datMain.styleVertGrid_Content
            Styles.ContentEven = datMain.styleVertGrid_Content
            Styles.ContentOdd = datMain.styleVertGrid_Content
            Styles.Inactive = datMain.styleGridContent_Selection
            Styles.Selection = datMain.styleGridContent_Selection
            Styles.Header = datMain.styleVertGrid_Category
            object gridNowPlayingDBTableView1ID: TcxGridDBColumn
              Visible = False
              DataBinding.FieldName = 'RecId'
            end
            object gridNowPlayingDBTableView1Track_ID: TcxGridDBColumn
              Visible = False
              DataBinding.FieldName = 'Track_ID'
            end
            object gridNowPlayingDBTableView1NowPlaying: TcxGridDBColumn
              PropertiesClassName = 'TcxTextEditProperties'
              OnGetDisplayText = gridNowPlayingDBTableView1NowPlayingGetDisplayText
              Hidden = True
              MinWidth = 10
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.IncSearch = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 10
            end
            object gridNowPlayingDBTableView1AVTitle: TcxGridDBColumn
              Tag = 240950324
              Caption = 'Title'
              PropertiesClassName = 'TcxTextEditProperties'
              MinWidth = 167
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 167
              DataBinding.FieldName = 'AVTitle'
            end
            object gridNowPlayingDBTableView1AVDuration: TcxGridDBColumn
              Tag = 240951340
              Caption = 'Length'
              PropertiesClassName = 'TcxTextEditProperties'
              MinWidth = 54
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 54
              DataBinding.FieldName = 'AVDuration'
            end
            object gridNowPlayingDBTableView1LastPlayed: TcxGridDBColumn
              PropertiesClassName = 'TcxDateEditProperties'
              Visible = False
              Hidden = True
              DataBinding.FieldName = 'LastPlayed'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = gridNowPlayingDBTableView1
          end
        end
        object lblNowPlaying: TcxLabel
          Left = 8
          Top = 37
          Width = 62
          Height = 17
          Cursor = crHandPoint
          Caption = 'Now Playing'
          ParentFont = False
          Properties.Transparent = True
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 5
          OnClick = lblNowPlayingClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object dxLayoutGroup5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup9: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'Bulletin Board'
            LookAndFeel = datMain.layoutLookFeelMain_Web
            ShowCaption = False
            LayoutDirection = ldHorizontal
            object layoutMusicGroup8: TdxLayoutGroup
              AllowRemove = False
              Caption = 'Now Playing   '
              CaptionOptions.AlignHorz = taCenter
              LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
              object layoutMusicItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'cxLabel1'
                Offsets.Top = 5
                ShowCaption = False
                Control = lblNowPlaying
                ControlOptions.ShowBorder = False
              end
              object layoutMusicItem3: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Offsets.Top = 10
                ShowCaption = False
                Control = gridNowPlaying
                ControlOptions.ShowBorder = False
              end
            end
            object layoutMusicGroup4: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'New Group'
              LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
              ShowCaption = False
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object layoutMusicItem2: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                ShowCaption = False
                Control = Shape3
                ControlOptions.ShowBorder = False
              end
              object layoutMusicItem1: TdxLayoutItem
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
      'Playlist'
      'Track'
      '109 Music'
      'My Lib Search'
      'Now Playing')
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
    Left = 152
    Top = 115
    DockControlHeights = (
      0
      0
      0
      0)
    object mnuPlaylist_New: TdxBarButton
      Caption = 'New'
      Category = 1
      Hint = 'New'
      Visible = ivAlways
      OnClick = mnuPlaylist_NewClick
    end
    object mnuPlaylist_Delete: TdxBarButton
      Caption = 'Delete'
      Category = 1
      Hint = 'Delete'
      Visible = ivAlways
      OnClick = mnuPlaylist_DeleteClick
    end
    object mnuTrack_AddToPlaylist: TdxBarButton
      Caption = 'Add To Playlist'
      Category = 2
      Hint = 'Add To Playlist'
      Visible = ivAlways
      OnClick = mnuTrack_AddToPlaylistClick
    end
    object mnuitmAddToNowPlaying: TdxBarButton
      Caption = 'Add To Now Playing'
      Category = 2
      Hint = 'Add To Now Playing'
      Visible = ivAlways
      OnClick = mnuitmAddToNowPlayingClick
    end
    object mnuTrack_Remove: TdxBarButton
      Caption = 'Remove From Library'
      Category = 2
      Hint = 'Remove From Library'
      Visible = ivAlways
      OnClick = mnuTrack_RemoveClick
    end
    object mnuTrack_RemovePlaylist: TdxBarButton
      Caption = 'Remove From Playlist'
      Category = 2
      Hint = 'Remove From Playlist'
      Visible = ivAlways
      OnClick = mnuTrack_RemovePlaylistClick
    end
    object mnu109Tracks: TdxBarButton
      Caption = '109 Tracks'
      Category = 3
      Hint = '109 Tracks'
      Visible = ivAlways
    end
    object mnu109Albums: TdxBarButton
      Caption = '109 Albums'
      Category = 3
      Hint = '109 Albums'
      Visible = ivAlways
    end
    object mnu109Artists: TdxBarButton
      Caption = '109 Artists'
      Category = 3
      Hint = '109 Artists'
      Visible = ivAlways
    end
    object mnuSearchAll: TdxBarButton
      Caption = 'All'
      Category = 4
      Hint = 'All'
      Visible = ivAlways
      OnClick = mnuSearchAllClick
    end
    object mnuSearchAlbums: TdxBarButton
      Caption = 'Album'
      Category = 4
      Hint = 'Album'
      Visible = ivAlways
      OnClick = mnuSearchAlbumsClick
    end
    object mnuSearchArtists: TdxBarButton
      Caption = 'Artist'
      Category = 4
      Hint = 'Artist'
      Visible = ivAlways
      OnClick = mnuSearchArtistsClick
    end
    object mnuSearchTitles: TdxBarButton
      Caption = 'Track Title'
      Category = 4
      Hint = 'Track Title'
      Visible = ivAlways
      OnClick = mnuSearchTitlesClick
    end
    object mnuAddFolder: TdxBarButton
      Caption = 'Folder ...'
      Category = 0
      Hint = 'Folder '
      Visible = ivAlways
      OnClick = mnuAddFolderClick
    end
    object mnuAddFile: TdxBarButton
      Caption = 'File ...'
      Category = 0
      Hint = 'File '
      Visible = ivAlways
      OnClick = mnuAddFileClick
    end
    object mnuNowPlaying_Clear: TdxBarButton
      Caption = 'Clear'
      Category = 5
      Hint = 'Clear'
      Visible = ivAlways
      OnClick = mnuNowPlaying_ClearClick
    end
    object mnuNowPlayingSave: TdxBarButton
      Caption = 'Save To Playlist ...'
      Category = 5
      Hint = 'Save To Playlist ...'
      Visible = ivAlways
      OnClick = mnuNowPlayingSaveClick
    end
    object mnuSearchPlaylists: TdxBarButton
      Caption = 'Track Playlist'
      Category = 4
      Hint = 'Track Playlist'
      Visible = ivAlways
      OnClick = mnuSearchPlaylistsClick
    end
  end
  object popmnuPlaylist: TdxBarPopupMenu
    BarManager = barMusic
    ItemLinks = <
      item
        Item = mnuPlaylist_New
        Visible = True
      end
      item
        Item = mnuPlaylist_Delete
        Visible = True
      end>
    UseOwnFont = False
    Left = 118
    Top = 115
  end
  object popmnuTrack: TdxBarPopupMenu
    BarManager = barMusic
    ItemLinks = <
      item
        Item = mnuTrack_AddToPlaylist
        Visible = True
      end
      item
        Item = mnuitmAddToNowPlaying
        Visible = True
      end
      item
        Item = mnuTrack_RemovePlaylist
        Visible = True
      end
      item
        Item = mnuTrack_Remove
        Visible = True
      end>
    UseOwnFont = False
    Left = 116
    Top = 148
  end
  object popmnuMyLib_Search: TdxBarPopupMenu
    BarManager = barMusic
    ItemLinks = <
      item
        Item = mnuSearchAll
        Visible = True
      end
      item
        Item = mnuSearchAlbums
        Visible = True
      end
      item
        Item = mnuSearchArtists
        Visible = True
      end
      item
        Item = mnuSearchTitles
        Visible = True
      end
      item
        Item = mnuSearchPlaylists
        Visible = True
      end>
    UseOwnFont = False
    Left = 121
    Top = 181
  end
  object popmnuNowhere: TdxBarPopupMenu
    BarManager = barMusic
    ItemLinks = <>
    UseOwnFont = False
    Left = 119
    Top = 213
  end
  object popmnuAdd: TdxBarPopupMenu
    BarManager = barMusic
    ItemLinks = <
      item
        Item = mnuAddFolder
        Visible = True
      end
      item
        Item = mnuAddFile
        Visible = True
      end>
    UseOwnFont = False
    Left = 122
    Top = 246
  end
  object popmnuNowPlaying: TdxBarPopupMenu
    BarManager = barMusic
    ItemLinks = <
      item
        Item = mnuNowPlaying_Clear
        Visible = True
      end
      item
        Item = mnuNowPlayingSave
        Visible = True
      end>
    UseOwnFont = False
    Left = 121
    Top = 283
  end
  object dlgOpen: TOpenDialog
    Filter = 'Audio|*.MP3; *.MP2; *.MP1; *.MP4; *.WAV; *.WMA;'
    Options = [ofShowHelp, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 82
    Top = 112
  end
end
