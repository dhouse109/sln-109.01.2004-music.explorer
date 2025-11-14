unit frm_109Music;

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
  Tfrm109Music = class(TfrmAppModule)
    pnlMain: TPanel;
    layoutAppModuleItem1: TdxLayoutItem;
    layoutMusic: TdxLayoutControl;
    dxLayoutGroup5: TdxLayoutGroup;
    barMusic: TdxBarManager;
    layoutMusicGroup1: TdxLayoutGroup;
    layoutMusicItem3: TdxLayoutItem;
    lblMusic: TcxLabel;
    layoutMusicItem4: TdxLayoutItem;
    lblTopDownloads: TcxLabel;
    layoutMusicItem5: TdxLayoutItem;
    lblMyFavorites: TcxLabel;
    layoutMusicItem1: TdxLayoutItem;
    page109Music: TcxPageControl;
    tabBrowse109: TcxTabSheet;
    layoutBrowse109: TdxLayoutControl;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    imgBrowse109_Album: TcxDBImage;
    cboBrowse109_Genre: TcxComboBox;
    lblBrowse109_Album_ViewTopDL: TcxLabel;
    lblBrowse109_Album_ViewAll: TcxLabel;
    lblBrowse109_BeginSearch: TcxLabel;
    vgridBrowse109_Album: TcxDBVerticalGrid;
    vgridBrowse109_Album_AlbumName: TcxDBEditorRow;
    vgridBrowse109_Album_AlbumLabel: TcxDBEditorRow;
    vgridBrowse109_Album_DateReleased: TcxDBEditorRow;
    vgridBrowse109_Album_TotalTracks: TcxDBEditorRow;
    vgridBrowse109_Album_TotalLength: TcxDBEditorRow;
    vgridBrowse109_Album_AlbumGenre: TcxDBEditorRow;
    vgridBrowse109_Album_AlbumIsMix: TcxDBEditorRow;
    lblBrowse109_SortBy: TcxLabel;
    cboBrowse109_DateAdded: TcxComboBox;
    cboBrowse109_SubGenre: TcxComboBox;
    edtBrowse109_Album: TcxButtonEdit;
    edtBrowse109_Artist: TcxButtonEdit;
    edtBrowse109_TrackTitle: TcxButtonEdit;
    lblBrowse109_ClearSearch: TcxLabel;
    imgBrowse109_Artist: TcxDBImage;
    vgridBrowse109_Artist: TcxDBVerticalGrid;
    vgridBrowse109_Artist_ArtistName: TcxDBEditorRow;
    vgridBrowse109_Artist_ArtistLabel: TcxDBEditorRow;
    vgridBrowse109_Artist_Affiliation: TcxDBEditorRow;
    vgridBrowse109_Artist_BasedIn: TcxDBEditorRow;
    vgridBrowse109_Artist_JoinDate: TcxDBEditorRow;
    lblBrowse109_Artist_ViewAll: TcxLabel;
    lblBrowse109_ArtistWeb: TcxLabel;
    lblBrowse109_AddToFav: TcxLabel;
    lblBrowse109_Artist_ViewTopDL: TcxLabel;
    dxLayoutGroup46: TdxLayoutGroup;
    dxLayoutGroup47: TdxLayoutGroup;
    dxLayoutGroup48: TdxLayoutGroup;
    dxLayoutItem70: TdxLayoutItem;
    dxLayoutItem71: TdxLayoutItem;
    dxLayoutItem72: TdxLayoutItem;
    dxLayoutGroup49: TdxLayoutGroup;
    dxLayoutGroup50: TdxLayoutGroup;
    dxLayoutItem73: TdxLayoutItem;
    dxLayoutItem75: TdxLayoutItem;
    dxLayoutItem77: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem74: TdxLayoutItem;
    dxLayoutItem76: TdxLayoutItem;
    dxLayoutItem78: TdxLayoutItem;
    dxLayoutGroup53: TdxLayoutGroup;
    dxLayoutItem96: TdxLayoutItem;
    dxLayoutGroup54: TdxLayoutGroup;
    layoutBrowse109Group2: TdxLayoutGroup;
    dxLayoutGroup55: TdxLayoutGroup;
    dxLayoutItem79: TdxLayoutItem;
    dxLayoutGroup56: TdxLayoutGroup;
    dxLayoutItem80: TdxLayoutItem;
    dxLayoutItem81: TdxLayoutItem;
    dxLayoutItem82: TdxLayoutItem;
    dxLayoutItem83: TdxLayoutItem;
    dxLayoutItem85: TdxLayoutItem;
    dxLayoutItem86: TdxLayoutItem;
    dxLayoutGroup57: TdxLayoutGroup;
    dxLayoutItem87: TdxLayoutItem;
    layoutBrowse109Group3: TdxLayoutGroup;
    dxLayoutGroup58: TdxLayoutGroup;
    dxLayoutItem88: TdxLayoutItem;
    dxLayoutGroup59: TdxLayoutGroup;
    dxLayoutItem89: TdxLayoutItem;
    dxLayoutItem90: TdxLayoutItem;
    dxLayoutItem94: TdxLayoutItem;
    dxLayoutItem95: TdxLayoutItem;
    dxLayoutAlignmentConstraint4: TdxLayoutAlignmentConstraint;
    dxLayoutAlignmentConstraint5: TdxLayoutAlignmentConstraint;
    dxLayoutAlignmentConstraint6: TdxLayoutAlignmentConstraint;
    tabMyFavorites: TcxTabSheet;
    tabTopDownloads: TcxTabSheet;
    layoutMusicGroup4: TdxLayoutGroup;
    mnuMemWebsite: TdxBarButton;
    mnuMemBlog: TdxBarButton;
    mnuMemPhotoAlbum: TdxBarButton;
    mnuMemForumPosts: TdxBarButton;
    popmnuMemOpenLink: TdxBarPopupMenu;
    layoutTopDownloads: TdxLayoutControl;
    Shape2: TShape;
    Shape7: TShape;
    Shape8: TShape;
    imgTopDL_Album: TcxDBImage;
    cboTopDL_Genre: TcxComboBox;
    lblTopDL_Album_ViewTopDL: TcxLabel;
    lblTopDL_Album_ViewAll: TcxLabel;
    lblTopDL_BeginSearch: TcxLabel;
    vgridTopDL_Album: TcxDBVerticalGrid;
    vgridTopDL_Album_AlbumName: TcxDBEditorRow;
    vgridTopDL_Album_AlbumLabel: TcxDBEditorRow;
    vgridTopDL_Album_DateReleased: TcxDBEditorRow;
    vgridTopDL_Album_TotalTracks: TcxDBEditorRow;
    vgridTopDL_Album_TotalLength: TcxDBEditorRow;
    vgridTopDL_Album_AlbumGenre: TcxDBEditorRow;
    vgridTopDL_Album_AlbumIsMix: TcxDBEditorRow;
    cboTopDL_Country: TcxComboBox;
    cboTopDL_State: TcxComboBox;
    edtTopDL_City: TcxButtonEdit;
    lblTopDL_ClearSearch: TcxLabel;
    cboTopDL_DatePosted: TcxComboBox;
    edtTopDL_School: TcxButtonEdit;
    cboTopDL_AgeRange: TcxComboBox;
    cboTopDL_Gender: TcxComboBox;
    lblTopDL_Search109: TcxLabel;
    lblTopDL_Preview: TcxLabel;
    lblTopDL_Download: TcxLabel;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutGroup24: TdxLayoutGroup;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutGroup27: TdxLayoutGroup;
    dxLayoutGroup28: TdxLayoutGroup;
    dxLayoutGroup29: TdxLayoutGroup;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutGroup36: TdxLayoutGroup;
    dxLayoutItem47: TdxLayoutItem;
    dxLayoutGroup37: TdxLayoutGroup;
    dxLayoutGroup38: TdxLayoutGroup;
    dxLayoutItem58: TdxLayoutItem;
    dxLayoutGroup39: TdxLayoutGroup;
    dxLayoutItem59: TdxLayoutItem;
    dxLayoutItem60: TdxLayoutItem;
    dxLayoutItem64: TdxLayoutItem;
    dxLayoutItem65: TdxLayoutItem;
    dxLayoutAlignmentConstraint2: TdxLayoutAlignmentConstraint;
    layoutTopDownloadsItem1: TdxLayoutItem;
    imgTopDL_Artist: TcxDBImage;
    layoutTopDownloadsItem2: TdxLayoutItem;
    Shape9: TShape;
    layoutTopDownloadsGroup1: TdxLayoutGroup;
    layoutTopDownloadsItem3: TdxLayoutItem;
    vgridTopDL_Artist: TcxDBVerticalGrid;
    vgridTopDL_Artist_ArtistName: TcxDBEditorRow;
    vgridTopDL_Artist_ArtistLabel: TcxDBEditorRow;
    vgridTopDL_Artist_Affiliation: TcxDBEditorRow;
    vgridTopDL_Artist_BasedIn: TcxDBEditorRow;
    vgridTopDL_Artist_JoinDate: TcxDBEditorRow;
    layoutTopDownloadsItem4: TdxLayoutItem;
    lblTopDL_Artist_ViewAll: TcxLabel;
    layoutTopDownloadsItem5: TdxLayoutItem;
    lblTopDL_Artist_ViewTopDL: TcxLabel;
    layoutTopDownloadsItem6: TdxLayoutItem;
    lblTopDL_ArtistWeb: TcxLabel;
    layoutTopDownloadsItem7: TdxLayoutItem;
    lblTopDL_AddToFav: TcxLabel;
    layoutTopDownloadsGroup2: TdxLayoutGroup;
    layoutTopDownloadsGroup3: TdxLayoutGroup;
    layoutBrowse109Item1: TdxLayoutItem;
    cboBrowse109_BasedIn: TcxComboBox;
    layoutBrowse109Group1: TdxLayoutGroup;
    layoutBrowse109Group4: TdxLayoutGroup;
    layoutBrowse109Item4: TdxLayoutItem;
    lblBrowse109_First: TcxLabel;
    layoutBrowse109Item5: TdxLayoutItem;
    lblBrowse109_Previous: TcxLabel;
    layoutBrowse109Item6: TdxLayoutItem;
    lblBrowse109_Next: TcxLabel;
    layoutBrowse109Item7: TdxLayoutItem;
    lblBrowse109_Last: TcxLabel;
    layoutBrowse109Item8: TdxLayoutItem;
    cboBrowse109_PageNav: TcxComboBox;
    layoutBrowse109Item9: TdxLayoutItem;
    lblBrowse109_PageTotal: TcxLabel;
    layoutBrowse109Group5: TdxLayoutGroup;
    layoutBrowse109Group6: TdxLayoutGroup;
    layoutBrowse109Item12: TdxLayoutItem;
    lblBrowse109_Preview: TcxLabel;
    layoutBrowse109Item13: TdxLayoutItem;
    lblBrowse109_Download: TcxLabel;
    layoutBrowse109Item10: TdxLayoutItem;
    gridBrowse109: TcxGrid;
    gridviewBrowse109: TcxGridDBTableView;
    gridviewBrowse109_TrackTitle: TcxGridDBColumn;
    gridviewBrowse109_ArtistName: TcxGridDBColumn;
    gridviewBrowse109_AlbumName: TcxGridDBColumn;
    gridviewBrowse109_Genre: TcxGridDBColumn;
    gridviewBrowse109_TrackLength: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    gridviewBrowse109_SubGenre: TcxGridDBColumn;
    gridviewBrowse109_PartOfMix: TcxGridDBColumn;
    gridviewBrowse109_FileSizeText: TcxGridDBColumn;
    layoutBrowse109Item11: TdxLayoutItem;
    cboBrowse109_MixSet: TcxComboBox;
    layoutMyFavorites: TdxLayoutControl;
    Shape17: TShape;
    Shape19: TShape;
    lblMyFav_BeginSearch: TcxLabel;
    cboMyFav_DateAdded: TcxComboBox;
    lblMyFav_ClearSearch: TcxLabel;
    imgMyFav_Artist: TcxDBImage;
    vgridMyFav_Artist: TcxDBVerticalGrid;
    vgridMyFav_Artist_ArtistName: TcxDBEditorRow;
    vgridMyFav_Artist_ArtistLabel: TcxDBEditorRow;
    vgridMyFav_Artist_Affiliation: TcxDBEditorRow;
    vgridMyFav_Artist_BasedIn: TcxDBEditorRow;
    vgridMyFav_Artist_JoinDate: TcxDBEditorRow;
    lblMyFav_Artist_ViewAll: TcxLabel;
    lblMyFav_ArtistWeb: TcxLabel;
    lblMyFav_Artist_ViewTopDL: TcxLabel;
    cboMyFav_BasedIn: TcxComboBox;
    lblMyFav_First: TcxLabel;
    lblMyFav_Previous: TcxLabel;
    lblMyFav_Next: TcxLabel;
    lblMyFav_Last: TcxLabel;
    cboMyFav_PageNav: TcxComboBox;
    lblMyFav_PageTotal: TcxLabel;
    gridMyFav: TcxGrid;
    gridviewMyFav: TcxGridDBTableView;
    gridviewMyFav_DateCreated: TcxGridDBColumn;
    gridviewMyFav_ArtistName: TcxGridDBColumn;
    gridviewMyFav_BasedIn: TcxGridDBColumn;
    gridviewMyFav_ArtistLabel: TcxGridDBColumn;
    gridviewMyFav_Affiliation: TcxGridDBColumn;
    gridviewMyFav_JoinDate: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup35: TdxLayoutGroup;
    dxLayoutGroup40: TdxLayoutGroup;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutItem51: TdxLayoutItem;
    dxLayoutItem52: TdxLayoutItem;
    dxLayoutItem53: TdxLayoutItem;
    dxLayoutItem54: TdxLayoutItem;
    dxLayoutItem55: TdxLayoutItem;
    dxLayoutGroup41: TdxLayoutGroup;
    dxLayoutGroup43: TdxLayoutGroup;
    dxLayoutItem56: TdxLayoutItem;
    dxLayoutGroup44: TdxLayoutGroup;
    dxLayoutItem57: TdxLayoutItem;
    dxLayoutItem62: TdxLayoutItem;
    dxLayoutItem66: TdxLayoutItem;
    dxLayoutItem68: TdxLayoutItem;
    dxLayoutItem69: TdxLayoutItem;
    gridviewMyFav_Memo: TcxGridDBColumn;
    layoutMyFavoritesItem1: TdxLayoutItem;
    edtMyFav_Memo: TcxButtonEdit;
    layoutMyFavoritesGroup1: TdxLayoutGroup;
    layoutMyFavoritesGroup2: TdxLayoutGroup;
    layoutMyFavoritesItem2: TdxLayoutItem;
    lblMyFav_Remove: TcxLabel;
    layoutTopDownloadsItem8: TdxLayoutItem;
    gridTopDL: TcxGrid;
    gridviewTopDL: TcxGridDBTableView;
    gridviewTopDL_PartOfMix: TcxGridDBColumn;
    gridviewTopDL_TrackTitle: TcxGridDBColumn;
    gridviewTopDL_ArtistName: TcxGridDBColumn;
    gridviewTopDL_AlbumName: TcxGridDBColumn;
    gridviewTopDL_TrackLength: TcxGridDBColumn;
    gridviewTopDL_Genre: TcxGridDBColumn;
    gridviewTopDL_SubGenre: TcxGridDBColumn;
    gridviewTopDL_FileSizeText: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    gridviewTopDL_TotalPosts: TcxGridDBColumn;
    layoutTopDownloadsItem9: TdxLayoutItem;
    cboTopDL_MixSet: TcxComboBox;
    gridviewTopDL_DateAdded: TcxGridDBColumn;
    gridviewBrowse109_DateAdded: TcxGridDBColumn;
    layoutBrowse109Item2: TdxLayoutItem;
    edtBrowse109_ArtistWeb: TcxMaskEdit;
    layoutMyFavoritesItem3: TdxLayoutItem;
    edtMyFav_ArtistWeb: TcxMaskEdit;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lblMusicClick(Sender: TObject);
    procedure lblMyFavoritesClick(Sender: TObject);
    procedure lblTopDownloadsClick(Sender: TObject);
    procedure lblTopDL_ClearSearchClick(Sender: TObject);
    procedure lblTopDL_BeginSearchClick(Sender: TObject);
    procedure cboTopDL_DatePostedPropertiesChange(Sender: TObject);
    procedure edtTopDL_SchoolKeyPress(Sender: TObject; var Key: Char);
    procedure lblBrowse109_ClearSearchClick(Sender: TObject);
    procedure lblBrowse109_BeginSearchClick(Sender: TObject);
    procedure cboBrowse109_MixSetPropertiesChange(Sender: TObject);
    procedure edtBrowse109_ArtistWebKeyPress(Sender: TObject;
      var Key: Char);
    procedure lblBrowse109_FirstClick(Sender: TObject);
    procedure lblBrowse109_PreviousClick(Sender: TObject);
    procedure lblBrowse109_NextClick(Sender: TObject);
    procedure lblBrowse109_LastClick(Sender: TObject);
    procedure cboBrowse109_PageNavPropertiesChange(Sender: TObject);
    procedure lblMyFav_ClearSearchClick(Sender: TObject);
    procedure lblMyFav_BeginSearchClick(Sender: TObject);
    procedure cboMyFav_DateAddedPropertiesChange(Sender: TObject);
    procedure edtMyFav_MemoKeyPress(Sender: TObject; var Key: Char);
    procedure lblMyFav_FirstClick(Sender: TObject);
    procedure lblMyFav_PreviousClick(Sender: TObject);
    procedure lblMyFav_NextClick(Sender: TObject);
    procedure lblMyFav_LastClick(Sender: TObject);
    procedure cboMyFav_PageNavPropertiesChange(Sender: TObject);
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
  frm109Music: Tfrm109Music;

implementation

uses
  frm_Main;

{$R *.dfm}

//***********************************************************************************************************

procedure Tfrm109Music.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure Tfrm109Music.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure Tfrm109Music.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure Tfrm109Music.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure Tfrm109Music.FormCreate(Sender: TObject);
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

procedure Tfrm109Music.PrepareModule;
begin
//
end;
//***********************************************************************************************************

procedure Tfrm109Music.PrepareActive;
begin
//
end;
//***********************************************************************************************************

procedure Tfrm109Music.PopMenuPopup_Right(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
var
  P: TPoint;
begin
  P.X := ALabel.Left + ALabel.Width + 3;
  P.Y := ALabel.Top  + (ALabel.Height div 2);
  P   := ALayout.ClientToScreen(P);
  APopupMenu.Popup(P.X, P.Y);
end;
//***********************************************************************************************************

procedure Tfrm109Music.PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
var
  P: TPoint;
begin
  P.X := ALabel.Left;
  P.Y := ALabel.Top  + ALabel.Height + 1;
  P   := ALayout.ClientToScreen(P);
  APopupMenu.Popup(P.X, P.Y);
end;
//***********************************************************************************************************

procedure Tfrm109Music.GridMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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

procedure Tfrm109Music.lblMusicClick(Sender: TObject);
begin
  page109Music.ActivePage := tabBrowse109;
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblMyFavoritesClick(Sender: TObject);
begin
  page109Music.ActivePage := tabMyFavorites;
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblTopDownloadsClick(Sender: TObject);
begin
  page109Music.ActivePage := tabTopDownloads;
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblTopDL_ClearSearchClick(Sender: TObject);
begin
  FClearing := True;

  cboTopDL_DatePosted.ItemIndex := 0;
  cboTopDL_MixSet.ItemIndex     := 0;
  cboTopDL_Genre.ItemIndex      := 0;
  cboTopDL_Gender.ItemIndex     := 0;
  cboTopDL_AgeRange.ItemIndex   := 0;
  edtTopDL_School.Text          := EmptyStr;
  edtTopDL_City.Text            := EmptyStr;
  cboTopDL_State.ItemIndex      := 0;
  cboTopDL_Country.ItemIndex    := 0;

  FClearing := False;
  lblTopDL_BeginSearchClick(Sender);
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblTopDL_BeginSearchClick(Sender: TObject);
var
  AAgeRangeLow,
  AAgeRangeHigh: Integer;
  AGender: String;
  AMixSet: String;
begin
  if FClearing then
     Exit;

  LockWindowUpdate(Self.Handle);
  if cboTopDL_AgeRange.ItemIndex = 1 then
  begin
    AAgeRangeLow  := 13;
    AAgeRangeHigh := 17;
  end
  else
  if cboTopDL_AgeRange.ItemIndex = 2 then
  begin
    AAgeRangeLow  := 18;
    AAgeRangeHigh := 22;
  end
  else
  if cboTopDL_AgeRange.ItemIndex = 3 then
  begin
    AAgeRangeLow  := 23;
    AAgeRangeHigh := 27;
  end
  else
  if cboTopDL_AgeRange.ItemIndex = 4 then
  begin
    AAgeRangeLow  := 28;
    AAgeRangeHigh := 32;
  end
  else
  if cboTopDL_AgeRange.ItemIndex = 5 then
  begin
    AAgeRangeLow  := 33;
    AAgeRangeHigh := 37;
  end
  else
  if cboTopDL_AgeRange.ItemIndex = 6 then
  begin
    AAgeRangeLow  := 38;
    AAgeRangeHigh := 100;
  end
  else
  begin
    AAgeRangeLow  := -1;
    AAgeRangeHigh := -1;
  end;

  if cboTopDL_MixSet.Text = 'Hide Mix Sets' then
     AMixSet := 'N'
  else
  if cboTopDL_MixSet.Text = 'Show Mix Sets Only' then
     AMixSet := 'Y'
  else
     AMixSet := EmptyStr;

  if cboTopDL_Gender.Text = 'Male' then
     AGender := 'M'
  else
  if cboTopDL_Gender.Text = 'Female' then
     AGender := 'F'
  else
     AGender := EmptyStr;

  datMain.GetMems_DL_Summary('', '', AMixSet, cboTopDL_DatePosted.Text, cboTopDL_Genre.Text, AGender, edtTopDL_City.Text, cboTopDL_State.Text, cboTopDL_Country.Text, edtTopDL_School.Text, AAgeRangeLow, AAgeRangeHigh);
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure Tfrm109Music.cboTopDL_DatePostedPropertiesChange(Sender: TObject);
begin
  lblTopDL_BeginSearchClick(Self);
end;
//***********************************************************************************************************

procedure Tfrm109Music.edtTopDL_SchoolKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     lblTopDL_BeginSearchClick(Self);
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblBrowse109_ClearSearchClick(Sender: TObject);
begin
  FClearing := True;

  cboBrowse109_MixSet.ItemIndex    := 0;
  cboBrowse109_Genre.ItemIndex     := 0;
  cboBrowse109_SubGenre.ItemIndex  := 0;
  cboBrowse109_BasedIn.ItemIndex   := 0;
  edtBrowse109_ArtistWeb.Text      := EmptyStr;
  cboBrowse109_DateAdded.ItemIndex := 0;
  edtBrowse109_TrackTitle.Text     := EmptyStr;
  edtBrowse109_Artist.Text         := EmptyStr;
  edtBrowse109_Album.Text          := EmptyStr;

  FClearing := False;
  lblBrowse109_BeginSearchClick(Sender);
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblBrowse109_BeginSearchClick(Sender: TObject);
var
  ASortBy: String;
  AMixSet: String;
  AArtistWeb: String;
begin
  if FClearing then
     Exit;

  LockWindowUpdate(Self.Handle);

  if cboBrowse109_MixSet.Text = 'Hide Mix Sets' then
     AMixSet := 'N'
  else
  if cboBrowse109_MixSet.Text = 'Show Mix Sets Only' then
     AMixSet := 'Y'
  else
     AMixSet := EmptyStr;

  if edtBrowse109_ArtistWeb.Text = 'http://' then
     AArtistWeb := EmptyStr
  else
     AArtistWeb := edtBrowse109_ArtistWeb.Text;


  FQueryStr_Browse109.Clear;
  FQueryStr_Browse109 := datMain.GetTracks_Search('', '', AMixSet, cboBrowse109_DateAdded.Text, cboBrowse109_Genre.Text, cboBrowse109_SubGenre.Text, cboBrowse109_BasedIn.Text, AArtistWeb, edtBrowse109_TrackTitle.Text, edtBrowse109_Artist.Text, edtBrowse109_Album.Text, ASortBy);

  //datMain.LoadMemberPics(datMain.qryMemsMemPic, datMain.qryMems);
  //datMain.qryMemsAfterScroll(datMain.qryMems);
//  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
//     layoutMemberDirectory_Member.Caption := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   '
//  else
//     layoutMemberDirectory_Member.Caption := 'Member   ';

  datMain.SetupPageNav(datMain.qryTracks_Search, cboBrowse109_PageNav, lblBrowse109_PageTotal);
//  SetupScreen;

  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure Tfrm109Music.cboBrowse109_MixSetPropertiesChange(Sender: TObject);
begin
  lblBrowse109_BeginSearchClick(Self);
end;
//***********************************************************************************************************

procedure Tfrm109Music.edtBrowse109_ArtistWebKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     lblBrowse109_BeginSearchClick(Self);
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblBrowse109_FirstClick(Sender: TObject);
begin
  datMain.PageNav_First(cboBrowse109_PageNav);
  gridBrowse109.SetFocus;
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblBrowse109_PreviousClick(Sender: TObject);
begin
  datMain.PageNav_Previous(cboBrowse109_PageNav);
  gridBrowse109.SetFocus;
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblBrowse109_NextClick(Sender: TObject);
begin
  datMain.PageNav_Next(cboBrowse109_PageNav);
  gridBrowse109.SetFocus;
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblBrowse109_LastClick(Sender: TObject);
begin
  datMain.PageNav_Last(cboBrowse109_PageNav);
  gridBrowse109.SetFocus;
end;
//***********************************************************************************************************

procedure Tfrm109Music.cboBrowse109_PageNavPropertiesChange(Sender: TObject);
begin
  if FQueryStr_Browse109.Count = 0 then
     Exit;

  if cboBrowse109_PageNav.Properties.Items.Count = 0 then
     Exit;

  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  datMain.QueryStr_Refresh(datMain.qryTracks_Search, FQueryStr_Browse109, StrToInt(cboBrowse109_PageNav.Text), cRECORDS_BY_PAGE);
//  datMain.LoadMemberPics(datMain.qryMemsMemPic, datMain.qryMems);
//  datMain.qryMemsAfterScroll(datMain.qryMems);
//  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
//     layoutMemberDirectory_Member.Caption := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   '
//  else
//     layoutMemberDirectory_Member.Caption := 'Member   ';
  datMain.SetupPageNav(datMain.qryTracks_Search, cboBrowse109_PageNav, lblBrowse109_PageTotal);
  gridBrowse109.SetFocus;
//  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblMyFav_ClearSearchClick(Sender: TObject);
begin
  FClearing := True;

  cboMyFav_DateAdded.ItemIndex := 0;
  cboMyFav_BasedIn.ItemIndex   := 0;
  edtMyFav_ArtistWeb.Text      := EmptyStr;
  edtMyFav_Memo.Text           := EmptyStr;

  FClearing := False;
  lblMyFav_BeginSearchClick(Sender);
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblMyFav_BeginSearchClick(Sender: TObject);
var
  AArtistWeb: String;
begin
  if FClearing then
     Exit;

  LockWindowUpdate(Self.Handle);

  if edtMyFav_ArtistWeb.Text = 'http://' then
     AArtistWeb := EmptyStr
  else
     AArtistWeb := edtMyFav_ArtistWeb.Text;

    

  FQueryStr_MyFav.Clear;
  FQueryStr_MyFav := datMain.GetMems_Fav(cboMyFav_DateAdded.Text, cboMyFav_BasedIn.Text, AArtistWeb, edtMyFav_Memo.Text);

  //datMain.LoadMemberPics(datMain.qryMemsMemPic, datMain.qryMems);
  //datMain.qryMemsAfterScroll(datMain.qryMems);
//  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
//     layoutMemberDirectory_Member.Caption := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   '
//  else
//     layoutMemberDirectory_Member.Caption := 'Member   ';

  datMain.SetupPageNav(datMain.qryMems_Fav, cboMyFav_PageNav, lblMyFav_PageTotal);
//  SetupScreen;

  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure Tfrm109Music.cboMyFav_DateAddedPropertiesChange(Sender: TObject);
begin
  lblMyFav_BeginSearchClick(Self);
end;
//***********************************************************************************************************

procedure Tfrm109Music.edtMyFav_MemoKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     lblMyFav_BeginSearchClick(Self);
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblMyFav_FirstClick(Sender: TObject);
begin
  datMain.PageNav_First(cboMyFav_PageNav);
  gridMyFav.SetFocus;
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblMyFav_PreviousClick(Sender: TObject);
begin
  datMain.PageNav_Previous(cboMyFav_PageNav);
  gridMyFav.SetFocus;
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblMyFav_NextClick(Sender: TObject);
begin
  datMain.PageNav_Next(cboMyFav_PageNav);
  gridMyFav.SetFocus;
end;
//***********************************************************************************************************

procedure Tfrm109Music.lblMyFav_LastClick(Sender: TObject);
begin
  datMain.PageNav_Last(cboMyFav_PageNav);
  gridMyFav.SetFocus;
end;
//***********************************************************************************************************

procedure Tfrm109Music.cboMyFav_PageNavPropertiesChange(Sender: TObject);
begin
  if FQueryStr_MyFav.Count = 0 then
     Exit;

  if cboMyFav_PageNav.Properties.Items.Count = 0 then
     Exit;

  Screen.Cursor := crHourGlass;
  LockWindowUpdate(Self.Handle);

  datMain.QueryStr_Refresh(datMain.qryMems_Fav, FQueryStr_MyFav, StrToInt(cboMyFav_PageNav.Text), cRECORDS_BY_PAGE);
//  datMain.LoadMemberPics(datMain.qryMemsMemPic, datMain.qryMems);
//  datMain.qryMemsAfterScroll(datMain.qryMems);
//  if (datMain.qryMems_MiniProfile.Active) and (datMain.qryMems_MiniProfile.RecordCount > 0) then
//     layoutMemberDirectory_Member.Caption := datMain.qryMems_MiniProfile.FieldByName('Name').AsString + '   '
//  else
//     layoutMemberDirectory_Member.Caption := 'Member   ';
  datMain.SetupPageNav(datMain.qryMems_Fav, cboMyFav_PageNav, lblMyFav_PageTotal);
  gridMyFav.SetFocus;
//  SetupScreen;

  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

end.
