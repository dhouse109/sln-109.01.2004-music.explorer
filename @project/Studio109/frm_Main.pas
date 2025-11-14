unit frm_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ShellAPI, ComCtrls, GIFImage, jpeg, CoolTrayIcon, cxLabel,
  dxLayoutControl, cxControls, dat_Main, frm_AppModule, frm_Community, frm_Splash,
  dxStatusBar, Shapes, Marquee, cxTrackBar, cxContainer, cxEdit, BassPlayer,
  PluginCtrl, Knob, slider, appexec, ThdTimer, cxProgressBar;

type
  TfrmMain = class(TForm)
    pnlMain: TPanel;
    systrayMain: TCoolTrayIcon;
    layoutMainGroup_Root: TdxLayoutGroup;
    layoutMain: TdxLayoutControl;
    pnlModule: TPanel;
    layoutMain_Item_Module: TdxLayoutItem;
    pnlHeader: TPanel;
    layoutMediaPlayerGroup_Root: TdxLayoutGroup;
    layoutMediaPlayer: TdxLayoutControl;
    layoutMediaPlayerItem2: TdxLayoutItem;
    imgLogo1: TImage;
    pnlDisplay: TPanel;
    layoutMediaPlayerItem1: TdxLayoutItem;
    lblTitle: TMarquee;
    RoundRectShape1: TRoundRectShape;
    lblTime: TcxLabel;
    trackPosition: TcxTrackBar;
    Panel2: TPanel;
    layoutMediaPlayerItem3: TdxLayoutItem;
    trackVolume: TcxTrackBar;
    layoutMediaPlayerGroup1: TdxLayoutGroup;
    pnlFooter: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    lblViewTime: TcxLabel;
    lblViewSpec: TcxLabel;
    lblWAYLT: TcxLabel;
    lblTrackInfo: TcxLabel;
    lblEQ: TcxLabel;
    lblFX: TcxLabel;
    pnlVis: TPanel;
    GaugePaintBox: TPaintBox;
    imgNoPic: TImage;
    imgNoPic_S: TImage;
    imgNoPic_S2: TImage;
    imgSplash109: TImage;
    imgAbout109: TImage;
    imgPrevious: TImage;
    imgPlay: TImage;
    imgNext: TImage;
    imgPause: TImage;
    Timer_Stat: TThreadedTimer;
    lblOptions: TcxLabel;
    progQueryProgress: TcxProgressBar;
    dxLayoutControl1Item1: TdxLayoutItem;
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer_StatTimer(Sender: TObject);
    procedure CreateBasicImage;
    procedure ShowBackground;
    procedure DisplayFFTBand(Sender: TObject; Bands : TBandOut);
    procedure OnPlayEnd(Sender: TObject);
    procedure trackVolumePropertiesChange(Sender: TObject);
    procedure trackPositionPropertiesChange(Sender: TObject);
    procedure lblViewTimeClick(Sender: TObject);
    procedure lblViewSpecClick(Sender: TObject);
    procedure lblFXClick(Sender: TObject);
    procedure lblEQClick(Sender: TObject);
    procedure btnPlayClick(Sender: TObject);
    procedure btnPauseClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPreviousClick(Sender: TObject);
    procedure imgLogo1Click(Sender: TObject);
    procedure lblWAYLTClick(Sender: TObject);
    procedure lblTrackInfoClick(Sender: TObject);
    procedure lblOptionsClick(Sender: TObject);
    procedure lblTimeClick(Sender: TObject);
  private
    FInitialized: Boolean;
    FShowTimeRemaining: Boolean;

    FCommunity: TfrmCommunity;
    FPlayingLocal: Boolean;
    FPlayingLocalTrack_ID: Integer;
    procedure LoadCommunity;
  public
    property Community: TfrmCommunity read FCommunity write FCommunity;
    function DoLogin: Boolean;
    procedure PlayFile(ANowPlayingID: Integer);
    procedure UpdateTime;
  end;

var
  frmMain: TfrmMain;

implementation

uses
  frm_EqualizerDLG,
  frm_SoundEffectsDLG,
  frm_OptionsDLG,
  frm_TrackInfoDLG,
  frm_WAYLTDLG;

{$R *.dfm}

const
// Constants for frequency spectrum visualizzer
  BlockWidth  = 10;
  HBlockGap   = 2;
  HBlockCount = NumFFTBands;
  VLimit      = 34;
  BackColor   = $005B5B5B;

var
  BasicBMP: TBitMap;
  NowTracking : boolean;
  GaugeTempBMP: TBitMap;
  DisplayBar: TBitmap;
  GaugeRect: TRect;
  PeakValue: array[1..NumFFTBands] of single;
  PassedCounter: array[1..NumFFTBands] of integer;

//***********************************************************************************************************

procedure TfrmMain.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmMain.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FInitialized       := False;
  FShowTimeRemaining := False;
  lblViewTimeClick(Self);
  LoadCommunity;
end;
//***********************************************************************************************************

procedure TfrmMain.FormShow(Sender: TObject);
var
  i : integer;
begin
  if FInitialized = False then
  begin
    LockWindowUpdate(Self.Handle);
    FInitialized := True;
    Visible      := True;

    BassPlayer1.OnNewFFTData := DisplayFFTBand;
    BassPlayer1.OnPlayEnd    := OnPlayEnd;
    trackVolume.Position     := BassPlayer1.Volume;
    CreateBasicImage;
    ShowBackground;
    for i := 1 to NumFFTBands do
        PeakValue[i] := 0;

    if BassPlayer1.PlayerReady then
       Timer_Stat.Enabled := true;
    LockWindowUpdate(0);
  end;
end;
//***********************************************************************************************************

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer_Stat.Enabled := False;
  datMain.CloseAndDestroy(FCommunity);
  BasicBMP.Free;
  GaugeTempBMP.Free;
  DisplayBar.Free;
  Action := caFree;
end;
//***********************************************************************************************************

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
//
end;
//***********************************************************************************************************

function TfrmMain.DoLogin: Boolean;
var
  strUpdateURL: String;
begin
  Result := False;
  strUpdateURL := datMain.Studio109_UpdateRequired;
  if strUpdateURL <> EmptyStr then
  begin
    if MessageDLG('A new version of The 109 Explorer is available.' + #13#10 +
                  'This update is required to continue logging in.' + #13#10 +
                  'Would you like to download this update now?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      ShellExecute(0, nil, PAnsiChar(Trim(strUpdateURL)), nil, nil, SW_SHOWNORMAL);
      Close;
      //Application.Terminate;
    end;
  end
  else
  begin
    Application.CreateForm(TfrmSplash, frmSplash);
    if frmSplash.ValidateLogin = True then
    begin
      frmSplash.Free;
      Result := True;
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmMain.LoadCommunity;
begin
  LockWindowUpdate(Self.Handle);
  datMain.CreateAndMergeForm(TfrmCommunity, TForm(FCommunity), pnlModule);
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmMain.CreateBasicImage;
var
  i : integer;
  R, G, B: Integer;
begin
  BasicBMP := TBitMap.Create;
  BasicBMP.Width := (BlockWidth + HBlockGap) * HBlockCount - HBlockGap + 3;
  BasicBMP.Height := VLimit + 1;
  GaugePaintBox.Width := BasicBMP.Width;
  GaugePaintBox.Height := BasicBMP.Height;
  GaugeTempBMP := TBitMap.Create;
  GaugeTempBMP.Width := BasicBMP.Width;
  GaugeTempBMP.Height := BasicBMP.Height;
  GaugeRect.Left := 0;
  GaugeRect.Top := 0;
  GaugeRect.Right := BasicBMP.Width;
  GaugeRect.Bottom := BasicBMP.Height;

  with BasicBMP.Canvas do
  begin
     Brush.Color := BackColor;
     Brush.Style := bsSolid;
     FillRect(Rect(0, 0, BasicBMP.Width, BasicBMP.Height));
     Pen.Color := $00666666;
     Pen.Width := 1;
     Pen.Style := psSolid;
     MoveTo(0, 0);
     MoveTo(0, BasicBMP.Height - 1);
     LineTo(BasicBMP.Width, BasicBMP.Height - 1);
  end;

  DisplayBar := TBitmap.Create;
  DisplayBar.PixelFormat := pf32bit;
  DisplayBar.Width := BlockWidth;
  DisplayBar.Height := VLimit;

  R := 255;
  G := 255;
  B := 255;

  for i := 0 to VLimit - 1 do
  begin
    DisplayBar.Canvas.Brush.Color := TColor(RGB(R, G, B));
    DisplayBar.Canvas.FillRect(Rect(0, i, BlockWidth, i + 1));
  end;
end;
//***********************************************************************************************************

// Display spectrum image
procedure TfrmMain.DisplayFFTBand(Sender: TObject; Bands : TBandOut);
var
   tmpRect, BarRect : TRect;
   j : integer;
begin
  if pnlVis.Visible = False then
     Exit;
    
 // To prevent flickering, use temporary image buffer and process as follows
 // 1) Draw output image on temporary image buffer.
 // 2) Copy temporary image buffer's image to display canvas

 // Copy BasicBMP's image to GaugeTempBMP(used as temporary image buffer)
   BitBlt(GaugeTempBMP.Canvas.Handle, // handle to destination device context
          GaugeRect.Left,	// x-coordinate of destination rectangle's upper-left corner
          GaugeRect.Top,	// y-coordinate of destination rectangle's upper-left corner
          GaugeTempBMP.Width,	// width of destination rectangle
          GaugeTempBMP.Height,	// height of destination rectangle
          BasicBMP.Canvas.Handle, // handle to source device context
          GaugeRect.Left,	// x-coordinate of source rectangle's upper-left corner
          GaugeRect.Top,	// y-coordinate of source rectangle's upper-left corner
          SRCCOPY);             // Copies the source rectangle directly to the destination rectangle.
 // Substituted Canvas.CopyRect with BitBlt for speed up
 // GaugeTempBMP.Canvas.CopyRect(GaugeRect, BasicBMP.Canvas, GaugeRect);

 // Draw spectrum image to GaugeTempBMP
   for j := 1 to HBlockCount do
   begin
      if Bands[j-1] > VLimit then
         Bands[j-1] := VLimit;

      if Bands[j-1] > 0 then
      begin
     // Copy partial image of DisplayBar to GaugeTempBMP
        BarRect.Left := 0;
        BarRect.Right := BlockWidth;
        BarRect.Top := VLimit - Bands[j-1];
        if BarRect.Top < 0 then
           BarRect.Top := 0;
        BarRect.Bottom := DisplayBar.Height;

        tmpRect.Left := (BlockWidth + HBlockGap) * (j - 1) + 2;
        tmpRect.Right := tmpRect.Left + BlockWidth;
        tmpRect.Top := BarRect.Top;
        tmpRect.Bottom := BarRect.Bottom;

        BitBlt(GaugeTempBMP.Canvas.Handle,
               tmpRect.Left,
               tmpRect.Top,
               BlockWidth,
               tmpRect.Bottom - tmpRect.Top + 1,
               DisplayBar.Canvas.Handle,
               BarRect.Left,
               BarRect.Top,
               SRCCOPY);
      end;

      if Bands[j-1] >= trunc(PeakValue[j]) then
      begin
         PeakValue[j] := Bands[j-1] + 0.01;  // 0.01 : to compensate round off
         PassedCounter[j] := 0;
      end else if Bands[j-1] < trunc(PeakValue[j]) then
      begin
         if trunc(PeakValue[j]) > 0 then
         begin
            with GaugeTempBMP.Canvas do
            begin
            // Draw peak line
               Pen.Color := $00666666;   // color for peak line
               MoveTo((BlockWidth + HBlockGap) * (j - 1) + 2, VLimit - trunc(PeakValue[j]));
               LineTo((BlockWidth + HBlockGap) * (j - 1) + 2 + BlockWidth, VLimit - trunc(PeakValue[j]));
            end;

      // Followings are to show simillar spectrum image to WINAMP's
      //  - Put delay time before lowering peak line
      //  - Accerate lowering speed according to the time elapsed
            if PassedCounter[j] >= 8 then
                PeakValue[j] := PeakValue[j] - 0.3 * (PassedCounter[j] - 8);

            if PeakValue[j] < 0 then
               PeakValue[j] := 0
            else
               inc(PassedCounter[j]);
         end;
      end;

   end;

 // Copy GaugeTempBMP's image to GaugePaintBox
   BitBlt(GaugePaintBox.Canvas.Handle,
          GaugeRect.Left,
          GaugeRect.Top,
          GaugeTempBMP.Width,
          GaugeTempBMP.Height,
          GaugeTempBMP.Canvas.Handle,
          GaugeRect.Left,
          GaugeRect.Top,
          SRCCOPY);
end;
//***********************************************************************************************************

procedure TfrmMain.OnPlayEnd(Sender: TObject);
begin
  if datMain.tblNowPlaying.Locate('LastPlayed', LastRecPlayed, []) then
  begin
    if not datMain.tblNowPlaying.EOF then
    begin
      datMain.tblNowPlaying.Next;
      if not datMain.tblNowPlaying.EOF then
      begin
        PlayFile(datMain.tblNowPlaying.FieldByName('RecID').AsInteger);
      end
      else
      if LoopNowPlaying then
      begin
        datMain.tblNowPlaying.First;
        if datMain.tblNowPlaying.RecordCount > 0 then
           PlayFile(datMain.tblNowPlaying.FieldByName('RecID').AsInteger);
      end;
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmMain.ShowBackground;
begin
  BitBlt(GaugePaintBox.Canvas.Handle,
         GaugeRect.Left,
         GaugeRect.Top,
         BasicBMP.Width,
         BasicBMP.Height,
         BasicBMP.Canvas.Handle,
         GaugeRect.Left,
         GaugeRect.Top,
         SRCCOPY);
end;
//***********************************************************************************************************

procedure TfrmMain.Timer_StatTimer(Sender: TObject);
begin
  if ResetQueryProgress then
     progQueryProgress.Position := 0;

  if BassPlayer1.Mode = plmStandby then
  begin
    imgPause.Visible := False;
    imgPlay.Visible  := True;
  end
  else
  if BassPlayer1.Mode = plmReady then
  begin
    imgPause.Visible := False;
    imgPlay.Visible  := True;
  end
  else
  if BassPlayer1.Mode = plmPlaying then
  begin
    UpdateTime;
    if trackPosition.Properties.ThumbType <> cxttRegular then
       trackPosition.Properties.ThumbType := cxttRegular;
    imgPlay.Visible  := False;
    imgPause.Visible := True;
  end
  else
  if BassPlayer1.Mode = plmStopped then
  begin
    imgPause.Visible := False;
    imgPlay.Visible  := True;
  end
  else
  if BassPlayer1.Mode = plmPaused then
  begin
    UpdateTime;
    imgPause.Visible := False;
    imgPlay.Visible  := True;
  end;

  if BassPlayer1.Mode <> plmPlaying then
  begin
    ShowBackground;
    if trackPosition.Properties.ThumbType <> cxttNone then
       trackPosition.Properties.ThumbType := cxttNone;
  end;

  if BassPlayer1.Mode = plmStandby then
     Exit;

  if not NowTracking and (BassPlayer1.Mode <> plmStopped) then
  begin
    trackPosition.Properties.OnChange := nil;
    trackPosition.Position := (BassPlayer1.Position * trackPosition.Properties.Max) div BassPlayer1.PlayLength;
    trackPosition.Properties.OnChange := trackPositionPropertiesChange;
  end;
end;
//***********************************************************************************************************

procedure TfrmMain.trackVolumePropertiesChange(Sender: TObject);
begin
  BassPlayer1.Volume := trackVolume.Position;
end;
//***********************************************************************************************************

procedure TfrmMain.trackPositionPropertiesChange(Sender: TObject);
var
  SongPos : int64;
begin
  if trackPosition.Properties.ThumbType = cxttNone then
     Exit;

  SongPos              := Trunc(trackPosition.Position * BassPlayer1.PlayLength / trackPosition.Properties.Max);
  BassPlayer1.Position := SongPos;
  NowTracking          := False;
end;
//***********************************************************************************************************

procedure TfrmMain.PlayFile(ANowPlayingID: Integer);
begin
  if datMain.tblNowPlaying.Locate('RecID', ANowPlayingID, []) then
  begin
    if BassPlayer1.Open(datMain.tblNowPlaying.FieldByName('FilePath').AsString) then
    begin
      LastRecPlayed := Now;
      FPlayingLocal := True;
      FPlayingLocalTrack_ID := datMain.tblNowPlaying.FieldByName('Track_ID').AsInteger;
      datMain.tblNowPlaying.Edit;
      datMain.tblNowPlaying.FieldByName('LastPlayed').AsDateTime := LastRecPlayed;
      datMain.tblNowPlaying.Post;
      UpdateTime;
      lblTitle.ScrollText := datMain.tblNowPlaying.FieldByName('AVArtist').AsString + ' - ' +
                             datMain.tblNowPlaying.FieldByName('AVTitle').AsString  + ' - ' +
                             datMain.tblNowPlaying.FieldByName('AVAlbum').AsString;
      BassPlayer1.Play;
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmMain.lblViewTimeClick(Sender: TObject);
begin
  pnlVis.Visible := False;
end;
//***********************************************************************************************************

procedure TfrmMain.lblViewSpecClick(Sender: TObject);
begin
  pnlVis.Visible := True;
end;
//***********************************************************************************************************

procedure TfrmMain.lblFXClick(Sender: TObject);
begin
  with TfrmSoundEffectsDLG.Create(Application) do
  begin
    ShowModal;
  end;
end;
//***********************************************************************************************************

procedure TfrmMain.lblEQClick(Sender: TObject);
begin
  with TfrmEqualizerDLG.Create(Application) do
  begin
    ShowModal;
  end;
end;
//***********************************************************************************************************

procedure TfrmMain.btnPlayClick(Sender: TObject);
begin
  if BassPlayer1.Mode = plmStopped then
     BassPlayer1.Play
  else
  if BassPlayer1.Mode = plmPaused then
     BassPlayer1.Pause(False);
end;
//***********************************************************************************************************

procedure TfrmMain.btnPauseClick(Sender: TObject);
begin
  if BassPlayer1.Mode = plmPlaying then
     BassPlayer1.Pause(True);
end;
//***********************************************************************************************************

procedure TfrmMain.btnNextClick(Sender: TObject);
begin
  if datMain.tblNowPlaying.Locate('LastPlayed', LastRecPlayed, []) then
  begin
    if not datMain.tblNowPlaying.EOF then
    begin
      datMain.tblNowPlaying.Next;
      if not datMain.tblNowPlaying.EOF then
      begin
        PlayFile(datMain.tblNowPlaying.FieldByName('RecID').AsInteger);
      end
      else
      if LoopNowPlaying then
      begin
        datMain.tblNowPlaying.First;
        if datMain.tblNowPlaying.RecordCount > 0 then
           PlayFile(datMain.tblNowPlaying.FieldByName('RecID').AsInteger);
      end;
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmMain.btnPreviousClick(Sender: TObject);
begin
  if datMain.tblNowPlaying.Locate('LastPlayed', LastRecPlayed, []) then
  begin
    if not datMain.tblNowPlaying.BOF then
    begin
      datMain.tblNowPlaying.Prior;
      if not datMain.tblNowPlaying.BOF then
         PlayFile(datMain.tblNowPlaying.FieldByName('RecID').AsInteger);
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmMain.imgLogo1Click(Sender: TObject);
begin
  ShellExecute(0, nil, cURLHome, nil, nil, SW_SHOWNORMAL);
end;
//***********************************************************************************************************

procedure TfrmMain.lblWAYLTClick(Sender: TObject);
  procedure CheckLogin;
  begin
    if not datMain.LoggedIn then
    begin
      if DoLogin = True then
      begin
        datMain.UpdateMemsConnects;
      end
      else
      begin
        Screen.Cursor := crDefault;
        LockWindowUpdate(0);
        Abort;
      end;
    end;
  end;
begin
  CheckLogin;
  with TfrmWAYLTDLG.Create(Application) do
       AddMessage;
end;
//***********************************************************************************************************

procedure TfrmMain.lblTrackInfoClick(Sender: TObject);
begin
  if BassPlayer1.Mode = plmPlaying then
  begin
    if FPlayingLocal then
    begin
      with TfrmTrackInfoDLG.Create(Application) do
           ShowLocalTrackInfo(FPlayingLocalTrack_ID);
    end
    else
    begin
      //Show109TrackInfo
    end
  end
  else
  begin
    MessageDLG('There''s no file playing to show info about.', mtError, [mbOK], 0);
  end;
end;
//***********************************************************************************************************

procedure TfrmMain.lblOptionsClick(Sender: TObject);
begin
  with TfrmOptionsDLG.Create(Application) do
       ShowOptions;
end;
//***********************************************************************************************************

procedure TfrmMain.UpdateTime;
begin
  if FShowTimeRemaining then
  begin
    lblTime.Caption := FormatDateTime ('hh:nn:ss', (BassPlayer1.PlayLength - BassPlayer1.Position) / (1000 * 24 * 60 * 60));
  end
  else
  begin
    lblTime.Caption := FormatDateTime ('hh:nn:ss', (BassPlayer1.Position) / (1000 * 24 * 60 * 60));
  end;
end;
//***********************************************************************************************************

procedure TfrmMain.lblTimeClick(Sender: TObject);
begin
  FShowTimeRemaining := not FShowTimeRemaining;
  if FShowTimeRemaining then
     lblTime.Hint    := 'Time Remaining'
  else
     lblTime.Hint    := 'Playing Time';
end;
//***********************************************************************************************************

end.
