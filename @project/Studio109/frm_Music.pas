unit frm_Music;

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
  TfrmMusic = class(TfrmAppModule)
    pnlMain: TPanel;
    layoutAppModuleItem1: TdxLayoutItem;
    layoutMusic: TdxLayoutControl;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    pageMain: TcxPageControl;
    tabMyLibrary: TcxTabSheet;
    layoutMyLibrary: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    barMusic: TdxBarManager;
    layoutMusicGroup4: TdxLayoutGroup;
    layoutMyLibraryGroup3: TdxLayoutGroup;
    gridNowPlaying: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    layoutMusicItem3: TdxLayoutItem;
    gridNowPlayingDBTableView1: TcxGridDBTableView;
    gridNowPlayingDBTableView1AVTitle: TcxGridDBColumn;
    gridNowPlayingDBTableView1AVDuration: TcxGridDBColumn;
    gridTracks: TcxGrid;
    gridviewTracks: TcxGridDBTableView;
    gridviewTracks_AVTitle: TcxGridDBColumn;
    gridviewTracks_AVDuration: TcxGridDBColumn;
    gridviewTracks_AVArtist: TcxGridDBColumn;
    gridviewTracks_AVAlbum: TcxGridDBColumn;
    gridviewTracks_AVGenre: TcxGridDBColumn;
    gridviewTracks_Rating: TcxGridDBColumn;
    gridviewTracks_DateCreated: TcxGridDBColumn;
    gridviewTracks_DateImported: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    layoutMyLibraryItem1: TdxLayoutItem;
    popmnuPlaylist: TdxBarPopupMenu;
    popmnuTrack: TdxBarPopupMenu;
    mnuPlaylist_New: TdxBarButton;
    mnuPlaylist_Delete: TdxBarButton;
    mnuTrack_AddToPlaylist: TdxBarButton;
    mnuTrack_Remove: TdxBarButton;
    mnuTrack_RemovePlaylist: TdxBarButton;
    layoutMusicGroup8: TdxLayoutGroup;
    layoutMusicItem1: TdxLayoutItem;
    gridviewTracks_ID: TcxGridDBColumn;
    gridNowPlayingDBTableView1ID: TcxGridDBColumn;
    gridNowPlayingDBTableView1Track_ID: TcxGridDBColumn;
    layoutMyLibraryItem8: TdxLayoutItem;
    layoutMusicItem2: TdxLayoutItem;
    Shape3: TShape;
    mnu109Tracks: TdxBarButton;
    mnu109Albums: TdxBarButton;
    mnu109Artists: TdxBarButton;
    mnuSearchAll: TdxBarButton;
    mnuSearchAlbums: TdxBarButton;
    mnuSearchArtists: TdxBarButton;
    mnuSearchTitles: TdxBarButton;
    popmnuMyLib_Search: TdxBarPopupMenu;
    layoutMyLibraryItem10: TdxLayoutItem;
    layoutMyLibraryGroup2: TdxLayoutGroup;
    gridPlaylists: TcxGrid;
    gridviewPlaylists: TcxGridDBTableView;
    cxGridLevel8: TcxGridLevel;
    gridviewPlaylistsID: TcxGridDBColumn;
    gridviewPlaylistsName: TcxGridDBColumn;
    layoutMyLibraryItem15: TdxLayoutItem;
    Shape8: TShape;
    mnuitmAddToNowPlaying: TdxBarButton;
    popmnuNowhere: TdxBarPopupMenu;
    gridviewTracks_Play: TcxGridDBColumn;
    mnuAddFolder: TdxBarButton;
    mnuAddFile: TdxBarButton;
    popmnuAdd: TdxBarPopupMenu;
    mnuNowPlaying_Clear: TdxBarButton;
    mnuNowPlayingSave: TdxBarButton;
    popmnuNowPlaying: TdxBarPopupMenu;
    dlgOpen: TOpenDialog;
    mnuSearchPlaylists: TdxBarButton;
    gridviewPlaylists_Play: TcxGridDBColumn;
    gridviewTracks_AVTrackPlaylist: TcxGridDBColumn;
    gridNowPlayingDBTableView1NowPlaying: TcxGridDBColumn;
    gridNowPlayingDBTableView1LastPlayed: TcxGridDBColumn;
    layoutMyLibrary_Tracks: TdxLayoutGroup;
    layoutMyLibraryGroup1: TdxLayoutGroup;
    lblMyLibrary_AllMusic: TcxLabel;
    layoutMyLibraryItem2: TdxLayoutItem;
    lblMyLibrary_Playlist: TcxLabel;
    layoutMyLibraryItem3: TdxLayoutItem;
    layoutMyLibraryGroup4: TdxLayoutGroup;
    lblMyLibrary_Track: TcxLabel;
    layoutMyLibraryItem4: TdxLayoutItem;
    lblNowPlaying: TcxLabel;
    layoutMusicItem4: TdxLayoutItem;
    lblMyLibrary_Add: TcxLabel;
    layoutMyLibraryItem5: TdxLayoutItem;
    lblMyLibrary_Search: TcxLabel;
    layoutMyLibraryItem6: TdxLayoutItem;
    lblMyLibrary_FilterCols: TcxLabel;
    layoutMyLibraryItem7: TdxLayoutItem;
    lblMyLibrary_Clear: TcxLabel;
    layoutMyLibraryItem9: TdxLayoutItem;
    edtMyLibrary_Search: TcxButtonEdit;
    layoutMyLibraryItem11: TdxLayoutItem;
    layoutMyLibraryGroup5: TdxLayoutGroup;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblMyLibrary_PlaylistClick(Sender: TObject);
    procedure lblMyLibrary_TrackClick(Sender: TObject);
    procedure gridNowPlayingDBTableView1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure gridNowPlayingDBTableView1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure gridviewPlaylistsDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure gridviewPlaylistsDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lblMyLibrary_AllMusicClick(Sender: TObject);
    procedure gridviewPlaylistsMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure gridviewTracksDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure gridviewTracksDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lblMyLibrary_SearchClick(Sender: TObject);
    procedure mnuSearchAllClick(Sender: TObject);
    procedure mnuSearchAlbumsClick(Sender: TObject);
    procedure mnuSearchArtistsClick(Sender: TObject);
    procedure mnuSearchTitlesClick(Sender: TObject);
    procedure GridMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lblMyLibrary_FieldChooserClick(Sender: TObject);
    procedure lblMyLibrary_FilterColsClick(Sender: TObject);
    procedure lblMyLibrary_AddClick(Sender: TObject);
    procedure lblNowPlayingClick(Sender: TObject);
    procedure mnuNowPlaying_ClearClick(Sender: TObject);
    procedure mnuNowPlayingSaveClick(Sender: TObject);
    procedure mnuAddFolderClick(Sender: TObject);
    procedure mnuAddFileClick(Sender: TObject);
    procedure mnuSearchPlaylistsClick(Sender: TObject);
    procedure gridviewPlaylists_PlayPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure gridviewPlaylistsNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure gridviewTracks_PlayPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure gridviewTracks_AVTitlePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure gridviewTracks_AVArtistPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure gridviewTracks_AVAlbumPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure mnuPlaylist_NewClick(Sender: TObject);
    procedure mnuPlaylist_DeleteClick(Sender: TObject);
    procedure gridviewTracks_RatingPropertiesChange(Sender: TObject);
    procedure mnuTrack_AddToPlaylistClick(Sender: TObject);
    procedure mnuitmAddToNowPlayingClick(Sender: TObject);
    procedure mnuTrack_RemoveClick(Sender: TObject);
    procedure mnuTrack_RemovePlaylistClick(Sender: TObject);
    procedure lblMyLibrary_ClearClick(Sender: TObject);
    procedure edtMyLibrary_SearchKeyPress(Sender: TObject; var Key: Char);
    procedure edtMyLibrary_SearchPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure gridNowPlayingDBTableView1DblClick(Sender: TObject);
    procedure gridNowPlayingDBTableView1NowPlayingGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: String);
  private
    FCurrentQueryStr: TStringList;
    FCurrentQuery: TADOQuery;
    FGridView: TcxGridDBTableView;
    FGridColumn: TcxGridDBColumn;
  public
    procedure PrepareModule; override;
    procedure PrepareActive; override;
    procedure PopMenuPopup_Right(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
    procedure PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
  end;

var
  frmMusic: TfrmMusic;

implementation

uses
  cxFilter,
  frm_Main,
  frm_AddFolderDLG,
  frm_PlaylistDLG,
  frm_AddToPlaylistDLG;

{$R *.dfm}

//***********************************************************************************************************

function GetDragSourceGridView(Source: TObject): TcxCustomGridView;
begin
  if (TDragControlObject(Source).Control is TcxGridSite) then
    Result := TcxGridSite(TDragControlObject(Source).Control).GridView
  else
    Result := nil;
end;
//***********************************************************************************************************

procedure TfrmMusic.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmMusic.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmMusic.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmMusic.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmMusic.FormCreate(Sender: TObject);
begin
  LockWindowUpdate(Self.Handle);
  Screen.Cursor := crHourGlass;

  FCurrentQueryStr := TStringList.Create;
  lblMyLibrary_AllMusicClick(Self);
  mnuSearchAllClick(Self);
  if gridviewTracks.DataController.RecordCount > 0 then
     gridviewTracks.DataController.FocusedRowIndex := 0;

  Screen.Cursor := crDefault;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMusic.PrepareModule;
begin
//
end;
//***********************************************************************************************************

procedure TfrmMusic.PrepareActive;
begin
//
end;
//***********************************************************************************************************

procedure TfrmMusic.PopMenuPopup_Right(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
var
  P: TPoint;
begin
  P.X := ALabel.Left + ALabel.Width + 3;
  P.Y := ALabel.Top  + (ALabel.Height div 2);
  P   := ALayout.ClientToScreen(P);
  APopupMenu.Popup(P.X, P.Y);
end;
//***********************************************************************************************************

procedure TfrmMusic.PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
var
  P: TPoint;
begin
  P.X := ALabel.Left;
  P.Y := ALabel.Top  + ALabel.Height + 1;
  P   := ALayout.ClientToScreen(P);
  APopupMenu.Popup(P.X, P.Y);
end;
//***********************************************************************************************************

procedure TfrmMusic.lblMyLibrary_PlaylistClick(Sender: TObject);
begin
  PopMenuPopup_Bottom(popmnuPlaylist, lblMyLibrary_Playlist, layoutMyLibrary);
end;
//***********************************************************************************************************

procedure TfrmMusic.lblMyLibrary_TrackClick(Sender: TObject);
begin
  if gridviewTracks.DataController.DataSource = datMain.dsPlaylist_Tracks then
     mnuTrack_RemovePlaylist.Visible := ivAlways
  else
     mnuTrack_RemovePlaylist.Visible := ivNever;

  PopMenuPopup_Bottom(popmnuTrack, lblMyLibrary_Track, layoutMyLibrary);
end;
//***********************************************************************************************************

procedure TfrmMusic.gridNowPlayingDBTableView1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  Playlist_ID : Integer;
  Track_ID : Integer;
  hTest    : TcxCustomGridHitTest;
  AGridView: TcxCustomGridView;
  Rec: TcxCustomGridRecord;
  intIDX   : Integer;
  intIDX2  : Integer;
  i: Integer;
  ARowInfo: TcxRowInfo;
begin
  AGridView := GetDragSourceGridView(Source);
  if AGridView = nil then
     Exit;

  LockWindowUpdate(Self.Handle);
  Screen.Cursor := crHourGlass;

  if AGridView = gridNowPlayingDBTableView1 then
  begin
    intIDX   := AGridView.DataController.GetSelectedRowIndex(0);
    intIDX2  := AGridView.DataController.GetFocusedRecordIndex;
    if intIDX < intIDX2 then
    begin
      datMain.tblNowPlaying.CurRec := intIDX;
      datMain.tblNowPlaying.MoveCurRecordTo(intIDX2 + 1);
      gridNowPlayingDBTableView1.DataController.ClearSelection;
      gridNowPlayingDBTableView1.DataController.FocusedRecordIndex := intIDX2;
    end
    else
    if intIDX > intIDX2 then
    begin
      gridNowPlayingDBTableView1.DataController.ClearSelection;
      datMain.tblNowPlaying.CurRec := intIDX;
      datMain.tblNowPlaying.MoveCurRecordTo(intIDX2 + 1);
      gridNowPlayingDBTableView1.DataController.ClearSelection;
      gridNowPlayingDBTableView1.DataController.FocusedRecordIndex := intIDX2;
    end;
  end
  else
  if AGridView = gridviewTracks then
  begin
    if AGridView.DataController.GetSelectedCount > 1 then
    begin
      hTest  := gridNowPlayingDBTableView1.ViewInfo.GetHitTest(X, Y);
      intIDX  := datMain.tblNowPlaying.RecordCount;
      if hTest is TcxGridRecordCellHitTest then
      begin
        try
          intIDX  := datMain.tblNowPlaying.RecordCount;
        except
          intIDX  := 0;
        end;
      end;
      try
        Rec    := TcxGridRecordCellHitTest(hTest).GridRecord;
        intIDX := Rec.RecordIndex;
        gridNowPlayingDBTableView1.DataController.FocusedRecordIndex := intIDX;
      except
      end;
      for I := (AGridView.DataController.GetSelectedCount - 1) downto 0 do
      begin
        ARowInfo := AGridView.DataController.GetRowInfo(AGridView.DataController.GetSelectedRowIndex(I));
        Track_ID := AGridView.DataController.Values[ARowInfo.RecordIndex, gridviewTracks_ID.Index];
        gridNowPlayingDBTableView1.DataController.Insert;
        datMain.tblNowPlaying.FieldByName('Track_ID').AsInteger := Track_ID;
        datMain.tblNowPlaying.Post;
        datMain.tblNowPlaying.MoveCurRecordTo(intIDX + 1);
        gridNowPlayingDBTableView1.DataController.ClearSelection;
        gridNowPlayingDBTableView1.DataController.FocusedRecordIndex := intIDX;
      end;
    end
    else
    begin
      ARowInfo := AGridView.DataController.GetRowInfo(AGridView.DataController.GetSelectedRowIndex(0));
      Track_ID := AGridView.DataController.Values[ARowInfo.RecordIndex, gridviewTracks_ID.Index];
      hTest    := gridNowPlayingDBTableView1.ViewInfo.GetHitTest(X, Y);
      try
        intIDX  := datMain.tblNowPlaying.RecordCount;
      except
        intIDX  := 0;
      end;
      if hTest is TcxGridRecordCellHitTest then
      begin
        try
          Rec    := TcxGridRecordCellHitTest(hTest).GridRecord;
          intIDX := Rec.RecordIndex;
          gridNowPlayingDBTableView1.DataController.FocusedRecordIndex := intIDX;
        except
        end;
      end;

      gridNowPlayingDBTableView1.DataController.Insert;
      datMain.tblNowPlaying.FieldByName('Track_ID').AsInteger := Track_ID;
      datMain.tblNowPlaying.Post;
      datMain.tblNowPlaying.MoveCurRecordTo(intIDX + 1);
      gridNowPlayingDBTableView1.DataController.ClearSelection;
      gridNowPlayingDBTableView1.DataController.FocusedRecordIndex := intIDX;
    end;
  end
  else
  if AGridView = gridviewPlaylists then
  begin
    ARowInfo := AGridView.DataController.GetRowInfo(AGridView.DataController.GetSelectedRowIndex(0));
    Playlist_ID := AGridView.DataController.Values[ARowInfo.RecordIndex, gridviewPlaylistsID.Index];
    hTest    := gridNowPlayingDBTableView1.ViewInfo.GetHitTest(X, Y);
    try
      intIDX  := datMain.tblNowPlaying.RecordCount;
    except
      intIDX  := 0;
    end;
    if hTest is TcxGridRecordCellHitTest then
    begin
      try
        Rec    := TcxGridRecordCellHitTest(hTest).GridRecord;
        intIDX := Rec.RecordIndex;
        gridNowPlayingDBTableView1.DataController.FocusedRecordIndex := intIDX;
      except
      end;
    end;


    datMain.tblPlaylist_Tracks_.Open;
    datMain.tblPlaylist_Tracks_.Filter   := 'Playlist_ID=' + IntToStr(Playlist_ID);
    datMain.tblPlaylist_Tracks_.Filtered := True;
    datMain.tblPlaylist_Tracks_.Last;
    while not datMain.tblPlaylist_Tracks_.BOF do
    begin
      Track_ID := datMain.tblPlaylist_Tracks_.FieldByName('Track_ID').AsInteger;
      gridNowPlayingDBTableView1.DataController.Insert;
      datMain.tblNowPlaying.FieldByName('Track_ID').AsInteger := Track_ID;
      datMain.tblNowPlaying.Post;
      datMain.tblNowPlaying.MoveCurRecordTo(intIDX + 1);
      datMain.tblPlaylist_Tracks_.Prior;
    end;
    datMain.tblPlaylist_Tracks_.Filtered := False;
    datMain.tblPlaylist_Tracks_.Filter   := '';
    datMain.tblPlaylist_Tracks_.Close;
    gridNowPlayingDBTableView1.DataController.ClearSelection;
    if gridNowPlayingDBTableView1.DataController.RecordCount > 0 then
       gridNowPlayingDBTableView1.DataController.FocusedRecordIndex := intIDX;
  end;
  Screen.Cursor := crDefault;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMusic.gridNowPlayingDBTableView1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if TDragControlObject(Source).Control is TcxGridSite then
  begin
    with TcxGridSite(TDragControlObject(Source).Control) do
    begin
      Accept := (GridView = gridNowPlayingDBTableView1) or
                (GridView = gridviewTracks) or
                (GridView = gridviewPlaylists);
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmMusic.gridviewPlaylistsDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if TDragControlObject(Source).Control is TcxGridSite then
  begin
    with TcxGridSite(TDragControlObject(Source).Control) do
    begin
      Accept := (GridView = gridNowPlayingDBTableView1) or
                (GridView = gridviewTracks);
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmMusic.gridviewPlaylistsDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  I: Integer;
  Playlist_ID: Integer;
  Track_ID   : Integer;
  hTest      : TcxCustomGridHitTest;
  AGridView  : TcxCustomGridView;
  Rec        : TcxCustomGridRecord;
  intIDX     : Integer;
  ARowInfo   : TcxRowInfo;
begin
  AGridView := GetDragSourceGridView(Source);
  if AGridView = nil then
     Exit;

  LockWindowUpdate(Self.Handle);
  Screen.Cursor := crHourGlass;

  if AGridView = gridNowPlayingDBTableView1 then
  begin
    if AGridView.DataController.GetSelectedCount > 1 then
    begin
      hTest := gridviewPlaylists.ViewInfo.GetHitTest(X, Y);
      if hTest is TcxGridRecordCellHitTest then
      begin
        Rec         := TcxGridRecordCellHitTest(hTest).GridRecord;
        Playlist_ID := gridviewPlaylists.DataController.Values[Rec.RecordIndex, gridviewPlaylistsID.Index];
        datMain.tblPlaylist_Tracks_.Open;
        for I := 0 to (AGridView.DataController.GetSelectedCount - 1) do
        begin
          ARowInfo := AGridView.DataController.GetRowInfo(AGridView.DataController.GetSelectedRowIndex(I));
          Track_ID := AGridView.DataController.Values[ARowInfo.RecordIndex, gridNowPlayingDBTableView1Track_ID.Index];
          try
            datMain.tblPlaylist_Tracks_.Append;
            datMain.tblPlaylist_Tracks_.FieldByName('Playlist_ID').AsInteger := Playlist_ID;
            datMain.tblPlaylist_Tracks_.FieldByName('Track_ID').AsInteger    := Track_ID;
            datMain.tblPlaylist_Tracks_.Post;
          except
          end;
        end;
        datMain.tblPlaylist_Tracks_.Close;
        if gridviewTracks.DataController.DataSource = datMain.dsPlaylist_Tracks then
        begin
          datMain.qryPlaylist_Tracks.Close;
          datMain.qryPlaylist_Tracks.Parameters.ParamByName('Playlist_ID').Value := Playlist_ID;
          datMain.qryPlaylist_Tracks.Open;
          datMain.qryPlaylist_Tracks.Last;
          layoutMyLibrary_Tracks.Caption := datMain.tblPlaylists.FieldByName('Name').AsString;
        end;
      end;
    end
    else
    begin
      ARowInfo := AGridView.DataController.GetRowInfo(AGridView.DataController.GetSelectedRowIndex(0));
      Track_ID := AGridView.DataController.Values[ARowInfo.RecordIndex, gridNowPlayingDBTableView1Track_ID.Index];
      hTest    := gridviewPlaylists.ViewInfo.GetHitTest(X, Y);
      if hTest is TcxGridRecordCellHitTest then
      begin
        try
          Rec         := TcxGridRecordCellHitTest(hTest).GridRecord;
          intIDX      := Rec.RecordIndex;
          gridviewPlaylists.DataController.FocusedRecordIndex := intIDX;
          Playlist_ID := gridviewPlaylists.DataController.Values[gridviewPlaylists.DataController.FocusedRecordIndex, gridviewPlaylistsID.Index];
          datMain.tblPlaylist_Tracks_.Open;
          datMain.tblPlaylist_Tracks_.Append;
          datMain.tblPlaylist_Tracks_.FieldByName('Playlist_ID').AsInteger := Playlist_ID;
          datMain.tblPlaylist_Tracks_.FieldByName('Track_ID').AsInteger    := Track_ID;
          datMain.tblPlaylist_Tracks_.Post;
          datMain.tblPlaylist_Tracks_.Close;
          if gridviewTracks.DataController.DataSource = datMain.dsPlaylist_Tracks then
          begin
            datMain.qryPlaylist_Tracks.Close;
            datMain.qryPlaylist_Tracks.Parameters.ParamByName('Playlist_ID').Value := Playlist_ID;
            datMain.qryPlaylist_Tracks.Open;
            datMain.qryPlaylist_Tracks.Last;
            layoutMyLibrary_Tracks.Caption := datMain.tblPlaylists.FieldByName('Name').AsString;
          end;
        except
        end;
      end;
    end;
  end
  else
  if AGridView = gridviewTracks then
  begin
    if AGridView.DataController.GetSelectedCount > 1 then
    begin
      hTest := gridviewPlaylists.ViewInfo.GetHitTest(X, Y);
      if hTest is TcxGridRecordCellHitTest then
      begin
        Rec         := TcxGridRecordCellHitTest(hTest).GridRecord;
        Playlist_ID := gridviewPlaylists.DataController.Values[Rec.RecordIndex, gridviewPlaylistsID.Index];
        datMain.tblPlaylist_Tracks_.Open;
        for I := 0 to (AGridView.DataController.GetSelectedCount - 1) do
        begin
          ARowInfo := AGridView.DataController.GetRowInfo(AGridView.DataController.GetSelectedRowIndex(I));
          Track_ID := AGridView.DataController.Values[ARowInfo.RecordIndex, gridviewTracks_ID.Index];
          try
            datMain.tblPlaylist_Tracks_.Append;
            datMain.tblPlaylist_Tracks_.FieldByName('Playlist_ID').AsInteger := Playlist_ID;
            datMain.tblPlaylist_Tracks_.FieldByName('Track_ID').AsInteger    := Track_ID;
            datMain.tblPlaylist_Tracks_.Post;
          except
          end;
        end;
        datMain.tblPlaylist_Tracks_.Close;
        if gridviewTracks.DataController.DataSource = datMain.dsPlaylist_Tracks then
        begin
          datMain.qryPlaylist_Tracks.Close;
          datMain.qryPlaylist_Tracks.Parameters.ParamByName('Playlist_ID').Value := Playlist_ID;
          datMain.qryPlaylist_Tracks.Open;
          datMain.qryPlaylist_Tracks.Last;
          layoutMyLibrary_Tracks.Caption := datMain.tblPlaylists.FieldByName('Name').AsString;
        end;
      end;
    end
    else
    begin
      ARowInfo := AGridView.DataController.GetRowInfo(AGridView.DataController.GetSelectedRowIndex(0));
      Track_ID := AGridView.DataController.Values[ARowInfo.RecordIndex, gridviewTracks_ID.Index];
      hTest    := gridviewPlaylists.ViewInfo.GetHitTest(X, Y);
      if hTest is TcxGridRecordCellHitTest then
      begin
        try
          Rec         := TcxGridRecordCellHitTest(hTest).GridRecord;
          intIDX      := Rec.RecordIndex;
          gridviewPlaylists.DataController.FocusedRecordIndex := intIDX;
          Playlist_ID := gridviewPlaylists.DataController.Values[gridviewPlaylists.DataController.FocusedRecordIndex, gridviewPlaylistsID.Index];
          datMain.tblPlaylist_Tracks_.Open;
          datMain.tblPlaylist_Tracks_.Append;
          datMain.tblPlaylist_Tracks_.FieldByName('Playlist_ID').AsInteger := Playlist_ID;
          datMain.tblPlaylist_Tracks_.FieldByName('Track_ID').AsInteger    := Track_ID;
          datMain.tblPlaylist_Tracks_.Post;
          datMain.tblPlaylist_Tracks_.Close;
          if gridviewTracks.DataController.DataSource = datMain.dsPlaylist_Tracks then
          begin
            datMain.qryPlaylist_Tracks.Close;
            datMain.qryPlaylist_Tracks.Parameters.ParamByName('Playlist_ID').Value := Playlist_ID;
            datMain.qryPlaylist_Tracks.Open;
            datMain.qryPlaylist_Tracks.Last;
            layoutMyLibrary_Tracks.Caption := datMain.tblPlaylists.FieldByName('Name').AsString;
          end;
        except
        end;
      end;
    end;
  end;
  Screen.Cursor := crDefault;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMusic.lblMyLibrary_AllMusicClick(Sender: TObject);
begin
  LockWindowUpdate(Self.Handle);
  Screen.Cursor := crHourGlass;
  if gridviewTracks.DataController.DataSource <> datMain.dsTracks then
  begin
    gridviewTracks.DataController.DataSource := datMain.dsTracks;
    gridviewTracks_ID.DataBinding.FieldName  := 'ID';
  end;
  layoutMyLibrary_Tracks.Caption := 'All Tracks';
  Screen.Cursor := crDefault;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMusic.gridviewPlaylistsMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Playlist_ID: Integer;
  hTest      : TcxCustomGridHitTest;
  Rec        : TcxCustomGridRecord;
  intIDX     : Integer;
begin
  if Button = mbLeft then
  begin
    if datMain.tblPlaylists.RecordCount <= 0 then
       Exit;
      
    LockWindowUpdate(Self.Handle);
    Screen.Cursor := crHourGlass;
    Playlist_ID := gridviewPlaylists.DataController.Values[gridviewPlaylists.DataController.FocusedRecordIndex, gridviewPlaylistsID.Index];
    hTest       := gridviewPlaylists.ViewInfo.GetHitTest(X, Y);
    if hTest is TcxGridRecordCellHitTest then
    begin
      try
        Rec    := TcxGridRecordCellHitTest(hTest).GridRecord;
        intIDX := Rec.RecordIndex;
        gridviewPlaylists.DataController.FocusedRecordIndex := intIDX;
        datMain.qryPlaylist_Tracks.Close;
        datMain.qryPlaylist_Tracks.Parameters.ParamByName('Playlist_ID').Value := Playlist_ID;
        datMain.qryPlaylist_Tracks.Open;
        if gridviewTracks.DataController.DataSource <> datMain.dsPlaylist_Tracks then
        begin
          gridviewTracks.DataController.DataSource := datMain.dsPlaylist_Tracks;
          gridviewTracks_ID.DataBinding.FieldName  := 'Track_ID';
        end;
        layoutMyLibrary_Tracks.Caption := datMain.tblPlaylists.FieldByName('Name').AsString;
      except
        Screen.Cursor := crDefault;
        LockWindowUpdate(0);
      end;
    end;
    Screen.Cursor := crDefault;
    LockWindowUpdate(0);
  end;
end;
//***********************************************************************************************************

procedure TfrmMusic.gridviewTracksDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if TDragControlObject(Source).Control is TcxGridSite then
  begin
    with TcxGridSite(TDragControlObject(Source).Control) do
    begin
      Accept := (GridView = gridNowPlayingDBTableView1) and
                (gridviewTracks.DataController.DataSource = datMain.dsPlaylist_Tracks);
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmMusic.gridviewTracksDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  I: Integer;
  Playlist_ID: Integer;
  Track_ID   : Integer;
  AGridView  : TcxCustomGridView;
  ARowInfo: TcxRowInfo;
begin
  AGridView := GetDragSourceGridView(Source);
  if AGridView = nil then
     Exit;

  LockWindowUpdate(Self.Handle);
  Screen.Cursor := crHourGlass;

  if AGridView = gridNowPlayingDBTableView1 then
  begin
    Playlist_ID := datMain.qryPlaylist_Tracks.Parameters.ParamByName('Playlist_ID').Value;
    if AGridView.DataController.GetSelectedCount > 1 then
    begin
      datMain.tblPlaylist_Tracks_.Open;
      for I := 0 to (AGridView.DataController.GetSelectedCount - 1) do
      begin
        ARowInfo := AGridView.DataController.GetRowInfo(AGridView.DataController.GetSelectedRowIndex(I));
        Track_ID := AGridView.DataController.Values[ARowInfo.RecordIndex, gridNowPlayingDBTableView1Track_ID.Index];
        try
          datMain.tblPlaylist_Tracks_.Append;
          datMain.tblPlaylist_Tracks_.FieldByName('Playlist_ID').AsInteger := Playlist_ID;
          datMain.tblPlaylist_Tracks_.FieldByName('Track_ID').AsInteger    := Track_ID;
          datMain.tblPlaylist_Tracks_.Post;
        except
        end;
      end;
      datMain.tblPlaylist_Tracks_.Close;
      if gridviewTracks.DataController.DataSource = datMain.dsPlaylist_Tracks then
      begin
        datMain.qryPlaylist_Tracks.Close;
        datMain.qryPlaylist_Tracks.Parameters.ParamByName('Playlist_ID').Value := Playlist_ID;
        datMain.qryPlaylist_Tracks.Open;
        datMain.qryPlaylist_Tracks.Last;
        layoutMyLibrary_Tracks.Caption := datMain.tblPlaylists.FieldByName('Name').AsString;
      end;
    end
    else
    begin
      ARowInfo := AGridView.DataController.GetRowInfo(AGridView.DataController.GetSelectedRowIndex(0));
      Track_ID := AGridView.DataController.Values[ARowInfo.RecordIndex, gridNowPlayingDBTableView1Track_ID.Index];
      datMain.tblPlaylist_Tracks_.Open;
      try
        datMain.tblPlaylist_Tracks_.Append;
        datMain.tblPlaylist_Tracks_.FieldByName('Playlist_ID').AsInteger := Playlist_ID;
        datMain.tblPlaylist_Tracks_.FieldByName('Track_ID').AsInteger    := Track_ID;
        datMain.tblPlaylist_Tracks_.Post;
      except
      end;
      datMain.tblPlaylist_Tracks_.Close;
      if gridviewTracks.DataController.DataSource = datMain.dsPlaylist_Tracks then
      begin
        datMain.qryPlaylist_Tracks.Close;
        datMain.qryPlaylist_Tracks.Parameters.ParamByName('Playlist_ID').Value := Playlist_ID;
        datMain.qryPlaylist_Tracks.Open;
        datMain.qryPlaylist_Tracks.Last;
        layoutMyLibrary_Tracks.Caption := datMain.tblPlaylists.FieldByName('Name').AsString;
      end;
    end;
  end;
  Screen.Cursor := crDefault;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMusic.lblMyLibrary_SearchClick(Sender: TObject);
begin
  PopMenuPopup_Bottom(popmnuMyLib_Search, lblMyLibrary_Search, layoutMyLibrary);
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuSearchAllClick(Sender: TObject);
begin
  lblMyLibrary_Search.Caption := 'Search All:';
  edtMyLibrary_SearchPropertiesButtonClick(Sender, 0);
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuSearchAlbumsClick(Sender: TObject);
begin
  lblMyLibrary_Search.Caption := 'Search Album:';
  edtMyLibrary_SearchPropertiesButtonClick(Sender, 0);
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuSearchArtistsClick(Sender: TObject);
begin
  lblMyLibrary_Search.Caption := 'Search Artist:';
  edtMyLibrary_SearchPropertiesButtonClick(Sender, 0);
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuSearchTitlesClick(Sender: TObject);
begin
  lblMyLibrary_Search.Caption := 'Search Track Title:';
  edtMyLibrary_SearchPropertiesButtonClick(Sender, 0);
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuSearchPlaylistsClick(Sender: TObject);
begin
  lblMyLibrary_Search.Caption := 'Search Track Playlist:';
  edtMyLibrary_SearchPropertiesButtonClick(Sender, 0);
end;
//***********************************************************************************************************

procedure TfrmMusic.GridMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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
      if popmnuTrack.ItemLinks.Count > 0 then
      begin
        popmnuTrack.Popup(p.X, p.Y);
      end;
    end
  end;
end;
//***********************************************************************************************************

procedure TfrmMusic.lblMyLibrary_FieldChooserClick(Sender: TObject);
begin
  if gridviewTracks.Controller.Customization then
     gridviewTracks.Controller.Customization := False
  else
     gridviewTracks.Controller.Customization := True;
end;
//***********************************************************************************************************

procedure TfrmMusic.lblMyLibrary_FilterColsClick(Sender: TObject);
begin
  if gridviewTracks.OptionsCustomize.ColumnFiltering then
     gridviewTracks.OptionsCustomize.ColumnFiltering := False
  else
     gridviewTracks.OptionsCustomize.ColumnFiltering := True;
end;
//***********************************************************************************************************

procedure TfrmMusic.lblMyLibrary_AddClick(Sender: TObject);
begin
  PopMenuPopup_Bottom(popmnuAdd, lblMyLibrary_Add, layoutMyLibrary);
end;
//***********************************************************************************************************

procedure TfrmMusic.lblNowPlayingClick(Sender: TObject);
begin
  PopMenuPopup_Bottom(popmnuNowPlaying, lblNowPlaying, layoutMusic);
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuNowPlaying_ClearClick(Sender: TObject);
begin
  LockWindowUpdate(Self.Handle);
  Screen.Cursor := crHourGlass;

  datMain.tblNowPlaying.DisableControls;
  datMain.tblNowPlaying.Close;
  datMain.tblNowPlaying.Open;
  datMain.tblNowPlaying.EnableControls;

  Screen.Cursor := crDefault;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuNowPlayingSaveClick(Sender: TObject);
var
  Playlist_ID: Integer;
  Track_ID: Integer;
  I: Integer;
begin
  if gridNowPlayingDBTableView1.DataController.RecordCount <= 0 then
  begin
    MessageDLG('There are no tracks in Now Playing to save.', mtError, [mbOK], 0);
    Exit;
  end;

  datMain.AddToPlaylistID := -1;
  with TfrmAddToPlaylistDLG.Create(Application) do
       ShowModal;

  if datMain.AddToPlaylistID <> -1 then
  begin
    LockWindowUpdate(Self.Handle);
    Screen.Cursor := crHourGlass;

    Playlist_ID := datMain.AddToPlaylistID;
    datMain.tblPlaylist_Tracks_.Open;
    for I := 0 to (gridNowPlayingDBTableView1.DataController.RecordCount - 1) do
    begin
      Track_ID := gridNowPlayingDBTableView1.DataController.Values[I, gridNowPlayingDBTableView1Track_ID.Index];
      try
        datMain.tblPlaylist_Tracks_.Append;
        datMain.tblPlaylist_Tracks_.FieldByName('Playlist_ID').AsInteger := Playlist_ID;
        datMain.tblPlaylist_Tracks_.FieldByName('Track_ID').AsInteger    := Track_ID;
        datMain.tblPlaylist_Tracks_.Post;
      except
      end;
    end;
    datMain.tblPlaylist_Tracks_.Close;
    if gridviewTracks.DataController.DataSource = datMain.dsPlaylist_Tracks then
    begin
      datMain.tblPlaylists.Locate('ID', Playlist_ID, []);
      datMain.qryPlaylist_Tracks.Close;
      datMain.qryPlaylist_Tracks.Parameters.ParamByName('Playlist_ID').Value := Playlist_ID;
      datMain.qryPlaylist_Tracks.Open;
      datMain.qryPlaylist_Tracks.Last;
      layoutMyLibrary_Tracks.Caption := datMain.tblPlaylists.FieldByName('Name').AsString;
    end;

    Screen.Cursor := crDefault;
    LockWindowUpdate(0);
  end;
  datMain.AddToPlaylistID := -1;
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuAddFolderClick(Sender: TObject);
begin
  with TfrmAddFolderDLG.Create(Application) do
  begin
    ShowModal;
  end;
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuAddFileClick(Sender: TObject);
begin
  if dlgOpen.Execute then
  begin
    if dlgOpen.FileName <> EmptyStr then
    begin
      with TfrmAddFolderDLG.Create(Application) do
      begin
        FilePath := dlgOpen.FileName;
        Show;
      end;
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmMusic.gridviewPlaylists_PlayPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  Playlist_ID: Integer;
  Track_ID: Integer;
  intIDX: Integer;
begin
  LockWindowUpdate(Self.Handle);
  Screen.Cursor := crHourGlass;

  Playlist_ID := gridviewPlaylists.DataController.Values[gridviewPlaylists.DataController.FocusedRecordIndex, gridviewPlaylistsID.Index];
  try
    intIDX := datMain.tblNowPlaying.RecordCount;
  except
    intIDX := 0;
  end;

  datMain.tblPlaylist_Tracks_.Open;
  datMain.tblPlaylist_Tracks_.Filter   := 'Playlist_ID=' + IntToStr(Playlist_ID);
  datMain.tblPlaylist_Tracks_.Filtered := True;
  datMain.tblPlaylist_Tracks_.Last;
  while not datMain.tblPlaylist_Tracks_.BOF do
  begin
    Track_ID := datMain.tblPlaylist_Tracks_.FieldByName('Track_ID').AsInteger;
    gridNowPlayingDBTableView1.DataController.Insert;
    datMain.tblNowPlaying.FieldByName('Track_ID').AsInteger := Track_ID;
    datMain.tblNowPlaying.Post;
    datMain.tblNowPlaying.MoveCurRecordTo(intIDX + 1);
    datMain.tblPlaylist_Tracks_.Prior;
  end;
  datMain.tblPlaylist_Tracks_.Filtered := False;
  datMain.tblPlaylist_Tracks_.Filter   := '';
  datMain.tblPlaylist_Tracks_.Close;
  gridNowPlayingDBTableView1.DataController.ClearSelection;
  if (gridNowPlayingDBTableView1.DataController.RecordCount > 0) and (intIDX < gridNowPlayingDBTableView1.DataController.RecordCount) then
     gridNowPlayingDBTableView1.DataController.FocusedRecordIndex := intIDX;

  Screen.Cursor := crDefault;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMusic.gridviewPlaylistsNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  with TfrmPlaylistDLG.Create(Application) do
  begin
    ShowModal;
  end;
  layoutMyLibrary_Tracks.Caption := datMain.tblPlaylists.FieldByName('Name').AsString;
end;
//***********************************************************************************************************

procedure TfrmMusic.gridviewTracks_PlayPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  Track_ID: Integer;
  intIDX: Integer;
begin
  LockWindowUpdate(Self.Handle);
  Screen.Cursor := crHourGlass;

  Track_ID := gridviewTracks.DataController.Values[gridviewTracks.DataController.FocusedRecordIndex, gridviewTracks_ID.Index];
  try
    intIDX := datMain.tblNowPlaying.RecordCount;
  except
    intIDX := 0;
  end;

  gridNowPlayingDBTableView1.DataController.Insert;
  datMain.tblNowPlaying.FieldByName('Track_ID').AsInteger := Track_ID;
  datMain.tblNowPlaying.Post;
  datMain.tblNowPlaying.MoveCurRecordTo(intIDX + 1);
  gridNowPlayingDBTableView1.DataController.ClearSelection;
  gridNowPlayingDBTableView1.DataController.FocusedRecordIndex := intIDX;

  Screen.Cursor := crDefault;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMusic.gridviewTracks_AVTitlePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  AFileName: String;
begin
  case AButtonIndex of
    0: //Edit
    begin
      //TODO
    end;
    1: //Locate File
    begin
      AFileName := gridviewTracks.DataController.DataSource.DataSet.FieldByName('FilePath').AsString;
      if (AFileName <> EmptyStr) and (FileExists(AFileName)) then
         ShellExecute(0, nil, 'explorer', PAnsiChar(ExtractFilePath(AFileName)), nil, SW_SHOWNORMAL)
      else
         MessageDLG('File Not Found.', mtError, [mbOK], 0);
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmMusic.gridviewTracks_AVArtistPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
//TODO Find Artist in 109Artists
end;
//***********************************************************************************************************

procedure TfrmMusic.gridviewTracks_AVAlbumPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
//TODO Find Album in 109Albums
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuPlaylist_NewClick(Sender: TObject);
begin
  datMain.tblPlaylists.Append;
  datMain.tblPlaylists.FieldByName('Name').AsString          := 'New Playlist';
  datMain.tblPlaylists.FieldByName('DateCreated').AsDateTime := Date;
  with TfrmPlaylistDLG.Create(Application) do
  begin
    ShowModal;
  end;
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuPlaylist_DeleteClick(Sender: TObject);
begin
  if datMain.tblPlaylists.RecordCount = 0 then
     Exit;

  if MessageDlg('Are you sure you want to delete Playlist - ' + datMain.tblPlaylists.FieldByName('Name').AsString, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    LockWindowUpdate(Self.Handle);
    Screen.Cursor := crHourGlass;

    datMain.qryPlaylist_Tracks.Close;
    datMain.qryPlaylist_Tracks_Delete.ExecSQL;
    datMain.tblPlaylists.Delete;
    lblMyLibrary_AllMusicClick(Self);

    Screen.Cursor := crDefault;
    LockWindowUpdate(0);
  end;
end;
//***********************************************************************************************************

procedure TfrmMusic.gridviewTracks_RatingPropertiesChange(Sender: TObject);
begin
  gridviewTracks.DataController.DataSource.DataSet.Post;
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuTrack_AddToPlaylistClick(Sender: TObject);
var
  Playlist_ID: Integer;
  Track_ID: Integer;
  I: Integer;
  ARowInfo: TcxRowInfo;
begin
  if gridviewTracks.DataController.GetSelectedCount <= 0 then
  begin
    MessageDLG('You havn''t selected a track.', mtError, [mbOK], 0);
    Exit;
  end;

  datMain.AddToPlaylistID := -1;
  with TfrmAddToPlaylistDLG.Create(Application) do
       ShowModal;

  if datMain.AddToPlaylistID <> -1 then
  begin
    LockWindowUpdate(Self.Handle);
    Screen.Cursor := crHourGlass;

    Playlist_ID := datMain.AddToPlaylistID;
    datMain.tblPlaylist_Tracks_.Open;
    for I := 0 to (gridviewTracks.DataController.GetSelectedCount - 1) do
    begin
      ARowInfo := gridviewTracks.DataController.GetRowInfo(gridviewTracks.DataController.GetSelectedRowIndex(I));
      Track_ID := gridviewTracks.DataController.Values[ARowInfo.RecordIndex, gridviewTracks_ID.Index];
      try
        datMain.tblPlaylist_Tracks_.Append;
        datMain.tblPlaylist_Tracks_.FieldByName('Playlist_ID').AsInteger := Playlist_ID;
        datMain.tblPlaylist_Tracks_.FieldByName('Track_ID').AsInteger    := Track_ID;
        datMain.tblPlaylist_Tracks_.Post;
      except
      end;
    end;
    datMain.tblPlaylist_Tracks_.Close;
    if gridviewTracks.DataController.DataSource = datMain.dsPlaylist_Tracks then
    begin
      datMain.tblPlaylists.Locate('ID', Playlist_ID, []);
      datMain.qryPlaylist_Tracks.Close;
      datMain.qryPlaylist_Tracks.Parameters.ParamByName('Playlist_ID').Value := Playlist_ID;
      datMain.qryPlaylist_Tracks.Open;
      datMain.qryPlaylist_Tracks.Last;
      layoutMyLibrary_Tracks.Caption := datMain.tblPlaylists.FieldByName('Name').AsString;
    end;

    Screen.Cursor := crDefault;
    LockWindowUpdate(0);
  end;
  datMain.AddToPlaylistID := -1;
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuitmAddToNowPlayingClick(Sender: TObject);
var
  I: Integer;
  intIDX: Integer;
  Track_ID: Integer;
  ARowInfo: TcxRowInfo;
begin
  if gridviewTracks.DataController.GetSelectedCount <= 0 then
  begin
    MessageDLG('You havn''t selected a track.', mtError, [mbOK], 0);
    Exit;
  end;

  LockWindowUpdate(Self.Handle);
  Screen.Cursor := crHourGlass;

  if gridviewTracks.DataController.GetSelectedCount > 0 then
  begin
    intIDX := datMain.tblNowPlaying.RecordCount;
    for I := (gridviewTracks.DataController.GetSelectedCount - 1) downto 0 do
    begin
      ARowInfo := gridviewTracks.DataController.GetRowInfo(gridviewTracks.DataController.GetSelectedRowIndex(I));
      Track_ID := gridviewTracks.DataController.Values[ARowInfo.RecordIndex, gridviewTracks_ID.Index];
      gridNowPlayingDBTableView1.DataController.Insert;
      datMain.tblNowPlaying.FieldByName('Track_ID').AsInteger := Track_ID;
      datMain.tblNowPlaying.Post;
      datMain.tblNowPlaying.MoveCurRecordTo(intIDX + 1);
      gridNowPlayingDBTableView1.DataController.ClearSelection;
      gridNowPlayingDBTableView1.DataController.FocusedRecordIndex := intIDX;
    end;
  end;

  Screen.Cursor := crDefault;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuTrack_RemoveClick(Sender: TObject);
var
  I: Integer;
  Track_ID: Integer;
  ARowInfo: TcxRowInfo;
begin
  if gridviewTracks.DataController.GetSelectedCount <= 0 then
  begin
    MessageDLG('You havn''t selected a track.', mtError, [mbOK], 0);
    Exit;
  end;

  if gridviewTracks.DataController.GetSelectedCount > 0 then
  begin
    if MessageDlg('Are you sure you want to remove the selected track(s) from your library?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      LockWindowUpdate(Self.Handle);
      Screen.Cursor := crHourGlass;
      for I := (gridviewTracks.DataController.GetSelectedCount - 1) downto 0 do
      begin
        ARowInfo := gridviewTracks.DataController.GetRowInfo(gridviewTracks.DataController.GetSelectedRowIndex(I));
        Track_ID := gridviewTracks.DataController.Values[ARowInfo.RecordIndex, gridviewTracks_ID.Index];

        //delete track from tblNowPlaying
        datMain.tblNowPlaying.DisableControls;
        while datMain.tblNowPlaying.Locate('Track_ID', Track_ID, [loCaseInsensitive]) do
              datMain.tblNowPlaying.Delete;
        datMain.tblNowPlaying.EnableControls;

        //delete track from tblPlaylist_Tracks
        datMain.qryPlaylist_Tracks_DeleteTrack.Parameters.ParamByName('Track_ID').Value := Track_ID;
        datMain.qryPlaylist_Tracks_DeleteTrack.ExecSQL;

        //delete track from tblTracks
        datMain.qryTracks_DeleteTrack.Parameters.ParamByName('Track_ID').Value := Track_ID;
        datMain.qryTracks_DeleteTrack.ExecSQL;
      end;
      gridviewTracks.DataController.DataSource.DataSet.Close;
      gridviewTracks.DataController.DataSource.DataSet.Open;
      gridviewTracks.DataController.DataSource.DataSet.First;
      Screen.Cursor := crDefault;
      LockWindowUpdate(0);
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmMusic.mnuTrack_RemovePlaylistClick(Sender: TObject);
var
  I: Integer;
  Track_ID: Integer;
  ARowInfo: TcxRowInfo;
begin
  if gridviewTracks.DataController.GetSelectedCount <= 0 then
  begin
    MessageDLG('You havn''t selected a track.', mtError, [mbOK], 0);
    Exit;
  end;

  if gridviewTracks.DataController.GetSelectedCount > 0 then
  begin
    if MessageDlg('Are you sure you want to remove the selected track(s) from this playlist?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      LockWindowUpdate(Self.Handle);
      Screen.Cursor := crHourGlass;
      for I := (gridviewTracks.DataController.GetSelectedCount - 1) downto 0 do
      begin
        ARowInfo := gridviewTracks.DataController.GetRowInfo(gridviewTracks.DataController.GetSelectedRowIndex(I));
        Track_ID := gridviewTracks.DataController.Values[ARowInfo.RecordIndex, gridviewTracks_ID.Index];

        //delete track from tblPlaylist_Tracks
        datMain.qryPlaylist_Tracks_DeleteTrackPlaylist.Parameters.ParamByName('Track_ID').Value := Track_ID;
        datMain.qryPlaylist_Tracks_DeleteTrackPlaylist.ExecSQL;
      end;
      gridviewTracks.DataController.DataSource.DataSet.Close;
      gridviewTracks.DataController.DataSource.DataSet.Open;
      gridviewTracks.DataController.DataSource.DataSet.First;
      Screen.Cursor := crDefault;
      LockWindowUpdate(0);
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmMusic.lblMyLibrary_ClearClick(Sender: TObject);
begin
  edtMyLibrary_Search.Text := '';
  gridviewTracks.DataController.Filter.Clear;
end;
//***********************************************************************************************************

procedure TfrmMusic.edtMyLibrary_SearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     edtMyLibrary_SearchPropertiesButtonClick(Sender, 0);
end;
//***********************************************************************************************************

procedure TfrmMusic.edtMyLibrary_SearchPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  AItemList: TcxFilterCriteriaItemList;
  strSearch: String;
begin
  if edtMyLibrary_Search.Text = EmptyStr then
  begin
    gridviewTracks.DataController.Filter.Clear;
    Exit;
  end;

  LockWindowUpdate(Self.Handle);
  Screen.Cursor := crHourGlass;
  strSearch := lblMyLibrary_Search.Caption;
  gridviewTracks.DataController.Filter.Active := False;
  gridviewTracks.DataController.Filter.BeginUpdate;
  try
    gridviewTracks.DataController.Filter.Root.Clear;
    AItemList := gridviewTracks.DataController.Filter.Root.AddItemList(fboOr);
    if (strSearch = 'Search All:') or (strSearch = 'Search Album:') then
        AItemList.AddItem(gridviewTracks_AVAlbum        , foLike, '%' + datMain.StrReplace(edtMyLibrary_Search.Text, ' ', '%') + '%', edtMyLibrary_Search.Text);

    if (strSearch = 'Search All:') or (strSearch = 'Search Artist:') then
        AItemList.AddItem(gridviewTracks_AVArtist       , foLike, '%' + datMain.StrReplace(edtMyLibrary_Search.Text, ' ', '%') + '%', edtMyLibrary_Search.Text);

    if (strSearch = 'Search All:') or (strSearch = 'Search Track Title:') then
        AItemList.AddItem(gridviewTracks_AVTitle        , foLike, '%' + datMain.StrReplace(edtMyLibrary_Search.Text, ' ', '%') + '%', edtMyLibrary_Search.Text);

    if (strSearch = 'Search All:') or (strSearch = 'Search Track Playlist:') then
        AItemList.AddItem(gridviewTracks_AVTrackPlaylist, foLike, '%' + datMain.StrReplace(edtMyLibrary_Search.Text, ' ', '%') + '%', edtMyLibrary_Search.Text);
  finally
    gridviewTracks.DataController.Filter.EndUpdate;
  end;
  gridviewTracks.DataController.Filter.Active := True;
  Screen.Cursor := crDefault;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMusic.gridNowPlayingDBTableView1DblClick(Sender: TObject);
begin
  if datMain.tblNowPlaying.RecordCount > 0 then
  begin
    frmMain.PlayFile(datMain.tblNowPlaying.FieldByName('RecID').AsInteger);
  end;
end;
//***********************************************************************************************************

procedure TfrmMusic.gridNowPlayingDBTableView1NowPlayingGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: String);
var
  ALastPlayed: TDateTime;
  AValue: Variant;
begin
  AValue := gridNowPlayingDBTableView1.DataController.Values[ARecord.Index, gridNowPlayingDBTableView1LastPlayed.Index];
  if (AValue <> NULL) then
  begin
    ALastPlayed := AValue;
    if ALastPlayed = LastRecPlayed then
    begin
      AText := '•';
    end
    else
    begin
      AText := '';
    end;
  end
  else
  begin
    AText := '';
  end;
end;
//***********************************************************************************************************

end.
