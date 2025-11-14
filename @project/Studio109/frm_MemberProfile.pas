unit frm_MemberProfile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_AppModule, dxLayoutControl, cxControls, dat_Main, cxVGrid,
  cxDBVGrid, cxInplaceContainer, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxContainer,
  cxEdit, cxImage, cxDBEdit, ExtCtrls, cxPC, cxTrackBar, MetaTree, dxBar;

type
  TfrmMemberProfile = class(TfrmAppModule)
    pnlMain: TPanel;
    layoutAppModuleItem1: TdxLayoutItem;
    layoutMemberProfile: TdxLayoutControl;
    Shape3: TShape;
    Shape2: TShape;
    imgMemPic: TcxDBImage;
    cboMemberProfile: TcxComboBox;
    lblWAYLT: TcxLabel;
    lblConnections: TcxLabel;
    lblGetUserProfile: TcxLabel;
    lblMyProfile: TcxLabel;
    lblSendPM: TcxLabel;
    lblStartConnection: TcxLabel;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    layoutMemberProfileItem19: TdxLayoutItem;
    layoutMemberProfileGroup3: TdxLayoutGroup;
    layoutMemberProfileItem5: TdxLayoutItem;
    layoutMemberProfileItem9: TdxLayoutItem;
    pageMain: TcxPageControl;
    tabConnections: TcxTabSheet;
    tabWAYLT: TcxTabSheet;
    layoutConnections: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    layoutMemberProfileGroup1: TdxLayoutGroup;
    layoutConnectionsItem1: TdxLayoutItem;
    layoutConnectionsItem2: TdxLayoutItem;
    layoutConnectionsItem3: TdxLayoutItem;
    barMemberProfile: TdxBarManager;
    mnuProfile_TrackDistance: TdxBarButton;
    mnuTrackArc: TdxBarButton;
    mnuCenterRootMember: TdxBarButton;
    mnuExpandAll: TdxBarButton;
    mnuCollapseAll: TdxBarButton;
    mnuResetDistance: TdxBarButton;
    mnuResetArc: TdxBarButton;
    mnuResetDistanceAndArc: TdxBarButton;
    mnuCenterMember: TdxBarButton;
    mnuExpand: TdxBarButton;
    mnuCollapse: TdxBarButton;
    popmnuProfile_TrackDistance: TdxBarPopupMenu;
    popmnuProfile_TrackArc: TdxBarPopupMenu;
    popmnuProfile_MetaTree: TdxBarPopupMenu;
    popmnuProfile_MetaTreeNode: TdxBarPopupMenu;
    mtreeCommunity_Profile: TMetaTree;
    trackCommunity_Profile_Distance: TcxTrackBar;
    trackCommunity_Profile_MinSector: TcxTrackBar;
    layoutMemberProfileGroup4: TdxLayoutGroup;
    layoutConnectionsGroup2: TdxLayoutGroup;
    layoutConnectionsItem5: TdxLayoutItem;
    layoutConnectionsItem6: TdxLayoutItem;
    layoutConnectionsItem7: TdxLayoutItem;
    lblMyInbox: TcxLabel;
    lblComposeMessage: TcxLabel;
    vgridMemberProfile_Left: TcxDBVerticalGrid;
    vgridMemberProfile_LeftDBEditorRow1: TcxDBEditorRow;
    cxDBEditorRow1: TcxDBEditorRow;
    cxDBEditorRow2: TcxDBEditorRow;
    vgridMemberProfile_LeftDBEditorRow2: TcxDBEditorRow;
    cxDBEditorRow3: TcxDBEditorRow;
    cxDBEditorRow4: TcxDBEditorRow;
    vgridMemberProfile_LeftDBEditorRow8: TcxDBEditorRow;
    cxDBEditorRow5: TcxDBEditorRow;
    vgridMemberProfile_LeftDBEditorRow6: TcxDBEditorRow;
    vgridMemberProfile_LeftDBEditorRow4: TcxDBEditorRow;
    vgridMemberProfile_LeftDBEditorRow5: TcxDBEditorRow;
    vgridMemberProfile_LeftDBEditorRow7: TcxDBEditorRow;
    lblOpenLink: TcxLabel;
    layoutMemberProfileItem8: TdxLayoutItem;
    vgridMemberProfile_LeftDBEditorRow9: TcxDBEditorRow;
    layoutWAYLT: TdxLayoutControl;
    Shape7: TShape;
    Shape8: TShape;
    cboWAYLT_Date: TcxComboBox;
    cboPageNav: TcxComboBox;
    lblPageTotal: TcxLabel;
    lblFirst: TcxLabel;
    lblPrevious: TcxLabel;
    lblNext: TcxLabel;
    lblLast: TcxLabel;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    layoutWAYLTGroup6: TdxLayoutGroup;
    layoutWAYLTItem22: TdxLayoutItem;
    layoutWAYLTItem7: TdxLayoutItem;
    layoutWAYLTItem8: TdxLayoutItem;
    layoutWAYLTItem18: TdxLayoutItem;
    layoutWAYLTItem10: TdxLayoutItem;
    layoutWAYLTItem11: TdxLayoutItem;
    layoutWAYLTItem13: TdxLayoutItem;
    layoutWAYLTItem17: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    gridWAYLT: TcxGrid;
    gridviewWAYLT: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    gridviewWAYLTDatePosted: TcxGridDBColumn;
    gridviewWAYLTTimePosted: TcxGridDBColumn;
    gridviewWAYLTAVTitle: TcxGridDBColumn;
    gridviewWAYLTAVArtist: TcxGridDBColumn;
    gridviewWAYLTAVAlbum: TcxGridDBColumn;
    gridviewWAYLTAVLength: TcxGridDBColumn;
    layoutMemberProfile_Spacer: TdxLayoutItem;
    Shape1: TShape;
    layoutMemberProfile_Member: TdxLayoutGroup;
    layoutConnectionsGroup1: TdxLayoutGroup;
    popmnuOpenLink: TdxBarPopupMenu;
    mnuWebsite: TdxBarButton;
    mnuBlog: TdxBarButton;
    mnuPhotoAlbum: TdxBarButton;
    mnuForumPosts: TdxBarButton;
    mnuWAYLT: TdxBarButton;
    mnuStartAConnection: TdxBarButton;
    mnuSendPM: TdxBarButton;
    lblConnectionTree: TcxLabel;
    lblEditConnections_Approve: TcxLabel;
    layoutMemberProfileItem11: TdxLayoutItem;
    lblInviteFriends: TcxLabel;
    layoutMemberProfileItem12: TdxLayoutItem;
    gridviewWAYLTMessage: TcxGridDBColumn;
    tabEditConnections: TcxTabSheet;
    layoutEditConnections: TdxLayoutControl;
    Shape4: TShape;
    Shape5: TShape;
    cboConn_PageNav: TcxComboBox;
    lblConn_PageTotal: TcxLabel;
    lblConn_Delete: TcxLabel;
    lblConn_Approve: TcxLabel;
    gridConnections: TcxGrid;
    gridviewEditConnections: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    layoutEditConnections_Approve: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    lblConn_Viewing: TcxLabel;
    layoutEditConnectionsItem1: TdxLayoutItem;
    mnuMyConnections: TdxBarButton;
    mnuConn_MyApproval: TdxBarButton;
    mnuConn_UserApproval: TdxBarButton;
    popmnuEditConnections: TdxBarPopupMenu;
    gridviewEditConnectionsName: TcxGridDBColumn;
    gridviewEditConnectionsEmail: TcxGridDBColumn;
    gridviewEditConnectionsIsMember: TcxGridDBColumn;
    lblConn_Finished: TcxLabel;
    layoutEditConnectionsItem2: TdxLayoutItem;
    mnuUserConnections: TdxBarButton;
    lblEditMyConnections: TcxLabel;
    layoutConnections_Edit: TdxLayoutItem;
    gridviewEditConnectionsSelected: TcxGridDBColumn;
    lblRefreshRoot: TcxLabel;
    layoutConnectionsItem4: TdxLayoutItem;
    lblEditMyProfile: TcxLabel;
    layoutMemberProfileItem13: TdxLayoutItem;
    lblEditConnectionsPage: TcxLabel;
    layoutMemberProfileItem17: TdxLayoutItem;
    tabEditProfile: TcxTabSheet;
    layoutEditProfile: TdxLayoutControl;
    lblEditProfile_Close: TcxLabel;
    lblEditProfile_Save: TcxLabel;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    imgEditProfile_Pic: TcxDBImage;
    layoutEditProfileItem1: TdxLayoutItem;
    vgridEditProfile: TcxDBVerticalGrid;
    cxDBEditorRow6: TcxDBEditorRow;
    cxDBEditorRow7: TcxDBEditorRow;
    cxDBEditorRow9: TcxDBEditorRow;
    cxDBEditorRow11: TcxDBEditorRow;
    cxDBEditorRow12: TcxDBEditorRow;
    cxDBEditorRow13: TcxDBEditorRow;
    cxDBEditorRow14: TcxDBEditorRow;
    cxDBEditorRow15: TcxDBEditorRow;
    cxDBEditorRow16: TcxDBEditorRow;
    cxDBEditorRow17: TcxDBEditorRow;
    cxDBEditorRow18: TcxDBEditorRow;
    cxDBEditorRow19: TcxDBEditorRow;
    layoutEditProfileItem3: TdxLayoutItem;
    layoutEditProfileGroup4: TdxLayoutGroup;
    layoutEditProfileGroup3: TdxLayoutGroup;
    lblChangePass: TcxLabel;
    layoutEditProfileItem2: TdxLayoutItem;
    lblChangeEmail: TcxLabel;
    layoutEditProfileItem4: TdxLayoutItem;
    vgridEditProfileDBEditorRow4: TcxDBEditorRow;
    vgridEditProfileDBEditorRow1: TcxDBEditorRow;
    lblChangeAvatar: TcxLabel;
    layoutEditProfileItem5: TdxLayoutItem;
    vgridEditProfileDBEditorRow2: TcxDBEditorRow;
    vgridEditProfileDBEditorRow3: TcxDBEditorRow;
    vgridEditProfileDBEditorRow5: TcxDBEditorRow;
    vgridEditProfileDBEditorRow6: TcxDBEditorRow;
    vgridEditProfileDBEditorRow7: TcxDBEditorRow;
    vgridEditProfileDBEditorRow8: TcxDBEditorRow;
    vgridEditProfileDBEditorRow9: TcxDBEditorRow;
    vgridEditProfileDBEditorRow10: TcxDBEditorRow;
    vgridEditProfileDBEditorRow11: TcxDBEditorRow;
    layoutWAYLTItem1: TdxLayoutItem;
    lblWAYLT_Close: TcxLabel;
    layoutEditProfileItem6: TdxLayoutItem;
    Shape6: TShape;
    gridviewWAYLTAVGenre: TcxGridDBColumn;
    layoutWAYLTItem2: TdxLayoutItem;
    cboGenre: TcxComboBox;
    layoutWAYLTItem3: TdxLayoutItem;
    cxLabel1: TcxLabel;
    layoutWAYLTItem4: TdxLayoutItem;
    cxLabel2: TcxLabel;
    layoutWAYLTItem5: TdxLayoutItem;
    cxLabel3: TcxLabel;
    layoutWAYLTGroup1: TdxLayoutGroup;
    layoutWAYLTGroup2: TdxLayoutGroup;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxTrackBar1PropertiesChange(Sender: TObject);
    procedure trackCommunity_Profile_MinSectorPropertiesChange(Sender: TObject);
    procedure mtreeCommunity_ProfileClick(Sender: TObject);
    procedure mtreeCommunity_ProfileMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure mnuCenterRootMemberClick(Sender: TObject);
    procedure mnuExpandAllClick(Sender: TObject);
    procedure mnuCollapseAllClick(Sender: TObject);
    procedure mnuResetDistanceClick(Sender: TObject);
    procedure mnuResetArcClick(Sender: TObject);
    procedure mnuResetDistanceAndArcClick(Sender: TObject);
    procedure mnuCenterMemberClick(Sender: TObject);
    procedure mnuExpandClick(Sender: TObject);
    procedure mnuCollapseClick(Sender: TObject);
    procedure mnuCollapseAllButActiveClick(Sender: TObject);
    procedure lblGetUserProfileClick(Sender: TObject);
    procedure mtreeCommunity_ProfileInfoTip(Sender: TObject; Node: TMTNode; var InfoTip: String);
    procedure cboMemberProfileKeyPress(Sender: TObject; var Key: Char);
    procedure pageMainPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure cboWAYLT_DatePropertiesChange(Sender: TObject);
    procedure cboPageNavPropertiesChange(Sender: TObject);
    procedure lblFirstClick(Sender: TObject);
    procedure lblPreviousClick(Sender: TObject);
    procedure lblNextClick(Sender: TObject);
    procedure lblLastClick(Sender: TObject);
    procedure lblConnectionsClick(Sender: TObject);
    procedure lblWAYLTClick(Sender: TObject);
    procedure lblStartConnectionClick(Sender: TObject);
    procedure lblSendPMClick(Sender: TObject);
    procedure lblOpenLinkClick(Sender: TObject);
    procedure mnuWAYLTClick(Sender: TObject);
    procedure mnuStartAConnectionClick(Sender: TObject);
    procedure mnuSendPMClick(Sender: TObject);
    procedure mnuWebsiteClick(Sender: TObject);
    procedure mnuBlogClick(Sender: TObject);
    procedure mnuPhotoAlbumClick(Sender: TObject);
    procedure mnuForumPostsClick(Sender: TObject);
    procedure lblConnectionTreeClick(Sender: TObject);
    procedure lblMyProfileClick(Sender: TObject);
    procedure gridviewWAYLTAVTitlePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure gridviewWAYLTAVArtistPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure gridviewWAYLTAVAlbumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure lblMyInboxClick(Sender: TObject);
    procedure lblComposeMessageClick(Sender: TObject);
    procedure lblEditConnections_ApproveClick(Sender: TObject);
    procedure lblInviteFriendsClick(Sender: TObject);
    procedure lblConn_ViewingClick(Sender: TObject);
    procedure mnuMyConnectionsClick(Sender: TObject);
    procedure mnuConn_MyApprovalClick(Sender: TObject);
    procedure mnuConn_UserApprovalClick(Sender: TObject);
    procedure lblConn_DeleteClick(Sender: TObject);
    procedure lblConn_ApproveClick(Sender: TObject);
    procedure cboConn_PageNavPropertiesChange(Sender: TObject);
    procedure lblConn_FinishedClick(Sender: TObject);
    procedure mnuUserConnectionsClick(Sender: TObject);
    procedure gridviewEditConnectionsFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure lblEditMyConnectionsClick(Sender: TObject);
    procedure lblRefreshRootClick(Sender: TObject);
    procedure lblEditMyProfileClick(Sender: TObject);
    procedure lblEditConnectionsPageClick(Sender: TObject);
    procedure lblChangePassClick(Sender: TObject);
    procedure lblChangeEmailClick(Sender: TObject);
    procedure lblEditProfile_CloseClick(Sender: TObject);
    procedure lblChangeAvatarClick(Sender: TObject);
    procedure lblEditProfile_SaveClick(Sender: TObject);
    procedure lblWAYLT_CloseClick(Sender: TObject);
    procedure cboGenreKeyPress(Sender: TObject; var Key: Char);
  private
    FCurrentQueryStr: TStringList;
    FQueryStr_Connections: TStringList;
    FActiveItem: TMTNode;
  public
    procedure PrepareModule; override;
    procedure PrepareActive; override;
    procedure SetupScreen;
    procedure SetupConn_Screen;
    procedure JumpToMemberProfile(AUserName: String; AConnectionNode: TMTNode = nil);
    procedure GetMem_WAYLT;
    procedure GetConn_MyConnections;
    procedure GetConn_UserConnections;
    procedure GetConn_MyApproval;
    procedure GetConn_UserApproval;
    procedure LinkJumpToProfile(AMem_ID: Integer);
    procedure LinkJumpToWAYLT(AMem_ID: Integer);
    procedure PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
    procedure UpdatePendingConnectionsLink;
  end;

var
  frmMemberProfile: TfrmMemberProfile;

implementation

uses
  frm_InviteFriendsDLG,
  frm_EditProfilePicDLG,
  DB;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmMemberProfile.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.FormCreate(Sender: TObject);
begin
  FCurrentQueryStr      := TStringList.Create;
  FQueryStr_Connections := TStringList.Create;
  imgMemPic.Style.BorderStyle          := ebsNone;
  imgEditProfile_Pic.Style.BorderStyle := ebsNone;

  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  if datMain.LoggedIn then
  begin
    datMain.qryMems_MiniProfile.Close;
    datMain.qryMemPic.Close;

    mtreeCommunity_Profile.Items.Clear;
    mnuResetDistanceAndArcClick(Self);

    cboMemberProfile.Properties.Items.Clear;
    cboMemberProfile.Properties.Items.Add(datMain.UserName);
    cboMemberProfile.ItemIndex := 0;

    datMain.GetMiniProfile_By_Mem_ID(datMain.Mem_ID);
    JumpToMemberProfile(cboMemberProfile.Text);
    FActiveItem                       := mtreeCommunity_Profile.Root;
    mtreeCommunity_Profile.ActiveItem := FActiveItem;

    pageMain.ActivePage := tabConnections;
  end;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
var
  P: TPoint;
begin
  P.X := ALabel.Left;
  P.Y := ALabel.Top  + ALabel.Height + 1;
  P   := ALayout.ClientToScreen(P);
  APopupMenu.Popup(P.X, P.Y);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.FormDestroy(Sender: TObject);
begin
  FCurrentQueryStr.Free;
  FQueryStr_Connections.Free;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.PrepareModule;
begin
  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  datMain.qryMems_MiniProfile.Close;
  datMain.qryMemPic.Close;


  LockWindowUpdate(0);
  pageMain.ActivePage := tabConnections;
  if Assigned(FActiveItem) and (FActiveItem.Text <> EmptyStr) then
  begin
    mtreeCommunity_Profile.MoveToCenter(FActiveItem);
    mtreeCommunity_Profile.ActiveItem := FActiveItem;
    mtreeCommunity_ProfileClick(self);
  end
  else
  if mtreeCommunity_Profile.Items.Count > 0 then
  begin
    FActiveItem := mtreeCommunity_Profile.Root;
    mtreeCommunity_Profile.MoveToCenter(FActiveItem);
    mtreeCommunity_Profile.ActiveItem := FActiveItem;
  end;

  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.PrepareActive;
begin
//
end;
//***********************************************************************************************************
procedure TfrmMemberProfile.cxTrackBar1PropertiesChange(Sender: TObject);
begin
  mtreeCommunity_Profile.Distance := 50 + trackCommunity_Profile_Distance.Position * 10;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.trackCommunity_Profile_MinSectorPropertiesChange(Sender: TObject);
begin
  mtreeCommunity_Profile.BeginUpdate;
  mtreeCommunity_Profile.MinSector := trackCommunity_Profile_MinSector.Position;
  mtreeCommunity_Profile.UpdateTree(mtreeCommunity_Profile.Root);
  mtreeCommunity_Profile.EndUpdate;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mtreeCommunity_ProfileClick(Sender: TObject);
begin
  if Assigned(mtreeCommunity_Profile.ActiveItem) then
  begin
    FActiveItem := mtreeCommunity_Profile.ActiveItem;
    if Assigned(FActiveItem.Data) then
    begin
      cboMemberProfile.Text := TConnectionNodeRec(FActiveItem.Data).Name;
      JumpToMemberProfile(cboMemberProfile.Text, FActiveItem);
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mtreeCommunity_ProfileMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    Screen.Cursor := crHourGlass;
    if mtreeCommunity_Profile.ActiveItem = nil then
    begin
      Screen.Cursor := crDefault;
      popmnuProfile_MetaTree.PopupFromCursorPos;
    end
    else
    begin
      FActiveItem := mtreeCommunity_Profile.ActiveItem;
      if Assigned(FActiveItem.Data) then
      begin
        if datMain.qryMems_MiniProfileName.Value <> TConnectionNodeRec(FActiveItem.Data).Name then
        begin
          cboMemberProfile.Text := TConnectionNodeRec(FActiveItem.Data).Name;
          JumpToMemberProfile(cboMemberProfile.Text, FActiveItem);
        end;

        with datMain.qryMems_MiniProfile do
        begin
          mnuWebsite.Enabled    := (RecordCount > 0) and (FieldByName('website').AsString <> EmptyStr) and (FieldByName('website').AsString <> 'http://');
          mnuBlog.Enabled       := (RecordCount > 0) and (FieldByName('BlogURL').AsString <> EmptyStr) and (FieldByName('BlogURL').AsString <> 'http://');
          mnuPhotoAlbum.Enabled := (RecordCount > 0) and (FieldByName('PhotoAlbumURL').AsString <> EmptyStr) and (FieldByName('PhotoAlbumURL').AsString <> 'http://');
          mnuForumPosts.Enabled := (RecordCount > 0);
        end;
        Screen.Cursor := crDefault;
        popmnuProfile_MetaTreeNode.PopupFromCursorPos;
        Abort;
      end;
    end;
    Screen.Cursor := crDefault;
  end;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuCenterRootMemberClick(Sender: TObject);
begin
  if Assigned(mtreeCommunity_Profile.Root) then
     mtreeCommunity_Profile.MoveToCenter(mtreeCommunity_Profile.Root);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuExpandAllClick(Sender: TObject);
begin
  mtreeCommunity_Profile.FullExpand;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuCollapseAllClick(Sender: TObject);
begin
  mtreeCommunity_Profile.FullCollapse;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuResetDistanceClick(Sender: TObject);
begin
  trackCommunity_Profile_Distance.Position := 6;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuResetArcClick(Sender: TObject);
begin
  mtreeCommunity_Profile.BeginUpdate;
  trackCommunity_Profile_MinSector.Position := 11;
  mtreeCommunity_Profile.UpdateTree(mtreeCommunity_Profile.Root);
  mtreeCommunity_Profile.EndUpdate;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuResetDistanceAndArcClick(Sender: TObject);
begin
  mnuResetDistanceClick(Sender);
  mnuResetArcClick(Sender);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuCenterMemberClick(Sender: TObject);
begin
  if Assigned(mtreeCommunity_Profile.ActiveItem) then
     mtreeCommunity_Profile.MoveToCenter(mtreeCommunity_Profile.ActiveItem);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuExpandClick(Sender: TObject);
begin
  if Assigned(mtreeCommunity_Profile.ActiveItem) then
     mtreeCommunity_Profile.ExpandItem(mtreeCommunity_Profile.ActiveItem);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuCollapseClick(Sender: TObject);
begin
  if Assigned(mtreeCommunity_Profile.ActiveItem) then
     mtreeCommunity_Profile.CollapseItem(mtreeCommunity_Profile.ActiveItem);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuCollapseAllButActiveClick(Sender: TObject);
begin
//
end;
//***********************************************************************************************************
procedure TfrmMemberProfile.lblGetUserProfileClick(Sender: TObject);
begin
  if cboMemberProfile.Text = EmptyStr then
  begin
    MessageDLG('You must first enter a Resident ID to view.', mtInformation, [mbOK], 0);
    Exit;
  end;

  if datMain.FindUser(cboMemberProfile.Text) = -1 then
  begin
    MessageDLG('Resident ID not found.', mtError, [mbOK], 0);
  end
  else
  begin
    JumpToMemberProfile(cboMemberProfile.Text);
    mtreeCommunity_Profile.MoveToCenter(mtreeCommunity_Profile.Root);
  end;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.JumpToMemberProfile(AUserName: String; AConnectionNode: TMTNode = nil);
var
  intMem_ID: Integer;
  AChildNode: TMTNode;
  AChildRec: TConnectionNodeRec;
  AParentRec: TConnectionNodeRec;
begin
  intMem_ID := datMain.FindUser(AUserName);
  if intMem_ID = -1 then
     Exit;

  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);
  mtreeCommunity_Profile.BeginUpdate;

  if cboMemberProfile.Properties.Items.IndexOf(AUserName) = -1 then
     cboMemberProfile.Properties.Items.Append(AUserName);

  datMain.qryMems_MiniProfile.Close;
  datMain.qryMemPic.Close;

  if not Assigned(AConnectionNode) then
  begin
    datMain.tblMemsThumbs.Close;
    datMain.imglstMetaTree.Clear;
    datMain.tblMemsThumbs.Open;
    mtreeCommunity_Profile.Items.Clear;
    mnuResetDistanceAndArcClick(Self);
    AConnectionNode            := mtreeCommunity_Profile.Items.Add(nil, AUserName);
    AConnectionNode.ImageIndex := -1;
    datMain.GetMem_Info(intMem_ID);

    if datMain.qryMems_Mem_Info.Active then
    begin
      datMain.qryMems_Mem_Info.First;
      AParentRec                 := TConnectionNodeRec.Create;
      AParentRec.ID              := datMain.qryMems_Mem_Info.FieldByName('Mem_ID').AsInteger;
      AParentRec.Mem_ID          := datMain.qryMems_Mem_Info.FieldByName('Mem_ID').AsInteger;
      AParentRec.Name            := datMain.qryMems_Mem_Info.FieldByName('Name').AsString;
      AParentRec.Nickname        := datMain.qryMems_Mem_Info.FieldByName('Nickname').AsString;
      AConnectionNode.Data       := AParentRec;
      AConnectionNode.ImageIndex := datMain.GetMemberPic_Thumbnail(intMem_ID);
      datMain.qryMems_Mem_Info.Close;
    end;
  end;

  datMain.GetMiniProfile_By_Mem_ID(intMem_ID);

  if AConnectionNode.Count = 0 then
  begin
    datMain.Get1stDegree_Info(intMem_ID);

    if datMain.qryMems_1stDegree_Info.Active then
    begin
      datMain.qryMems_1stDegree_Info.First;
      while not datMain.qryMems_1stDegree_Info.Eof do
      begin
        if (datMain.qryMems_1stDegree_Info.FieldByName('Mem_ID').AsInteger <> intMem_ID) and
           (datMain.qryMems_1stDegree_Info.FieldByName('Mem_ID').AsInteger <> TConnectionNodeRec(mtreeCommunity_Profile.Root.Data).ID) then
        begin
          AChildNode              := mtreeCommunity_Profile.Items.Add(AConnectionNode, datMain.qryMems_1stDegree_Info.FieldByName('Name').AsString);
          AChildNode.ImageIndex   := -1;
          AChildRec               := TConnectionNodeRec.Create;
          AChildRec.ID            := datMain.qryMems_1stDegree_Info.FieldByName('Mem_ID').AsInteger;
          AChildRec.Mem_ID        := datMain.qryMems_1stDegree_Info.FieldByName('Mem_ID').AsInteger;
          AChildRec.Name          := datMain.qryMems_1stDegree_Info.FieldByName('Name').AsString;
          AChildRec.Nickname      := datMain.qryMems_1stDegree_Info.FieldByName('Nickname').AsString;
          AChildNode.Data         := AChildRec;
          AChildNode.ImageIndex   := datMain.GetMemberPic_Thumbnail(AChildRec.ID);
        end;
        datMain.qryMems_1stDegree_Info.Next;
      end;
      datMain.qryMems_1stDegree_Info.Close;
      AConnectionNode.MetaTree.CollapseItem(AConnectionNode);
    end;
  end;
  mtreeCommunity_Profile.EndUpdate;
  FActiveItem := AConnectionNode;
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
     layoutMemberProfile_Member.Caption := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   '
  else
     layoutMemberProfile_Member.Caption := 'Resident   ';

  layoutConnections_Edit.Visible := (mtreeCommunity_Profile.Root.Text = datMain.UserName);

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mtreeCommunity_ProfileInfoTip(Sender: TObject; Node: TMTNode; var InfoTip: String);
begin
  if Assigned(Node.Data) then
  begin
    InfoTip := TConnectionNodeRec(Node.Data).Nickname;
  end;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.cboMemberProfileKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     lblGetUserProfileClick(Sender);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.pageMainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  if NewPage = tabWAYLT then
  begin
    GetMem_WAYLT;
  end
  else
  if NewPage = tabEditProfile then
  begin
    datMain.GetMemProfilePic;
  end;
    

  if NewPage <> tabEditConnections then
  begin
    lblConnections.Enabled          := True;
    lblWAYLT.Enabled                := True;
    lblStartConnection.Enabled      := True;
    lblSendPM.Enabled               := True;
    lblOpenLink.Enabled             := True;
    vgridMemberProfile_Left.Enabled := True;
  end;

  UpdatePendingConnectionsLink;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.GetMem_WAYLT;
begin
  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  FCurrentQueryStr.Clear;
  FCurrentQueryStr := datMain.GetMem_WAYLT(datMain.qryMems_MiniProfile.FieldByName('Mem_ID').AsInteger, cboGenre.Text, cboWAYLT_Date.Text);
  datMain.SetupPageNav(datMain.qryMem_WAYLT, cboPageNav, lblPageTotal);
  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.cboWAYLT_DatePropertiesChange(Sender: TObject);
begin
  GetMem_WAYLT;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.cboPageNavPropertiesChange(Sender: TObject);
begin
  if FCurrentQueryStr.Count = 0 then
     Exit;

  if cboPageNav.Properties.Items.Count = 0 then
     Exit;

  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  datMain.QueryStr_Refresh(datMain.qryMem_WAYLT, FCurrentQueryStr, StrToInt(cboPageNav.Text), cRECORDS_BY_PAGE);
  datMain.SetupPageNav(datMain.qryMem_WAYLT, cboPageNav, lblPageTotal);
  gridWAYLT.SetFocus;
  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblFirstClick(Sender: TObject);
begin
  datMain.PageNav_First(cboPageNav);
  gridWAYLT.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblPreviousClick(Sender: TObject);
begin
  datMain.PageNav_Previous(cboPageNav);
  gridWAYLT.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblNextClick(Sender: TObject);
begin
  datMain.PageNav_Next(cboPageNav);
  gridWAYLT.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblLastClick(Sender: TObject);
begin
  datMain.PageNav_Last(cboPageNav);
  gridWAYLT.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblConnectionsClick(Sender: TObject);
begin
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.FieldByName('Name').AsString <> EmptyStr) then
  begin
    if Assigned(FActiveItem) then
    begin
      if FActiveItem.Text = datMain.qryMems_MiniProfile.FieldByName('Name').AsString then
      begin
        pageMain.ActivePage := tabConnections;
      end
      else
      begin
        JumpToMemberProfile(datMain.qryMems_MiniProfile.FieldByName('Name').AsString);
        pageMain.ActivePage := tabConnections;
      end;
    end
    else
    begin
      JumpToMemberProfile(datMain.qryMems_MiniProfile.FieldByName('Name').AsString);
      pageMain.ActivePage := tabConnections;
    end;
  end
  else
  begin
    pageMain.ActivePage := tabConnections;
    PrepareModule;
  end;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblWAYLTClick(Sender: TObject);
begin
  LockWindowUpdate(Self.Handle);
  pageMain.ActivePage := tabWAYLT;
  Self.Repaint;
  Self.Refresh;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblStartConnectionClick(Sender: TObject);
begin
  datMain.Launch_StartConnection;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblSendPMClick(Sender: TObject);
begin
  datMain.LaunchMem_SendPM;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblOpenLinkClick(Sender: TObject);
begin
  with datMain.qryMems_MiniProfile do
  begin
    mnuWebsite.Enabled    := (RecordCount > 0) and (FieldByName('website').AsString <> EmptyStr) and (FieldByName('website').AsString <> 'http://');
    mnuBlog.Enabled       := (RecordCount > 0) and (FieldByName('BlogURL').AsString <> EmptyStr) and (FieldByName('BlogURL').AsString <> 'http://');
    mnuPhotoAlbum.Enabled := (RecordCount > 0) and (FieldByName('PhotoAlbumURL').AsString <> EmptyStr) and (FieldByName('PhotoAlbumURL').AsString <> 'http://');
    mnuForumPosts.Enabled := (RecordCount > 0);
  end;
  PopMenuPopup_Bottom(popmnuOpenLink, lblOpenLink, layoutMemberProfile);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.LinkJumpToProfile(AMem_ID: Integer);
var
  intMem_ID: Integer;
  AConnectionNode: TMTNode;
  AChildNode: TMTNode;
  AChildRec: TConnectionNodeRec;
  AParentRec: TConnectionNodeRec;
begin
  intMem_ID := AMem_ID;

  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);
  pageMain.ActivePage := tabConnections;
  mtreeCommunity_Profile.BeginUpdate;

  datMain.qryMems_MiniProfile.Close;
  datMain.qryMemPic.Close;

  datMain.tblMemsThumbs.Close;
  datMain.imglstMetaTree.Clear;
  datMain.tblMemsThumbs.Open;
  mtreeCommunity_Profile.Items.Clear;
  mnuResetDistanceAndArcClick(Self);
  datMain.GetMem_Info(intMem_ID);

  if datMain.qryMems_Mem_Info.Active then
  begin
    datMain.qryMems_Mem_Info.First;
    AParentRec                 := TConnectionNodeRec.Create;
    AParentRec.ID              := datMain.qryMems_Mem_Info.FieldByName('Mem_ID').AsInteger;
    AParentRec.Mem_ID          := datMain.qryMems_Mem_Info.FieldByName('Mem_ID').AsInteger;
    AParentRec.Name            := datMain.qryMems_Mem_Info.FieldByName('Name').AsString;
    AParentRec.Nickname        := datMain.qryMems_Mem_Info.FieldByName('Nickname').AsString;
    AConnectionNode            := mtreeCommunity_Profile.Items.Add(nil, AParentRec.Name);
    AConnectionNode.ImageIndex := -1;
    AConnectionNode.Data       := AParentRec;
    AConnectionNode.ImageIndex := datMain.GetMemberPic_Thumbnail(intMem_ID);
    datMain.qryMems_Mem_Info.Close;
    if cboMemberProfile.Properties.Items.IndexOf(AParentRec.Name) = -1 then
       cboMemberProfile.Properties.Items.Append(AParentRec.Name);
    cboMemberProfile.Text := AParentRec.Name;

    datMain.GetMiniProfile_By_Mem_ID(intMem_ID);
    datMain.Get1stDegree_Info(intMem_ID);
    if datMain.qryMems_1stDegree_Info.Active then
    begin
      datMain.qryMems_1stDegree_Info.First;
      while not datMain.qryMems_1stDegree_Info.Eof do
      begin
        if (datMain.qryMems_1stDegree_Info.FieldByName('Mem_ID').AsInteger <> intMem_ID) and
           (datMain.qryMems_1stDegree_Info.FieldByName('Mem_ID').AsInteger <> TConnectionNodeRec(mtreeCommunity_Profile.Root.Data).ID) then
        begin
          AChildNode              := mtreeCommunity_Profile.Items.Add(AConnectionNode, datMain.qryMems_1stDegree_Info.FieldByName('Name').AsString);
          AChildNode.ImageIndex   := -1;
          AChildRec               := TConnectionNodeRec.Create;
          AChildRec.ID            := datMain.qryMems_1stDegree_Info.FieldByName('Mem_ID').AsInteger;
          AChildRec.Mem_ID        := datMain.qryMems_1stDegree_Info.FieldByName('Mem_ID').AsInteger;
          AChildRec.Name          := datMain.qryMems_1stDegree_Info.FieldByName('Name').AsString;
          AChildRec.Nickname      := datMain.qryMems_1stDegree_Info.FieldByName('Nickname').AsString;
          AChildNode.Data         := AChildRec;
          AChildNode.ImageIndex   := datMain.GetMemberPic_Thumbnail(AChildRec.ID);
        end;
        datMain.qryMems_1stDegree_Info.Next;
      end;
      datMain.qryMems_1stDegree_Info.Close;
      AConnectionNode.MetaTree.CollapseItem(AConnectionNode);
    end;
  end;

  mtreeCommunity_Profile.EndUpdate;
  mtreeCommunity_Profile.MoveToCenter(mtreeCommunity_Profile.Root);
  FActiveItem := mtreeCommunity_Profile.Root;
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
     layoutMemberProfile_Member.Caption := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   '
  else
     layoutMemberProfile_Member.Caption := 'Resident   ';
  layoutConnections_Edit.Visible := (mtreeCommunity_Profile.Root.Text = datMain.UserName);

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.LinkJumpToWAYLT(AMem_ID: Integer);
begin
  LinkJumpToProfile(AMem_ID);
  pageMain.ActivePage := tabWAYLT;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuWAYLTClick(Sender: TObject);
begin
  lblWAYLTClick(Self);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuStartAConnectionClick(Sender: TObject);
begin
  lblStartConnectionClick(Self);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuSendPMClick(Sender: TObject);
begin
  lblSendPMClick(Self);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuWebsiteClick(Sender: TObject);
begin
  datMain.LaunchMem_WebsiteURL;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuBlogClick(Sender: TObject);
begin
  datMain.LaunchMem_BlogURL;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuPhotoAlbumClick(Sender: TObject);
begin
  datMain.LaunchMem_PhotoAlbumURL;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuForumPostsClick(Sender: TObject);
begin
  datMain.LaunchMem_ForumPosts;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblConnectionTreeClick(Sender: TObject);
begin
  PopMenuPopup_Bottom(popmnuProfile_MetaTree, lblConnectionTree, layoutConnections);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblMyProfileClick(Sender: TObject);
begin
  LockWindowUpdate(Self.Handle);
  pageMain.ActivePage   := tabConnections;
  Self.Repaint;
  Self.Refresh;
  cboMemberProfile.Text := datMain.UserName;
  lblGetUserProfileClick(Self);
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblEditMyProfileClick(Sender: TObject);
begin
  LockWindowUpdate(Self.Handle);

  cboMemberProfile.Text := datMain.UserName;
  lblGetUserProfileClick(Self);
  datMain.GetMemProfile;

  pageMain.ActivePage := tabEditProfile;

  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblEditConnectionsPageClick(Sender: TObject);
begin
  LockWindowUpdate(Self.Handle);

  pageMain.ActivePage := tabEditConnections;
  mnuMyConnectionsClick(Self);

  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.SetupScreen;
var
  AEnabled: Boolean;
begin
  AEnabled            := (lblPageTotal.Caption <> 'No Results');
  lblFirst.Enabled    := AEnabled;
  lblPrevious.Enabled := AEnabled;
  lblNext.Enabled     := AEnabled;
  lblLast.Enabled     := AEnabled;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.gridviewWAYLTAVTitlePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  datMain.Launch109Music_Search(datMain.qryMem_WAYLT.FieldByName('AVTitle').AsString, datMain.qryMem_WAYLT.FieldByName('AVArtist').AsString);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.gridviewWAYLTAVArtistPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  datMain.Launch109Music_Search(EmptyStr, datMain.qryMem_WAYLT.FieldByName('AVArtist').AsString);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.gridviewWAYLTAVAlbumPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  datMain.Launch109Music_Search(EmptyStr, datMain.qryMem_WAYLT.FieldByName('AVArtist').AsString, datMain.qryMem_WAYLT.FieldByName('AVAlbum').AsString);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblMyInboxClick(Sender: TObject);
begin
  datMain.Launch_MyInbox;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblComposeMessageClick(Sender: TObject);
begin
  datMain.Launch_ComposeMessage;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblEditConnections_ApproveClick(Sender: TObject);
begin
  LockWindowUpdate(Self.Handle);

  pageMain.ActivePage := tabEditConnections;
  mnuConn_MyApprovalClick(Self);

  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblInviteFriendsClick(Sender: TObject);
begin
  with TfrmInviteFriendsDLG.Create(Application) do
       InviteFriends;

  if (pageMain.ActivePage = tabEditConnections) and (lblConn_Viewing.Caption = 'View:  Pending User Approval') then
  begin
    cboConn_PageNav.ItemIndex := -1;
    datMain.PageNav_First(cboConn_PageNav);
  end;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblConn_ViewingClick(Sender: TObject);
begin
  PopMenuPopup_Bottom(popmnuEditConnections, lblConn_Viewing, layoutEditConnections);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuMyConnectionsClick(Sender: TObject);
begin
  lblConn_Viewing.Caption := 'View:  Connections I Started';
  layoutEditConnections_Approve.Visible := False;
  GetConn_MyConnections;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuUserConnectionsClick(Sender: TObject);
begin
  lblConn_Viewing.Caption := 'View:  Connections I Approved';
  layoutEditConnections_Approve.Visible := False;
  GetConn_UserConnections;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuConn_MyApprovalClick(Sender: TObject);
begin
  lblConn_Viewing.Caption := 'View:  Pending My Approval';
  layoutEditConnections_Approve.Visible := True;
  GetConn_MyApproval;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.mnuConn_UserApprovalClick(Sender: TObject);
begin
  lblConn_Viewing.Caption := 'View:  Pending User Approval';
  layoutEditConnections_Approve.Visible := False;
  GetConn_UserApproval;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.GetConn_MyConnections;
begin
  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  FQueryStr_Connections.Clear;
  FQueryStr_Connections := datMain.GetConn(ctMyConnections);
  datMain.SetupPageNav(datMain.qryMems_Connects, cboConn_PageNav, lblConn_PageTotal);
  SetupConn_Screen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.GetConn_UserConnections;
begin
  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  FQueryStr_Connections.Clear;
  FQueryStr_Connections := datMain.GetConn(ctUserConnections);
  datMain.SetupPageNav(datMain.qryMems_Connects, cboConn_PageNav, lblConn_PageTotal);
  SetupConn_Screen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.GetConn_MyApproval;
begin
  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  FQueryStr_Connections.Clear;
  FQueryStr_Connections := datMain.GetConn(ctMyApproval);
  datMain.SetupPageNav(datMain.qryMems_Connects, cboConn_PageNav, lblConn_PageTotal);
  SetupConn_Screen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.GetConn_UserApproval;
begin
  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  FQueryStr_Connections.Clear;
  FQueryStr_Connections := datMain.GetConn(ctUserApproval);
  datMain.SetupPageNav(datMain.qryMems_Connects, cboConn_PageNav, lblConn_PageTotal);
  SetupConn_Screen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.SetupConn_Screen;
var
  AEnabled: Boolean;
begin
  LockWindowUpdate(Self.Handle);
  AEnabled                        := (lblConn_PageTotal.Caption <> 'No Results');
  lblConn_Delete.Enabled          := AEnabled;
  lblConn_Approve.Enabled         := AEnabled;


  datMain.qryMemsAfterScroll(datMain.qryMems_Connects);
  AEnabled                        := (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.FieldByName('Mem_ID').AsInteger > 0);
  lblConnections.Enabled          := AEnabled;
  lblWAYLT.Enabled                := AEnabled;
  lblStartConnection.Enabled      := AEnabled;
  lblSendPM.Enabled               := AEnabled;
  lblOpenLink.Enabled             := AEnabled;
  vgridMemberProfile_Left.Enabled := AEnabled;

  if (not datMain.qryMems_MiniProfile.Active) or (datMain.qryMems_MiniProfile.RecordCount = 0) then
  begin
    datMain.qryMemPic.Close;
  end;

  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
      layoutMemberProfile_Member.Caption  := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   '
  else
      layoutMemberProfile_Member.Caption  := 'Resident   ';
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblConn_DeleteClick(Sender: TObject);
var
  ASelected: Boolean;
begin
  ASelected := False;
  datMain.qryMems_Connects.DisableControls;
  datMain.qryMems_Connects.First;
  while not datMain.qryMems_Connects.EOF do
  begin
    if datMain.qryMems_Connects.FieldByName('Selected').AsBoolean = True then
    begin
      ASelected := True;
      Break;
    end;
    datMain.qryMems_Connects.Next;
  end;
  datMain.qryMems_Connects.EnableControls;
  datMain.qryMems_Connects.First;

  if not ASelected then
  begin
    MessageDLG('There is nothing selected to delete.', mtError, [mbOK], 0);
    Exit;
  end;

  if MessageDLG('Are you sure you want to delete the selected connections?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Screen.Cursor := crHourGlass;
    LockWindowUpdate(Self.Handle);

    datMain.qryMems_Connects.DisableControls;
    datMain.qryMems_Connects.First;
    while not datMain.qryMems_Connects.EOF do
    begin
      if datMain.qryMems_Connects.FieldByName('Selected').AsBoolean = True then
      begin
        if lblConn_Viewing.Caption = 'View:  Connections I Started' then
           datMain.DeleteConn(ctMyConnections)
        else
        if lblConn_Viewing.Caption = 'View:  Connections I Approved' then
           datMain.DeleteConn(ctUserConnections)
        else
        if lblConn_Viewing.Caption = 'View:  Pending My Approval' then
           datMain.DeleteConn(ctMyApproval)
        else
        if lblConn_Viewing.Caption = 'View:  Pending User Approval' then
           datMain.DeleteConn(ctUserApproval);
      end;
      datMain.qryMems_Connects.Next;
    end;
    datMain.qryMems_Connects.EnableControls;
    cboConn_PageNav.ItemIndex := -1;
    datMain.PageNav_First(cboConn_PageNav);
    gridConnections.SetFocus;
    UpdatePendingConnectionsLink;

    LockWindowUpdate(0);
    Screen.Cursor := crDefault;
  end;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblConn_ApproveClick(Sender: TObject);
var
  ASelected: Boolean;
begin
  ASelected := False;
  datMain.qryMems_Connects.DisableControls;
  datMain.qryMems_Connects.First;
  while not datMain.qryMems_Connects.EOF do
  begin
    if datMain.qryMems_Connects.FieldByName('Selected').AsBoolean = True then
    begin
      ASelected := True;
      Break;
    end;
    datMain.qryMems_Connects.Next;
  end;
  datMain.qryMems_Connects.EnableControls;
  datMain.qryMems_Connects.First;

  if not ASelected then
  begin
    MessageDLG('There is nothing selected to approve.', mtError, [mbOK], 0);
    Exit;
  end;

  if MessageDLG('Are you sure you want to approve the selected connections?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Screen.Cursor := crHourGlass;
    LockWindowUpdate(Self.Handle);

    datMain.qryMems_Connects.DisableControls;
    datMain.qryMems_Connects.First;
    while not datMain.qryMems_Connects.EOF do
    begin
      if datMain.qryMems_Connects.FieldByName('Selected').AsBoolean = True then
         datMain.ApproveConn;
      datMain.qryMems_Connects.Next;
    end;
    datMain.qryMems_Connects.EnableControls;
    cboConn_PageNav.ItemIndex := -1;
    datMain.PageNav_First(cboConn_PageNav);
    gridConnections.SetFocus;
    UpdatePendingConnectionsLink;

    LockWindowUpdate(0);
    Screen.Cursor := crDefault;
  end;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.cboConn_PageNavPropertiesChange(Sender: TObject);
begin
  if FQueryStr_Connections.Count = 0 then
     Exit;

  if cboConn_PageNav.Properties.Items.Count = 0 then
     Exit;

  if cboConn_PageNav.ItemIndex = -1 then
     Exit;

  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  datMain.QueryStr_Refresh(datMain.qryMems_Connects, FQueryStr_Connections, StrToInt(cboConn_PageNav.Text), cRECORDS_BY_PAGE);
  datMain.SetupPageNav(datMain.qryMems_Connects, cboConn_PageNav, lblConn_PageTotal);
  gridConnections.SetFocus;
  SetupConn_Screen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblConn_FinishedClick(Sender: TObject);
begin
  datMain.qryMemPic.Close;
  datMain.qryMems_MiniProfile.Close;
  datMain.qryMems_Connects.Close;
  pageMain.ActivePage := tabConnections;
  Self.Repaint;
  Self.Refresh;
  if mtreeCommunity_Profile.Root.Text = datMain.UserName then
     lblRefreshRootClick(Self)
  else
     PrepareModule;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.gridviewEditConnectionsFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  SetupConn_Screen;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblEditMyConnectionsClick(Sender: TObject);
begin
  lblEditConnectionsPageClick(Self);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblRefreshRootClick(Sender: TObject);
begin
  cboMemberProfile.Text := mtreeCommunity_Profile.Root.Text;
  lblGetUserProfileClick(Self);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.UpdatePendingConnectionsLink;
var
  intPending: Integer;
begin
  intPending := datMain.GetPendingConnections;
  lblEditConnections_Approve.Caption := IntToStr(intPending) + ' Connection(s) Pending Your Approval';
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblChangePassClick(Sender: TObject);
begin
  datMain.Launch_ChangePass;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblChangeEmailClick(Sender: TObject);
begin
  datMain.Launch_ChangeEmail;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblEditProfile_CloseClick(Sender: TObject);
begin
  datMain.qryMemPic.Close;
  datMain.qryMems_MiniProfile.Close;
  datMain.qryMems_Connects.Close;
  pageMain.ActivePage := tabConnections;
  Self.Repaint;
  Self.Refresh;
  if mtreeCommunity_Profile.Root.Text = datMain.UserName then
     lblRefreshRootClick(Self)
  else
     PrepareModule;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblChangeAvatarClick(Sender: TObject);
begin
  with TfrmEditProfilePicDLG.Create(Application) do
       if EditProfilePic = mrCancel then
          datMain.GetMemProfilePic;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblEditProfile_SaveClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if datMain.SaveMemProfile then
  begin
    Screen.Cursor := crDefault;
    MessageDLG('Your profile has been updated.', mtInformation, [mbOK], 0);
    lblEditProfile_CloseClick(Self);
  end
  else
  begin
    Screen.Cursor := crDefault;
    MessageDLG('There was a problem saving your profile.', mtError, [mbOK], 0);
  end;
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.lblWAYLT_CloseClick(Sender: TObject);
begin
  lblConnectionsClick(Self);
end;
//***********************************************************************************************************

procedure TfrmMemberProfile.cboGenreKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     GetMem_WAYLT;
end;
//***********************************************************************************************************

end.
