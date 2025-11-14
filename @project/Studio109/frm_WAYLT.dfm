inherited frmWAYLT: TfrmWAYLT
  Left = 93
  Top = 116
  Caption = 'WIP Boards'
  ClientWidth = 1017
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited layoutAppModule: TdxLayoutControl
    Width = 1017
    object pnlMain: TPanel [0]
      Left = 0
      Top = 0
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Color = 3355443
      TabOrder = 3
      object layoutWAYLT: TdxLayoutControl
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
          Left = 207
          Top = 259
          Width = 94
          Height = 1
          Pen.Color = 6710886
        end
        object Shape1: TShape
          Left = 457
          Top = 117
          Width = 1
          Height = 432
          Pen.Color = 6710886
        end
        object Shape2: TShape
          Left = 113
          Top = 14
          Width = 1
          Height = 44
          Pen.Color = 6710886
        end
        object Shape6: TShape
          Left = 196
          Top = 117
          Width = 1
          Height = 449
          Pen.Color = 6710886
        end
        object imgWAYLT_MemPic: TcxDBImage
          Left = 208
          Top = 143
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
        object gridWAYLT: TcxGrid
          Left = 8
          Top = 142
          Width = 178
          Height = 449
          Cursor = crHandPoint
          BorderStyle = cxcbsNone
          TabOrder = 12
          object gridWAYLTDBCardView1: TcxGridDBCardView
            OnMouseUp = GridMouseUp
            DataController.DataSource = datMain.dsWAYLT
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.PriorPage.Visible = True
            NavigatorButtons.NextPage.Visible = True
            NavigatorButtons.Insert.Visible = False
            NavigatorButtons.Delete.Visible = False
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.Post.Visible = False
            NavigatorButtons.Cancel.Visible = False
            NavigatorButtons.Refresh.Enabled = False
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            OnFocusedRecordChanged = gridviewMessagesFocusedRecordChanged
            LayoutDirection = ldVertical
            OptionsBehavior.CellHints = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.CellEndEllipsis = True
            OptionsView.CardBorderWidth = 1
            OptionsView.CardWidth = 150
            OptionsView.CellAutoHeight = True
            OptionsView.RowCaptionAutoHeight = True
            OptionsView.RowCaptionEndEllipsis = True
            OptionsView.SeparatorColor = 11711154
            OptionsView.SeparatorWidth = 0
            Styles.StyleSheet = datMain.cssCardView
            object gridWAYLTDBCardView1Title: TcxGridDBCardViewRow
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taRightJustify
              CaptionAlignmentHorz = taRightJustify
              CaptionAlignmentVert = vaCenter
              Kind = rkCaption
              Options.Editing = False
              Options.Focusing = False
              Options.ShowCaption = False
              DataBinding.FieldName = 'AVTitle'
              IsCaptionAssigned = True
            end
            object gridWAYLTDBCardView1Mem_ID: TcxGridDBCardViewRow
              PropertiesClassName = 'TcxImageProperties'
              CaptionAlignmentHorz = taRightJustify
              CaptionAlignmentVert = vaCenter
              Options.Editing = False
              Options.Focusing = False
              Options.ShowCaption = False
              DataBinding.FieldName = 'MemPic'
              IsCaptionAssigned = True
            end
            object gridWAYLTDBCardView1Name: TcxGridDBCardViewRow
              Caption = 'Resident ID'
              PropertiesClassName = 'TcxTextEditProperties'
              CaptionAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Focusing = False
              DataBinding.FieldName = 'Name'
            end
            object gridWAYLTDBCardView1Group: TcxGridDBCardViewRow
              Caption = 'Group'
              PropertiesClassName = 'TcxTextEditProperties'
              CaptionAlignmentHorz = taRightJustify
              Options.Editing = False
              Options.Focusing = False
            end
            object gridWAYLTDBCardView1DatePosted: TcxGridDBCardViewRow
              Caption = 'Date'
              PropertiesClassName = 'TcxDateEditProperties'
              CaptionAlignmentHorz = taRightJustify
              CaptionAlignmentVert = vaCenter
              Options.Editing = False
              Options.Focusing = False
              DataBinding.FieldName = 'DatePosted'
            end
            object gridWAYLTDBCardView1TimePosted: TcxGridDBCardViewRow
              Caption = 'Time'
              PropertiesClassName = 'TcxTimeEditProperties'
              CaptionAlignmentHorz = taRightJustify
              CaptionAlignmentVert = vaCenter
              Options.Editing = False
              Options.Focusing = False
              DataBinding.FieldName = 'TimePosted'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = gridWAYLTDBCardView1
          end
        end
        object cboWAYLT_MessagesFrom: TcxComboBox
          Left = 185
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
          Properties.OnChange = cboWAYLT_MessagesFromPropertiesChange
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
        object cboWAYLT_Date: TcxComboBox
          Left = 185
          Top = 39
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
          Properties.OnChange = cboWAYLT_MessagesFromPropertiesChange
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
        object lblWAYLT: TcxLabel
          Left = 324
          Top = 188
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
          TabOrder = 13
          OnClick = lblWAYLTClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblConnections: TcxLabel
          Left = 324
          Top = 142
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
          TabOrder = 14
          OnClick = lblConnectionsClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblWAYLT_ExecuteFilter: TcxLabel
          Left = 12
          Top = 39
          Width = 92
          Height = 17
          Cursor = crHandPoint
          AutoSize = False
          Caption = 'Refresh Posts'
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
          OnClick = lblWAYLT_ExecuteFilterClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object lblMusicLinks: TcxLabel
          Left = 324
          Top = 165
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
          TabOrder = 16
          OnClick = lblMusicLinksClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblStartConnection: TcxLabel
          Left = 324
          Top = 211
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
          TabOrder = 17
          OnClick = lblStartConnectionClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object cboPageNav: TcxComboBox
          Left = 187
          Top = 85
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
          TabOrder = 8
        end
        object lblPageTotal: TcxLabel
          Left = 273
          Top = 86
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
          TabOrder = 19
        end
        object lblFirst: TcxLabel
          Left = 8
          Top = 85
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
          TabOrder = 21
          OnClick = lblFirstClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblPrevious: TcxLabel
          Left = 39
          Top = 85
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
          TabOrder = 22
          OnClick = lblPreviousClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblNext: TcxLabel
          Left = 90
          Top = 85
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
          TabOrder = 18
          OnClick = lblNextClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object lblLast: TcxLabel
          Left = 123
          Top = 85
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
          TabOrder = 20
          OnClick = lblLastClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object vgridWAYLT_Left: TcxDBVerticalGrid
          Left = 207
          Top = 266
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
          TabOrder = 10
          DataController.DataSource = datMain.dsMems_MiniProfile
          object vgridWAYLT_LeftDBEditorRow1: TcxDBEditorRow
            Properties.Caption = 'Resident ID:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.EditProperties.Alignment.Horz = taLeftJustify
            Properties.DataBinding.FieldName = 'Name'
            Properties.Options.Editing = False
          end
          object vgridWAYLT_LeftDBEditorRow5: TcxDBEditorRow
            Properties.Caption = 'Group:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.Options.Editing = False
          end
          object vgridWAYLT_LeftDBEditorRow7: TcxDBEditorRow
            Properties.Caption = 'Title:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
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
          object vgridWAYLT_LeftDBEditorRow2: TcxDBEditorRow
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
          object vgridWAYLT_LeftDBEditorRow8: TcxDBEditorRow
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
          object vgridWAYLT_LeftDBEditorRow6: TcxDBEditorRow
            Properties.Caption = 'Schools:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
            Properties.EditProperties.BlobEditKind = bekMemo
            Properties.EditProperties.BlobPaintStyle = bpsText
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.MemoScrollBars = ssVertical
            Properties.DataBinding.FieldName = 'Schools'
          end
          object vgridWAYLT_LeftDBEditorRow9: TcxDBEditorRow
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
        object lblOpenLink: TcxLabel
          Left = 324
          Top = 234
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
          TabOrder = 23
          OnClick = lblOpenLinkClick
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object vgridWAYLT: TcxDBVerticalGrid
          Left = 468
          Top = 181
          Width = 593
          Height = 307
          BorderStyle = cxcbsNone
          Styles.Background = datMain.styleVertGrid_Content
          Styles.Content = datMain.styleVertGrid_Content
          Styles.Inactive = datMain.styleVertGrid_Header2
          Styles.Selection = datMain.styleVertGrid_Header2
          Styles.StyleSheet = datMain.cssVertGrid
          OptionsView.CellAutoHeight = True
          OptionsView.CellEndEllipsis = True
          OptionsView.GridLineColor = 3355443
          OptionsView.RowHeaderMinWidth = 85
          OptionsView.RowHeaderWidth = 85
          OptionsBehavior.HeaderSizing = False
          OptionsBehavior.RowTracking = False
          OptionsBehavior.AllowChangeRecord = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          TabOrder = 11
          DataController.DataSource = datMain.dsWAYLT
          object vgridWAYLTDBEditorRow5: TcxDBEditorRow
            Properties.Caption = 'Date:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxDateEditProperties'
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.SaveTime = False
            Properties.EditProperties.ShowTime = False
            Properties.DataBinding.FieldName = 'DatePosted'
            Properties.Options.Editing = False
          end
          object vgridWAYLTDBEditorRow6: TcxDBEditorRow
            Properties.Caption = 'Time:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTimeEditProperties'
            Properties.EditProperties.ImmediatePost = True
            Properties.DataBinding.FieldName = 'TimePosted'
            Properties.Options.Editing = False
          end
          object vgridWAYLT_Title: TcxDBEditorRow
            Properties.Caption = 'Title:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'AVTitle'
            Properties.Options.Editing = False
          end
          object vgridWAYLT_Artist: TcxDBEditorRow
            Properties.Caption = 'Artist:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'AVArtist'
            Properties.Options.Editing = False
          end
          object vgridWAYLT_Album: TcxDBEditorRow
            Properties.Caption = 'Album:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'AVAlbum'
            Properties.Options.Editing = False
          end
          object vgridWAYLTDBEditorRow1: TcxDBEditorRow
            Properties.Caption = 'Genre:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'AVGenre'
            Properties.Options.Editing = False
          end
          object vgridWAYLTDBEditorRow2: TcxDBEditorRow
            Properties.Caption = 'Length:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.DataBinding.FieldName = 'AVLength'
            Properties.Options.Editing = False
          end
          object cxDBEditorRow8: TcxDBEditorRow
            Properties.Caption = 'Message:'
            Properties.HeaderAlignmentHorz = taRightJustify
            Properties.EditPropertiesClassName = 'TcxMemoProperties'
            Properties.DataBinding.FieldName = 'Message'
            Properties.Options.Editing = False
          end
        end
        object lblPost: TcxLabel
          Left = 12
          Top = 16
          Width = 92
          Height = 17
          Cursor = crHandPoint
          Hint = 'Post What I'#39'm Playing'
          AutoSize = False
          Caption = 'Post WIP'
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taCenter
          Properties.Transparent = True
          ShowHint = True
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.HotTrack = False
          TabOrder = 24
          OnClick = lblPostClick
          OnMouseEnter = cxLabelMouseEnter
          OnMouseLeave = cxLabelMouseLeave
        end
        object cboGenre: TcxComboBox
          Left = 392
          Top = 39
          Width = 120
          Height = 19
          ParentFont = False
          Properties.Alignment.Vert = taBottomJustify
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
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
          OnKeyPress = edtWAYLT_PostedByKeyPress
        end
        object cxLabel1: TcxLabel
          Left = 474
          Top = 149
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
          TabOrder = 25
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object cxLabel2: TcxLabel
          Left = 600
          Top = 149
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
          TabOrder = 26
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object cxLabel3: TcxLabel
          Left = 680
          Top = 149
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
          TabOrder = 27
          OnMouseEnter = cxLabelMouseEnterWhite
          OnMouseLeave = cxLabelMouseLeaveWhite
        end
        object cxComboBox1: TcxComboBox
          Left = 392
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
          OnKeyPress = edtWAYLT_PostedByKeyPress
        end
        object edtWAYLT_PostedBy: TcxComboBox
          Left = 583
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
        object cboMemberDirectory_Gender: TcxComboBox
          Left = 583
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
        object cboMemberDirectory_State: TcxComboBox
          Left = 760
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
          Left = 760
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
              object layoutWAYLTGroup9: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object layoutWAYLTGroup7: TdxLayoutGroup
                  AutoAligns = [aaHorizontal]
                  AlignVert = avCenter
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object layoutWAYLTItem18: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahCenter
                    Caption = 'cxLabel1'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Right = 3
                    ShowCaption = False
                    Control = lblPost
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem1: TdxLayoutItem
                    AutoAligns = []
                    AlignHorz = ahCenter
                    Caption = 'cxLabel3'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Right = 3
                    ShowCaption = False
                    Control = lblWAYLT_ExecuteFilter
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
                object layoutWAYLTItem6: TdxLayoutItem
                  AutoAligns = [aaHorizontal]
                  AlignVert = avClient
                  CaptionOptions.AlignHorz = taRightJustify
                  Control = Shape2
                  ControlOptions.ShowBorder = False
                end
                object layoutWAYLTGroup4: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object layoutWAYLTItem2: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    Caption = 'Posts From:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 3
                    Control = cboWAYLT_MessagesFrom
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem10: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    Caption = 'Date:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 3
                    Control = cboWAYLT_Date
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
                object layoutWAYLTGroup11: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object layoutWAYLTItem26: TdxLayoutItem
                    Caption = 'Group:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 3
                    Control = cxComboBox1
                    ControlOptions.ShowBorder = False
                  end
                  object layoutWAYLTItem21: TdxLayoutItem
                    Caption = 'Genre:'
                    CaptionOptions.AlignHorz = taRightJustify
                    Offsets.Left = 3
                    Control = cboGenre
                    ControlOptions.AutoColor = True
                    ControlOptions.ShowBorder = False
                  end
                end
                object layoutWAYLTGroup10: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object layoutWAYLTGroup12: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object layoutWAYLTItem4: TdxLayoutItem
                      Caption = 'Gender:'
                      CaptionOptions.AlignHorz = taRightJustify
                      Offsets.Left = 3
                      Control = cboMemberDirectory_Gender
                      ControlOptions.ShowBorder = False
                    end
                    object layoutWAYLTItem28: TdxLayoutItem
                      Caption = 'Age Range:'
                      CaptionOptions.AlignHorz = taRightJustify
                      Offsets.Left = 3
                      Control = edtWAYLT_PostedBy
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object layoutWAYLTGroup13: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object layoutWAYLTItem27: TdxLayoutItem
                      Caption = 'State:'
                      CaptionOptions.AlignHorz = taRightJustify
                      Offsets.Left = 3
                      Control = cboMemberDirectory_State
                      ControlOptions.ShowBorder = False
                    end
                    object layoutWAYLTItem29: TdxLayoutItem
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
          object dxLayoutGroup9: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'Bulletin Board'
            LookAndFeel = datMain.layoutLookFeelMain_Web
            ShowCaption = False
            object layoutWAYLTGroup6: TdxLayoutGroup
              LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
              ShowCaption = False
              LayoutDirection = ldHorizontal
              object layoutWAYLTItem10: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                Caption = 'New Item'
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
                ShowCaption = False
                Control = lblLast
                ControlOptions.ShowBorder = False
              end
              object layoutWAYLTItem7: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                Caption = 'Page:'
                Offsets.Left = 1
                Control = cboPageNav
                ControlOptions.AutoColor = True
                ControlOptions.ShowBorder = False
              end
              object layoutWAYLTItem8: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avCenter
                Caption = 'New Item'
                Offsets.Right = 3
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
              object layoutWAYLTGroup8: TdxLayoutGroup
                Caption = 'Posts'
                LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                object dxLayoutItem13: TdxLayoutItem
                  AutoAligns = []
                  AlignVert = avClient
                  ShowCaption = False
                  Control = gridWAYLT
                  ControlOptions.ShowBorder = False
                end
              end
              object layoutWAYLTItem15: TdxLayoutItem
                AutoAligns = []
                AlignVert = avClient
                Control = Shape6
                ControlOptions.ShowBorder = False
              end
              object layoutWAYLT_Member: TdxLayoutGroup
                AllowRemove = False
                Caption = 'Resident ID   '
                CaptionOptions.AlignHorz = taCenter
                LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
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
                      Control = lblOpenLink
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
                  Control = vgridWAYLT_Left
                  ControlOptions.ShowBorder = False
                end
              end
              object layoutWAYLTItem1: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Control = Shape1
                ControlOptions.ShowBorder = False
              end
              object layoutWAYLT_Message: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'What I'#39'm Playing'
                LookAndFeel = datMain.layoutLookFeelMain_WebAlt2
                object layoutWAYLTGroup2: TdxLayoutGroup
                  LookAndFeel = datMain.layoutLookFeelMain_Web
                  ShowCaption = False
                  LayoutDirection = ldHorizontal
                  object layoutWAYLTItem22: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avCenter
                    Offsets.Bottom = 2
                    Offsets.Left = 2
                    Offsets.Right = 3
                    ShowCaption = False
                    Control = cxLabel1
                    ControlOptions.ShowBorder = False
                  end
                  object layoutWAYLTItem24: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avCenter
                    Offsets.Bottom = 2
                    Offsets.Right = 3
                    ShowCaption = False
                    Control = cxLabel2
                    ControlOptions.ShowBorder = False
                  end
                  object layoutWAYLTItem25: TdxLayoutItem
                    AutoAligns = [aaHorizontal]
                    AlignVert = avCenter
                    Offsets.Bottom = 2
                    ShowCaption = False
                    Control = cxLabel3
                    ControlOptions.ShowBorder = False
                  end
                end
                object layoutWAYLTItem23: TdxLayoutItem
                  AutoAligns = []
                  AlignHorz = ahClient
                  AlignVert = avClient
                  ShowCaption = False
                  Control = vgridWAYLT
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
  object imglstWAYLT: TImageList
    Height = 50
    Width = 50
    Left = 51
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
