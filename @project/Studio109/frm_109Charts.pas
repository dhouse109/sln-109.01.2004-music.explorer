unit frm_109Charts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_AppModule, dxLayoutControl, cxControls, dat_Main, cxVGrid,
  cxDBVGrid, cxInplaceContainer, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxContainer,
  cxEdit, cxImage, cxDBEdit, ExtCtrls, cxPC, dxBar, cxListBox, cxGridCardView,
  cxGridDBCardView, adodb, ComCtrls, cxGraphics, ShellAPI, DB, cxGridViewData,
  cxCustomData, cxButtonEdit;

type
  Tfrm109Charts = class(TfrmAppModule)
    pnlMain: TPanel;
    layoutAppModuleItem1: TdxLayoutItem;
    layoutMusic: TdxLayoutControl;
    dxLayoutGroup5: TdxLayoutGroup;
    barMusic: TdxBarManager;
    layoutMusicGroup1: TdxLayoutGroup;
    layoutMusicItem1: TdxLayoutItem;
    page109Music: TcxPageControl;
    tabWIP: TcxTabSheet;
    layoutWAYLT: TdxLayoutControl;
    Shape3: TShape;
    Shape1: TShape;
    Shape6: TShape;
    imgWAYLT_MemPic: TcxDBImage;
    lblWAYLT: TcxLabel;
    lblConnections: TcxLabel;
    lblMusicLinks: TcxLabel;
    lblStartConnection: TcxLabel;
    vgridWAYLT_Mem: TcxDBVerticalGrid;
    vgridWAYLT_Mem_Name: TcxDBEditorRow;
    vgridWAYLT_Mem_Nickname: TcxDBEditorRow;
    vgridWAYLT_Mem_Gender: TcxDBEditorRow;
    vgridWAYLT_Mem_Age: TcxDBEditorRow;
    vgridWAYLT_Mem_Location: TcxDBEditorRow;
    vgridWAYLT_Mem_Hometown: TcxDBEditorRow;
    vgridWAYLT_Mem_Occupation: TcxDBEditorRow;
    vgridWAYLT_Mem_AboutMe: TcxDBEditorRow;
    vgridWAYLT_Mem_Schools: TcxDBEditorRow;
    vgridWAYLT_Mem_FavArtists: TcxDBEditorRow;
    vgridWAYLT_Mem_Title: TcxDBEditorRow;
    vgridWAYLT_Mem_Group: TcxDBEditorRow;
    lblMemOpenLink: TcxLabel;
    gridWAYLT_Summary: TcxGrid;
    gridviewWAYLT_Summary: TcxGridDBTableView;
    gridviewWAYLT_SummaryAVTitle: TcxGridDBColumn;
    gridviewWAYLT_SummaryAVArtist: TcxGridDBColumn;
    gridviewWAYLT_SummaryAVAlbum: TcxGridDBColumn;
    gridviewWAYLT_SummaryAVGenre: TcxGridDBColumn;
    gridviewWAYLT_SummaryTotalPosts: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    gridWAYLT_Summary_Posts: TcxGrid;
    gridviewWAYLT_Summary_Posts: TcxGridDBTableView;
    gridviewWAYLT_Summary_PostsDatePosted: TcxGridDBColumn;
    gridviewWAYLT_Summary_PostsName: TcxGridDBColumn;
    gridviewWAYLT_Summary_PostsMessage: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutGroup1: TdxLayoutGroup;
    layoutWAYLTGroup9: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    layoutWAYLTGroup8: TdxLayoutGroup;
    layoutWAYLTItem7: TdxLayoutItem;
    layoutWAYLTItem15: TdxLayoutItem;
    layoutWAYLT_Message: TdxLayoutGroup;
    layoutWAYLTItem8: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    layoutWAYLTGroup5: TdxLayoutGroup;
    layoutWAYLTItem19: TdxLayoutItem;
    layoutWAYLTGroup3: TdxLayoutGroup;
    layoutWAYLTItem14: TdxLayoutItem;
    layoutWAYLTItem9: TdxLayoutItem;
    layoutWAYLTItem5: TdxLayoutItem;
    layoutWAYLTItem3: TdxLayoutItem;
    layoutWAYLTItem12: TdxLayoutItem;
    layoutWAYLTItem16: TdxLayoutItem;
    layoutWAYLTItem20: TdxLayoutItem;
    layoutMusicGroup4: TdxLayoutGroup;
    mnuMemWebsite: TdxBarButton;
    mnuMemBlog: TdxBarButton;
    mnuMemPhotoAlbum: TdxBarButton;
    mnuMemForumPosts: TdxBarButton;
    popmnuMemOpenLink: TdxBarPopupMenu;
    layoutWAYLTItem17: TdxLayoutItem;
    lblWAYLT_Search109: TcxLabel;
    layoutWAYLTItem21: TdxLayoutItem;
    lblWAYLT_Preview: TcxLabel;
    layoutWAYLTItem22: TdxLayoutItem;
    lblWAYLT_Download: TcxLabel;
    layoutWAYLTGroup12: TdxLayoutGroup;
    layoutMusicItem2: TdxLayoutItem;
    cboWAYLT_Date: TcxComboBox;
    layoutMusicItem6: TdxLayoutItem;
    cboWAYLT_Genre: TcxComboBox;
    layoutMusicItem7: TdxLayoutItem;
    cboWAYLT_Gender: TcxComboBox;
    layoutMusicItem8: TdxLayoutItem;
    cboWAYLT_AgeRange: TcxComboBox;
    layoutMusicItem10: TdxLayoutItem;
    cboWAYLT_State: TcxComboBox;
    layoutMusicItem11: TdxLayoutItem;
    cboWAYLT_Country: TcxComboBox;
    layoutMusicItem13: TdxLayoutItem;
    lblWAYLT_BeginSearch: TcxLabel;
    layoutMusicItem14: TdxLayoutItem;
    lblWAYLT_ClearSearch: TcxLabel;
    layoutMusicGroup3: TdxLayoutGroup;
    layoutMusicGroup2: TdxLayoutGroup;
    layoutMusicGroup5: TdxLayoutGroup;
    layoutMusicGroup6: TdxLayoutGroup;
    mnuMemSendPM: TdxBarButton;
    mnuMemForumProfile: TdxBarButton;
    layoutMusicItem3: TdxLayoutItem;
    cboWAYLT_MessagesFrom: TcxComboBox;
    layoutMusicItem4: TdxLayoutItem;
    cxComboBox1: TcxComboBox;
    layoutMusicItem5: TdxLayoutItem;
    Shape2: TShape;
    layoutMusicGroup9: TdxLayoutGroup;
    layoutMusicGroup10: TdxLayoutGroup;
    layoutMusicGroup11: TdxLayoutGroup;
    layoutMusicItem9: TdxLayoutItem;
    cxComboBox2: TcxComboBox;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lblWIPClick(Sender: TObject);
    procedure lblMusicClick(Sender: TObject);
    procedure lblMyFavoritesClick(Sender: TObject);
    procedure lblTopDownloadsClick(Sender: TObject);
    procedure lblWAYLT_BeginSearchClick(Sender: TObject);
    procedure lblWAYLT_ClearSearchClick(Sender: TObject);
    procedure gridviewWAYLT_SummaryFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gridviewWAYLT_Summary_PostsFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure lblMemOpenLinkClick(Sender: TObject);
    procedure lblConnectionsClick(Sender: TObject);
    procedure lblWAYLTClick(Sender: TObject);
    procedure lblStartConnectionClick(Sender: TObject);
    procedure lblMusicLinksClick(Sender: TObject);
    procedure mnuMemWebsiteClick(Sender: TObject);
    procedure mnuMemBlogClick(Sender: TObject);
    procedure mnuMemPhotoAlbumClick(Sender: TObject);
    procedure mnuMemForumPostsClick(Sender: TObject);
    procedure cboWAYLT_DatePropertiesChange(Sender: TObject);
    procedure cboWAYLT_GenreKeyPress(Sender: TObject; var Key: Char);
  private
    FCurrentQueryStr: TStringList;
    FQueryStr_Browse109: TStringList;
    FQueryStr_MyFav: TStringList;


    FCurrentQuery: TADOQuery;
    FGridView: TcxGridDBTableView;
    FGridColumn: TcxGridDBColumn;

    FClearing: Boolean;
  public
    procedure PrepareModule; override;
    procedure PrepareActive; override;
    procedure PopMenuPopup_Right(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
    procedure PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
  end;

var
  frm109Charts: Tfrm109Charts;

implementation

uses
  frm_Main;

{$R *.dfm}

//***********************************************************************************************************

procedure Tfrm109Charts.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.FormCreate(Sender: TObject);
begin
  LockWindowUpdate(Self.Handle);
  Screen.Cursor := crHourGlass;

  FCurrentQueryStr    := TStringList.Create;
  FQueryStr_Browse109 := TStringList.Create;
  FQueryStr_MyFav     := TStringList.Create;
  FClearing           := False;

  Screen.Cursor := crDefault;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.PrepareModule;
begin
//
end;
//***********************************************************************************************************

procedure Tfrm109Charts.PrepareActive;
begin
//
end;
//***********************************************************************************************************

procedure Tfrm109Charts.PopMenuPopup_Right(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
var
  P: TPoint;
begin
  P.X := ALabel.Left + ALabel.Width + 3;
  P.Y := ALabel.Top  + (ALabel.Height div 2);
  P   := ALayout.ClientToScreen(P);
  APopupMenu.Popup(P.X, P.Y);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
var
  P: TPoint;
begin
  P.X := ALabel.Left;
  P.Y := ALabel.Top  + ALabel.Height + 1;
  P   := ALayout.ClientToScreen(P);
  APopupMenu.Popup(P.X, P.Y);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.GridMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  p : TPoint;
  hTest : TcxCustomGridHitTest;
  aGridSite: TcxGridSite;

begin
  if not (Sender is TcxGridSite) then
     Exit;

  aGridSite     := TcxGridSite(Sender);
  FGridView     := TcxGridDBTableView(aGridSite.GridView);
  FCurrentQuery := TADOQuery(FGridView.DataController.DataSource.DataSet);

  if Button = mbRight then
  begin
    FGridColumn := nil;
    p           := aGridSite.ClientToScreen(Point(X, Y));
    hTest       := FGridView.ViewInfo.GetHitTest(X, Y);
    if hTest.HitTestCode in [htColumnHeader, htColumnHeaderHorzSizingEdge, htColumnHeaderFilterButton, htHeader] then
    begin
      if hTest is TcxGridColumnHeaderHitTest then
         FGridColumn := TcxGridDBColumn(TcxGridColumnHeaderHitTest(hTest).Column);
      if FGridColumn <> nil then
      begin
        //SetPopupItems_Grid(FGridColumn, False);
        //popmnuGrid.Popup(p.X, p.Y);
      end;
    end
    else if hTest.HitTestCode = htCell then
    begin
      //if popmnuTrack.ItemLinks.Count > 0 then
//      begin
//        popmnuTrack.Popup(p.X, p.Y);
//      end;
    end
  end;
end;
//***********************************************************************************************************

procedure Tfrm109Charts.lblWIPClick(Sender: TObject);
begin
  page109Music.ActivePage := tabWIP;
end;
//***********************************************************************************************************

procedure Tfrm109Charts.lblMusicClick(Sender: TObject);
begin
end;
//***********************************************************************************************************

procedure Tfrm109Charts.lblMyFavoritesClick(Sender: TObject);
begin
end;
//***********************************************************************************************************

procedure Tfrm109Charts.lblTopDownloadsClick(Sender: TObject);
begin
end;
//***********************************************************************************************************

procedure Tfrm109Charts.lblWAYLT_BeginSearchClick(Sender: TObject);
var
  AAgeRangeLow,
  AAgeRangeHigh: Integer;
  AGender: String;
begin
  if FClearing then
     Exit;

  LockWindowUpdate(Self.Handle);
  if cboWAYLT_AgeRange.ItemIndex = 1 then
  begin
    AAgeRangeLow  := 13;
    AAgeRangeHigh := 17;
  end
  else
  if cboWAYLT_AgeRange.ItemIndex = 2 then
  begin
    AAgeRangeLow  := 18;
    AAgeRangeHigh := 22;
  end
  else
  if cboWAYLT_AgeRange.ItemIndex = 3 then
  begin
    AAgeRangeLow  := 23;
    AAgeRangeHigh := 27;
  end
  else
  if cboWAYLT_AgeRange.ItemIndex = 4 then
  begin
    AAgeRangeLow  := 28;
    AAgeRangeHigh := 32;
  end
  else
  if cboWAYLT_AgeRange.ItemIndex = 5 then
  begin
    AAgeRangeLow  := 33;
    AAgeRangeHigh := 37;
  end
  else
  if cboWAYLT_AgeRange.ItemIndex = 6 then
  begin
    AAgeRangeLow  := 38;
    AAgeRangeHigh := 100;
  end
  else
  begin
    AAgeRangeLow  := -1;
    AAgeRangeHigh := -1;
  end;

  if cboWAYLT_Gender.Text = 'Male' then
     AGender := 'M'
  else
  if cboWAYLT_Gender.Text = 'Female' then
     AGender := 'F'
  else
     AGender := EmptyStr;

  datMain.GetWAYLT_Summary(cboWAYLT_Date.Text, cboWAYLT_Genre.Text, AGender, '', cboWAYLT_State.Text, cboWAYLT_Country.Text, '', AAgeRangeLow, AAgeRangeHigh);
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.lblWAYLT_ClearSearchClick(Sender: TObject);
begin
  FClearing                   := True;
  cboWAYLT_Date.Text          := 'Today';
  cboWAYLT_Genre.Text         := EmptyStr;
  cboWAYLT_Gender.ItemIndex   := 0;
  //edtWAYLT_City.Text          := EmptyStr;
  cboWAYLT_State.ItemIndex    := 0;
  cboWAYLT_Country.ItemIndex  := 0;
  //edtWAYLT_School.Text        := EmptyStr;
  cboWAYLT_AgeRange.ItemIndex := 0;
  FClearing                   := False;
  lblWAYLT_BeginSearchClick(Self);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.gridviewWAYLT_SummaryFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  AAgeRangeLow,
  AAgeRangeHigh: Integer;
  AGender: String;
begin
  if cboWAYLT_AgeRange.ItemIndex = 1 then
  begin
    AAgeRangeLow  := 13;
    AAgeRangeHigh := 17;
  end
  else
  if cboWAYLT_AgeRange.ItemIndex = 2 then
  begin
    AAgeRangeLow  := 18;
    AAgeRangeHigh := 22;
  end
  else
  if cboWAYLT_AgeRange.ItemIndex = 3 then
  begin
    AAgeRangeLow  := 23;
    AAgeRangeHigh := 27;
  end
  else
  if cboWAYLT_AgeRange.ItemIndex = 4 then
  begin
    AAgeRangeLow  := 28;
    AAgeRangeHigh := 32;
  end
  else
  if cboWAYLT_AgeRange.ItemIndex = 5 then
  begin
    AAgeRangeLow  := 33;
    AAgeRangeHigh := 37;
  end
  else
  if cboWAYLT_AgeRange.ItemIndex = 6 then
  begin
    AAgeRangeLow  := 38;
    AAgeRangeHigh := 100;
  end
  else
  begin
    AAgeRangeLow  := -1;
    AAgeRangeHigh := -1;
  end;

  if cboWAYLT_Gender.Text = 'Male' then
     AGender := 'M'
  else
  if cboWAYLT_Gender.Text = 'Female' then
     AGender := 'F'
  else
     AGender := EmptyStr;


  datMain.qryWAYLT_SummaryAfterScroll(datMain.qryWAYLT_Summary, AGender, '', cboWAYLT_State.Text, cboWAYLT_Country.Text, '', AAgeRangeLow, AAgeRangeHigh);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.gridviewWAYLT_Summary_PostsFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  datMain.qryMemsAfterScroll(datMain.qryWAYLT_Summary_Posts);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.lblMemOpenLinkClick(Sender: TObject);
begin
  with datMain.qryMems_MiniProfile do
  begin
    mnuMemWebsite.Enabled    := (RecordCount > 0) and (FieldByName('website').AsString <> EmptyStr) and (FieldByName('website').AsString <> 'http://');
    mnuMemBlog.Enabled       := (RecordCount > 0) and (FieldByName('BlogURL').AsString <> EmptyStr) and (FieldByName('BlogURL').AsString <> 'http://');
    mnuMemPhotoAlbum.Enabled := (RecordCount > 0) and (FieldByName('PhotoAlbumURL').AsString <> EmptyStr) and (FieldByName('PhotoAlbumURL').AsString <> 'http://');
    mnuMemForumPosts.Enabled := (RecordCount > 0);
  end;
  PopMenuPopup_Bottom(popmnuMemOpenLink, lblMemOpenLink, layoutWAYLT);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.lblConnectionsClick(Sender: TObject);
begin
  frmMain.Community.LinkJumpToProfile(datMain.qryMems_MiniProfile.FieldByName('Mem_ID').AsInteger);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.lblWAYLTClick(Sender: TObject);
begin
  frmMain.Community.LinkJumpToWAYLT(datMain.qryMems_MiniProfile.FieldByName('Mem_ID').AsInteger);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.lblStartConnectionClick(Sender: TObject);
begin
  datMain.Launch_StartConnection;
end;
//***********************************************************************************************************

procedure Tfrm109Charts.lblMusicLinksClick(Sender: TObject);
begin
  datMain.LaunchMem_SendPM;
end;
//***********************************************************************************************************

procedure Tfrm109Charts.mnuMemWebsiteClick(Sender: TObject);
begin
  datMain.LaunchMem_WebsiteURL;
end;
//***********************************************************************************************************

procedure Tfrm109Charts.mnuMemBlogClick(Sender: TObject);
begin
  datMain.LaunchMem_BlogURL;
end;
//***********************************************************************************************************

procedure Tfrm109Charts.mnuMemPhotoAlbumClick(Sender: TObject);
begin
  datMain.LaunchMem_PhotoAlbumURL;
end;
//***********************************************************************************************************

procedure Tfrm109Charts.mnuMemForumPostsClick(Sender: TObject);
begin
  datMain.LaunchMem_ForumPosts;
end;
//***********************************************************************************************************

procedure Tfrm109Charts.cboWAYLT_DatePropertiesChange(Sender: TObject);
begin
  lblWAYLT_BeginSearchClick(Self);
end;
//***********************************************************************************************************

procedure Tfrm109Charts.cboWAYLT_GenreKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     lblWAYLT_BeginSearchClick(Self);
end;
//***********************************************************************************************************


end.
