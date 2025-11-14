program Studio109;















uses
  Forms,
  frm_Main in 'frm_Main.pas' {frmMain},
  dat_Main in 'dat_Main.pas' {datMain: TDataModule},
  frm_AppModule in 'frm_AppModule.pas' {frmAppModule},
  frm_Community in 'frm_Community.pas' {frmCommunity},
  frm_About in 'frm_About.pas' {frmAbout},
  frm_Splash in 'frm_Splash.pas' {frmSplash},
  frm_MemberProfile in 'frm_MemberProfile.pas' {frmMemberProfile},
  frm_BulletinBoard in 'frm_BulletinBoard.pas' {frmBulletinBoard},
  frm_MemberDirectory in 'frm_MemberDirectory.pas' {frmMemberDirectory},
  frm_Music in 'frm_Music.pas' {frmMusic},
  frm_AddFolderDLG in 'frm_AddFolderDLG.pas' {frmAddFolderDLG},
  frm_WAYLT in 'frm_WAYLT.pas' {frmWAYLT},
  frm_PlaylistDLG in 'frm_PlaylistDLG.pas' {frmPlaylistDLG},
  frm_AddToPlaylistDLG in 'frm_AddToPlaylistDLG.pas' {frmAddToPlaylistDLG},
  frm_EqualizerDLG in 'frm_EqualizerDLG.pas' {frmEqualizerDLG},
  frm_SoundEffectsDLG in 'frm_SoundEffectsDLG.pas' {frmSoundEffectsDLG},
  frm_109Music in 'frm_109Music.pas' {frm109Music},
  frm_BulletinBoardDLG in 'frm_BulletinBoardDLG.pas' {frmBulletinBoardDLG},
  frm_WAYLTDLG in 'frm_WAYLTDLG.pas' {frmWAYLTDLG},
  frm_StartConnectionDLG in 'frm_StartConnectionDLG.pas' {frmStartConnectionDLG},
  frm_InviteFriendsDLG in 'frm_InviteFriendsDLG.pas' {frmInviteFriendsDLG},
  frm_EditProfilePicDLG in 'frm_EditProfilePicDLG.pas' {frmEditProfilePicDLG},
  mod_Fonts in 'mod_Fonts.pas',
  frm_OptionsDLG in 'frm_OptionsDLG.pas' {frmOptionsDLG},
  frm_TrackInfoDLG in 'frm_TrackInfoDLG.pas' {frmTrackInfoDLG},
  frm_WIPCharts in 'frm_WIPCharts.pas' {frmWIPCharts},
  frm_109Charts in 'frm_109Charts.pas' {frm109Charts};

{$R *.res}

begin
  mod_Fonts.RegisterStudio109Fonts;
  Application.Initialize;
  Application.Title := 'The 109 Explorer';
  Application.CreateForm(TdatMain, datMain);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
