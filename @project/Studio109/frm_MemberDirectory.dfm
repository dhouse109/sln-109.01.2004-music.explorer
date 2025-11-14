inherited frmMemberDirectory: TfrmMemberDirectory
  Left = 251
  Top = 120
  ActiveControl = gridCommunity_MemberDirectory
  Caption = 'Member Directory'
  ClientWidth = 877
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited layoutAppModule: TdxLayoutControl
    Width = 877
    object pnlMain: TPanel [0]
      Left = 0
      Top = 0
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Color = 3355443
      TabOrder = 3
      object layoutMemberDirectory: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 185
        Height = 41
        Align = alClient
        ParentBackground = True
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = datMain.layoutLookFeelMain_WebAlt6
        object Shape1: TShape
          Left = 258
          Top = 103
          Width = 1
          Height = 446
          Pen.Color = 6710886
        end
        object Shape2: TShape
          Left = 105
          Top = 14
          Width = 1
          Height = 62
          Pen.Color = 6710886
        end
        object Shape4: TShape
          Left = 8
          Top = 245
          Width = 240
          Height = 1
          Pen.Color = 6710886
        end
        object cboMemberDirectory_State: TcxComboBox
          Left = 391
          Top = 64
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
          TabOrder = 5
          OnKeyPress = edtMemberDirectory_NameKeyPress
        end
        object cboMemberDirectory_AgeRange: TcxComboBox
          Left = 391
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
          TabOrder = 4
          OnKeyPress = edtMemberDirectory_NameKeyPress
        end
        object cboMemberDirectory_Gender: TcxComboBox
          Left = 391
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
          TabOrder = 3
          OnKeyPress = edtMemberDirectory_NameKeyPress
        end
        object edtMemberDirectory_School: TcxTextEdit
          Left = 613
          Top = 39
          Width = 120
          Height = 19
          ParentFont = False
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
          TabOrder = 7
          OnKeyPress = edtMemberDirectory_NameKeyPress
        end
        object lblMemberDirectory_StartConnection: TcxLabel
          Left = 125
          Top = 197
          Width = 95
          Height = 17
          Cursor = crHandPoint
          Hint = 'Start a connection with this member'
          Caption = 'Start A Connection'
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taLeftJustify
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
          OnClick = lblMemberDirectory_StartConnectionClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblMemberDirectory_Connections: TcxLabel
          Left = 125
          Top = 128
          Width = 108
          Height = 17
          Cursor = crHandPoint
          Hint = 'View this member'#39's connections'
          Caption = 'Resident Connections'
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taLeftJustify
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
          OnClick = lblMemberDirectory_ConnectionsClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object edtMemberDirectory_Name: TcxTextEdit
          Left = 190
          Top = 39
          Width = 120
          Height = 19
          ParentFont = False
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
          TabOrder = 1
          OnKeyPress = edtMemberDirectory_NameKeyPress
        end
        object edtMemberDirectory_EMail: TcxTextEdit
          Left = 190
          Top = 64
          Width = 120
          Height = 19
          ParentFont = False
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
          TabOrder = 2
          OnKeyPress = edtMemberDirectory_NameKeyPress
        end
        object lblMemberDirectory_StartSearch: TcxLabel
          Left = 4
          Top = 28
          Width = 92
          Height = 17
          Cursor = crHandPoint
          AutoSize = False
          Caption = 'Start Search'
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
          TabOrder = 14
          OnClick = lblMemberDirectory_StartSearchClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object lblMemberDirectory_ClearSearch: TcxLabel
          Left = 4
          Top = 51
          Width = 92
          Height = 17
          Cursor = crHandPoint
          AutoSize = False
          Caption = 'Clear Search'
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
          TabOrder = 15
          OnClick = lblMemberDirectory_ClearSearchClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object gridCommunity_MemberDirectory: TcxGrid
          Left = 275
          Top = 142
          Width = 749
          Height = 108
          Cursor = crHandPoint
          BorderStyle = cxcbsNone
          TabOrder = 16
          object gridCommunity_MemberDirectoryDBCardView1: TcxGridDBCardView
            OnMouseUp = GridMouseUp
            DataController.DataSource = datMain.dsMems
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OnFocusedRecordChanged = cxGridDBTableView1FocusedRecordChanged
            LayoutDirection = ldVertical
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.CellEndEllipsis = True
            OptionsView.CardBorderWidth = 1
            OptionsView.CardWidth = 175
            OptionsView.CellAutoHeight = True
            OptionsView.RowCaptionAutoHeight = True
            OptionsView.RowCaptionEndEllipsis = True
            OptionsView.SeparatorColor = 11711154
            OptionsView.SeparatorWidth = 0
            Styles.Background = datMain.styleVertGrid_Content
            Styles.StyleSheet = datMain.cssCardView
            object gridCommunity_MemberDirectoryDBCardView1Name: TcxGridDBCardViewRow
              Tag = 175758364
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.MaxLength = 0
              CaptionAlignmentHorz = taCenter
              CaptionAlignmentVert = vaCenter
              Kind = rkCaption
              Options.Focusing = False
              Options.ShowCaption = False
              DataBinding.FieldName = 'Name'
              IsCaptionAssigned = True
            end
            object gridCommunity_MemberDirectoryDBCardView1Mem_ID: TcxGridDBCardViewRow
              Tag = 175757096
              PropertiesClassName = 'TcxImageProperties'
              CaptionAlignmentHorz = taRightJustify
              CaptionAlignmentVert = vaCenter
              Options.Focusing = False
              Options.ShowEditButtons = isebNever
              Options.ShowCaption = False
              DataBinding.FieldName = 'MemPic'
              IsCaptionAssigned = True
            end
            object gridCommunity_MemberDirectoryDBCardView1Group: TcxGridDBCardViewRow
              Tag = 156119008
              Caption = 'Group'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.MaxLength = 0
              CaptionAlignmentHorz = taRightJustify
              CaptionAlignmentVert = vaCenter
              Options.Focusing = False
              DataBinding.FieldName = 'mgroup'
            end
            object gridCommunity_MemberDirectoryDBCardView1Nickname: TcxGridDBCardViewRow
              Tag = 175777772
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.MaxLength = 0
              CaptionAlignmentHorz = taRightJustify
              CaptionAlignmentVert = vaCenter
              Options.Focusing = False
              DataBinding.FieldName = 'Nickname'
            end
            object gridCommunity_MemberDirectoryDBCardView1Gender: TcxGridDBCardViewRow
              Tag = 175795260
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.MaxLength = 0
              CaptionAlignmentHorz = taRightJustify
              CaptionAlignmentVert = vaCenter
              Options.Focusing = False
              DataBinding.FieldName = 'Gender'
            end
            object gridCommunity_MemberDirectoryDBCardView1Location: TcxGridDBCardViewRow
              Tag = 175785808
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.MaxLength = 0
              CaptionAlignmentHorz = taRightJustify
              CaptionAlignmentVert = vaCenter
              Options.Focusing = False
              DataBinding.FieldName = 'Location'
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = gridCommunity_MemberDirectoryDBCardView1
          end
        end
        object imgCommunity_MemberDirectory: TcxDBImage
          Left = 9
          Top = 129
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
          TabOrder = 9
        end
        object vgridMemberDirectory_Left: TcxDBVerticalGrid
          Left = 8
          Top = 252
          Width = 240
          Height = 308
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
          TabOrder = 10
          DataController.DataSource = datMain.dsMems_MiniProfile
          object vgridMemberDirectory_LeftDBEditorRow1: TcxDBEditorRow
            Properties.Caption = 'Resident ID:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.EditProperties.Alignment.Horz = taLeftJustify
            Properties.DataBinding.FieldName = 'Name'
            Properties.Options.Editing = False
          end
          object vgridMemberDirectory_LeftDBEditorRow3: TcxDBEditorRow
            Properties.Caption = 'Group:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'mgroup'
            Properties.Options.Editing = False
          end
          object vgridMemberDirectory_LeftDBEditorRow10: TcxDBEditorRow
            Properties.Caption = 'Title:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'title'
            Properties.Options.Editing = False
          end
          object cxDBEditorRow17: TcxDBEditorRow
            Properties.Caption = 'Nickname:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'Nickname'
            Properties.Options.Editing = False
          end
          object cxDBEditorRow19: TcxDBEditorRow
            Properties.Caption = 'Gender:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'Gender'
            Properties.Options.Editing = False
          end
          object vgridMemberDirectory_LeftDBEditorRow2: TcxDBEditorRow
            Properties.Caption = 'Age:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'Age'
            Properties.Options.Editing = False
          end
          object cxDBEditorRow20: TcxDBEditorRow
            Properties.Caption = 'Location:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'Location'
            Properties.Options.Editing = False
          end
          object cxDBEditorRow21: TcxDBEditorRow
            Properties.Caption = 'Hometown:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'Hometown'
            Properties.Options.Editing = False
          end
          object vgridMemberDirectory_LeftDBEditorRow8: TcxDBEditorRow
            Properties.Caption = 'Occupation:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'Occupation'
            Properties.Options.Editing = False
          end
          object cxDBEditorRow22: TcxDBEditorRow
            Properties.Caption = 'About Me:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
            Properties.EditProperties.BlobEditKind = bekMemo
            Properties.EditProperties.BlobPaintStyle = bpsText
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.MemoScrollBars = ssVertical
            Properties.DataBinding.FieldName = 'AboutMe'
          end
          object vgridMemberDirectory_LeftDBEditorRow6: TcxDBEditorRow
            Properties.Caption = 'Schools:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
            Properties.EditProperties.BlobEditKind = bekMemo
            Properties.EditProperties.BlobPaintStyle = bpsText
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.MemoScrollBars = ssVertical
            Properties.DataBinding.FieldName = 'Schools'
          end
          object vgridMemberDirectory_LeftDBEditorRow9: TcxDBEditorRow
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
        object cboMemberDirectory_Country: TcxComboBox
          Left = 613
          Top = 14
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
          TabOrder = 6
          OnKeyPress = edtMemberDirectory_NameKeyPress
        end
        object lblMemberDirectory_WAYLT: TcxLabel
          Left = 125
          Top = 174
          Width = 84
          Height = 17
          Cursor = crHandPoint
          Hint = 'View what this member is playing'
          Caption = 'What I'#39'm Playing'
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
          TabOrder = 17
          OnClick = lblMemberDirectory_WAYLTClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object cboPageNav: TcxComboBox
          Left = 458
          Top = 110
          Width = 80
          Height = 19
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
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
          Style.Shadow = False
          Style.TransparentBorder = False
          Style.ButtonStyle = btsHotFlat
          Style.ButtonTransparency = ebtHideUnselected
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 11
        end
        object lblFirst: TcxLabel
          Left = 279
          Top = 110
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
          TabOrder = 20
          OnClick = lblFirstClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblNext: TcxLabel
          Left = 361
          Top = 110
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
          TabOrder = 22
          OnClick = lblNextClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblPrevious: TcxLabel
          Left = 310
          Top = 110
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
          TabOrder = 18
          OnClick = lblPreviousClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblLast: TcxLabel
          Left = 394
          Top = 110
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
          TabOrder = 19
          OnClick = lblLastClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblPageTotal: TcxLabel
          Left = 544
          Top = 110
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
          TabOrder = 21
        end
        object lblMemberDirectory_MusicLinks: TcxLabel
          Left = 125
          Top = 151
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
          TabOrder = 23
          OnClick = lblMemberDirectory_MusicLinksClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblMemberDirectory_OpenLink: TcxLabel
          Left = 125
          Top = 220
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
          TabOrder = 24
          OnClick = lblMemberDirectory_OpenLinkClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object edtMemberDirectory_FavArtists: TcxTextEdit
          Left = 613
          Top = 64
          Width = 120
          Height = 19
          ParentFont = False
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
          TabOrder = 8
          OnKeyPress = edtMemberDirectory_NameKeyPress
        end
        object cboMemberDirectory_Group: TcxComboBox
          Left = 190
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
          Text = 'All Residents'
        end
        object dxLayoutGroup2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutGroup4: TdxLayoutGroup
            Caption = 'Search'
            LookAndFeel = datMain.layoutLookFeelMain_WebAlt
            Offsets.Top = 7
            ShowCaption = False
            ShowBorder = False
            object layoutMemberDirectoryGroup1: TdxLayoutGroup
              LookAndFeel = datMain.layoutLookFeelMain_WebAlt6
              ShowCaption = False
              LayoutDirection = ldHorizontal
              object dxLayoutGroup3: TdxLayoutGroup
                AutoAligns = []
                AlignVert = avClient
                Caption = 'New Group'
                ShowCaption = False
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object layoutMemberDirectoryGroup5: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avCenter
                  Caption = 'Actions   '
                  CaptionOptions.AlignHorz = taCenter
                  ShowCaption = False
                  ShowBorder = False
                  object layoutMemberDirectoryItem4: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahCenter
                    Caption = 'cxLabel1'
                    Offsets.Right = 3
                    ShowCaption = False
                    Control = lblMemberDirectory_StartSearch
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutMemberDirectoryItem5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahCenter
                    Caption = 'cxLabel2'
                    Offsets.Right = 3
                    ShowCaption = False
                    Control = lblMemberDirectory_ClearSearch
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
                object layoutMemberDirectoryGroup10: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object layoutMemberDirectoryItem1: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avClient
                    Control = Shape2
                    ControlOptions.ShowBorder = False
                  end
                  object layoutMemberDirectoryGroup7: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object layoutMemberDirectoryItem19: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Group:'
                      CaptionOptions.AlignHorz = taRightJustify
                      Offsets.Left = 3
                      Control = cboMemberDirectory_Group
                      ControlOptions.ShowBorder = False
                    end
                    object layoutMemberDirectoryItem11: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Resident ID:'
                      CaptionOptions.AlignHorz = taRightJustify
                      Offsets.Left = 3
                      Control = edtMemberDirectory_Name
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                    object layoutMemberDirectoryItem12: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Email Address:'
                      CaptionOptions.AlignHorz = taRightJustify
                      Offsets.Left = 3
                      Control = edtMemberDirectory_EMail
                      ControlOptions.AutoColor = True
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
              end
              object layoutMemberDirectoryGroup2: TdxLayoutGroup
                AutoAligns = [aaVertical]
                Caption = 'New Group'
                Offsets.Left = 10
                ShowCaption = False
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object layoutMemberDirectoryGroup6: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object layoutMemberDirectoryItem7: TdxLayoutItem
                    Caption = 'Gender:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 3
                    Control = cboMemberDirectory_Gender
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem4: TdxLayoutItem
                    Caption = 'Age Range:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 3
                    Control = cboMemberDirectory_AgeRange
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutMemberDirectoryItem2: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    Caption = 'State:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 3
                    Control = cboMemberDirectory_State
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
                object layoutMemberDirectoryGroup11: TdxLayoutGroup
                  Offsets.Left = 10
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object layoutMemberDirectoryItem10: TdxLayoutItem
                    Caption = 'Country:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 3
                    Control = cboMemberDirectory_Country
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutMemberDirectoryItem8: TdxLayoutItem
                    Caption = 'School:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 3
                    Control = edtMemberDirectory_School
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutMemberDirectoryItem3: TdxLayoutItem
                    Caption = 'Favorite Artists:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 3
                    Control = edtMemberDirectory_FavArtists
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
              end
            end
          end
          object dxLayoutGroup7: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'Members'
            LookAndFeel = datMain.layoutLookFeelMain_Web
            ShowCaption = False
            LayoutDirection = ldHorizontal
            object layoutMemberDirectory_Member: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              AllowRemove = False
              Caption = 'Resident   '
              CaptionOptions.AlignHorz = taCenter
              LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
              object layoutMemberDirectoryGroup3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object layoutMemberDirectoryItem17: TdxLayoutItem
                  AutoAligns = []
                  Caption = 'imgCommunity_MemberDirectory'
                  ShowCaption = False
                  Control = imgCommunity_MemberDirectory
                  ControlOptions.AutoColor = True
                end
                object layoutMemberDirectoryGroup4: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object layoutMemberDirectoryItem15: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'cxLabel6'
                    ShowCaption = False
                    Control = lblMemberDirectory_Connections
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutMemberDirectoryItem28: TdxLayoutItem
                    Caption = 'cxLabel1'
                    ShowCaption = False
                    Control = lblMemberDirectory_MusicLinks
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutMemberDirectoryItem16: TdxLayoutItem
                    Caption = 'cxLabel1'
                    ShowCaption = False
                    Control = lblMemberDirectory_WAYLT
                    ControlOptions.ShowBorder = False
                  end
                  object layoutMemberDirectoryItem9: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    ShowCaption = False
                    Control = lblMemberDirectory_StartConnection
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object layoutMemberDirectoryItem20: TdxLayoutItem
                    Caption = 'cxLabel1'
                    ShowCaption = False
                    Control = lblMemberDirectory_OpenLink
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object layoutMemberDirectoryItem14: TdxLayoutItem
                Control = Shape4
                ControlOptions.ShowBorder = False
              end
              object layoutMemberDirectoryItem18: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                Caption = 'vgridMemberDirectory_Left'
                ShowCaption = False
                Control = vgridMemberDirectory_Left
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
            end
            object layoutMemberDirectoryItem6: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Control = Shape1
              ControlOptions.ShowBorder = False
            end
            object layoutMemberDirectoryGroup12: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Offsets.Left = 10
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object layoutMemberDirectoryGroup9: TdxLayoutGroup
                Caption = 'New Group'
                LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                ShowCaption = False
                LayoutDirection = ldHorizontal
                object layoutMemberDirectoryItem22: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'cxLabel1'
                  ShowCaption = False
                  Control = lblFirst
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object layoutMemberDirectoryItem24: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'cxLabel3'
                  ShowCaption = False
                  Control = lblPrevious
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object layoutMemberDirectoryItem23: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'cxLabel2'
                  ShowCaption = False
                  Control = lblNext
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object layoutMemberDirectoryItem25: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'cxLabel4'
                  ShowCaption = False
                  Control = lblLast
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object layoutMemberDirectory_Page: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'Page:'
                  Offsets.Left = 1
                  Control = cboPageNav
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object layoutMemberDirectoryItem26: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  Caption = 'cxLabel1'
                  Offsets.Right = 3
                  ShowCaption = False
                  Control = lblPageTotal
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutItem7: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                Caption = 'gridMemberDirectory'
                ShowCaption = False
                Control = gridCommunity_MemberDirectory
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
        Caption = 'Panel1'
        ShowCaption = False
        Control = pnlMain
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
  object imglstMemberDirectory: TImageList
    Height = 50
    Width = 50
    Left = 52
    Top = 136
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
    Left = 52
    Top = 166
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
      OnClick = mnuForumProfileClick
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
    Left = 53
    Top = 194
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
    Left = 83
    Top = 197
  end
end
