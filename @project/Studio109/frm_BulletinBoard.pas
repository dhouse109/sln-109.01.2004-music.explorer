unit frm_BulletinBoard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_AppModule, dxLayoutControl, cxControls, dat_Main, cxVGrid,
  cxDBVGrid, cxInplaceContainer, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxContainer,
  cxEdit, cxImage, cxDBEdit, ExtCtrls, ShellAPI, Math, ImgList,
  cxGridCardView, cxGridDBCardView, dxBar, cxButtonEdit;

type
  TfrmBulletinBoard = class(TfrmAppModule)
    pnlMain: TPanel;
    layoutAppModuleItem1: TdxLayoutItem;
    layoutBulletinBoard: TdxLayoutControl;
    Shape3: TShape;
    imgBulletinBoard_MemPic: TcxDBImage;
    cboBulletinBoard_MessagesFrom: TcxComboBox;
    cboBulletinBoard_Date: TcxComboBox;
    lblBB_WAYLT: TcxLabel;
    lblBB_Connections: TcxLabel;
    lblBulletinBoard_ExecuteFilter: TcxLabel;
    lblBB_MusicLinks: TcxLabel;
    lblBB_StartConnection: TcxLabel;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    layoutBulletinBoardGroup9: TdxLayoutGroup;
    layoutBulletinBoardItem2: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    layoutBulletinBoard_Member: TdxLayoutGroup;
    layoutBulletinBoardItem14: TdxLayoutItem;
    layoutBulletinBoardItem5: TdxLayoutItem;
    layoutBulletinBoardItem9: TdxLayoutItem;
    layoutBulletinBoardItem16: TdxLayoutItem;
    layoutBulletinBoardItem3: TdxLayoutItem;
    layoutBulletinBoardItem19: TdxLayoutItem;
    layoutBulletinBoardGroup3: TdxLayoutGroup;
    layoutBulletinBoardItem1: TdxLayoutItem;
    Shape1: TShape;
    layoutBulletinBoardItem6: TdxLayoutItem;
    Shape2: TShape;
    layoutBulletinBoardGroup5: TdxLayoutGroup;
    layoutBulletinBoardGroup6: TdxLayoutGroup;
    cboPageNav: TcxComboBox;
    lblPageTotal: TcxLabel;
    lblFirst: TcxLabel;
    lblPrevious: TcxLabel;
    lblNext: TcxLabel;
    lblLast: TcxLabel;
    layoutBulletinBoardItem7: TdxLayoutItem;
    layoutBulletinBoardItem8: TdxLayoutItem;
    layoutBulletinBoardItem10: TdxLayoutItem;
    layoutBulletinBoardItem11: TdxLayoutItem;
    layoutBulletinBoardItem13: TdxLayoutItem;
    layoutBulletinBoardItem17: TdxLayoutItem;
    layoutBulletinBoardItem20: TdxLayoutItem;
    imglstBB: TImageList;
    vgridBulletinBoard_Left: TcxDBVerticalGrid;
    vgridBulletinBoard_LeftDBEditorRow1: TcxDBEditorRow;
    cxDBEditorRow1: TcxDBEditorRow;
    cxDBEditorRow2: TcxDBEditorRow;
    vgridBulletinBoard_LeftDBEditorRow2: TcxDBEditorRow;
    cxDBEditorRow3: TcxDBEditorRow;
    cxDBEditorRow4: TcxDBEditorRow;
    vgridBulletinBoard_LeftDBEditorRow8: TcxDBEditorRow;
    cxDBEditorRow5: TcxDBEditorRow;
    vgridBulletinBoard_LeftDBEditorRow6: TcxDBEditorRow;
    vgridBulletinBoard_LeftDBEditorRow5: TcxDBEditorRow;
    vgridBulletinBoard_LeftDBEditorRow7: TcxDBEditorRow;
    lblBB_OpenLink: TcxLabel;
    layoutBulletinBoardItem12: TdxLayoutItem;
    vgridBulletinBoard_LeftDBEditorRow9: TcxDBEditorRow;
    layoutBulletinBoard_Message: TdxLayoutGroup;
    barMain: TdxBarManager;
    mnuConnections: TdxBarButton;
    mnuWAYLT: TdxBarButton;
    mnuStartAConnection: TdxBarButton;
    mnuSendPM: TdxBarButton;
    mnuWebsite: TdxBarButton;
    mnuBlog: TdxBarButton;
    mnuPhotoAlbum: TdxBarButton;
    mnuForumPosts: TdxBarButton;
    popmnuOpenLink: TdxBarPopupMenu;
    popmnuCardView: TdxBarPopupMenu;
    lblClear: TcxLabel;
    layoutBulletinBoardItem18: TdxLayoutItem;
    edtBulletinBoard_PostedBy: TcxButtonEdit;
    layoutBulletinBoardItem21: TdxLayoutItem;
    mnuMusicLinks: TdxBarButton;
    mnuForumProfile: TdxBarButton;
    layoutBulletinBoardItem4: TdxLayoutItem;
    cxComboBox1: TcxComboBox;
    layoutBulletinBoardGroup2: TdxLayoutGroup;
    layoutBulletinBoardGroup7: TdxLayoutGroup;
    layoutBulletinBoardGroup8: TdxLayoutGroup;
    layoutBulletinBoardItem22: TdxLayoutItem;
    cboMemberDirectory_State: TcxComboBox;
    layoutBulletinBoardItem24: TdxLayoutItem;
    cboMemberDirectory_Country: TcxComboBox;
    layoutBulletinBoardItem25: TdxLayoutItem;
    cboMemberDirectory_Gender: TcxComboBox;
    layoutBulletinBoardItem26: TdxLayoutItem;
    cboMemberDirectory_AgeRange: TcxComboBox;
    layoutBulletinBoardGroup10: TdxLayoutGroup;
    layoutBulletinBoardGroup11: TdxLayoutGroup;
    layoutBulletinBoardGroup13: TdxLayoutGroup;
    layoutBulletinBoardGroup14: TdxLayoutGroup;
    layoutBulletinBoardItem27: TdxLayoutItem;
    gridBBMessages: TcxGrid;
    gridviewBBMessages: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    gridviewBBMessagesName: TcxGridDBColumn;
    gridviewBBMessagesGroup: TcxGridDBColumn;
    gridviewBBMessagesBBDatePosted: TcxGridDBColumn;
    gridviewBBMessagesBBTimePosted: TcxGridDBColumn;
    gridviewBBMessagesBBTitle: TcxGridDBColumn;
    gridviewBBMessagesBBMessage: TcxGridDBColumn;
    layoutBulletinBoardItem15: TdxLayoutItem;
    cxLabel1: TcxLabel;
    layoutBulletinBoardItem23: TdxLayoutItem;
    lblPost: TcxLabel;
    layoutBulletinBoardGroup1: TdxLayoutGroup;
    layoutBulletinBoardGroup4: TdxLayoutGroup;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure cboBB_MessagesFromPropertiesChange(Sender: TObject);
    procedure lblBulletinBoard_ExecuteFilterClick(Sender: TObject);
    procedure lblBulletinBoard_ClearFilterClick(Sender: TObject);
    procedure edtBulletinBoard_PostedByKeyPress(Sender: TObject; var Key: Char);
    procedure gridviewMessagesFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure GridMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cboPageNavPropertiesChange(Sender: TObject);
    procedure lblFirstClick(Sender: TObject);
    procedure lblPreviousClick(Sender: TObject);
    procedure lblNextClick(Sender: TObject);
    procedure lblLastClick(Sender: TObject);
    procedure lblBB_ConnectionsClick(Sender: TObject);
    procedure lblBB_WAYLTClick(Sender: TObject);
    procedure lblBB_StartConnectionClick(Sender: TObject);
    procedure lblBB_MusicLinksClick(Sender: TObject);
    procedure lblBB_OpenLinkClick(Sender: TObject);
    procedure mnuConnectionsClick(Sender: TObject);
    procedure mnuWAYLTClick(Sender: TObject);
    procedure mnuStartAConnectionClick(Sender: TObject);
    procedure mnuSendPMClick(Sender: TObject);
    procedure mnuWebsiteClick(Sender: TObject);
    procedure mnuBlogClick(Sender: TObject);
    procedure mnuPhotoAlbumClick(Sender: TObject);
    procedure mnuForumPostsClick(Sender: TObject);
    procedure cxDBEditorRow7EditPropertiesStartClick(Sender: TObject);
    procedure lblPostClick(Sender: TObject);
    procedure edtBulletinBoard_PostedByPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    FCurrentQueryStr: TStringList;
  public
    procedure PrepareModule; override;
    procedure PrepareActive; override;
    procedure SetupScreen;
    procedure PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
  end;

var
  frmBulletinBoard: TfrmBulletinBoard;

implementation

uses
  frm_Main,
  frm_BulletinBoardDLG;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmBulletinBoard.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.FormCreate(Sender: TObject);
begin
  FCurrentQueryStr := TStringList.Create;
  imgBulletinBoard_MemPic.Style.BorderStyle := ebsNone;
  if datMain.LoggedIn then
     lblBulletinBoard_ExecuteFilterClick(self);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.GridMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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

procedure TfrmBulletinBoard.PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
var
  P: TPoint;
begin
  P.X := ALabel.Left;
  P.Y := ALabel.Top  + ALabel.Height + 1;
  P   := ALayout.ClientToScreen(P);
  APopupMenu.Popup(P.X, P.Y);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.PrepareModule;
begin
  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  datMain.qryMems_MiniProfile.Close;
  datMain.qryMemPic.Close;
  datMain.qryMemsAfterScroll(datMain.qryMems_BB);
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
  begin
    layoutBulletinBoard_Member.Caption  := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   ';
    layoutBulletinBoard_Message.Caption := 'Messages  --  ' + datMain.qryMems_BB.FieldByName('BBTitle').AsString;
  end
  else
  begin
    layoutBulletinBoard_Member.Caption  := 'Resident   ';
    layoutBulletinBoard_Message.Caption := 'Messages';
  end;
  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.PrepareActive;
begin
  if Visible then
     gridBBMessages.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.cboBB_MessagesFromPropertiesChange(Sender: TObject);
begin
  lblBulletinBoard_ExecuteFilterClick(Sender);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.lblBulletinBoard_ExecuteFilterClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  FCurrentQueryStr.Clear;
  FCurrentQueryStr := datMain.GetMessages_BB(cboBulletinBoard_MessagesFrom.ItemIndex,
                                             edtBulletinBoard_PostedBy.Text,
                                             cboBulletinBoard_Date.Text);

  datMain.qryMemsAfterScroll(datMain.qryMems_BB);
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
  begin
    layoutBulletinBoard_Member.Caption  := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   ';
    layoutBulletinBoard_Message.Caption := 'Messages  --  ' + datMain.qryMems_BB.FieldByName('BBTitle').AsString;
  end
  else
  begin
    layoutBulletinBoard_Member.Caption  := 'Resident   ';
    layoutBulletinBoard_Message.Caption := 'Messages';
  end;
  datMain.SetupPageNav(datMain.qryMems_BB, cboPageNav, lblPageTotal);
  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.SetupScreen;
var
  AEnabled: Boolean;
begin
  AEnabled                        := (lblPageTotal.Caption <> 'No Results');
  lblFirst.Enabled                := AEnabled;
  lblPrevious.Enabled             := AEnabled;
  lblNext.Enabled                 := AEnabled;
  lblLast.Enabled                 := AEnabled;
  lblBB_Connections.Enabled       := AEnabled;
  lblBB_WAYLT.Enabled             := AEnabled;
  lblBB_StartConnection.Enabled   := AEnabled;
  lblBB_MusicLinks.Enabled        := AEnabled;
  lblBB_OpenLink.Enabled          := AEnabled;
  vgridBulletinBoard_Left.Enabled := AEnabled;
//  gridBBMessages.Enabled          := AEnabled;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.cboPageNavPropertiesChange(Sender: TObject);
begin
  if FCurrentQueryStr.Count = 0 then
     Exit;

  if cboPageNav.Properties.Items.Count = 0 then
     Exit;

  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  datMain.QueryStr_Refresh(datMain.qryMems_BB, FCurrentQueryStr, StrToInt(cboPageNav.Text), cRECORDS_BY_PAGE);
  datMain.qryMemsAfterScroll(datMain.qryMems_BB);
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
  begin
    layoutBulletinBoard_Member.Caption  := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   ';
    layoutBulletinBoard_Message.Caption := 'Messages  --  ' + datMain.qryMems_BB.FieldByName('BBTitle').AsString;
  end
  else
  begin
    layoutBulletinBoard_Member.Caption  := 'Resident   ';
    layoutBulletinBoard_Message.Caption := 'Messages';
  end;
  datMain.SetupPageNav(datMain.qryMems_BB, cboPageNav, lblPageTotal);
  gridBBMessages.SetFocus;
  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.lblBulletinBoard_ClearFilterClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  FCurrentQueryStr.Clear;
  cboBulletinBoard_MessagesFrom.ItemIndex := 0;
  edtBulletinBoard_PostedBy.Text          := EmptyStr;
  cboBulletinBoard_Date.ItemIndex         := 0;

  FCurrentQueryStr := datMain.GetMessages_BB(cboBulletinBoard_MessagesFrom.ItemIndex,
                                             edtBulletinBoard_PostedBy.Text,
                                             cboBulletinBoard_Date.Text);

  datMain.qryMemsAfterScroll(datMain.qryMems_BB);
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
  begin
    layoutBulletinBoard_Member.Caption  := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   ';
    layoutBulletinBoard_Message.Caption := 'Messages  --  ' + datMain.qryMems_BB.FieldByName('BBTitle').AsString;
  end
  else
  begin
    layoutBulletinBoard_Member.Caption  := 'Resident   ';
    layoutBulletinBoard_Message.Caption := 'Messages';
  end;
  datMain.SetupPageNav(datMain.qryMems_BB, cboPageNav, lblPageTotal);
  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.edtBulletinBoard_PostedByKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     lblBulletinBoard_ExecuteFilterClick(Sender);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.lblFirstClick(Sender: TObject);
begin
  datMain.PageNav_First(cboPageNav);
  gridBBMessages.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.lblPreviousClick(Sender: TObject);
begin
  datMain.PageNav_Previous(cboPageNav);
  gridBBMessages.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.lblNextClick(Sender: TObject);
begin
  datMain.PageNav_Next(cboPageNav);
  gridBBMessages.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.lblLastClick(Sender: TObject);
begin
  datMain.PageNav_Last(cboPageNav);
  gridBBMessages.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.gridviewMessagesFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  datMain.qryMemsAfterScroll(datMain.qryMems_BB);
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
  begin
    layoutBulletinBoard_Member.Caption  := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   ';
    layoutBulletinBoard_Message.Caption := 'Messages  --  ' + datMain.qryMems_BB.FieldByName('BBTitle').AsString;
  end
  else
  begin
    layoutBulletinBoard_Member.Caption  := 'Resident   ';
    layoutBulletinBoard_Message.Caption := 'Messages';
  end;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.lblBB_ConnectionsClick(Sender: TObject);
begin
  frmMain.Community.LinkJumpToProfile(datMain.qryMems_MiniProfile.FieldByName('Mem_ID').AsInteger);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.lblBB_WAYLTClick(Sender: TObject);
begin
  frmMain.Community.LinkJumpToWAYLT(datMain.qryMems_MiniProfile.FieldByName('Mem_ID').AsInteger);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.lblBB_StartConnectionClick(Sender: TObject);
begin
  datMain.Launch_StartConnection;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.lblBB_MusicLinksClick(Sender: TObject);
begin
  //
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.lblBB_OpenLinkClick(Sender: TObject);
begin
  with datMain.qryMems_MiniProfile do
  begin
    mnuWebsite.Enabled    := (RecordCount > 0) and (FieldByName('website').AsString <> EmptyStr) and (FieldByName('website').AsString <> 'http://');
    mnuBlog.Enabled       := (RecordCount > 0) and (FieldByName('BlogURL').AsString <> EmptyStr) and (FieldByName('BlogURL').AsString <> 'http://');
    mnuPhotoAlbum.Enabled := (RecordCount > 0) and (FieldByName('PhotoAlbumURL').AsString <> EmptyStr) and (FieldByName('PhotoAlbumURL').AsString <> 'http://');
    mnuForumPosts.Enabled := (RecordCount > 0);
  end;
  PopMenuPopup_Bottom(popmnuOpenLink, lblBB_OpenLink, layoutBulletinBoard);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.mnuConnectionsClick(Sender: TObject);
begin
  lblBB_ConnectionsClick(Self);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.mnuWAYLTClick(Sender: TObject);
begin
  lblBB_WAYLTClick(Self);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.mnuStartAConnectionClick(Sender: TObject);
begin
  lblBB_StartConnectionClick(Self);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.mnuSendPMClick(Sender: TObject);
begin
  datMain.LaunchMem_SendPM;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.mnuWebsiteClick(Sender: TObject);
begin
  datMain.LaunchMem_WebsiteURL;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.mnuBlogClick(Sender: TObject);
begin
  datMain.LaunchMem_BlogURL;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.mnuPhotoAlbumClick(Sender: TObject);
begin
  datMain.LaunchMem_PhotoAlbumURL;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.mnuForumPostsClick(Sender: TObject);
begin
  datMain.LaunchMem_ForumPosts;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.cxDBEditorRow7EditPropertiesStartClick(Sender: TObject);
begin
  datMain.LaunchBBMessage_Link;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.lblPostClick(Sender: TObject);
begin
  with TfrmBulletinBoardDLG.Create(Application) do
  begin
    if AddMessage(cboBulletinBoard_MessagesFrom.ItemIndex) = mrOK then
    begin
      Self.Refresh;
      Self.Repaint;
      lblBulletinBoard_ExecuteFilterClick(Sender);
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoard.edtBulletinBoard_PostedByPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  lblBulletinBoard_ExecuteFilterClick(Sender);
end;
//***********************************************************************************************************

end.
