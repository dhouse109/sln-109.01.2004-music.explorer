unit frm_MemberDirectory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_AppModule, dxLayoutControl, cxControls, dat_Main, cxVGrid,
  cxDBVGrid, cxInplaceContainer, cxImage, cxDBEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxLabel, cxTextEdit, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, ExtCtrls, Math, ImgList, cxGridCardView,
  cxGridDBCardView, dxBar;

type
  TfrmMemberDirectory = class(TfrmAppModule)
    pnlMain: TPanel;
    layoutAppModuleItem1: TdxLayoutItem;
    layoutMemberDirectory: TdxLayoutControl;
    cboMemberDirectory_State: TcxComboBox;
    cboMemberDirectory_AgeRange: TcxComboBox;
    cboMemberDirectory_Gender: TcxComboBox;
    edtMemberDirectory_School: TcxTextEdit;
    lblMemberDirectory_StartConnection: TcxLabel;
    lblMemberDirectory_Connections: TcxLabel;
    edtMemberDirectory_Name: TcxTextEdit;
    edtMemberDirectory_EMail: TcxTextEdit;
    lblMemberDirectory_StartSearch: TcxLabel;
    lblMemberDirectory_ClearSearch: TcxLabel;
    gridCommunity_MemberDirectory: TcxGrid;
    cxGridLevel2: TcxGridLevel;
    imgCommunity_MemberDirectory: TcxDBImage;
    vgridMemberDirectory_Left: TcxDBVerticalGrid;
    cxDBEditorRow17: TcxDBEditorRow;
    cxDBEditorRow19: TcxDBEditorRow;
    cxDBEditorRow20: TcxDBEditorRow;
    cxDBEditorRow21: TcxDBEditorRow;
    cxDBEditorRow22: TcxDBEditorRow;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    layoutMemberDirectoryGroup5: TdxLayoutGroup;
    layoutMemberDirectoryItem4: TdxLayoutItem;
    layoutMemberDirectoryItem5: TdxLayoutItem;
    layoutMemberDirectoryGroup10: TdxLayoutGroup;
    layoutMemberDirectoryItem11: TdxLayoutItem;
    layoutMemberDirectoryItem12: TdxLayoutItem;
    layoutMemberDirectoryItem7: TdxLayoutItem;
    layoutMemberDirectoryGroup2: TdxLayoutGroup;
    layoutMemberDirectoryGroup6: TdxLayoutGroup;
    layoutMemberDirectoryItem19: TdxLayoutItem;
    layoutMemberDirectoryItem2: TdxLayoutItem;
    layoutMemberDirectoryItem8: TdxLayoutItem;
    layoutMemberDirectoryGroup11: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    layoutMemberDirectoryItem3: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    layoutMemberDirectory_Member: TdxLayoutGroup;
    layoutMemberDirectoryItem15: TdxLayoutItem;
    layoutMemberDirectoryItem9: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    layoutMemberDirectoryItem17: TdxLayoutItem;
    layoutMemberDirectoryItem18: TdxLayoutItem;
    layoutMemberDirectoryGroup1: TdxLayoutGroup;
    layoutMemberDirectoryGroup3: TdxLayoutGroup;
    layoutMemberDirectoryGroup4: TdxLayoutGroup;
    layoutMemberDirectoryItem6: TdxLayoutItem;
    Shape1: TShape;
    layoutMemberDirectoryItem1: TdxLayoutItem;
    Shape2: TShape;
    layoutMemberDirectoryGroup7: TdxLayoutGroup;
    layoutMemberDirectoryItem10: TdxLayoutItem;
    cboMemberDirectory_Country: TcxComboBox;
    layoutMemberDirectoryItem14: TdxLayoutItem;
    Shape4: TShape;
    vgridMemberDirectory_LeftDBEditorRow1: TcxDBEditorRow;
    vgridMemberDirectory_LeftDBEditorRow2: TcxDBEditorRow;
    vgridMemberDirectory_LeftDBEditorRow6: TcxDBEditorRow;
    lblMemberDirectory_WAYLT: TcxLabel;
    layoutMemberDirectoryItem16: TdxLayoutItem;
    layoutMemberDirectoryGroup9: TdxLayoutGroup;
    layoutMemberDirectoryGroup12: TdxLayoutGroup;
    cboPageNav: TcxComboBox;
    layoutMemberDirectory_Page: TdxLayoutItem;
    lblFirst: TcxLabel;
    layoutMemberDirectoryItem22: TdxLayoutItem;
    lblNext: TcxLabel;
    layoutMemberDirectoryItem23: TdxLayoutItem;
    lblPrevious: TcxLabel;
    layoutMemberDirectoryItem24: TdxLayoutItem;
    lblLast: TcxLabel;
    layoutMemberDirectoryItem25: TdxLayoutItem;
    lblPageTotal: TcxLabel;
    layoutMemberDirectoryItem26: TdxLayoutItem;
    vgridMemberDirectory_LeftDBEditorRow8: TcxDBEditorRow;
    lblMemberDirectory_MusicLinks: TcxLabel;
    layoutMemberDirectoryItem28: TdxLayoutItem;
    imglstMemberDirectory: TImageList;
    lblMemberDirectory_OpenLink: TcxLabel;
    layoutMemberDirectoryItem20: TdxLayoutItem;
    gridCommunity_MemberDirectoryDBCardView1: TcxGridDBCardView;
    gridCommunity_MemberDirectoryDBCardView1Mem_ID: TcxGridDBCardViewRow;
    gridCommunity_MemberDirectoryDBCardView1Name: TcxGridDBCardViewRow;
    gridCommunity_MemberDirectoryDBCardView1Nickname: TcxGridDBCardViewRow;
    gridCommunity_MemberDirectoryDBCardView1Gender: TcxGridDBCardViewRow;
    gridCommunity_MemberDirectoryDBCardView1Location: TcxGridDBCardViewRow;
    gridCommunity_MemberDirectoryDBCardView1Group: TcxGridDBCardViewRow;
    vgridMemberDirectory_LeftDBEditorRow9: TcxDBEditorRow;
    edtMemberDirectory_FavArtists: TcxTextEdit;
    barMain: TdxBarManager;
    popmnuOpenLink: TdxBarPopupMenu;
    mnuWebsite: TdxBarButton;
    mnuBlog: TdxBarButton;
    mnuPhotoAlbum: TdxBarButton;
    mnuForumPosts: TdxBarButton;
    popmnuCardView: TdxBarPopupMenu;
    mnuConnections: TdxBarButton;
    mnuWAYLT: TdxBarButton;
    mnuStartAConnection: TdxBarButton;
    mnuSendPM: TdxBarButton;
    vgridMemberDirectory_LeftDBEditorRow3: TcxDBEditorRow;
    vgridMemberDirectory_LeftDBEditorRow10: TcxDBEditorRow;
    mnuMusicLinks: TdxBarButton;
    mnuForumProfile: TdxBarButton;
    cboMemberDirectory_Group: TcxComboBox;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lblMemberDirectory_ClearSearchClick(Sender: TObject);
    procedure edtMemberDirectory_NameKeyPress(Sender: TObject; var Key: Char);
    procedure lblMemberDirectory_StartSearchClick(Sender: TObject);
    procedure cxGridDBTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
                 AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cboPageNavPropertiesChange(Sender: TObject);
    procedure lblFirstClick(Sender: TObject);
    procedure lblPreviousClick(Sender: TObject);
    procedure lblNextClick(Sender: TObject);
    procedure lblLastClick(Sender: TObject);
    procedure lblMemberDirectory_ConnectionsClick(Sender: TObject);
    procedure lblMemberDirectory_WAYLTClick(Sender: TObject);
    procedure lblMemberDirectory_OpenLinkClick(Sender: TObject);
    procedure mnuConnectionsClick(Sender: TObject);
    procedure mnuWAYLTClick(Sender: TObject);
    procedure mnuStartAConnectionClick(Sender: TObject);
    procedure mnuSendPMClick(Sender: TObject);
    procedure mnuWebsiteClick(Sender: TObject);
    procedure mnuBlogClick(Sender: TObject);
    procedure mnuPhotoAlbumClick(Sender: TObject);
    procedure mnuForumPostsClick(Sender: TObject);
    procedure lblMemberDirectory_StartConnectionClick(Sender: TObject);
    procedure lblMemberDirectory_MusicLinksClick(Sender: TObject);
    procedure mnuForumProfileClick(Sender: TObject);
  private
    FCurrentQueryStr: TStringList;
    FClearing : Boolean;
  public
    procedure PrepareModule; override;
    procedure PrepareActive; override;
    procedure SetupScreen;
    procedure PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
  end;

var
  frmMemberDirectory: TfrmMemberDirectory;

implementation

uses
  frm_Main;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmMemberDirectory.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.FormCreate(Sender: TObject);
begin
  FCurrentQueryStr := TStringList.Create;
  imgCommunity_MemberDirectory.Style.BorderStyle := ebsNone;
  FClearing        := False;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.GridMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  p: TPoint;
  hTest: TcxCustomGridHitTest;
  aGridSite: TcxGridSite;
  aGridView: TcxGridDBCardView;
begin
  if not (Sender is TcxGridSite) then
     Exit;

  aGridSite := TcxGridSite(Sender);
  aGridView := TcxGridDBCardView(aGridSite.GridView);

  if Button = mbRight then
  begin
    p     := aGridSite.ClientToScreen(Point(X, Y));
    hTest := aGridView.ViewInfo.GetHitTest(X, Y);
    if (hTest.HitTestCode = htCell) or (hTest.HitTestCode = htRowCaption) then
    begin
      with datMain.qryMems_MiniProfile do
      begin
        mnuWebsite.Enabled    := (RecordCount > 0) and (FieldByName('website').AsString <> EmptyStr) and (FieldByName('website').AsString <> 'http://');
        mnuBlog.Enabled       := (RecordCount > 0) and (FieldByName('BlogURL').AsString <> EmptyStr) and (FieldByName('BlogURL').AsString <> 'http://');
        mnuPhotoAlbum.Enabled := (RecordCount > 0) and (FieldByName('PhotoAlbumURL').AsString <> EmptyStr) and (FieldByName('PhotoAlbumURL').AsString <> 'http://');
        mnuForumPosts.Enabled := (RecordCount > 0);
      end;
      popmnuCardView.Popup(p.X, p.Y);
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
var
  P: TPoint;
begin
  P.X := ALabel.Left;
  P.Y := ALabel.Top  + ALabel.Height + 1;
  P   := ALayout.ClientToScreen(P);
  APopupMenu.Popup(P.X, P.Y);
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.edtMemberDirectory_NameKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     lblMemberDirectory_StartSearchClick(Sender);
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.lblMemberDirectory_StartSearchClick(Sender: TObject);
var
  AAgeRangeLow,
  AAgeRangeHigh: Integer;
  AGender: String;
begin
  if FClearing then
     Exit;
    

  if (edtMemberDirectory_EMail.Text <> EmptyStr) and (datMain.ValidEmail(edtMemberDirectory_EMail.Text) = False) then
  begin
    MessageDLG('Please enter a valid email address.', mtError, [mbOK], 0);
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  if cboMemberDirectory_AgeRange.ItemIndex = 1 then
  begin
    AAgeRangeLow  := 13;
    AAgeRangeHigh := 17;
  end
  else
  if cboMemberDirectory_AgeRange.ItemIndex = 2 then
  begin
    AAgeRangeLow  := 18;
    AAgeRangeHigh := 22;
  end
  else
  if cboMemberDirectory_AgeRange.ItemIndex = 3 then
  begin
    AAgeRangeLow  := 23;
    AAgeRangeHigh := 27;
  end
  else
  if cboMemberDirectory_AgeRange.ItemIndex = 4 then
  begin
    AAgeRangeLow  := 28;
    AAgeRangeHigh := 32;
  end
  else
  if cboMemberDirectory_AgeRange.ItemIndex = 5 then
  begin
    AAgeRangeLow  := 33;
    AAgeRangeHigh := 37;
  end
  else
  if cboMemberDirectory_AgeRange.ItemIndex = 6 then
  begin
    AAgeRangeLow  := 38;
    AAgeRangeHigh := 100;
  end
  else
  begin
    AAgeRangeLow  := -1;
    AAgeRangeHigh := -1;
  end;

  if cboMemberDirectory_Gender.Text = 'Male' then
     AGender := 'M'
  else
  if cboMemberDirectory_Gender.Text = 'Female' then
     AGender := 'F'
  else
     AGender := EmptyStr;

  FCurrentQueryStr.Clear;
  FCurrentQueryStr := datMain.GetMems(
                   edtMemberDirectory_Name.Text,
                   edtMemberDirectory_EMail.Text,
                   AGender,
                   cboMemberDirectory_Group.Text,
                   cboMemberDirectory_State.Text,
                   edtMemberDirectory_School.Text,
                   edtMemberDirectory_FavArtists.Text,
                   cboMemberDirectory_Country.Text,
                   AAgeRangeLow,
                   AAgeRangeHigh);

  datMain.LoadMemberPics(datMain.qryMemsMemPic, datMain.qryMems);
  datMain.qryMemsAfterScroll(datMain.qryMems);
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
     layoutMemberDirectory_Member.Caption := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   '
  else
     layoutMemberDirectory_Member.Caption := 'Resident   ';

  datMain.SetupPageNav(datMain.qryMems, cboPageNav, lblPageTotal);
  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.SetupScreen;
var
  AEnabled: Boolean;
begin
  AEnabled                                   := (lblPageTotal.Caption <> 'No Results');
  lblFirst.Enabled                           := AEnabled;
  lblPrevious.Enabled                        := AEnabled;
  lblNext.Enabled                            := AEnabled;
  lblLast.Enabled                            := AEnabled;
  lblMemberDirectory_Connections.Enabled     := AEnabled;
  lblMemberDirectory_WAYLT.Enabled           := AEnabled;
  lblMemberDirectory_StartConnection.Enabled := AEnabled;
  lblMemberDirectory_MusicLinks.Enabled      := AEnabled;
  lblMemberDirectory_OpenLink.Enabled        := AEnabled;
  vgridMemberDirectory_Left.Enabled          := AEnabled;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.cboPageNavPropertiesChange(Sender: TObject);
begin
  if FCurrentQueryStr.Count = 0 then
     Exit;

  if cboPageNav.Properties.Items.Count = 0 then
     Exit;

  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  datMain.QueryStr_Refresh(datMain.qryMems, FCurrentQueryStr, StrToInt(cboPageNav.Text), cRECORDS_BY_PAGE);
  datMain.LoadMemberPics(datMain.qryMemsMemPic, datMain.qryMems);
  datMain.qryMemsAfterScroll(datMain.qryMems);
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
     layoutMemberDirectory_Member.Caption := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   '
  else
     layoutMemberDirectory_Member.Caption := 'Resident   ';
  datMain.SetupPageNav(datMain.qryMems, cboPageNav, lblPageTotal);
  gridCommunity_MemberDirectory.SetFocus;
  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.lblMemberDirectory_ClearSearchClick(Sender: TObject);
begin
  Screen.Cursor                              := crHourGlass;
  LockWindowUpdate(Self.Handle);
  FClearing := True;

  FCurrentQueryStr.Clear;
  imglstMemberDirectory.Clear;
  datMain.qryMems.Close;
  datMain.qryMems_MiniProfile.Close;
  datMain.qryMemPic.Close;

  layoutMemberDirectory_Member.Caption       := 'Resident   ';
  edtMemberDirectory_Name.Text               := EmptyStr;
  edtMemberDirectory_EMail.Text              := EmptyStr;
  cboMemberDirectory_Gender.ItemIndex        := 0;
  cboMemberDirectory_Group.ItemIndex         := 0;
  cboMemberDirectory_State.Text              := EmptyStr;
  edtMemberDirectory_School.Text             := EmptyStr;
  edtMemberDirectory_FavArtists.Text         := EmptyStr;
  cboMemberDirectory_Country.Text            := EmptyStr;
  cboMemberDirectory_AgeRange.ItemIndex      := 0;
  cboPageNav.Properties.Items.Clear;
  cboPageNav.Text                            := EmptyStr;
  cboPageNav.ItemIndex                       := -1;
  lblPageTotal.Caption                       := 'No Results';
  SetupScreen;

  FClearing := False;
  LockWindowUpdate(0);
  Screen.Cursor                              := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.PrepareModule;
begin
  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  datMain.qryMems_MiniProfile.Close;
  datMain.qryMemPic.Close;
  datMain.qryMemsAfterScroll(datMain.qryMems);
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
     layoutMemberDirectory_Member.Caption := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   '
  else
     layoutMemberDirectory_Member.Caption := 'Resident   ';
  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.cxGridDBTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  datMain.qryMemsAfterScroll(datMain.qryMems);
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
     layoutMemberDirectory_Member.Caption := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   '
  else
     layoutMemberDirectory_Member.Caption := 'Resident   ';
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.PrepareActive;
begin
  if Visible then
     gridCommunity_MemberDirectory.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.lblFirstClick(Sender: TObject);
begin
  datMain.PageNav_First(cboPageNav);
  gridCommunity_MemberDirectory.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.lblPreviousClick(Sender: TObject);
begin
  datMain.PageNav_Previous(cboPageNav);
  gridCommunity_MemberDirectory.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.lblNextClick(Sender: TObject);
begin
  datMain.PageNav_Next(cboPageNav);
  gridCommunity_MemberDirectory.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.lblLastClick(Sender: TObject);
begin
  datMain.PageNav_Last(cboPageNav);
  gridCommunity_MemberDirectory.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.lblMemberDirectory_ConnectionsClick(Sender: TObject);
begin
  frmMain.Community.LinkJumpToProfile(datMain.qryMems_MiniProfile.FieldByName('Mem_ID').AsInteger);
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.lblMemberDirectory_WAYLTClick(Sender: TObject);
begin
  frmMain.Community.LinkJumpToWAYLT(datMain.qryMems_MiniProfile.FieldByName('Mem_ID').AsInteger);
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.lblMemberDirectory_StartConnectionClick(Sender: TObject);
begin
  datMain.Launch_StartConnection;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.lblMemberDirectory_MusicLinksClick(Sender: TObject);
begin
 //
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.lblMemberDirectory_OpenLinkClick(Sender: TObject);
begin
  with datMain.qryMems_MiniProfile do
  begin
    mnuWebsite.Enabled    := (RecordCount > 0) and (FieldByName('website').AsString <> EmptyStr) and (FieldByName('website').AsString <> 'http://');
    mnuBlog.Enabled       := (RecordCount > 0) and (FieldByName('BlogURL').AsString <> EmptyStr) and (FieldByName('BlogURL').AsString <> 'http://');
    mnuPhotoAlbum.Enabled := (RecordCount > 0) and (FieldByName('PhotoAlbumURL').AsString <> EmptyStr) and (FieldByName('PhotoAlbumURL').AsString <> 'http://');
    mnuForumPosts.Enabled := (RecordCount > 0);
  end;
  PopMenuPopup_Bottom(popmnuOpenLink, lblMemberDirectory_OpenLink, layoutMemberDirectory);
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.mnuConnectionsClick(Sender: TObject);
begin
  lblMemberDirectory_ConnectionsClick(Self);
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.mnuWAYLTClick(Sender: TObject);
begin
  lblMemberDirectory_WAYLTClick(Self);
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.mnuStartAConnectionClick(Sender: TObject);
begin
  lblMemberDirectory_StartConnectionClick(Self);
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.mnuSendPMClick(Sender: TObject);
begin
  datMain.LaunchMem_SendPM;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.mnuWebsiteClick(Sender: TObject);
begin
  datMain.LaunchMem_WebsiteURL;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.mnuBlogClick(Sender: TObject);
begin
  datMain.LaunchMem_BlogURL;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.mnuPhotoAlbumClick(Sender: TObject);
begin
  datMain.LaunchMem_PhotoAlbumURL;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.mnuForumProfileClick(Sender: TObject);
begin
  datMain.LaunchMem_ForumProfile;
end;
//***********************************************************************************************************

procedure TfrmMemberDirectory.mnuForumPostsClick(Sender: TObject);
begin
  datMain.LaunchMem_ForumPosts;
end;
//***********************************************************************************************************


end.
