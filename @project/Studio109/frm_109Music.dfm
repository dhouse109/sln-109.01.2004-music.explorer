inherited frm109Music: Tfrm109Music
  Left = 241
  Top = 151
  Caption = '109 Music'
  ClientHeight = 565
  ClientWidth = 1016
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited layoutAppModule: TdxLayoutControl
    Width = 1016
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
        BevelInner = bvNone
        ParentBackground = True
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = datMain.layoutLookFeelMain_WebAlt6
        object lblMusic: TcxLabel
          Left = 4
          Top = 14
          Width = 89
          Height = 17
          Cursor = crHandPoint
          TabStop = False
          Caption = 'Browse 109 Music'
          ParentColor = False
          ParentFont = False
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 1
          OnClick = lblMusicClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object lblTopDownloads: TcxLabel
          Left = 102
          Top = 14
          Width = 149
          Height = 17
          Cursor = crHandPoint
          TabStop = False
          Caption = 'What People Are Downloading'
          ParentColor = False
          ParentFont = False
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 2
          OnClick = lblTopDownloadsClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object lblMyFavorites: TcxLabel
          Left = 260
          Top = 14
          Width = 66
          Height = 17
          Cursor = crHandPoint
          TabStop = False
          Caption = 'My Favorites'
          ParentColor = False
          ParentFont = False
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 3
          OnClick = lblMyFavoritesClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object page109Music: TcxPageControl
          Left = 4
          Top = 51
          Width = 1008
          Height = 507
          ActivePage = tabBrowse109
          HideTabs = True
          TabOrder = 0
          ClientRectBottom = 507
          ClientRectRight = 1008
          ClientRectTop = 0
          object tabBrowse109: TcxTabSheet
            Caption = 'Music'
            ImageIndex = 2
            object layoutBrowse109: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 1008
              Height = 507
              Align = alClient
              ParentBackground = True
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = datMain.layoutLookFeelMain_Web
              object Shape13: TShape
                Left = 788
                Top = 211
                Width = 200
                Height = 1
                Pen.Color = 6710886
              end
              object Shape14: TShape
                Left = 548
                Top = 93
                Width = 1
                Height = 432
                Pen.Color = 6710886
              end
              object Shape15: TShape
                Left = 781
                Top = 118
                Width = 1
                Height = 449
                Pen.Color = 6710886
              end
              object Shape16: TShape
                Left = 559
                Top = 211
                Width = 200
                Height = 1
                Pen.Color = 6710886
              end
              object imgBrowse109_Album: TcxDBImage
                Left = 789
                Top = 119
                Width = 85
                Height = 85
                DataBinding.DataField = 'AlbumPic'
                DataBinding.DataSource = datMain.dsAlbumPic
                Properties.GraphicClassName = 'TJPEGImage'
                Properties.PopupMenuLayout.MenuItems = [pmiCopy, pmiSave]
                Properties.ReadOnly = True
                Properties.ShowFocusRect = False
                Properties.Stretch = True
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.HotTrack = False
                TabOrder = 12
              end
              object cboBrowse109_Genre: TcxComboBox
                Left = 188
                Top = 33
                Width = 160
                Height = 19
                ParentFont = False
                Properties.Alignment.Vert = taBottomJustify
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  '')
                Properties.OnChange = cboBrowse109_MixSetPropertiesChange
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
              end
              object lblBrowse109_Album_ViewTopDL: TcxLabel
                Left = 881
                Top = 141
                Width = 118
                Height = 17
                Cursor = crHandPoint
                Caption = 'Top Downloaded Tracks'
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
                TabOrder = 14
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblBrowse109_Album_ViewAll: TcxLabel
                Left = 881
                Top = 118
                Width = 123
                Height = 17
                Cursor = crHandPoint
                Caption = 'View All Tracks On Album'
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
                TabOrder = 15
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblBrowse109_BeginSearch: TcxLabel
                Left = 21
                Top = 35
                Width = 66
                Height = 17
                Cursor = crHandPoint
                Caption = 'Begin Search'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taLeftJustify
                Properties.Transparent = True
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 16
                OnClick = lblBrowse109_BeginSearchClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object vgridBrowse109_Album: TcxDBVerticalGrid
                Left = 788
                Top = 218
                Width = 200
                Height = 275
                BorderStyle = cxcbsNone
                Styles.Background = datMain.styleVertGrid_Content
                Styles.Content = datMain.styleVertGrid_Content
                Styles.Inactive = datMain.styleVertGrid_Header2
                Styles.Selection = datMain.styleVertGrid_Header2
                Styles.StyleSheet = datMain.cssVertGrid
                OptionsView.CellEndEllipsis = True
                OptionsView.GridLineColor = 3355443
                OptionsView.RowHeaderMinWidth = 96
                OptionsView.RowHeaderWidth = 96
                OptionsBehavior.HeaderSizing = False
                OptionsBehavior.RowTracking = False
                OptionsBehavior.AllowChangeRecord = False
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                TabOrder = 13
                DataController.DataSource = datMain.dsAlbumProfile
                object vgridBrowse109_Album_AlbumName: TcxDBEditorRow
                  Properties.Caption = 'Album:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.Alignment.Horz = taLeftJustify
                  Properties.DataBinding.FieldName = 'AlbumName'
                  Properties.Options.Editing = False
                end
                object vgridBrowse109_Album_AlbumLabel: TcxDBEditorRow
                  Properties.Caption = 'Label:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'AlbumLabel'
                  Properties.Options.Editing = False
                end
                object vgridBrowse109_Album_DateReleased: TcxDBEditorRow
                  Properties.Caption = 'Released:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxDateEditProperties'
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.SaveTime = False
                  Properties.EditProperties.ShowTime = False
                  Properties.DataBinding.FieldName = 'DateReleased'
                  Properties.Options.Editing = False
                end
                object vgridBrowse109_Album_TotalTracks: TcxDBEditorRow
                  Properties.Caption = 'Total Tracks:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'TotalTracks'
                  Properties.Options.Editing = False
                end
                object vgridBrowse109_Album_TotalLength: TcxDBEditorRow
                  Properties.Caption = 'Total Length:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'TotalLength'
                  Properties.Options.Editing = False
                end
                object vgridBrowse109_Album_AlbumGenre: TcxDBEditorRow
                  Properties.Caption = 'Genre:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'AlbumGenre'
                  Properties.Options.Editing = False
                end
                object vgridBrowse109_Album_AlbumIsMix: TcxDBEditorRow
                  Properties.Caption = 'Mix Set:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.EditProperties.DisplayUnchecked = 'False'
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.NullStyle = nssUnchecked
                  Properties.DataBinding.FieldName = 'AlbumIsMix'
                end
              end
              object lblBrowse109_SortBy: TcxLabel
                Left = 3
                Top = 12
                Width = 102
                Height = 17
                Cursor = crHandPoint
                AutoSize = False
                Caption = 'Sort By: Artist'
                ParentFont = False
                ParentShowHint = False
                Properties.Alignment.Horz = taCenter
                Properties.Transparent = True
                ShowHint = True
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 17
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object cboBrowse109_DateAdded: TcxComboBox
                Left = 440
                Top = 64
                Width = 209
                Height = 19
                ParentFont = False
                Properties.Alignment.Vert = taBottomJustify
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  ''
                  'Today'
                  'Last 7 Days'
                  'Last 30 Days')
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
                TabOrder = 5
              end
              object cboBrowse109_SubGenre: TcxComboBox
                Left = 188
                Top = 62
                Width = 160
                Height = 19
                ParentFont = False
                Properties.Alignment.Vert = taBottomJustify
                Properties.DropDownListStyle = lsFixedList
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
                TabOrder = 2
              end
              object edtBrowse109_Album: TcxButtonEdit
                Left = 719
                Top = 62
                Width = 160
                Height = 19
                ParentFont = False
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.MaxLength = 100
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = 10066329
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.TransparentBorder = False
                Style.ButtonStyle = btsHotFlat
                Style.ButtonTransparency = ebtHideUnselected
                TabOrder = 8
                OnKeyPress = edtBrowse109_ArtistWebKeyPress
              end
              object edtBrowse109_Artist: TcxButtonEdit
                Left = 719
                Top = 33
                Width = 160
                Height = 19
                ParentFont = False
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.MaxLength = 100
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = 10066329
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.TransparentBorder = False
                Style.ButtonStyle = btsHotFlat
                Style.ButtonTransparency = ebtHideUnselected
                TabOrder = 7
                OnKeyPress = edtBrowse109_ArtistWebKeyPress
              end
              object edtBrowse109_TrackTitle: TcxButtonEdit
                Left = 719
                Top = 4
                Width = 160
                Height = 19
                ParentFont = False
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.MaxLength = 100
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = 10066329
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.TransparentBorder = False
                Style.ButtonStyle = btsHotFlat
                Style.ButtonTransparency = ebtHideUnselected
                TabOrder = 6
                OnKeyPress = edtBrowse109_ArtistWebKeyPress
              end
              object lblBrowse109_ClearSearch: TcxLabel
                Left = 21
                Top = 58
                Width = 65
                Height = 17
                Cursor = crHandPoint
                Caption = 'Clear Search'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taLeftJustify
                Properties.Transparent = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 18
                OnClick = lblBrowse109_ClearSearchClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object imgBrowse109_Artist: TcxDBImage
                Left = 560
                Top = 119
                Width = 85
                Height = 85
                DataBinding.DataField = 'ArtistPic'
                DataBinding.DataSource = datMain.dsArtistPic
                Properties.GraphicClassName = 'TJPEGImage'
                Properties.PopupMenuLayout.MenuItems = [pmiCopy, pmiSave]
                Properties.ReadOnly = True
                Properties.ShowFocusRect = False
                Properties.Stretch = True
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.HotTrack = False
                TabOrder = 10
              end
              object vgridBrowse109_Artist: TcxDBVerticalGrid
                Left = 559
                Top = 218
                Width = 216
                Height = 275
                BorderStyle = cxcbsNone
                Styles.Background = datMain.styleVertGrid_Content
                Styles.Content = datMain.styleVertGrid_Content
                Styles.Inactive = datMain.styleVertGrid_Header2
                Styles.Selection = datMain.styleVertGrid_Header2
                Styles.StyleSheet = datMain.cssVertGrid
                OptionsView.CellEndEllipsis = True
                OptionsView.GridLineColor = 3355443
                OptionsView.RowHeaderMinWidth = 96
                OptionsView.RowHeaderWidth = 96
                OptionsBehavior.HeaderSizing = False
                OptionsBehavior.RowTracking = False
                OptionsBehavior.AllowChangeRecord = False
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                TabOrder = 11
                DataController.DataSource = datMain.dsArtistProfile
                object vgridBrowse109_Artist_ArtistName: TcxDBEditorRow
                  Properties.Caption = 'Artist:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.Alignment.Horz = taLeftJustify
                  Properties.DataBinding.FieldName = 'ArtistName'
                  Properties.Options.Editing = False
                end
                object vgridBrowse109_Artist_ArtistLabel: TcxDBEditorRow
                  Properties.Caption = 'Label:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'ArtistLabel'
                  Properties.Options.Editing = False
                end
                object vgridBrowse109_Artist_Affiliation: TcxDBEditorRow
                  Properties.Caption = 'Affiliation:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'Affiliation'
                  Properties.Options.Editing = False
                end
                object vgridBrowse109_Artist_BasedIn: TcxDBEditorRow
                  Properties.Caption = 'Based In:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'BasedIn'
                  Properties.Options.Editing = False
                end
                object vgridBrowse109_Artist_JoinDate: TcxDBEditorRow
                  Properties.Caption = 'Join Date:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxDateEditProperties'
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.SaveTime = False
                  Properties.EditProperties.ShowTime = False
                  Properties.DataBinding.FieldName = 'JoinDate'
                  Properties.Options.Editing = False
                end
              end
              object lblBrowse109_Artist_ViewAll: TcxLabel
                Left = 652
                Top = 118
                Width = 118
                Height = 17
                Cursor = crHandPoint
                Caption = 'View All Tracks By Artist'
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                Properties.Transparent = True
                ShowHint = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 19
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblBrowse109_ArtistWeb: TcxLabel
                Left = 652
                Top = 164
                Width = 72
                Height = 17
                Cursor = crHandPoint
                Caption = 'Artist Website'
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                Properties.Transparent = True
                ShowHint = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 20
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblBrowse109_AddToFav: TcxLabel
                Left = 652
                Top = 187
                Width = 86
                Height = 17
                Cursor = crHandPoint
                Caption = 'Add To Favorites'
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                Properties.Transparent = True
                ShowHint = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 21
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblBrowse109_Artist_ViewTopDL: TcxLabel
                Left = 652
                Top = 141
                Width = 118
                Height = 17
                Cursor = crHandPoint
                Caption = 'Top Downloaded Tracks'
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                Properties.Transparent = True
                ShowHint = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 22
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object cboBrowse109_BasedIn: TcxComboBox
                Left = 440
                Top = 4
                Width = 160
                Height = 19
                ParentFont = False
                Properties.Alignment.Vert = taBottomJustify
                Properties.DropDownListStyle = lsFixedList
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
                TabOrder = 3
              end
              object lblBrowse109_First: TcxLabel
                Left = 188
                Top = 126
                Width = 25
                Height = 17
                Cursor = crHandPoint
                Caption = 'First'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 24
                OnClick = lblBrowse109_FirstClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblBrowse109_Previous: TcxLabel
                Left = 219
                Top = 126
                Width = 45
                Height = 17
                Cursor = crHandPoint
                Caption = 'Previous'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 26
                OnClick = lblBrowse109_PreviousClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblBrowse109_Next: TcxLabel
                Left = 270
                Top = 126
                Width = 27
                Height = 17
                Cursor = crHandPoint
                Caption = 'Next'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 27
                OnClick = lblBrowse109_NextClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblBrowse109_Last: TcxLabel
                Left = 303
                Top = 126
                Width = 24
                Height = 17
                Cursor = crHandPoint
                Caption = 'Last'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 23
                OnClick = lblBrowse109_LastClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object cboBrowse109_PageNav: TcxComboBox
                Left = 381
                Top = 125
                Width = 80
                Height = 19
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.DropDownListStyle = lsFixedList
                Properties.ImmediatePost = True
                Properties.ImmediateUpdateText = True
                Properties.PopupAlignment = taRightJustify
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = cboBrowse109_PageNavPropertiesChange
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
                TabOrder = 9
              end
              object lblBrowse109_PageTotal: TcxLabel
                Left = 467
                Top = 126
                Width = 55
                Height = 17
                Caption = 'No Results'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                TabOrder = 25
              end
              object lblBrowse109_Preview: TcxLabel
                Left = 10
                Top = 126
                Width = 71
                Height = 17
                Cursor = crHandPoint
                Caption = 'Preview Track'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 28
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblBrowse109_Download: TcxLabel
                Left = 87
                Top = 126
                Width = 80
                Height = 17
                Cursor = crHandPoint
                Caption = 'Download Track'
                ParentColor = False
                ParentFont = False
                Properties.Transparent = True
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 29
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object gridBrowse109: TcxGrid
                Left = 4
                Top = 162
                Width = 200
                Height = 345
                BorderStyle = cxcbsNone
                TabOrder = 30
                object gridviewBrowse109: TcxGridDBTableView
                  DataController.DataSource = datMain.dsTracks_Search
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
                  OptionsView.CellEndEllipsis = True
                  OptionsView.GridLineColor = 3355443
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderEndEllipsis = True
                  Styles.StyleSheet = datMain.cssTableView
                  object gridviewBrowse109_PartOfMix: TcxGridDBColumn
                    Caption = 'Mix Set'
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
                    Width = 45
                    DataBinding.FieldName = 'PartOfMix'
                  end
                  object gridviewBrowse109_TrackTitle: TcxGridDBColumn
                    Tag = 162897688
                    Caption = 'Track Title'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.HideCursor = True
                    Properties.MaxLength = 0
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 117
                    DataBinding.FieldName = 'TrackTitle'
                  end
                  object gridviewBrowse109_ArtistName: TcxGridDBColumn
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
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 124
                    DataBinding.FieldName = 'ArtistName'
                  end
                  object gridviewBrowse109_AlbumName: TcxGridDBColumn
                    Tag = 283127608
                    Caption = 'Album Title'
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.HideCursor = True
                    Properties.MaxLength = 0
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 107
                    DataBinding.FieldName = 'AlbumName'
                  end
                  object gridviewBrowse109_TrackLength: TcxGridDBColumn
                    Caption = 'Length'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 87
                    DataBinding.FieldName = 'TrackLength'
                  end
                  object gridviewBrowse109_Genre: TcxGridDBColumn
                    Tag = 189240772
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
                    DataBinding.FieldName = 'Genre'
                  end
                  object gridviewBrowse109_SubGenre: TcxGridDBColumn
                    Caption = 'Sub-Genre'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 75
                    DataBinding.FieldName = 'SubGenre'
                  end
                  object gridviewBrowse109_FileSizeText: TcxGridDBColumn
                    Caption = 'File Size'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 75
                    DataBinding.FieldName = 'FileSizeText'
                  end
                  object gridviewBrowse109_DateAdded: TcxGridDBColumn
                    Caption = 'Date Added'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Properties.ImmediatePost = True
                    Properties.SaveTime = False
                    Properties.ShowTime = False
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    DataBinding.FieldName = 'DateAdded'
                  end
                end
                object cxGridLevel4: TcxGridLevel
                  GridView = gridviewBrowse109
                end
              end
              object cboBrowse109_MixSet: TcxComboBox
                Left = 188
                Top = 4
                Width = 160
                Height = 19
                ParentFont = False
                Properties.Alignment.Vert = taBottomJustify
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  ''
                  'Hide Mix Sets'
                  'Show Mix Sets Only')
                Properties.OnChange = cboBrowse109_MixSetPropertiesChange
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
              end
              object edtBrowse109_ArtistWeb: TcxMaskEdit
                Left = 440
                Top = 33
                Width = 209
                Height = 21
                ParentFont = False
                Properties.MaskKind = emkRegExprEx
                Properties.EditMask = 'http://[a-zA-Z0-9].+'
                Properties.MaxLength = 0
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = 10066329
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                TabOrder = 4
                Text = 'http://'
                OnKeyPress = edtBrowse109_ArtistWebKeyPress
              end
              object dxLayoutGroup46: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutGroup47: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                  Offsets.Bottom = 4
                  Offsets.Top = 4
                  ShowCaption = False
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutGroup48: TdxLayoutGroup
                    AutoAligns = [aaHorizontal]
                    AlignVert = avCenter
                    Caption = 'New Group'
                    Offsets.Left = 3
                    Offsets.Right = 7
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object dxLayoutItem70: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahCenter
                      Caption = 'cxLabel1'
                      ShowCaption = False
                      Control = lblBrowse109_SortBy
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem71: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahCenter
                      Caption = 'cxLabel3'
                      ShowCaption = False
                      Control = lblBrowse109_BeginSearch
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem72: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahCenter
                      ShowCaption = False
                      Control = lblBrowse109_ClearSearch
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutGroup49: TdxLayoutGroup
                    AutoAligns = []
                    AlignHorz = ahClient
                    AlignVert = avCenter
                    Caption = 'New Group'
                    Offsets.Left = 10
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutGroup50: TdxLayoutGroup
                      Caption = 'New Group'
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object layoutBrowse109Item11: TdxLayoutItem
                        Caption = 'Mix Sets:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Right = 3
                        Control = cboBrowse109_MixSet
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem73: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignmentConstraint = dxLayoutAlignmentConstraint4
                        Caption = 'Genre:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Right = 3
                        Offsets.Top = 4
                        Control = cboBrowse109_Genre
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem75: TdxLayoutItem
                        AlignmentConstraint = dxLayoutAlignmentConstraint5
                        Caption = 'Sub-Genre:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Right = 3
                        Offsets.Top = 4
                        Control = cboBrowse109_SubGenre
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object dxLayoutGroup3: TdxLayoutGroup
                      Offsets.Left = 3
                      ShowCaption = False
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      object layoutBrowse109Group1: TdxLayoutGroup
                        Caption = 'New Group'
                        ShowCaption = False
                        Hidden = True
                        ShowBorder = False
                        object layoutBrowse109Item1: TdxLayoutItem
                          Caption = 'Artist Based In:'
                          CaptionOptions.AlignHorz = taRightJustify
                          Offsets.Right = 3
                          Control = cboBrowse109_BasedIn
                          ControlOptions.ShowBorder = False
                        end
                        object layoutBrowse109Item2: TdxLayoutItem
                          Caption = 'Artist Website:'
                          CaptionOptions.AlignHorz = taRightJustify
                          Offsets.Right = 3
                          Offsets.Top = 4
                          Control = edtBrowse109_ArtistWeb
                          ControlOptions.AutoColor = True
                          ControlOptions.ShowBorder = False
                        end
                        object dxLayoutItem77: TdxLayoutItem
                          AlignmentConstraint = dxLayoutAlignmentConstraint6
                          Caption = 'Date Added:'
                          CaptionOptions.AlignHorz = taRightJustify
                          Offsets.Right = 3
                          Offsets.Top = 4
                          Control = cboBrowse109_DateAdded
                          ControlOptions.AutoColor = True
                          ControlOptions.ShowBorder = False
                        end
                      end
                      object layoutBrowse109Group4: TdxLayoutGroup
                        ShowCaption = False
                        Hidden = True
                        ShowBorder = False
                        object dxLayoutItem74: TdxLayoutItem
                          AutoAligns = [aaHorizontal]
                          AlignmentConstraint = dxLayoutAlignmentConstraint4
                          Caption = 'Track Title:'
                          CaptionOptions.AlignHorz = taRightJustify
                          Control = edtBrowse109_TrackTitle
                          ControlOptions.AutoColor = True
                          ControlOptions.ShowBorder = False
                        end
                        object dxLayoutItem76: TdxLayoutItem
                          AutoAligns = [aaHorizontal]
                          AlignmentConstraint = dxLayoutAlignmentConstraint5
                          Caption = 'Artist:'
                          CaptionOptions.AlignHorz = taRightJustify
                          Offsets.Top = 4
                          Control = edtBrowse109_Artist
                          ControlOptions.AutoColor = True
                          ControlOptions.ShowBorder = False
                        end
                        object dxLayoutItem78: TdxLayoutItem
                          AutoAligns = [aaHorizontal]
                          AlignmentConstraint = dxLayoutAlignmentConstraint6
                          Caption = 'Album Title:'
                          CaptionOptions.AlignHorz = taRightJustify
                          Offsets.Top = 4
                          Control = edtBrowse109_Album
                          ControlOptions.AutoColor = True
                          ControlOptions.ShowBorder = False
                        end
                      end
                    end
                  end
                end
                object dxLayoutGroup53: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object layoutBrowse109Group5: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Search Results   '
                    CaptionOptions.AlignHorz = taCenter
                    LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                    object layoutBrowse109Group6: TdxLayoutGroup
                      LookAndFeel = datMain.layoutLookFeelMain_Web
                      Offsets.Bottom = 3
                      ShowCaption = False
                      LayoutDirection = ldHorizontal
                      object layoutBrowse109Item12: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        Offsets.Left = 2
                        ShowCaption = False
                        Control = lblBrowse109_Preview
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                      object layoutBrowse109Item13: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        ShowCaption = False
                        Control = lblBrowse109_Download
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                      object layoutBrowse109Item4: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        Offsets.Left = 15
                        ShowCaption = False
                        Control = lblBrowse109_First
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                      object layoutBrowse109Item5: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        ShowCaption = False
                        Control = lblBrowse109_Previous
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                      object layoutBrowse109Item6: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        ShowCaption = False
                        Control = lblBrowse109_Next
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                      object layoutBrowse109Item7: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        ShowCaption = False
                        Control = lblBrowse109_Last
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                      object layoutBrowse109Item8: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Caption = 'Page:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Bottom = 2
                        Offsets.Left = 15
                        Control = cboBrowse109_PageNav
                        ControlOptions.ShowBorder = False
                      end
                      object layoutBrowse109Item9: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        ShowCaption = False
                        Control = lblBrowse109_PageTotal
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object layoutBrowse109Item10: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avClient
                      Control = gridBrowse109
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutItem96: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahRight
                    AlignVert = avClient
                    Control = Shape14
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutGroup54: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    AlignHorz = ahRight
                    Caption = 'Artist and Album Info'
                    LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                    LayoutDirection = ldHorizontal
                    object layoutBrowse109Group2: TdxLayoutGroup
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object dxLayoutGroup55: TdxLayoutGroup
                        ShowCaption = False
                        Hidden = True
                        LayoutDirection = ldHorizontal
                        ShowBorder = False
                        object dxLayoutItem79: TdxLayoutItem
                          AutoAligns = [aaVertical]
                          Control = imgBrowse109_Artist
                          ControlOptions.AutoColor = True
                        end
                        object dxLayoutGroup56: TdxLayoutGroup
                          ShowCaption = False
                          Hidden = True
                          ShowBorder = False
                          object dxLayoutItem80: TdxLayoutItem
                            ShowCaption = False
                            Control = lblBrowse109_Artist_ViewAll
                            ControlOptions.ShowBorder = False
                          end
                          object dxLayoutItem83: TdxLayoutItem
                            ShowCaption = False
                            Control = lblBrowse109_Artist_ViewTopDL
                            ControlOptions.ShowBorder = False
                          end
                          object dxLayoutItem81: TdxLayoutItem
                            ShowCaption = False
                            Control = lblBrowse109_ArtistWeb
                            ControlOptions.ShowBorder = False
                          end
                          object dxLayoutItem82: TdxLayoutItem
                            ShowCaption = False
                            Control = lblBrowse109_AddToFav
                            ControlOptions.ShowBorder = False
                          end
                        end
                      end
                      object dxLayoutItem85: TdxLayoutItem
                        Control = Shape16
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem86: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avClient
                        Control = vgridBrowse109_Artist
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object dxLayoutGroup57: TdxLayoutGroup
                      AutoAligns = [aaVertical]
                      AlignHorz = ahClient
                      AllowRemove = False
                      Caption = 'Album Info   '
                      CaptionOptions.AlignHorz = taCenter
                      LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                      ShowCaption = False
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      object dxLayoutItem87: TdxLayoutItem
                        AutoAligns = []
                        AlignVert = avClient
                        Control = Shape15
                        ControlOptions.ShowBorder = False
                      end
                      object layoutBrowse109Group3: TdxLayoutGroup
                        AutoAligns = [aaVertical]
                        AlignHorz = ahClient
                        ShowCaption = False
                        Hidden = True
                        ShowBorder = False
                        object dxLayoutGroup58: TdxLayoutGroup
                          ShowCaption = False
                          Hidden = True
                          LayoutDirection = ldHorizontal
                          ShowBorder = False
                          object dxLayoutItem88: TdxLayoutItem
                            AutoAligns = [aaVertical]
                            Control = imgBrowse109_Album
                            ControlOptions.AutoColor = True
                          end
                          object dxLayoutGroup59: TdxLayoutGroup
                            AutoAligns = [aaVertical]
                            AlignHorz = ahClient
                            ShowCaption = False
                            Hidden = True
                            ShowBorder = False
                            object dxLayoutItem89: TdxLayoutItem
                              AutoAligns = [aaVertical]
                              Caption = 'cxLabel5'
                              ShowCaption = False
                              Control = lblBrowse109_Album_ViewAll
                              ControlOptions.AutoColor = True
                              ControlOptions.ShowBorder = False
                            end
                            object dxLayoutItem90: TdxLayoutItem
                              AutoAligns = [aaVertical]
                              ShowCaption = False
                              Control = lblBrowse109_Album_ViewTopDL
                              ControlOptions.AutoColor = True
                              ControlOptions.ShowBorder = False
                            end
                          end
                        end
                        object dxLayoutItem94: TdxLayoutItem
                          Control = Shape13
                          ControlOptions.ShowBorder = False
                        end
                        object dxLayoutItem95: TdxLayoutItem
                          AutoAligns = [aaHorizontal]
                          AlignVert = avClient
                          ShowCaption = False
                          Control = vgridBrowse109_Album
                          ControlOptions.ShowBorder = False
                        end
                      end
                    end
                  end
                end
              end
              object dxLayoutAlignmentConstraint4: TdxLayoutAlignmentConstraint
                Kind = ackRight
              end
              object dxLayoutAlignmentConstraint5: TdxLayoutAlignmentConstraint
                Kind = ackRight
              end
              object dxLayoutAlignmentConstraint6: TdxLayoutAlignmentConstraint
                Kind = ackRight
              end
            end
          end
          object tabMyFavorites: TcxTabSheet
            Caption = 'My Favorites'
            ImageIndex = 3
            object layoutMyFavorites: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 1008
              Height = 507
              Align = alClient
              ParentBackground = True
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = datMain.layoutLookFeelMain_Web
              object Shape17: TShape
                Left = 230
                Top = 64
                Width = 1
                Height = 416
                Pen.Color = 6710886
              end
              object Shape19: TShape
                Left = 4
                Top = 182
                Width = 200
                Height = 1
                Pen.Color = 6710886
              end
              object lblMyFav_BeginSearch: TcxLabel
                Left = 3
                Top = 9
                Width = 102
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
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 7
                OnClick = lblMyFav_BeginSearchClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object cboMyFav_DateAdded: TcxComboBox
                Left = 208
                Top = 4
                Width = 160
                Height = 19
                ParentFont = False
                Properties.Alignment.Vert = taBottomJustify
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  ''
                  'Today'
                  'Last 7 Days'
                  'Last 30 Days')
                Properties.OnChange = cboMyFav_DateAddedPropertiesChange
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
              end
              object lblMyFav_ClearSearch: TcxLabel
                Left = 21
                Top = 32
                Width = 65
                Height = 17
                Cursor = crHandPoint
                Caption = 'Clear Search'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taLeftJustify
                Properties.Transparent = True
                Style.Color = 7500402
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 8
                OnClick = lblMyFav_ClearSearchClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object imgMyFav_Artist: TcxDBImage
                Left = 5
                Top = 90
                Width = 85
                Height = 85
                DataBinding.DataField = 'ArtistPic'
                DataBinding.DataSource = datMain.dsArtistPic
                Properties.GraphicClassName = 'TJPEGImage'
                Properties.PopupMenuLayout.MenuItems = [pmiCopy, pmiSave]
                Properties.ReadOnly = True
                Properties.ShowFocusRect = False
                Properties.Stretch = True
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.HotTrack = False
                TabOrder = 4
              end
              object vgridMyFav_Artist: TcxDBVerticalGrid
                Left = 4
                Top = 189
                Width = 216
                Height = 275
                BorderStyle = cxcbsNone
                Styles.Background = datMain.styleVertGrid_Content
                Styles.Content = datMain.styleVertGrid_Content
                Styles.Inactive = datMain.styleVertGrid_Header2
                Styles.Selection = datMain.styleVertGrid_Header2
                Styles.StyleSheet = datMain.cssVertGrid
                OptionsView.CellEndEllipsis = True
                OptionsView.GridLineColor = 3355443
                OptionsView.RowHeaderMinWidth = 96
                OptionsView.RowHeaderWidth = 96
                OptionsBehavior.HeaderSizing = False
                OptionsBehavior.RowTracking = False
                OptionsBehavior.AllowChangeRecord = False
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                TabOrder = 5
                DataController.DataSource = datMain.dsMems_Fav
                object vgridMyFav_Artist_ArtistName: TcxDBEditorRow
                  Properties.Caption = 'Artist:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.Alignment.Horz = taLeftJustify
                  Properties.DataBinding.FieldName = 'ArtistName'
                  Properties.Options.Editing = False
                end
                object vgridMyFav_Artist_ArtistLabel: TcxDBEditorRow
                  Properties.Caption = 'Label:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'ArtistLabel'
                  Properties.Options.Editing = False
                end
                object vgridMyFav_Artist_Affiliation: TcxDBEditorRow
                  Properties.Caption = 'Affiliation:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'Affiliation'
                  Properties.Options.Editing = False
                end
                object vgridMyFav_Artist_BasedIn: TcxDBEditorRow
                  Properties.Caption = 'Based In:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'BasedIn'
                  Properties.Options.Editing = False
                end
                object vgridMyFav_Artist_JoinDate: TcxDBEditorRow
                  Properties.Caption = 'Join Date:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxDateEditProperties'
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.SaveTime = False
                  Properties.EditProperties.ShowTime = False
                  Properties.DataBinding.FieldName = 'JoinDate'
                  Properties.Options.Editing = False
                end
              end
              object lblMyFav_Artist_ViewAll: TcxLabel
                Left = 97
                Top = 89
                Width = 118
                Height = 17
                Cursor = crHandPoint
                Caption = 'View All Tracks By Artist'
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                Properties.Transparent = True
                ShowHint = True
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
              object lblMyFav_ArtistWeb: TcxLabel
                Left = 97
                Top = 135
                Width = 72
                Height = 17
                Cursor = crHandPoint
                Caption = 'Artist Website'
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                Properties.Transparent = True
                ShowHint = True
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
              object lblMyFav_Artist_ViewTopDL: TcxLabel
                Left = 97
                Top = 112
                Width = 118
                Height = 17
                Cursor = crHandPoint
                Caption = 'Top Downloaded Tracks'
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                Properties.Transparent = True
                ShowHint = True
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
              object cboMyFav_BasedIn: TcxComboBox
                Left = 208
                Top = 33
                Width = 160
                Height = 19
                ParentFont = False
                Properties.Alignment.Vert = taBottomJustify
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  '')
                Properties.OnChange = cboMyFav_DateAddedPropertiesChange
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
              end
              object lblMyFav_First: TcxLabel
                Left = 386
                Top = 97
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
                TabOrder = 13
                OnClick = lblMyFav_FirstClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblMyFav_Previous: TcxLabel
                Left = 417
                Top = 97
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
                TabOrder = 15
                OnClick = lblMyFav_PreviousClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblMyFav_Next: TcxLabel
                Left = 468
                Top = 97
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
                TabOrder = 16
                OnClick = lblMyFav_NextClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblMyFav_Last: TcxLabel
                Left = 501
                Top = 97
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
                TabOrder = 12
                OnClick = lblMyFav_LastClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object cboMyFav_PageNav: TcxComboBox
                Left = 579
                Top = 96
                Width = 80
                Height = 19
                ParentFont = False
                Properties.Alignment.Horz = taRightJustify
                Properties.DropDownListStyle = lsFixedList
                Properties.ImmediatePost = True
                Properties.ImmediateUpdateText = True
                Properties.PopupAlignment = taRightJustify
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = cboMyFav_PageNavPropertiesChange
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
                TabOrder = 6
              end
              object lblMyFav_PageTotal: TcxLabel
                Left = 665
                Top = 97
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
                TabOrder = 14
              end
              object gridMyFav: TcxGrid
                Left = 241
                Top = 130
                Width = 200
                Height = 345
                BorderStyle = cxcbsNone
                TabOrder = 17
                object gridviewMyFav: TcxGridDBTableView
                  DataController.DataSource = datMain.dsMems_Fav
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
                  OptionsView.CellEndEllipsis = True
                  OptionsView.GridLineColor = 3355443
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderEndEllipsis = True
                  Preview.Column = gridviewMyFav_Memo
                  Preview.Visible = True
                  Styles.StyleSheet = datMain.cssTableView
                  object gridviewMyFav_DateCreated: TcxGridDBColumn
                    Tag = 162897688
                    Caption = 'Date Added'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Properties.ImmediatePost = True
                    Properties.SaveTime = False
                    Properties.ShowTime = False
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 117
                    DataBinding.FieldName = 'DateCreated'
                  end
                  object gridviewMyFav_ArtistName: TcxGridDBColumn
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
                    DataBinding.FieldName = 'ArtistName'
                  end
                  object gridviewMyFav_ArtistLabel: TcxGridDBColumn
                    Caption = 'Label'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 87
                    DataBinding.FieldName = 'ArtistLabel'
                  end
                  object gridviewMyFav_Affiliation: TcxGridDBColumn
                    Tag = 189240772
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
                    DataBinding.FieldName = 'Afilliation'
                  end
                  object gridviewMyFav_BasedIn: TcxGridDBColumn
                    Tag = 283127608
                    Caption = 'Based In'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 107
                    DataBinding.FieldName = 'BasedIn'
                  end
                  object gridviewMyFav_JoinDate: TcxGridDBColumn
                    Caption = 'Join Date'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Properties.ImmediatePost = True
                    Properties.SaveTime = False
                    Properties.ShowTime = False
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 75
                    DataBinding.FieldName = 'JoinDate'
                  end
                  object gridviewMyFav_Memo: TcxGridDBColumn
                    PropertiesClassName = 'TcxMemoProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    DataBinding.FieldName = 'Memo'
                  end
                end
                object cxGridLevel2: TcxGridLevel
                  GridView = gridviewMyFav
                end
              end
              object edtMyFav_Memo: TcxButtonEdit
                Left = 454
                Top = 35
                Width = 160
                Height = 19
                ParentFont = False
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.MaxLength = 100
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = 10066329
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.TransparentBorder = False
                Style.ButtonStyle = btsHotFlat
                Style.ButtonTransparency = ebtHideUnselected
                TabOrder = 3
                OnKeyPress = edtMyFav_MemoKeyPress
              end
              object lblMyFav_Remove: TcxLabel
                Left = 247
                Top = 97
                Width = 118
                Height = 17
                Cursor = crHandPoint
                Caption = 'Remove From Favorites'
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
                TabOrder = 18
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object edtMyFav_ArtistWeb: TcxMaskEdit
                Left = 454
                Top = 4
                Width = 209
                Height = 21
                ParentFont = False
                Properties.MaskKind = emkRegExprEx
                Properties.EditMask = 'http://[a-zA-Z0-9].+'
                Properties.MaxLength = 0
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = 10066329
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                TabOrder = 2
                Text = 'http://'
                OnKeyPress = edtMyFav_MemoKeyPress
              end
              object dxLayoutGroup6: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutGroup7: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                  Offsets.Bottom = 4
                  Offsets.Top = 4
                  ShowCaption = False
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutGroup8: TdxLayoutGroup
                    AutoAligns = [aaHorizontal]
                    AlignVert = avCenter
                    Caption = 'New Group'
                    Offsets.Left = 3
                    Offsets.Right = 7
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object dxLayoutItem5: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahCenter
                      Caption = 'cxLabel3'
                      ShowCaption = False
                      Control = lblMyFav_BeginSearch
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem6: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahCenter
                      ShowCaption = False
                      Control = lblMyFav_ClearSearch
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutGroup10: TdxLayoutGroup
                    AutoAligns = []
                    AlignVert = avCenter
                    Caption = 'New Group'
                    Offsets.Left = 10
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object layoutMyFavoritesGroup2: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object dxLayoutItem14: TdxLayoutItem
                        Caption = 'Date Added:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Right = 3
                        Control = cboMyFav_DateAdded
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem10: TdxLayoutItem
                        Caption = 'Artist Based In:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Right = 3
                        Offsets.Top = 4
                        Control = cboMyFav_BasedIn
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object layoutMyFavoritesGroup1: TdxLayoutGroup
                      AutoAligns = [aaHorizontal]
                      AlignVert = avCenter
                      Caption = 'New Group'
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object layoutMyFavoritesItem3: TdxLayoutItem
                        Caption = 'Artist Website:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Right = 3
                        Control = edtMyFav_ArtistWeb
                        ControlOptions.ShowBorder = False
                      end
                      object layoutMyFavoritesItem1: TdxLayoutItem
                        Caption = 'Memo:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Right = 3
                        Offsets.Top = 4
                        Control = edtMyFav_Memo
                        ControlOptions.ShowBorder = False
                      end
                    end
                  end
                end
                object dxLayoutGroup19: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutGroup41: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    Caption = 'Artist Info   '
                    CaptionOptions.AlignHorz = taCenter
                    LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                    object dxLayoutGroup43: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      object dxLayoutItem56: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        Control = imgMyFav_Artist
                        ControlOptions.AutoColor = True
                      end
                      object dxLayoutGroup44: TdxLayoutGroup
                        ShowCaption = False
                        Hidden = True
                        ShowBorder = False
                        object dxLayoutItem57: TdxLayoutItem
                          ShowCaption = False
                          Control = lblMyFav_Artist_ViewAll
                          ControlOptions.ShowBorder = False
                        end
                        object dxLayoutItem62: TdxLayoutItem
                          ShowCaption = False
                          Control = lblMyFav_Artist_ViewTopDL
                          ControlOptions.ShowBorder = False
                        end
                        object dxLayoutItem66: TdxLayoutItem
                          ShowCaption = False
                          Control = lblMyFav_ArtistWeb
                          ControlOptions.ShowBorder = False
                        end
                      end
                    end
                    object dxLayoutItem68: TdxLayoutItem
                      Control = Shape19
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem69: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avClient
                      Control = vgridMyFav_Artist
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutItem55: TdxLayoutItem
                    AutoAligns = []
                    AlignVert = avClient
                    Control = Shape17
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutGroup35: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Favorites   '
                    LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                    object dxLayoutGroup40: TdxLayoutGroup
                      LookAndFeel = datMain.layoutLookFeelMain_Web
                      ShowCaption = False
                      LayoutDirection = ldHorizontal
                      object layoutMyFavoritesItem2: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        Offsets.Left = 2
                        ShowCaption = False
                        Control = lblMyFav_Remove
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem29: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        Offsets.Left = 15
                        ShowCaption = False
                        Control = lblMyFav_First
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem30: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        ShowCaption = False
                        Control = lblMyFav_Previous
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem44: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        ShowCaption = False
                        Control = lblMyFav_Next
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem51: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        ShowCaption = False
                        Control = lblMyFav_Last
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem52: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Caption = 'Page:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Bottom = 2
                        Offsets.Left = 15
                        Control = cboMyFav_PageNav
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem53: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        ShowCaption = False
                        Control = lblMyFav_PageTotal
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object dxLayoutItem54: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avClient
                      Control = gridMyFav
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
              end
            end
          end
          object tabTopDownloads: TcxTabSheet
            Caption = 'Top Downloads'
            ImageIndex = 5
            object layoutTopDownloads: TdxLayoutControl
              Left = 0
              Top = 0
              Width = 1008
              Height = 507
              Align = alClient
              ParentBackground = True
              TabOrder = 0
              AutoContentSizes = [acsWidth, acsHeight]
              LookAndFeel = datMain.layoutLookFeelMain_Web
              object Shape2: TShape
                Left = 788
                Top = 209
                Width = 203
                Height = 1
                Pen.Color = 6710886
              end
              object Shape7: TShape
                Left = 781
                Top = 116
                Width = 1
                Height = 432
                Pen.Color = 6710886
              end
              object Shape8: TShape
                Left = 548
                Top = 91
                Width = 1
                Height = 449
                Pen.Color = 6710886
              end
              object Shape9: TShape
                Left = 559
                Top = 209
                Width = 203
                Height = 1
                Pen.Color = 6710886
              end
              object imgTopDL_Album: TcxDBImage
                Left = 789
                Top = 117
                Width = 85
                Height = 85
                DataBinding.DataField = 'AlbumPic'
                DataBinding.DataSource = datMain.dsAlbumPic
                Properties.GraphicClassName = 'TJPEGImage'
                Properties.PopupMenuLayout.MenuItems = [pmiCopy, pmiSave]
                Properties.ReadOnly = True
                Properties.ShowFocusRect = False
                Properties.Stretch = True
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.HotTrack = False
                TabOrder = 11
              end
              object cboTopDL_Genre: TcxComboBox
                Left = 177
                Top = 62
                Width = 130
                Height = 19
                ParentFont = False
                Properties.Alignment.Vert = taBottomJustify
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  '')
                Properties.OnChange = cboTopDL_DatePostedPropertiesChange
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
                TabOrder = 2
              end
              object lblTopDL_Album_ViewTopDL: TcxLabel
                Left = 881
                Top = 139
                Width = 118
                Height = 17
                Cursor = crHandPoint
                Caption = 'Top Downloaded Tracks'
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
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblTopDL_Album_ViewAll: TcxLabel
                Left = 881
                Top = 116
                Width = 123
                Height = 17
                Cursor = crHandPoint
                Caption = 'View All Tracks On Album'
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
                TabOrder = 14
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblTopDL_BeginSearch: TcxLabel
                Left = 3
                Top = 22
                Width = 102
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
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 15
                OnClick = lblTopDL_BeginSearchClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object vgridTopDL_Album: TcxDBVerticalGrid
                Left = 788
                Top = 216
                Width = 203
                Height = 298
                BorderStyle = cxcbsNone
                Styles.Background = datMain.styleVertGrid_Content
                Styles.Content = datMain.styleVertGrid_Content
                Styles.Inactive = datMain.styleVertGrid_Header2
                Styles.Selection = datMain.styleVertGrid_Header2
                Styles.StyleSheet = datMain.cssVertGrid
                OptionsView.CellEndEllipsis = True
                OptionsView.GridLineColor = 3355443
                OptionsView.RowHeaderMinWidth = 96
                OptionsView.RowHeaderWidth = 96
                OptionsBehavior.HeaderSizing = False
                OptionsBehavior.RowTracking = False
                OptionsBehavior.AllowChangeRecord = False
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                TabOrder = 12
                DataController.DataSource = datMain.dsAlbumProfile
                object vgridTopDL_Album_AlbumName: TcxDBEditorRow
                  Properties.Caption = 'Album:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.Alignment.Horz = taLeftJustify
                  Properties.DataBinding.FieldName = 'AlbumName'
                  Properties.Options.Editing = False
                end
                object vgridTopDL_Album_AlbumLabel: TcxDBEditorRow
                  Properties.Caption = 'Label:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'AlbumLabel'
                  Properties.Options.Editing = False
                end
                object vgridTopDL_Album_DateReleased: TcxDBEditorRow
                  Properties.Caption = 'Released:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxDateEditProperties'
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.SaveTime = False
                  Properties.EditProperties.ShowTime = False
                  Properties.DataBinding.FieldName = 'DateReleased'
                  Properties.Options.Editing = False
                end
                object vgridTopDL_Album_TotalTracks: TcxDBEditorRow
                  Properties.Caption = 'Total Tracks:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'TotalTracks'
                  Properties.Options.Editing = False
                end
                object vgridTopDL_Album_TotalLength: TcxDBEditorRow
                  Properties.Caption = 'Total Length:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'TotalLength'
                  Properties.Options.Editing = False
                end
                object vgridTopDL_Album_AlbumGenre: TcxDBEditorRow
                  Properties.Caption = 'Genre:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'AlbumGenre'
                  Properties.Options.Editing = False
                end
                object vgridTopDL_Album_AlbumIsMix: TcxDBEditorRow
                  Properties.Caption = 'Mix Set:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.EditProperties.DisplayUnchecked = 'False'
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.NullStyle = nssUnchecked
                  Properties.DataBinding.FieldName = 'AlbumIsMix'
                end
              end
              object cboTopDL_Country: TcxComboBox
                Left = 595
                Top = 62
                Width = 130
                Height = 19
                ParentFont = False
                Properties.Alignment.Vert = taBottomJustify
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  ''
                  'U.S.A.'
                  'Canada')
                Properties.OnChange = cboTopDL_DatePostedPropertiesChange
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
                TabOrder = 8
              end
              object cboTopDL_State: TcxComboBox
                Left = 595
                Top = 33
                Width = 130
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
                TabOrder = 7
                OnKeyPress = edtTopDL_SchoolKeyPress
              end
              object edtTopDL_City: TcxButtonEdit
                Left = 595
                Top = 4
                Width = 130
                Height = 19
                ParentFont = False
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.MaxLength = 100
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = 10066329
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.TransparentBorder = False
                Style.ButtonStyle = btsHotFlat
                Style.ButtonTransparency = ebtHideUnselected
                TabOrder = 6
                OnKeyPress = edtTopDL_SchoolKeyPress
              end
              object lblTopDL_ClearSearch: TcxLabel
                Left = 21
                Top = 45
                Width = 65
                Height = 17
                Cursor = crHandPoint
                Caption = 'Clear Search'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taLeftJustify
                Properties.Transparent = True
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWhite
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsUnderline]
                Style.HotTrack = False
                TabOrder = 16
                OnClick = lblTopDL_ClearSearchClick
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object cboTopDL_DatePosted: TcxComboBox
                Left = 177
                Top = 4
                Width = 160
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
                Properties.OnChange = cboTopDL_DatePostedPropertiesChange
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
              object edtTopDL_School: TcxButtonEdit
                Left = 408
                Top = 62
                Width = 130
                Height = 19
                ParentFont = False
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.MaxLength = 100
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = 10066329
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.TransparentBorder = False
                Style.ButtonStyle = btsHotFlat
                Style.ButtonTransparency = ebtHideUnselected
                TabOrder = 5
                OnKeyPress = edtTopDL_SchoolKeyPress
              end
              object cboTopDL_AgeRange: TcxComboBox
                Left = 408
                Top = 33
                Width = 130
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
                Properties.OnChange = cboTopDL_DatePostedPropertiesChange
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
                TabOrder = 4
              end
              object cboTopDL_Gender: TcxComboBox
                Left = 408
                Top = 4
                Width = 130
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
                Properties.OnChange = cboTopDL_DatePostedPropertiesChange
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
                TabOrder = 3
              end
              object lblTopDL_Search109: TcxLabel
                Left = 10
                Top = 123
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
                TabOrder = 17
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblTopDL_Preview: TcxLabel
                Left = 136
                Top = 123
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
                TabOrder = 18
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblTopDL_Download: TcxLabel
                Left = 216
                Top = 123
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
                TabOrder = 19
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object imgTopDL_Artist: TcxDBImage
                Left = 560
                Top = 117
                Width = 85
                Height = 85
                DataBinding.DataField = 'ArtistPic'
                DataBinding.DataSource = datMain.dsArtistPic
                Properties.GraphicClassName = 'TJPEGImage'
                Properties.PopupMenuLayout.MenuItems = [pmiCopy, pmiSave]
                Properties.ReadOnly = True
                Properties.ShowFocusRect = False
                Properties.Stretch = True
                Style.BorderColor = 6710886
                Style.BorderStyle = ebsSingle
                Style.Color = 3355443
                Style.HotTrack = False
                TabOrder = 9
              end
              object vgridTopDL_Artist: TcxDBVerticalGrid
                Left = 559
                Top = 216
                Width = 216
                Height = 313
                BorderStyle = cxcbsNone
                Styles.Background = datMain.styleVertGrid_Content
                Styles.Content = datMain.styleVertGrid_Content
                Styles.Inactive = datMain.styleVertGrid_Header2
                Styles.Selection = datMain.styleVertGrid_Header2
                Styles.StyleSheet = datMain.cssVertGrid
                OptionsView.CellEndEllipsis = True
                OptionsView.GridLineColor = 3355443
                OptionsView.RowHeaderMinWidth = 96
                OptionsView.RowHeaderWidth = 96
                OptionsBehavior.HeaderSizing = False
                OptionsBehavior.RowTracking = False
                OptionsBehavior.AllowChangeRecord = False
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                TabOrder = 10
                DataController.DataSource = datMain.dsArtistProfile
                object vgridTopDL_Artist_ArtistName: TcxDBEditorRow
                  Properties.Caption = 'Artist:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.EditProperties.Alignment.Horz = taLeftJustify
                  Properties.DataBinding.FieldName = 'ArtistName'
                  Properties.Options.Editing = False
                end
                object vgridTopDL_Artist_ArtistLabel: TcxDBEditorRow
                  Properties.Caption = 'Label:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'ArtistLabel'
                  Properties.Options.Editing = False
                end
                object vgridTopDL_Artist_Affiliation: TcxDBEditorRow
                  Properties.Caption = 'Affiliation:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'Affiliation'
                  Properties.Options.Editing = False
                end
                object vgridTopDL_Artist_BasedIn: TcxDBEditorRow
                  Properties.Caption = 'Based In:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxTextEditProperties'
                  Properties.DataBinding.FieldName = 'BasedIn'
                  Properties.Options.Editing = False
                end
                object vgridTopDL_Artist_JoinDate: TcxDBEditorRow
                  Properties.Caption = 'Join Date:'
                  Properties.HeaderAlignmentHorz = taRightJustify
                  Properties.EditPropertiesClassName = 'TcxDateEditProperties'
                  Properties.EditProperties.ImmediatePost = True
                  Properties.EditProperties.SaveTime = False
                  Properties.EditProperties.ShowTime = False
                  Properties.DataBinding.FieldName = 'JoinDate'
                  Properties.Options.Editing = False
                end
              end
              object lblTopDL_Artist_ViewAll: TcxLabel
                Left = 652
                Top = 116
                Width = 118
                Height = 17
                Cursor = crHandPoint
                Caption = 'View All Tracks By Artist'
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
                TabOrder = 23
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblTopDL_Artist_ViewTopDL: TcxLabel
                Left = 652
                Top = 139
                Width = 118
                Height = 17
                Cursor = crHandPoint
                Caption = 'Top Downloaded Tracks'
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
                TabOrder = 20
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblTopDL_ArtistWeb: TcxLabel
                Left = 652
                Top = 162
                Width = 72
                Height = 17
                Cursor = crHandPoint
                Caption = 'Artist Website'
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
                TabOrder = 21
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object lblTopDL_AddToFav: TcxLabel
                Left = 652
                Top = 185
                Width = 86
                Height = 17
                Cursor = crHandPoint
                Caption = 'Add To Favorites'
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
                TabOrder = 22
                OnMouseEnter = cxLabelMouseEnterWhite
                OnMouseLeave = cxLabelMouseLeaveWhite
              end
              object gridTopDL: TcxGrid
                Left = 4
                Top = 158
                Width = 541
                Height = 343
                BorderStyle = cxcbsNone
                TabOrder = 24
                object gridviewTopDL: TcxGridDBTableView
                  DataController.DataSource = datMain.dsMems_DL_Summary
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
                  OptionsView.CellEndEllipsis = True
                  OptionsView.GridLineColor = 3355443
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderEndEllipsis = True
                  Styles.StyleSheet = datMain.cssTableView
                  object gridviewTopDL_PartOfMix: TcxGridDBColumn
                    Caption = 'Mix Set'
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
                    Width = 45
                    DataBinding.FieldName = 'PartOfMix'
                  end
                  object gridviewTopDL_TrackTitle: TcxGridDBColumn
                    Tag = 162897688
                    Caption = 'Track Title'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 117
                    DataBinding.FieldName = 'TrackTitle'
                  end
                  object gridviewTopDL_ArtistName: TcxGridDBColumn
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
                    DataBinding.FieldName = 'ArtistName'
                  end
                  object gridviewTopDL_AlbumName: TcxGridDBColumn
                    Tag = 283127608
                    Caption = 'Album Title'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 107
                    DataBinding.FieldName = 'AlbumName'
                  end
                  object gridviewTopDL_TrackLength: TcxGridDBColumn
                    Caption = 'Length'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 87
                    DataBinding.FieldName = 'TrackLength'
                  end
                  object gridviewTopDL_Genre: TcxGridDBColumn
                    Tag = 189240772
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
                    DataBinding.FieldName = 'Genre'
                  end
                  object gridviewTopDL_SubGenre: TcxGridDBColumn
                    Caption = 'Sub-Genre'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 75
                    DataBinding.FieldName = 'SubGenre'
                  end
                  object gridviewTopDL_FileSizeText: TcxGridDBColumn
                    Caption = 'File Size'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 75
                    DataBinding.FieldName = 'FileSizeText'
                  end
                  object gridviewTopDL_DateAdded: TcxGridDBColumn
                    Caption = 'Added'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Properties.ImmediatePost = True
                    Properties.SaveTime = False
                    Properties.ShowTime = False
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    DataBinding.FieldName = 'DateAdded'
                  end
                  object gridviewTopDL_TotalPosts: TcxGridDBColumn
                    Caption = 'Total DL'#39's'
                    PropertiesClassName = 'TcxTextEditProperties'
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Focusing = False
                    Options.IncSearch = False
                    Options.Grouping = False
                    Options.Moving = False
                    Options.Sorting = False
                    SortOrder = soDescending
                    Width = 72
                    DataBinding.FieldName = 'TotalPosts'
                  end
                end
                object cxGridLevel3: TcxGridLevel
                  GridView = gridviewTopDL
                end
              end
              object cboTopDL_MixSet: TcxComboBox
                Left = 177
                Top = 33
                Width = 160
                Height = 19
                ParentFont = False
                Properties.Alignment.Vert = taBottomJustify
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  ''
                  'Hide Mix Sets'
                  'Show Mix Sets Only')
                Properties.OnChange = cboTopDL_DatePostedPropertiesChange
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
              end
              object dxLayoutGroup9: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutGroup12: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                  Offsets.Bottom = 4
                  Offsets.Top = 4
                  ShowCaption = False
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutGroup14: TdxLayoutGroup
                    AutoAligns = [aaHorizontal]
                    AlignVert = avCenter
                    Caption = 'New Group'
                    Offsets.Left = 3
                    Offsets.Right = 7
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object dxLayoutItem18: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahCenter
                      Caption = 'cxLabel3'
                      ShowCaption = False
                      Control = lblTopDL_BeginSearch
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem19: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      AlignHorz = ahCenter
                      ShowCaption = False
                      Control = lblTopDL_ClearSearch
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutGroup20: TdxLayoutGroup
                    AutoAligns = []
                    AlignHorz = ahClient
                    AlignVert = avCenter
                    Caption = 'New Group'
                    Offsets.Left = 10
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutGroup21: TdxLayoutGroup
                      Caption = 'New Group'
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object dxLayoutItem20: TdxLayoutItem
                        Caption = 'Date:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Right = 3
                        Control = cboTopDL_DatePosted
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                      object layoutTopDownloadsItem9: TdxLayoutItem
                        Caption = 'Mix Sets:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Right = 3
                        Offsets.Top = 4
                        Control = cboTopDL_MixSet
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem21: TdxLayoutItem
                        AlignmentConstraint = dxLayoutAlignmentConstraint2
                        Caption = 'Genre:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Right = 3
                        Offsets.Top = 4
                        Control = cboTopDL_Genre
                        ControlOptions.AutoColor = True
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object dxLayoutGroup22: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      object dxLayoutGroup24: TdxLayoutGroup
                        Caption = 'New Group'
                        ShowCaption = False
                        Hidden = True
                        ShowBorder = False
                        object dxLayoutItem22: TdxLayoutItem
                          Caption = 'Gender:'
                          CaptionOptions.AlignHorz = taRightJustify
                          Offsets.Right = 3
                          Control = cboTopDL_Gender
                          ControlOptions.AutoColor = True
                          ControlOptions.ShowBorder = False
                        end
                        object dxLayoutItem23: TdxLayoutItem
                          Caption = 'Age Range:'
                          CaptionOptions.AlignHorz = taRightJustify
                          Offsets.Right = 3
                          Offsets.Top = 4
                          Control = cboTopDL_AgeRange
                          ControlOptions.AutoColor = True
                          ControlOptions.ShowBorder = False
                        end
                        object dxLayoutItem33: TdxLayoutItem
                          Caption = 'School:'
                          CaptionOptions.AlignHorz = taRightJustify
                          Offsets.Right = 3
                          Offsets.Top = 4
                          Control = edtTopDL_School
                          ControlOptions.AutoColor = True
                          ControlOptions.ShowBorder = False
                        end
                      end
                      object dxLayoutGroup25: TdxLayoutGroup
                        ShowCaption = False
                        Hidden = True
                        ShowBorder = False
                        object dxLayoutItem24: TdxLayoutItem
                          AutoAligns = [aaHorizontal]
                          AlignmentConstraint = dxLayoutAlignmentConstraint2
                          Caption = 'City:'
                          CaptionOptions.AlignHorz = taRightJustify
                          Offsets.Right = 3
                          Control = edtTopDL_City
                          ControlOptions.AutoColor = True
                          ControlOptions.ShowBorder = False
                        end
                        object dxLayoutItem31: TdxLayoutItem
                          Caption = 'State:'
                          CaptionOptions.AlignHorz = taRightJustify
                          Offsets.Right = 3
                          Offsets.Top = 4
                          Control = cboTopDL_State
                          ControlOptions.AutoColor = True
                          ControlOptions.ShowBorder = False
                        end
                        object dxLayoutItem32: TdxLayoutItem
                          Caption = 'Country:'
                          CaptionOptions.AlignHorz = taRightJustify
                          Offsets.Right = 3
                          Offsets.Top = 4
                          Control = cboTopDL_Country
                          ControlOptions.AutoColor = True
                          ControlOptions.ShowBorder = False
                        end
                      end
                    end
                  end
                end
                object dxLayoutGroup27: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutGroup28: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Top 40 Tracks People Are Downloading   '
                    CaptionOptions.AlignHorz = taCenter
                    LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                    object dxLayoutGroup29: TdxLayoutGroup
                      LookAndFeel = datMain.layoutLookFeelMain_Web
                      Offsets.Bottom = 3
                      ShowCaption = False
                      LayoutDirection = ldHorizontal
                      object dxLayoutItem39: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        Offsets.Left = 2
                        Offsets.Right = 3
                        ShowCaption = False
                        Control = lblTopDL_Search109
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem40: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        Offsets.Right = 3
                        ShowCaption = False
                        Control = lblTopDL_Preview
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem41: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avCenter
                        Offsets.Bottom = 2
                        ShowCaption = False
                        Control = lblTopDL_Download
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object layoutTopDownloadsItem8: TdxLayoutItem
                      AutoAligns = [aaHorizontal]
                      AlignVert = avClient
                      Control = gridTopDL
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutItem43: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahRight
                    AlignVert = avClient
                    Control = Shape8
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutGroup36: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    AlignHorz = ahRight
                    Caption = 'Artist and Album Info'
                    LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                    LayoutDirection = ldHorizontal
                    object layoutTopDownloadsGroup1: TdxLayoutGroup
                      AutoAligns = [aaVertical]
                      AlignHorz = ahRight
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object layoutTopDownloadsGroup2: TdxLayoutGroup
                        ShowCaption = False
                        Hidden = True
                        LayoutDirection = ldHorizontal
                        ShowBorder = False
                        object layoutTopDownloadsItem1: TdxLayoutItem
                          AutoAligns = [aaVertical]
                          Control = imgTopDL_Artist
                          ControlOptions.AutoColor = True
                        end
                        object layoutTopDownloadsGroup3: TdxLayoutGroup
                          ShowCaption = False
                          Hidden = True
                          ShowBorder = False
                          object layoutTopDownloadsItem4: TdxLayoutItem
                            ShowCaption = False
                            Control = lblTopDL_Artist_ViewAll
                            ControlOptions.ShowBorder = False
                          end
                          object layoutTopDownloadsItem5: TdxLayoutItem
                            ShowCaption = False
                            Control = lblTopDL_Artist_ViewTopDL
                            ControlOptions.ShowBorder = False
                          end
                          object layoutTopDownloadsItem6: TdxLayoutItem
                            ShowCaption = False
                            Control = lblTopDL_ArtistWeb
                            ControlOptions.ShowBorder = False
                          end
                          object layoutTopDownloadsItem7: TdxLayoutItem
                            ShowCaption = False
                            Control = lblTopDL_AddToFav
                            ControlOptions.ShowBorder = False
                          end
                        end
                      end
                      object layoutTopDownloadsItem2: TdxLayoutItem
                        Control = Shape9
                        ControlOptions.ShowBorder = False
                      end
                      object layoutTopDownloadsItem3: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avClient
                        Control = vgridTopDL_Artist
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object dxLayoutItem47: TdxLayoutItem
                      AutoAligns = []
                      AlignHorz = ahRight
                      AlignVert = avClient
                      Control = Shape7
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutGroup37: TdxLayoutGroup
                      AutoAligns = [aaVertical]
                      AlignHorz = ahRight
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object dxLayoutGroup38: TdxLayoutGroup
                        ShowCaption = False
                        Hidden = True
                        LayoutDirection = ldHorizontal
                        ShowBorder = False
                        object dxLayoutItem58: TdxLayoutItem
                          AutoAligns = [aaVertical]
                          Control = imgTopDL_Album
                          ControlOptions.AutoColor = True
                        end
                        object dxLayoutGroup39: TdxLayoutGroup
                          AutoAligns = [aaVertical]
                          AlignHorz = ahClient
                          ShowCaption = False
                          Hidden = True
                          ShowBorder = False
                          object dxLayoutItem59: TdxLayoutItem
                            AutoAligns = [aaVertical]
                            Caption = 'cxLabel5'
                            ShowCaption = False
                            Control = lblTopDL_Album_ViewAll
                            ControlOptions.AutoColor = True
                            ControlOptions.ShowBorder = False
                          end
                          object dxLayoutItem60: TdxLayoutItem
                            AutoAligns = [aaVertical]
                            ShowCaption = False
                            Control = lblTopDL_Album_ViewTopDL
                            ControlOptions.AutoColor = True
                            ControlOptions.ShowBorder = False
                          end
                        end
                      end
                      object dxLayoutItem64: TdxLayoutItem
                        Control = Shape2
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutItem65: TdxLayoutItem
                        AutoAligns = [aaHorizontal]
                        AlignVert = avClient
                        ShowCaption = False
                        Control = vgridTopDL_Album
                        ControlOptions.ShowBorder = False
                      end
                    end
                  end
                end
              end
              object dxLayoutAlignmentConstraint2: TdxLayoutAlignmentConstraint
                Kind = ackRight
              end
            end
          end
        end
        object dxLayoutGroup5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object layoutMusicGroup1: TdxLayoutGroup
            Caption = 'New Group'
            Offsets.Top = 7
            ShowCaption = False
            LayoutDirection = ldHorizontal
            object layoutMusicItem3: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avCenter
              Offsets.Right = 3
              ShowCaption = False
              Control = lblMusic
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object layoutMusicItem4: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avCenter
              Offsets.Right = 3
              ShowCaption = False
              Control = lblTopDownloads
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
            end
            object layoutMusicItem5: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avCenter
              Offsets.Right = 3
              ShowCaption = False
              Control = lblMyFavorites
              ControlOptions.AutoColor = True
              ControlOptions.ShowBorder = False
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
    object mnuMemWebsite: TdxBarButton
      Caption = 'Website'
      Category = 2
      Hint = 'Website'
      Visible = ivAlways
    end
    object mnuMemBlog: TdxBarButton
      Caption = 'Blog'
      Category = 2
      Hint = 'Blog'
      Visible = ivAlways
    end
    object mnuMemPhotoAlbum: TdxBarButton
      Caption = 'Photo Album'
      Category = 2
      Hint = 'Photo Album'
      Visible = ivAlways
    end
    object mnuMemForumPosts: TdxBarButton
      Caption = 'Forum Posts'
      Category = 2
      Hint = 'Forum Posts'
      Visible = ivAlways
    end
  end
  object popmnuMemOpenLink: TdxBarPopupMenu
    BarManager = barMusic
    ItemLinks = <
      item
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
      end
      item
        Item = mnuMemForumPosts
        Visible = True
      end>
    UseOwnFont = False
    Left = 631
    Top = 8
  end
end
