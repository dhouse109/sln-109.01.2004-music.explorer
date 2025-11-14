inherited frmBulletinBoard: TfrmBulletinBoard
  Left = 85
  Top = 125
  Caption = 'Shout Boards'
  ClientHeight = 502
  ClientWidth = 1074
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited layoutAppModule: TdxLayoutControl
    Width = 1074
    Height = 502
    object pnlMain: TPanel [0]
      Left = 0
      Top = 0
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Color = 3355443
      TabOrder = 3
      object layoutBulletinBoard: TdxLayoutControl
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
          Top = 220
          Width = 94
          Height = 1
          Pen.Color = 6710886
        end
        object Shape1: TShape
          Left = 258
          Top = 78
          Width = 1
          Height = 432
          Pen.Color = 6710886
        end
        object Shape2: TShape
          Left = 91
          Top = 14
          Width = 1
          Height = 44
          Pen.Color = 6710886
        end
        object imgBulletinBoard_MemPic: TcxDBImage
          Left = 9
          Top = 104
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
          TabOrder = 8
        end
        object cboBulletinBoard_MessagesFrom: TcxComboBox
          Left = 184
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
            'My Friends & Their Friends')
          Properties.OnChange = cboBB_MessagesFromPropertiesChange
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
        object cboBulletinBoard_Date: TcxComboBox
          Left = 184
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
          Properties.OnChange = cboBB_MessagesFromPropertiesChange
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
        object lblBB_WAYLT: TcxLabel
          Left = 125
          Top = 149
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
          TabOrder = 11
          OnClick = lblBB_WAYLTClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblBB_Connections: TcxLabel
          Left = 125
          Top = 103
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
          TabOrder = 12
          OnClick = lblBB_ConnectionsClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblBulletinBoard_ExecuteFilter: TcxLabel
          Left = 12
          Top = 16
          Width = 70
          Height = 17
          Cursor = crHandPoint
          Caption = 'Execute Filter'
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
          Style.Color = 10526880
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 13
          OnClick = lblBulletinBoard_ExecuteFilterClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object lblBB_MusicLinks: TcxLabel
          Left = 125
          Top = 126
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
          TabOrder = 14
          OnClick = lblBB_MusicLinksClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblBB_StartConnection: TcxLabel
          Left = 125
          Top = 172
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
          TabOrder = 15
          OnClick = lblBB_StartConnectionClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object cboPageNav: TcxComboBox
          Left = 452
          Top = 110
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
          TabOrder = 10
        end
        object lblPageTotal: TcxLabel
          Left = 538
          Top = 111
          Width = 55
          Height = 17
          Caption = 'No Results'
          ParentColor = False
          ParentFont = False
          Style.Color = 3355443
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          TabOrder = 17
        end
        object lblFirst: TcxLabel
          Left = 273
          Top = 110
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
          TabOrder = 19
          OnClick = lblFirstClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblPrevious: TcxLabel
          Left = 304
          Top = 110
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
          TabOrder = 20
          OnClick = lblPreviousClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblNext: TcxLabel
          Left = 355
          Top = 110
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
          OnClick = lblNextClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblLast: TcxLabel
          Left = 388
          Top = 110
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
          TabOrder = 18
          OnClick = lblLastClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object vgridBulletinBoard_Left: TcxDBVerticalGrid
          Left = 8
          Top = 227
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
          TabOrder = 9
          DataController.DataSource = datMain.dsMems_MiniProfile
          object vgridBulletinBoard_LeftDBEditorRow1: TcxDBEditorRow
            Properties.Caption = 'Resident ID:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.EditProperties.Alignment.Horz = taLeftJustify
            Properties.DataBinding.FieldName = 'Name'
            Properties.Options.Editing = False
          end
          object vgridBulletinBoard_LeftDBEditorRow5: TcxDBEditorRow
            Properties.Caption = 'Group:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'mgroup'
            Properties.Options.Editing = False
          end
          object vgridBulletinBoard_LeftDBEditorRow7: TcxDBEditorRow
            Properties.Caption = 'Title:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'title'
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
          object vgridBulletinBoard_LeftDBEditorRow2: TcxDBEditorRow
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
          object vgridBulletinBoard_LeftDBEditorRow8: TcxDBEditorRow
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
          object vgridBulletinBoard_LeftDBEditorRow6: TcxDBEditorRow
            Properties.Caption = 'Schools:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
            Properties.EditProperties.BlobEditKind = bekMemo
            Properties.EditProperties.BlobPaintStyle = bpsText
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.MemoScrollBars = ssVertical
            Properties.DataBinding.FieldName = 'Schools'
          end
          object vgridBulletinBoard_LeftDBEditorRow9: TcxDBEditorRow
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
        object lblBB_OpenLink: TcxLabel
          Left = 125
          Top = 195
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
          TabOrder = 21
          OnClick = lblBB_OpenLinkClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblClear: TcxLabel
          Left = 19
          Top = 39
          Width = 56
          Height = 17
          Cursor = crHandPoint
          Caption = 'Clear Filter'
          ParentFont = False
          Properties.Transparent = True
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 22
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object edtBulletinBoard_PostedBy: TcxButtonEdit
          Left = 418
          Top = 39
          Width = 120
          Height = 19
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.MaxLength = 100
          Properties.OnButtonClick = edtBulletinBoard_PostedByPropertiesButtonClick
          Style.BorderColor = 6710886
          Style.BorderStyle = ebsSingle
          Style.Color = 10526880
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = btsHotFlat
          Style.ButtonTransparency = ebtHideUnselected
          TabOrder = 3
          OnKeyPress = edtBulletinBoard_PostedByKeyPress
        end
        object cxComboBox1: TcxComboBox
          Left = 418
          Top = 14
          Width = 120
          Height = 19
          ParentFont = False
          Properties.Alignment.Vert = taBottomJustify
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items.Strings = (
            'All Residents'
            'Featured Residents'
            'Administrators'
            'Moderators')
          Properties.OnChange = cboBB_MessagesFromPropertiesChange
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
        object cboMemberDirectory_State: TcxComboBox
          Left = 786
          Top = 14
          Width = 120
          Height = 19
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
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
          Properties.MaxLength = 255
          Properties.Sorted = True
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
        object cboMemberDirectory_Country: TcxComboBox
          Left = 786
          Top = 39
          Width = 120
          Height = 19
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items.Strings = (
            ''
            'U.S.A.'
            'Canada')
          Properties.MaxLength = 255
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
        object cboMemberDirectory_Gender: TcxComboBox
          Left = 609
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
        object cboMemberDirectory_AgeRange: TcxComboBox
          Left = 609
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
        object gridBBMessages: TcxGrid
          Left = 349
          Top = 142
          Width = 215
          Height = 448
          BorderStyle = cxcbsNone
          TabOrder = 26
          object gridviewBBMessages: TcxGridDBTableView
            OnMouseUp = GridMouseUp
            DataController.DataSource = datMain.dsMems_BB
            DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OnFocusedRecordChanged = gridviewMessagesFocusedRecordChanged
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
            Preview.Column = gridviewBBMessagesBBMessage
            Preview.Visible = True
            Styles.StyleSheet = datMain.cssTableView
            object gridviewBBMessagesBBTitle: TcxGridDBColumn
              Caption = 'Title'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 184
              DataBinding.FieldName = 'BBTitle'
            end
            object gridviewBBMessagesName: TcxGridDBColumn
              Caption = 'Resident ID'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 133
              DataBinding.FieldName = 'Name'
            end
            object gridviewBBMessagesGroup: TcxGridDBColumn
              Caption = 'Group'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 88
            end
            object gridviewBBMessagesBBDatePosted: TcxGridDBColumn
              Caption = 'Date'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 91
              DataBinding.FieldName = 'BBDatePosted'
            end
            object gridviewBBMessagesBBTimePosted: TcxGridDBColumn
              Caption = 'Time'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 87
              DataBinding.FieldName = 'BBTimePosted'
            end
            object gridviewBBMessagesBBMessage: TcxGridDBColumn
              Caption = 'Message'
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              DataBinding.FieldName = 'BBMessage'
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = gridviewBBMessages
          end
        end
        object cxLabel1: TcxLabel
          Left = 284
          Top = 165
          Width = 59
          Height = 17
          Cursor = crHandPoint
          Caption = 'Launch Link'
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
          TabOrder = 27
          OnClick = lblFirstClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblPost: TcxLabel
          Left = 273
          Top = 142
          Width = 70
          Height = 17
          Cursor = crHandPoint
          Caption = 'Post Message'
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
          TabOrder = 28
          OnClick = lblPostClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
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
              AlignHorz = ahClient
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
                LookAndFeel = datMain.layoutLookFeelMain_WebAlt
                ShowCaption = False
                ShowBorder = False
              end
              object layoutBulletinBoardGroup9: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object layoutBulletinBoardGroup8: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avCenter
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutItem1: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahCenter
                    Caption = 'cxLabel3'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Right = 3
                    ShowCaption = False
                    Control = lblBulletinBoard_ExecuteFilter
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutBulletinBoardItem18: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahCenter
                    Caption = 'cxLabel1'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Right = 3
                    ShowCaption = False
                    Control = lblClear
                    ControlOptions.ShowBorder = False
                  end
                end
                object layoutBulletinBoardItem6: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  CaptionOptions.AlignHorz = taRightJustify
                  Control = Shape2
                  ControlOptions.ShowBorder = False
                end
                object layoutBulletinBoardGroup2: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object layoutBulletinBoardItem2: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    Caption = 'Messages From:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 3
                    Control = cboBulletinBoard_MessagesFrom
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem10: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    Caption = 'Date:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 3
                    Control = cboBulletinBoard_Date
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
                object layoutBulletinBoardGroup7: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object layoutBulletinBoardGroup10: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object layoutBulletinBoardItem4: TdxLayoutItem
                      Caption = 'Group:'
                      CaptionOptions.AlignHorz = taRightJustify
                      Offsets.Left = 3
                      Control = cxComboBox1
                      ControlOptions.ShowBorder = False
                    end
                    object layoutBulletinBoardItem21: TdxLayoutItem
                      Caption = 'Resident ID:'
                      CaptionOptions.AlignHorz = taRightJustify
                      Offsets.Left = 3
                      Control = edtBulletinBoard_PostedBy
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object layoutBulletinBoardGroup11: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object layoutBulletinBoardGroup13: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object layoutBulletinBoardItem25: TdxLayoutItem
                        Caption = 'Gender:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Left = 3
                        Control = cboMemberDirectory_Gender
                        ControlOptions.ShowBorder = False
                      end
                      object layoutBulletinBoardItem26: TdxLayoutItem
                        Caption = 'Age Range:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Left = 3
                        Control = cboMemberDirectory_AgeRange
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object layoutBulletinBoardGroup14: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      ShowBorder = False
                      object layoutBulletinBoardItem22: TdxLayoutItem
                        Caption = 'State:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Left = 3
                        Control = cboMemberDirectory_State
                        ControlOptions.ShowBorder = False
                      end
                      object layoutBulletinBoardItem24: TdxLayoutItem
                        Caption = 'Country:'
                        CaptionOptions.AlignHorz = taRightJustify
                        Offsets.Left = 3
                        Control = cboMemberDirectory_Country
                        ControlOptions.ShowBorder = False
                      end
                    end
                  end
                end
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
            object layoutBulletinBoard_Member: TdxLayoutGroup
              AllowRemove = False
              Caption = 'Resident   '
              CaptionOptions.AlignHorz = taCenter
              LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
              object layoutBulletinBoardGroup5: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object layoutBulletinBoardItem19: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Control = imgBulletinBoard_MemPic
                  ControlOptions.AutoColor = True
                end
                object layoutBulletinBoardGroup3: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object layoutBulletinBoardItem14: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'cxLabel5'
                    ShowCaption = False
                    Control = lblBB_Connections
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutBulletinBoardItem3: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'cxLabel3'
                    ShowCaption = False
                    Control = lblBB_MusicLinks
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutBulletinBoardItem9: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    ShowCaption = False
                    Control = lblBB_WAYLT
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutBulletinBoardItem5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'cxLabel6'
                    ShowCaption = False
                    Control = lblBB_StartConnection
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutBulletinBoardItem12: TdxLayoutItem
                    Caption = 'cxLabel1'
                    ShowCaption = False
                    Control = lblBB_OpenLink
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object layoutBulletinBoardItem16: TdxLayoutItem
                Control = Shape3
                ControlOptions.ShowBorder = False
              end
              object layoutBulletinBoardItem20: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                ShowCaption = False
                Control = vgridBulletinBoard_Left
                ControlOptions.ShowBorder = False
              end
            end
            object layoutBulletinBoardItem1: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Control = Shape1
              ControlOptions.ShowBorder = False
            end
            object layoutBulletinBoard_Message: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'Messages'
              LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
              object layoutBulletinBoardGroup6: TdxLayoutGroup
                Caption = 'New Group'
                LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                ShowCaption = False
                LayoutDirection = ldHorizontal
                object layoutBulletinBoardItem10: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lblFirst
                  ControlOptions.ShowBorder = False
                end
                object layoutBulletinBoardItem11: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lblPrevious
                  ControlOptions.ShowBorder = False
                end
                object layoutBulletinBoardItem13: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lblNext
                  ControlOptions.ShowBorder = False
                end
                object layoutBulletinBoardItem17: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lblLast
                  ControlOptions.ShowBorder = False
                end
                object layoutBulletinBoardItem7: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'Page:'
                  Offsets.Left = 1
                  Control = cboPageNav
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object layoutBulletinBoardItem8: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avCenter
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lblPageTotal
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object layoutBulletinBoardGroup1: TdxLayoutGroup
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Offsets.Left = 4
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object layoutBulletinBoardGroup4: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object layoutBulletinBoardItem23: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahRight
                    ShowCaption = False
                    Control = lblPost
                    ControlOptions.ShowBorder = False
                  end
                  object layoutBulletinBoardItem15: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahRight
                    ShowCaption = False
                    Control = cxLabel1
                    ControlOptions.ShowBorder = False
                  end
                end
                object layoutBulletinBoardItem27: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  Control = gridBBMessages
                  ControlOptions.ShowBorder = False
                end
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
        Caption = 'Panel1'
        ShowCaption = False
        Control = pnlMain
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
  object imglstBB: TImageList
    Height = 50
    Width = 50
    Left = 936
    Top = 11
  end
  object barMain: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageListBkColor = clBlack
    LargeImages = datMain.imglstMain_24
    MenusShowRecentItemsFirst = False
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 970
    Top = 10
    DockControlHeights = (
      0
      0
      0
      0)
    object mnuConnections: TdxBarButton
      Caption = 'Resident Connections'
      Category = 0
      Hint = 'Resident Connections'
      Visible = ivAlways
      OnClick = mnuConnectionsClick
    end
    object mnuMusicLinks: TdxBarButton
      Caption = 'My Music Links'
      Category = 0
      Hint = 'My Music Links'
      Visible = ivAlways
    end
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
    object mnuForumProfile: TdxBarButton
      Caption = 'Forum Profile'
      Category = 0
      Hint = 'Forum Profile'
      Visible = ivAlways
    end
    object mnuForumPosts: TdxBarButton
      Caption = 'Forum Posts'
      Category = 0
      Hint = 'Forum Posts'
      Visible = ivAlways
      OnClick = mnuForumPostsClick
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
  end
  object popmnuOpenLink: TdxBarPopupMenu
    BarManager = barMain
    ItemLinks = <
      item
        Item = mnuSendPM
        Visible = True
      end
      item
        Item = mnuForumProfile
        Visible = True
      end
      item
        Item = mnuForumPosts
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
      end>
    UseOwnFont = False
    Left = 937
    Top = 41
  end
  object popmnuCardView: TdxBarPopupMenu
    BarManager = barMain
    ItemLinks = <
      item
        Item = mnuConnections
        Visible = True
      end
      item
        Item = mnuMusicLinks
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
        BeginGroup = True
        Item = mnuSendPM
        Visible = True
      end
      item
        Item = mnuForumProfile
        Visible = True
      end
      item
        Item = mnuForumPosts
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
      end>
    UseOwnFont = False
    Left = 969
    Top = 43
  end
end
