object frmAddToPlaylistDLG: TfrmAddToPlaylistDLG
  Left = 685
  Top = 249
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Add To Playlist'
  ClientHeight = 171
  ClientWidth = 386
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
  object layoutSignIn: TdxLayoutControl
    Left = 0
    Top = 18
    Width = 386
    Height = 153
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
      TabOrder = 1
    end
    object Panel38: TPanel
      Left = 4
      Top = 133
      Width = 150
      Height = 13
      BevelOuter = bvNone
      Color = 10526880
      TabOrder = 2
    end
    object lblOK: TcxLabel
      Left = 163
      Top = 110
      Width = 18
      Height = 17
      Cursor = crHandPoint
      Caption = 'OK'
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.Color = 5987163
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsUnderline]
      Style.HotTrack = False
      TabOrder = 3
      OnClick = lblOKClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object lblCancel: TcxLabel
      Left = 187
      Top = 110
      Width = 36
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cancel'
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
      OnClick = lblCancelClick
      OnMouseEnter = cxLabelMouseEnterWhite
      OnMouseLeave = cxLabelMouseLeaveWhite
    end
    object edtPlaylistName: TcxExtLookupComboBox
      Left = 54
      Top = 46
      Width = 145
      Height = 21
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.View = gridviewPlaylists
      Properties.KeyFieldNames = 'ID'
      Properties.ListFieldItem = gridviewPlaylistsName
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
      Style.ButtonTransparency = ebtHideUnselected
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      OnKeyPress = edtPlaylistNameKeyPress
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
        object layoutSignInItem3: TdxLayoutItem
          Caption = 'Playlist:'
          CaptionOptions.AlignHorz = taRightJustify
          Offsets.Top = 20
          Control = edtPlaylistName
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
        object layoutSignInGroup3: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahCenter
          AlignVert = avBottom
          Caption = 'New Group'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object layoutSignInItem4: TdxLayoutItem
            AutoAligns = [aaVertical]
            ShowCaption = False
            Control = lblOK
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
          end
          object layoutSignInItem1: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'cxLabel1'
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
    Caption = 'Add To Playlist'
  end
  object qryPlaylists: TADOQuery
    Connection = datMain.dbStudio109
    CursorLocation = clUseServer
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblPlaylists')
    Left = 91
    Top = 94
    object qryPlaylistsID: TAutoIncField
      Alignment = taLeftJustify
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryPlaylistsName: TWideStringField
      FieldName = 'Name'
      Size = 25
    end
    object qryPlaylistsDescription: TWideStringField
      FieldName = 'Description'
      Size = 255
    end
    object qryPlaylistsDateCreated: TDateTimeField
      FieldName = 'DateCreated'
    end
  end
  object dsPlaylists: TDataSource
    DataSet = qryPlaylists
    Left = 126
    Top = 95
  end
  object greposMain: TcxGridViewRepository
    Left = 165
    Top = 95
    object gridviewPlaylists: TcxGridDBTableView
      DataController.DataSource = dsPlaylists
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      Filtering.CustomizeDialog = False
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.GridLineColor = 7500402
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      Styles.StyleSheet = datMain.cssTableView
      object gridviewPlaylistsName: TcxGridDBColumn
        Tag = 295498008
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.MaxLength = 0
        Width = 111
        DataBinding.FieldName = 'Name'
      end
      object gridviewPlaylistsDateCreated: TcxGridDBColumn
        Tag = 295065184
        Caption = 'Date'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 66
        DataBinding.FieldName = 'DateCreated'
      end
      object gridviewPlaylistsDescription: TcxGridDBColumn
        Tag = 295061700
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.MaxLength = 0
        Width = 127
        DataBinding.FieldName = 'Description'
      end
    end
  end
end
