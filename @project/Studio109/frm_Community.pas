unit frm_Community;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_AppModule, dxLayoutControl, cxControls, cxPC, ShellAPI, dat_Main,
  frm_Music, frm_MemberProfile, frm_BulletinBoard, frm_MemberDirectory, frm_WAYLT,
  frm_About, frm_109Music, frm_109Charts, frm_WIPCharts, cxLabel, cxContainer, cxEdit, cxImage,
  OleCtrls, SHDocVw;

type
  TfrmCommunity = class(TfrmAppModule)
    pageMain: TcxPageControl;
    layoutAppModuleItem1: TdxLayoutItem;
    tabMemberProfile: TcxTabSheet;
    tabBulletinBoard: TcxTabSheet;
    tabMemberDirectory: TcxTabSheet;
    tabMusic: TcxTabSheet;
    tabSignOut: TcxTabSheet;
    tabAbout: TcxTabSheet;
    tabWAYLT: TcxTabSheet;
    tabForums: TcxTabSheet;
    tab109Music: TcxTabSheet;
    cxImage1: TcxImage;
    layoutAppModuleItem4: TdxLayoutItem;
    layoutAppModuleGroup1: TdxLayoutGroup;
    layoutAppModuleItem2: TdxLayoutItem;
    cxImage2: TcxImage;
    layoutAppModuleItem3: TdxLayoutItem;
    cxImage3: TcxImage;
    layoutAppModuleItem5: TdxLayoutItem;
    cxImage4: TcxImage;
    layoutAppModuleItem6: TdxLayoutItem;
    cxImage5: TcxImage;
    layoutAppModuleItem7: TdxLayoutItem;
    cxImage6: TcxImage;
    layoutAppModuleItem8: TdxLayoutItem;
    cxImage7: TcxImage;
    layoutAppModuleItem9: TdxLayoutItem;
    cxImage8: TcxImage;
    layoutAppModuleItem10: TdxLayoutItem;
    cxImage9: TcxImage;
    layoutAppModuleGroup2: TdxLayoutGroup;
    lbl109Music: TcxLabel;
    layoutAppModuleItem11: TdxLayoutItem;
    lblMusic: TcxLabel;
    layoutAppModuleItem12: TdxLayoutItem;
    lblMemberProfile: TcxLabel;
    layoutAppModuleItem13: TdxLayoutItem;
    lblWAYLT: TcxLabel;
    layoutAppModuleItem14: TdxLayoutItem;
    lblBulletinBoard: TcxLabel;
    layoutAppModuleItem15: TdxLayoutItem;
    lblMemberDirectory: TcxLabel;
    layoutAppModuleItem16: TdxLayoutItem;
    lblAbout: TcxLabel;
    layoutAppModuleItem17: TdxLayoutItem;
    lblForums: TcxLabel;
    layoutAppModuleItem18: TdxLayoutItem;
    lblSignOut: TcxLabel;
    layoutAppModuleItem19: TdxLayoutItem;
    layoutAppModuleItem20: TdxLayoutItem;
    lblWIPCharts: TcxLabel;
    tabWIPCharts: TcxTabSheet;
    layoutAppModuleItem22: TdxLayoutItem;
    lbl109Charts: TcxLabel;
    tab109Charts: TcxTabSheet;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pageMainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure pageMainChange(Sender: TObject);
    procedure lbl109MusicClick(Sender: TObject);
    procedure lbl109ChartsClick(Sender: TObject);
    procedure lblMusicClick(Sender: TObject);
    procedure lblMemberProfileClick(Sender: TObject);
    procedure lblWAYLTClick(Sender: TObject);
    procedure lblBulletinBoardClick(Sender: TObject);
    procedure lblMemberDirectoryClick(Sender: TObject);
    procedure lblAboutClick(Sender: TObject);
    procedure lblForumsClick(Sender: TObject);
    procedure lblSignOutClick(Sender: TObject);
    procedure lblWIPChartsClick(Sender: TObject);
  private
    FCurrentModule   : TfrmAppModule;
    F109Music        : Tfrm109Music;
    F109Charts       : Tfrm109Charts;
    FMusic           : TfrmMusic;
    FMemberProfile   : TfrmMemberProfile;
    FWAYLT           : TfrmWAYLT;
    FWIPCharts       : TfrmWIPCharts;
    FBulletinBoard   : TfrmBulletinBoard;
    FMemberDirectory : TfrmMemberDirectory;
    FAbout           : TfrmAbout;
    procedure SetLabelActive(ALabel: TcxLabel);
  public
    property _109Music       : Tfrm109Music read F109Music write F109Music;
    property _109Charts      : Tfrm109Charts read F109Charts write F109Charts;
    property Music           : TfrmMusic read FMusic write FMusic;
    property MemberProfile   : TfrmMemberProfile read FMemberProfile write FMemberProfile;
    property WAYLT           : TfrmWAYLT read FWAYLT write FWAYLT;
    property WIPCharts       : TfrmWIPCharts read FWIPCharts write FWIPCharts;
    property BulletinBoard   : TfrmBulletinBoard read FBulletinBoard write FBulletinBoard;
    property MemberDirectory : TfrmMemberDirectory read FMemberDirectory write FMemberDirectory;
    property About           : TfrmAbout read FAbout write FAbout;
    procedure LinkJumpToProfile(AMem_ID: Integer);
    procedure LinkJumpToWAYLT(AMem_ID: Integer);
  end;

var
  frmCommunity: TfrmCommunity;

implementation

uses
  frm_Main;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmCommunity.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmCommunity.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmCommunity.FormCreate(Sender: TObject);
var
  AllowChange: Boolean;
begin
  AllowChange := True;
  if pageMain.ActivePage <> tabMusic then
     pageMain.ActivePage := tabMusic
  else
    pageMainPageChanging(Self, tabMusic, AllowChange);
end;
//***********************************************************************************************************

procedure TfrmCommunity.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  datMain.CloseAndDestroy(FMusic);
  datMain.CloseAndDestroy(F109Music);
  datMain.CloseAndDestroy(F109Charts);
  datMain.CloseAndDestroy(FMemberProfile);
  datMain.CloseAndDestroy(FWAYLT);
  datMain.CloseAndDestroy(FWIPCharts);
  datMain.CloseAndDestroy(FBulletinBoard);
  datMain.CloseAndDestroy(FMemberDirectory);
  datMain.CloseAndDestroy(FAbout);
  Action := caFree;
end;
//***********************************************************************************************************

procedure TfrmCommunity.pageMainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
  procedure CheckLogin;
  begin
    if not datMain.LoggedIn then
    begin
      if frmMain.DoLogin = True then
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
  LockWindowUpdate(Self.Handle);
  Screen.Cursor := crHourGlass;
  if NewPage = tab109Music then
  begin
    CheckLogin;
    SetLabelActive(lbl109Music);
    datMain.CreateAndMergeForm(Tfrm109Music, TForm(F109Music), NewPage);
    FCurrentModule := F109Music;
  end
  else
  if NewPage = tab109Charts then
  begin
    CheckLogin;
    SetLabelActive(lbl109Charts);
    datMain.CreateAndMergeForm(Tfrm109Charts, TForm(F109Charts), NewPage);
    FCurrentModule := F109Charts;
  end
  else
  if NewPage = tabMusic then
  begin
    SetLabelActive(lblMusic);
    datMain.CreateAndMergeForm(TfrmMusic, TForm(FMusic), NewPage);
    FCurrentModule := FMusic;
  end
  else
  if NewPage = tabMemberProfile then
  begin
    CheckLogin;
    SetLabelActive(lblMemberProfile);
    datMain.CreateAndMergeForm(TfrmMemberProfile, TForm(FMemberProfile), NewPage);
    FMemberProfile.UpdatePendingConnectionsLink;
    FCurrentModule := FMemberProfile;
  end
  else
  if NewPage = tabWAYLT then
  begin
    CheckLogin;
    SetLabelActive(lblWAYLT);
    datMain.CreateAndMergeForm(TfrmWAYLT, TForm(FWAYLT), NewPage);
    FCurrentModule := FWAYLT;
  end
  else
  if NewPage = tabWIPCharts then
  begin
    CheckLogin;
    SetLabelActive(lblWIPCharts);
    datMain.CreateAndMergeForm(TfrmWIPCharts, TForm(FWIPCharts), NewPage);
    FCurrentModule := FWIPCharts;
  end
  else
  if NewPage = tabBulletinBoard then
  begin
    CheckLogin;
    SetLabelActive(lblBulletinBoard);
    datMain.CreateAndMergeForm(TfrmBulletinBoard, TForm(FBulletinBoard), NewPage);
    FCurrentModule := FBulletinBoard;
  end
  else
  if NewPage = tabMemberDirectory then
  begin
    CheckLogin;
    SetLabelActive(lblMemberDirectory);
    datMain.CreateAndMergeForm(TfrmMemberDirectory, TForm(FMemberDirectory), NewPage);
    FCurrentModule := FMemberDirectory;
  end
  else
  if NewPage = tabForums then
  begin
    AllowChange := False;
    ShellExecute(0, nil, cURLForums, nil, nil, SW_SHOWNORMAL);
  end
  else
  if NewPage = tabAbout then
  begin
    SetLabelActive(lblAbout);
    datMain.CreateAndMergeForm(TfrmAbout, TForm(FAbout), NewPage);
    FCurrentModule := FAbout;
  end
  else
  if NewPage = tabSignOut then
  begin
    AllowChange := False;
    if MessageDLG('Are you sure you want to sign out of The 109 Explorer?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       frmMain.Close;
  end;

  if AllowChange then
  begin
    if Assigned(FAbout) then
    begin
      if NewPage = tabAbout then
         FAbout.timerLoop.Enabled := True
      else
         FAbout.timerLoop.Enabled := False;
    end;
  end;

  Screen.Cursor := crDefault;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmCommunity.pageMainChange(Sender: TObject);
begin
  if Assigned(FCurrentModule) then
     FCurrentModule.PrepareActive;
end;
//***********************************************************************************************************

procedure TfrmCommunity.LinkJumpToProfile(AMem_ID: Integer);
begin
  if not Assigned(FMemberProfile) then
     datMain.CreateAndMergeForm(TfrmMemberProfile, TForm(FMemberProfile), tabMemberProfile, false);

  pageMain.OnChange       := nil;
  pageMain.OnPageChanging := nil;
  FCurrentModule          := FMemberProfile;
  SetLabelActive(lblMemberProfile);
  FMemberProfile.LinkJumpToProfile(AMem_ID);
  pageMain.ActivePage     := tabMemberProfile;
  pageMain.OnChange       := pageMainChange;
  pageMain.OnPageChanging := pageMainPageChanging;
end;
//***********************************************************************************************************

procedure TfrmCommunity.LinkJumpToWAYLT(AMem_ID: Integer);
begin
  if not Assigned(FMemberProfile) then
     datMain.CreateAndMergeForm(TfrmMemberProfile, TForm(FMemberProfile), tabMemberProfile, false);

  pageMain.OnChange       := nil;
  pageMain.OnPageChanging := nil;
  SetLabelActive(lblMemberProfile);
  FCurrentModule          := FMemberProfile;
  FMemberProfile.LinkJumpToWAYLT(AMem_ID);
  pageMain.ActivePage     := tabMemberProfile;
  pageMain.OnChange       := pageMainChange;
  pageMain.OnPageChanging := pageMainPageChanging;
end;
//***********************************************************************************************************

procedure TfrmCommunity.SetLabelActive(ALabel: TcxLabel);
  procedure SetLabelProps(BLabel: TcxLabel);
  begin
    if ALabel = BLabel then
    begin
      BLabel.Style.Font.Color := $005B5B5B;
      BLabel.Style.Font.Style := [fsBold];
    end
    else
    begin
      BLabel.Style.Font.Color := $00333333;
      BLabel.Style.Font.Style := [fsBold, fsUnderline];
    end;
  end;
begin
  SetLabelProps(lbl109Music);
  SetLabelProps(lbl109Charts);
  SetLabelProps(lblMusic);
  SetLabelProps(lblMemberProfile);
  SetLabelProps(lblWAYLT);
  SetLabelProps(lblWIPCharts);
  SetLabelProps(lblBulletinBoard);
  SetLabelProps(lblMemberDirectory);
  SetLabelProps(lblAbout);
  SetLabelProps(lblForums);
  SetLabelProps(lblSignOut);
end;
//***********************************************************************************************************


procedure TfrmCommunity.lbl109MusicClick(Sender: TObject);
begin
  pageMain.ActivePage := tab109Music;
end;
//***********************************************************************************************************

procedure TfrmCommunity.lbl109ChartsClick(Sender: TObject);
begin
  pageMain.ActivePage := tab109Charts;
end;
//***********************************************************************************************************

procedure TfrmCommunity.lblMusicClick(Sender: TObject);
begin
  pageMain.ActivePage := tabMusic;
end;
//***********************************************************************************************************

procedure TfrmCommunity.lblMemberProfileClick(Sender: TObject);
begin
  pageMain.ActivePage := tabMemberProfile;
end;
//***********************************************************************************************************

procedure TfrmCommunity.lblWAYLTClick(Sender: TObject);
begin
  pageMain.ActivePage := tabWAYLT;
end;
//***********************************************************************************************************

procedure TfrmCommunity.lblWIPChartsClick(Sender: TObject);
begin
  pageMain.ActivePage := tabWIPCharts;
end;
//***********************************************************************************************************

procedure TfrmCommunity.lblBulletinBoardClick(Sender: TObject);
begin
  pageMain.ActivePage := tabBulletinBoard;
end;
//***********************************************************************************************************

procedure TfrmCommunity.lblMemberDirectoryClick(Sender: TObject);
begin
  pageMain.ActivePage := tabMemberDirectory;
end;
//***********************************************************************************************************

procedure TfrmCommunity.lblAboutClick(Sender: TObject);
begin
  pageMain.ActivePage := tabAbout;
end;
//***********************************************************************************************************

procedure TfrmCommunity.lblForumsClick(Sender: TObject);
begin
  pageMain.ActivePage := tabForums;
end;
//***********************************************************************************************************

procedure TfrmCommunity.lblSignOutClick(Sender: TObject);
begin
  pageMain.ActivePage := tabSignOut;
end;
//***********************************************************************************************************


end.
