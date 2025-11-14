unit frm_WAYLT;

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
  TfrmWAYLT = class(TfrmAppModule)
    pnlMain: TPanel;
    layoutAppModuleItem1: TdxLayoutItem;
    layoutWAYLT: TdxLayoutControl;
    Shape3: TShape;
    imgWAYLT_MemPic: TcxDBImage;
    gridWAYLT: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    cboWAYLT_MessagesFrom: TcxComboBox;
    cboWAYLT_Date: TcxComboBox;
    lblWAYLT: TcxLabel;
    lblConnections: TcxLabel;
    lblWAYLT_ExecuteFilter: TcxLabel;
    lblMusicLinks: TcxLabel;
    lblStartConnection: TcxLabel;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    layoutWAYLTGroup9: TdxLayoutGroup;
    layoutWAYLTItem2: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    layoutWAYLT_Member: TdxLayoutGroup;
    layoutWAYLTItem14: TdxLayoutItem;
    layoutWAYLTItem5: TdxLayoutItem;
    layoutWAYLTItem9: TdxLayoutItem;
    layoutWAYLTItem16: TdxLayoutItem;
    layoutWAYLTItem3: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    layoutWAYLTItem19: TdxLayoutItem;
    layoutWAYLTGroup3: TdxLayoutGroup;
    layoutWAYLTItem1: TdxLayoutItem;
    Shape1: TShape;
    layoutWAYLTItem6: TdxLayoutItem;
    Shape2: TShape;
    layoutWAYLTGroup5: TdxLayoutGroup;
    layoutWAYLTGroup6: TdxLayoutGroup;
    cboPageNav: TcxComboBox;
    lblPageTotal: TcxLabel;
    lblFirst: TcxLabel;
    lblPrevious: TcxLabel;
    lblNext: TcxLabel;
    lblLast: TcxLabel;
    layoutWAYLTItem7: TdxLayoutItem;
    layoutWAYLTItem8: TdxLayoutItem;
    layoutWAYLTItem10: TdxLayoutItem;
    layoutWAYLTItem11: TdxLayoutItem;
    layoutWAYLTItem13: TdxLayoutItem;
    layoutWAYLTItem17: TdxLayoutItem;
    layoutWAYLTItem20: TdxLayoutItem;
    imglstWAYLT: TImageList;
    vgridWAYLT_Left: TcxDBVerticalGrid;
    vgridWAYLT_LeftDBEditorRow1: TcxDBEditorRow;
    cxDBEditorRow1: TcxDBEditorRow;
    cxDBEditorRow2: TcxDBEditorRow;
    vgridWAYLT_LeftDBEditorRow2: TcxDBEditorRow;
    cxDBEditorRow3: TcxDBEditorRow;
    cxDBEditorRow4: TcxDBEditorRow;
    vgridWAYLT_LeftDBEditorRow8: TcxDBEditorRow;
    cxDBEditorRow5: TcxDBEditorRow;
    vgridWAYLT_LeftDBEditorRow6: TcxDBEditorRow;
    vgridWAYLT_LeftDBEditorRow5: TcxDBEditorRow;
    vgridWAYLT_LeftDBEditorRow7: TcxDBEditorRow;
    lblOpenLink: TcxLabel;
    layoutWAYLTItem12: TdxLayoutItem;
    gridWAYLTDBCardView1: TcxGridDBCardView;
    gridWAYLTDBCardView1Mem_ID: TcxGridDBCardViewRow;
    gridWAYLTDBCardView1DatePosted: TcxGridDBCardViewRow;
    gridWAYLTDBCardView1TimePosted: TcxGridDBCardViewRow;
    gridWAYLTDBCardView1Title: TcxGridDBCardViewRow;
    vgridWAYLT_LeftDBEditorRow9: TcxDBEditorRow;
    layoutWAYLTItem23: TdxLayoutItem;
    vgridWAYLT: TcxDBVerticalGrid;
    vgridWAYLT_Title: TcxDBEditorRow;
    vgridWAYLT_Artist: TcxDBEditorRow;
    cxDBEditorRow8: TcxDBEditorRow;
    vgridWAYLT_Album: TcxDBEditorRow;
    vgridWAYLTDBEditorRow2: TcxDBEditorRow;
    layoutWAYLTItem15: TdxLayoutItem;
    Shape6: TShape;
    layoutWAYLTGroup1: TdxLayoutGroup;
    vgridWAYLTDBEditorRow5: TcxDBEditorRow;
    vgridWAYLTDBEditorRow6: TcxDBEditorRow;
    gridWAYLTDBCardView1Name: TcxGridDBCardViewRow;
    layoutWAYLT_Message: TdxLayoutGroup;
    layoutWAYLTGroup8: TdxLayoutGroup;
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
    lblPost: TcxLabel;
    layoutWAYLTItem18: TdxLayoutItem;
    vgridWAYLTDBEditorRow1: TcxDBEditorRow;
    layoutWAYLTItem21: TdxLayoutItem;
    cboGenre: TcxComboBox;
    layoutWAYLTItem22: TdxLayoutItem;
    cxLabel1: TcxLabel;
    layoutWAYLTItem24: TdxLayoutItem;
    cxLabel2: TcxLabel;
    layoutWAYLTItem25: TdxLayoutItem;
    cxLabel3: TcxLabel;
    layoutWAYLTGroup2: TdxLayoutGroup;
    gridWAYLTDBCardView1Group: TcxGridDBCardViewRow;
    mnuMusicLinks: TdxBarButton;
    mnuForumProfile: TdxBarButton;
    layoutWAYLTGroup4: TdxLayoutGroup;
    layoutWAYLTGroup7: TdxLayoutGroup;
    layoutWAYLTItem26: TdxLayoutItem;
    cxComboBox1: TcxComboBox;
    layoutWAYLTGroup11: TdxLayoutGroup;
    layoutWAYLTItem28: TdxLayoutItem;
    edtWAYLT_PostedBy: TcxComboBox;
    layoutWAYLTItem4: TdxLayoutItem;
    cboMemberDirectory_Gender: TcxComboBox;
    layoutWAYLTGroup10: TdxLayoutGroup;
    layoutWAYLTItem27: TdxLayoutItem;
    cboMemberDirectory_State: TcxComboBox;
    layoutWAYLTItem29: TdxLayoutItem;
    cboMemberDirectory_Country: TcxComboBox;
    layoutWAYLTGroup12: TdxLayoutGroup;
    layoutWAYLTGroup13: TdxLayoutGroup;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure cboWAYLT_MessagesFromPropertiesChange(Sender: TObject);
    procedure lblWAYLT_ExecuteFilterClick(Sender: TObject);
    procedure lblWAYLT_ClearFilterClick(Sender: TObject);
    procedure edtWAYLT_PostedByKeyPress(Sender: TObject; var Key: Char);
    procedure gridviewMessagesFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure GridMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cboPageNavPropertiesChange(Sender: TObject);
    procedure lblFirstClick(Sender: TObject);
    procedure lblPreviousClick(Sender: TObject);
    procedure lblNextClick(Sender: TObject);
    procedure lblLastClick(Sender: TObject);
    procedure lblConnectionsClick(Sender: TObject);
    procedure lblWAYLTClick(Sender: TObject);
    procedure lblStartConnectionClick(Sender: TObject);
    procedure lblMusicLinksClick(Sender: TObject);
    procedure lblOpenLinkClick(Sender: TObject);
    procedure mnuConnectionsClick(Sender: TObject);
    procedure mnuWAYLTClick(Sender: TObject);
    procedure mnuStartAConnectionClick(Sender: TObject);
    procedure mnuSendPMClick(Sender: TObject);
    procedure mnuWebsiteClick(Sender: TObject);
    procedure mnuBlogClick(Sender: TObject);
    procedure mnuPhotoAlbumClick(Sender: TObject);
    procedure mnuForumPostsClick(Sender: TObject);
    procedure vgridWAYLT_TitleEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure vgridWAYLT_ArtistEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure vgridWAYLT_AlbumEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure lblPostClick(Sender: TObject);
    procedure edtWAYLT_PostedByPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    FCurrentQueryStr: TStringList;
  public
    procedure PrepareModule; override;
    procedure PrepareActive; override;
    procedure SetupScreen;
    procedure PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
  end;

var
  frmWAYLT: TfrmWAYLT;

implementation

uses
  frm_Main,
  frm_WAYLTDLG;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmWAYLT.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.FormCreate(Sender: TObject);
begin
  FCurrentQueryStr := TStringList.Create;
  imgWAYLT_MemPic.Style.BorderStyle := ebsNone;
  if datMain.LoggedIn then
     lblWAYLT_ExecuteFilterClick(self);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.GridMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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

procedure TfrmWAYLT.PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
var
  P: TPoint;
begin
  P.X := ALabel.Left;
  P.Y := ALabel.Top  + ALabel.Height + 1;
  P   := ALayout.ClientToScreen(P);
  APopupMenu.Popup(P.X, P.Y);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.PrepareModule;
begin
  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  datMain.qryMems_MiniProfile.Close;
  datMain.qryMemPic.Close;
  datMain.qryMemsAfterScroll(datMain.qryWAYLT);
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
  begin
    layoutWAYLT_Member.Caption  := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   ';
    layoutWAYLT_Message.Caption := 'What I''m Playing  --  ' + datMain.qryWAYLT.FieldByName('AVTitle').AsString;
  end
  else
  begin
    layoutWAYLT_Member.Caption  := 'Resident   ';
    layoutWAYLT_Message.Caption := 'What I''m Playing';
  end;
  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.PrepareActive;
begin
  if Visible then
     gridWAYLT.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.cboWAYLT_MessagesFromPropertiesChange(Sender: TObject);
begin
  lblWAYLT_ExecuteFilterClick(Sender);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.lblWAYLT_ExecuteFilterClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  FCurrentQueryStr.Clear;
  FCurrentQueryStr := datMain.GetWAYLT(cboWAYLT_MessagesFrom.ItemIndex,
                                             cboGenre.Text,
                                             edtWAYLT_PostedBy.Text,
                                             cboWAYLT_Date.Text);

  datMain.LoadMemberPics(datMain.qryWAYLTMemPic, datMain.qryWAYLT);
  datMain.qryMemsAfterScroll(datMain.qryWAYLT);
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
  begin
    layoutWAYLT_Member.Caption  := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   ';
    layoutWAYLT_Message.Caption := 'What I''m Playing  --  ' + datMain.qryWAYLT.FieldByName('AVTitle').AsString;
  end
  else
  begin
    layoutWAYLT_Member.Caption  := 'Resident   ';
    layoutWAYLT_Message.Caption := 'What I''m Playing';
  end;
  datMain.SetupPageNav(datMain.qryWAYLT, cboPageNav, lblPageTotal);
  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.SetupScreen;
var
  AEnabled: Boolean;
begin
  AEnabled                   := (lblPageTotal.Caption <> 'No Results');
  lblFirst.Enabled           := AEnabled;
  lblPrevious.Enabled        := AEnabled;
  lblNext.Enabled            := AEnabled;
  lblLast.Enabled            := AEnabled;
  lblConnections.Enabled     := AEnabled;
  lblWAYLT.Enabled           := AEnabled;
  lblStartConnection.Enabled := AEnabled;
  lblMusicLinks.Enabled      := AEnabled;
  lblOpenLink.Enabled        := AEnabled;
  vgridWAYLT_Left.Enabled    := AEnabled;
  vgridWAYLT.Enabled         := AEnabled;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.cboPageNavPropertiesChange(Sender: TObject);
begin
  if FCurrentQueryStr.Count = 0 then
     Exit;

  if cboPageNav.Properties.Items.Count = 0 then
     Exit;

  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  datMain.QueryStr_Refresh(datMain.qryWAYLT, FCurrentQueryStr, StrToInt(cboPageNav.Text), cRECORDS_BY_PAGE);
  datMain.LoadMemberPics(datMain.qryWAYLTMemPic, datMain.qryWAYLT);
  datMain.qryMemsAfterScroll(datMain.qryWAYLT);
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
  begin
    layoutWAYLT_Member.Caption  := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   ';
    layoutWAYLT_Message.Caption := 'What I''m Playing  --  ' + datMain.qryWAYLT.FieldByName('AVTitle').AsString;
  end
  else
  begin
    layoutWAYLT_Member.Caption  := 'Resident   ';
    layoutWAYLT_Message.Caption := 'What I''m Playing';
  end;
  datMain.SetupPageNav(datMain.qryWAYLT, cboPageNav, lblPageTotal);
  gridWAYLT.SetFocus;
  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.lblWAYLT_ClearFilterClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  FCurrentQueryStr.Clear;
  cboWAYLT_MessagesFrom.ItemIndex := 0;
  edtWAYLT_PostedBy.Text          := EmptyStr;
  cboWAYLT_Date.ItemIndex         := 0;

  FCurrentQueryStr := datMain.GetWAYLT(cboWAYLT_MessagesFrom.ItemIndex,
                                             cboGenre.Text,
                                             edtWAYLT_PostedBy.Text,
                                             cboWAYLT_Date.Text);

  datMain.LoadMemberPics(datMain.qryWAYLTMemPic, datMain.qryWAYLT);
  datMain.qryMemsAfterScroll(datMain.qryWAYLT);
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
  begin
    layoutWAYLT_Member.Caption  := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   ';
    layoutWAYLT_Message.Caption := 'What I''m Playing  --  ' + datMain.qryWAYLT.FieldByName('AVTitle').AsString;
  end
  else
  begin
    layoutWAYLT_Member.Caption  := 'Resident   ';
    layoutWAYLT_Message.Caption := 'What I''m Playing';
  end;
  datMain.SetupPageNav(datMain.qryWAYLT, cboPageNav, lblPageTotal);
  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.edtWAYLT_PostedByKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     lblWAYLT_ExecuteFilterClick(Sender);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.lblFirstClick(Sender: TObject);
begin
  datMain.PageNav_First(cboPageNav);
  gridWAYLT.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.lblPreviousClick(Sender: TObject);
begin
  datMain.PageNav_Previous(cboPageNav);
  gridWAYLT.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.lblNextClick(Sender: TObject);
begin
  datMain.PageNav_Next(cboPageNav);
  gridWAYLT.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.lblLastClick(Sender: TObject);
begin
  datMain.PageNav_Last(cboPageNav);
  gridWAYLT.SetFocus;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.gridviewMessagesFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  datMain.qryMemsAfterScroll(datMain.qryWAYLT);
  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
  begin
    layoutWAYLT_Member.Caption  := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   ';
    layoutWAYLT_Message.Caption := 'What I''m Playing  --  ' + datMain.qryWAYLT.FieldByName('AVTitle').AsString;
  end
  else
  begin
    layoutWAYLT_Member.Caption  := 'Resident   ';
    layoutWAYLT_Message.Caption := 'What I''m Playing';
  end;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.lblConnectionsClick(Sender: TObject);
begin
  frmMain.Community.LinkJumpToProfile(datMain.qryMems_MiniProfile.FieldByName('Mem_ID').AsInteger);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.lblWAYLTClick(Sender: TObject);
begin
  frmMain.Community.LinkJumpToWAYLT(datMain.qryMems_MiniProfile.FieldByName('Mem_ID').AsInteger);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.lblStartConnectionClick(Sender: TObject);
begin
  datMain.Launch_StartConnection;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.lblMusicLinksClick(Sender: TObject);
begin
  datMain.LaunchMem_SendPM;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.lblOpenLinkClick(Sender: TObject);
begin
  with datMain.qryMems_MiniProfile do
  begin
    mnuWebsite.Enabled    := (RecordCount > 0) and (FieldByName('website').AsString <> EmptyStr) and (FieldByName('website').AsString <> 'http://');
    mnuBlog.Enabled       := (RecordCount > 0) and (FieldByName('BlogURL').AsString <> EmptyStr) and (FieldByName('BlogURL').AsString <> 'http://');
    mnuPhotoAlbum.Enabled := (RecordCount > 0) and (FieldByName('PhotoAlbumURL').AsString <> EmptyStr) and (FieldByName('PhotoAlbumURL').AsString <> 'http://');
    mnuForumPosts.Enabled := (RecordCount > 0);
  end;
  PopMenuPopup_Bottom(popmnuOpenLink, lblOpenLink, layoutWAYLT);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.mnuConnectionsClick(Sender: TObject);
begin
  lblConnectionsClick(Self);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.mnuWAYLTClick(Sender: TObject);
begin
  lblWAYLTClick(Self);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.mnuStartAConnectionClick(Sender: TObject);
begin
  lblStartConnectionClick(Self);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.mnuSendPMClick(Sender: TObject);
begin
//  lblMusicLinksClick(Self);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.mnuWebsiteClick(Sender: TObject);
begin
  datMain.LaunchMem_WebsiteURL;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.mnuBlogClick(Sender: TObject);
begin
  datMain.LaunchMem_BlogURL;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.mnuPhotoAlbumClick(Sender: TObject);
begin
  datMain.LaunchMem_PhotoAlbumURL;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.mnuForumPostsClick(Sender: TObject);
begin
  datMain.LaunchMem_ForumPosts;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.vgridWAYLT_TitleEditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  datMain.Launch109Music_Search(datMain.qryWAYLT.FieldByName('AVTitle').AsString, datMain.qryWAYLT.FieldByName('AVArtist').AsString);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.vgridWAYLT_ArtistEditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  datMain.Launch109Music_Search(EmptyStr, datMain.qryWAYLT.FieldByName('AVArtist').AsString);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.vgridWAYLT_AlbumEditPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  datMain.Launch109Music_Search(EmptyStr, datMain.qryWAYLT.FieldByName('AVArtist').AsString, datMain.qryWAYLT.FieldByName('AVAlbum').AsString);
end;
//***********************************************************************************************************

procedure TfrmWAYLT.lblPostClick(Sender: TObject);
begin
  with TfrmWAYLTDLG.Create(Application) do
  begin
    if AddMessage = mrOK then
    begin
      Self.Refresh;
      Self.Repaint;
      lblWAYLT_ExecuteFilterClick(Sender);
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmWAYLT.edtWAYLT_PostedByPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  lblWAYLT_ExecuteFilterClick(Sender);
end;
//***********************************************************************************************************

end.
