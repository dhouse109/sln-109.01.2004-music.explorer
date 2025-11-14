unit dat_Main;

interface

uses
  SysUtils, Classes, Forms, Controls, Types, Windows, cxLookAndFeels,
  dxDockControl, ImgList, dxLayoutLookAndFeels, DB, Dialogs, DBTables,
  cxStyles, IEHTTP3, dxmdaset, msxmldom, XMLDoc, XMLDom, XMLIntf, ThdTimer,
  Graphics, GIFImage, cxLabel, adpInstanceControl, jpeg, Registry, ShellAPI,
  cxDropDownEdit, Math, cxGridDBTableView, cxImageComboBox, Variants, cxGridDBCardView,
  cxClasses, cxGridCardView, cxVGrid, cxGridTableView, ADODB, BassPlayer;

const
  //cStudio    = App Constant
  //c109Forums = Forums Server |   www.109Studios.com

  cRECORDS_BY_PAGE = 10;
  cStudioVersion   = '1.0';
  c109Forums_Host  = 'localhost'; {'192.168.1.110'}
  c109Forums_URL   = 'http://' + c109Forums_Host + '/db109/ide.php/data/';
  cURLMemPics      = 'http://' + c109Forums_Host + '/mempics/';
  cURLHome         = 'http://www.109studios.com/';
  cURLAbout        = 'http://www.109studios.com/about.php';
  cURLForums       = 'http://www.109studios.com/forums/';
  cURLForumProfile = 'http://www.109studios.com/forums/index.php?act=Search&CODE=getalluser&mid=';
  cURLForumPosts   = 'http://www.109studios.com/forums/index.php?act=Search&CODE=getalluser&mid=';
  cURLSendPM       = 'http://www.109studios.com/forums/index.php?act=Msg&CODE=4&MID=';
  cURLInbox        = 'http://www.109studios.com/forums/index.php?act=Msg&CODE=01';
  cURLComposeMsg   = 'http://www.109studios.com/forums/index.php?act=Msg&CODE=04';
  cURLRegister     = 'http://www.109studios.com/forums/index.php?act=Reg&CODE=00';
  cURLForgotPass   = 'http://www.109studios.com/forums/index.php?act=Reg&CODE=10';
  cURLChangePass   = 'http://www.109studios.com/forums/index.php?act=UserCP&CODE=28';
  cURLChangeEmail  = 'http://www.109studios.com/forums/index.php?act=UserCP&CODE=08';

type
  TEditConnectType = (ctMyConnections, ctUserConnections, ctMyApproval, ctUserApproval);

type
  TdatMain = class(TDataModule)
    dxDockingManagerMain: TdxDockingManager;
    cxLookFeelMain: TcxLookAndFeelController;
    imglstMain_24: TImageList;
    imglstMain_24_Hover: TImageList;
    imglstMain_16: TImageList;
    imglstMain_16_Hover: TImageList;
    layoutLookFeelMain: TdxLayoutLookAndFeelList;
    layoutLookFeelMain_Web: TdxLayoutWebLookAndFeel;
    stylereposMain: TcxStyleRepository;
    styleVertGrid_Content: TcxStyle;
    styleVertGrid_Category: TcxStyle;
    styleVertGrid_Header: TcxStyle;
    qryFindUserAndPass: TdxMemData;
    qryFindUserAndPassName: TStringField;
    qryFindUserAndPassPassword: TStringField;
    ieMain: TIEHTTP;
    xmlMain: TXMLDocument;
    qryMems_BB_Insert: TdxMemData;
    qryFindUserAndPassID: TIntegerField;
    qryMems_BB: TdxMemData;
    qryMems_BBID: TIntegerField;
    qryMems_BBMem_ID: TIntegerField;
    qryMems_BBBBTitle: TStringField;
    qryMems_BBBBMessage: TStringField;
    dsMems_BB: TDataSource;
    qryMems_BBNickname: TStringField;
    styleGridContent_Even: TcxStyle;
    styleVertGrid_Header2: TcxStyle;
    styleGridContent_Selection: TcxStyle;
    layoutLookFeelAlt: TdxLayoutLookAndFeelList;
    layoutLookFeelMain_WebAlt: TdxLayoutWebLookAndFeel;
    qryMems_MiniProfile: TdxMemData;
    qryMems_MiniProfileMem_ID: TIntegerField;
    StringField3: TStringField;
    dsMems_MiniProfile: TDataSource;
    qryMems_MiniProfileGender: TStringField;
    qryMems_MiniProfileOccupation: TStringField;
    qryMems_MiniProfileSchools: TStringField;
    qryMems_Picture: TdxMemData;
    qryMemPic: TdxMemData;
    dsMemPic: TDataSource;
    qryMemPicMemPic: TBlobField;
    qryMems_BBBBDatePosted: TDateField;
    qryMems_BBBBTimePosted: TTimeField;
    qryMems_MiniProfileHometown: TStringField;
    qryMems_BB_InsertMem_ID: TIntegerField;
    qryMems_BB_InsertBBTitle: TStringField;
    qryMems_BB_InsertBBMessage: TStringField;
    qryMems_BB_InsertBBMessageTo_ID: TIntegerField;
    qryMems_BB_InsertBBDatePosted: TStringField;
    qryMems_BB_InsertBBTimePosted: TStringField;
    qryMems_BB_InsertID: TIntegerField;
    qryMems: TdxMemData;
    dsMems: TDataSource;
    qryMemsMem_ID: TIntegerField;
    qryMemsNickname: TStringField;
    qryMemsGender: TStringField;
    qryMemsAge: TIntegerField;
    qryMemsHometown: TStringField;
    imglstMain_1616: TImageList;
    adpInstance_Main: TadpInstanceControl;
    styleGridContent_Odd: TcxStyle;
    qryMems_MiniProfileName: TStringField;
    qryFindUser: TdxMemData;
    IntegerField12: TIntegerField;
    StringField10: TStringField;
    imglstMetaTree: TImageList;
    qryMems_1stDegree_Info: TdxMemData;
    qryMems_1stDegree_InfoMem_ID: TIntegerField;
    qryMems_1stDegree_InfoName: TStringField;
    qryMems_1stDegree_InfoNickname: TStringField;
    qryMems_Mem_Info: TdxMemData;
    IntegerField14: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    tblMemsThumbs: TdxMemData;
    tblMemsThumbsMem_ID: TIntegerField;
    tblMemsThumbsImageListIndex: TIntegerField;
    qryMems_BBName: TStringField;
    qryMemsName: TStringField;
    styleTree_Content: TcxStyle;
    styleTree_Content_HotTracked: TcxStyle;
    styleTree_Content_Selected: TcxStyle;
    styleGridGroupByBox: TcxStyle;
    layoutLookFeelAlt2: TdxLayoutLookAndFeelList;
    layoutLookFeelMain_WebAlt2: TdxLayoutWebLookAndFeel;
    qryMemsRecord_Start: TIntegerField;
    qryMemsRecords_Total: TIntegerField;
    qryMems_MiniProfileAge: TIntegerField;
    qryMems_BBRecord_Start: TIntegerField;
    qryMems_BBRecords_Total: TIntegerField;
    layoutLookFeelAlt3: TdxLayoutLookAndFeelList;
    layoutLookFeelMain_WebAlt3: TdxLayoutWebLookAndFeel;
    layoutLookFeelAlt4: TdxLayoutLookAndFeelList;
    layoutLookFeelMain_WebAlt4: TdxLayoutWebLookAndFeel;
    qryMemsLocation: TStringField;
    qryMems_PictureAvatarPic: TStringField;
    qryMems_MiniProfileLocation: TStringField;
    qryMems_MiniProfileAboutMe: TStringField;
    qryMems_MiniProfileBlogURL: TStringField;
    qryMems_MiniProfilePhotoAlbumURL: TStringField;
    qryMems_MiniProfileWebsiteURL: TStringField;
    qryMems_MiniProfileAIM: TStringField;
    qryMems_MiniProfileMSN: TStringField;
    qryMems_MiniProfileYahoo: TStringField;
    styleGrid_Header2: TcxStyle;
    cssCardView: TcxGridCardViewStyleSheet;
    styleVertGrid_Border: TcxStyle;
    qryMemsMemPic: TGraphicField;
    qryMems_BBMemPic: TGraphicField;
    cssTableView: TcxGridTableViewStyleSheet;
    cssVertGrid: TcxVerticalGridStyleSheet;
    dbStudio109: TADOConnection;
    tblTracks: TADOTable;
    dsTracks: TDataSource;
    dsNowPlaying: TDataSource;
    dsPlaylists: TDataSource;
    dsPlaylist_Tracks: TDataSource;
    tblTracksID: TAutoIncField;
    tblTracksFilePath: TWideStringField;
    tblTracksFileName: TWideStringField;
    tblTracksFileSize: TIntegerField;
    tblTracksFileSizeText: TWideStringField;
    tblTracksRating: TIntegerField;
    tblTracksDateCreated: TDateTimeField;
    tblTracksDateImported: TDateTimeField;
    tblTracksAVTitle: TWideStringField;
    tblTracksAVDuration: TWideStringField;
    tblTracksAVArtist: TWideStringField;
    tblTracksAVAlbum: TWideStringField;
    tblTracksAVGenre: TWideStringField;
    tblTracksAVSampleRate: TWideStringField;
    tblTracksAVBitRate: TWideStringField;
    tblTracksAVMode: TWideStringField;
    tblTracksAVTrackPlaylist: TMemoField;
    styleVertGrid_Content2: TcxStyle;
    layoutLookFeelAlt5: TdxLayoutLookAndFeelList;
    layoutLookFeelMain_WebAlt5: TdxLayoutWebLookAndFeel;
    layoutLookFeelAlt6: TdxLayoutLookAndFeelList;
    layoutLookFeelMain_WebAlt6: TdxLayoutWebLookAndFeel;
    qryMems_MiniProfileFavArtists: TStringField;
    qryMems_BBBBLink: TStringField;
    styleCardSelection: TcxStyle;
    styleCardCaption: TcxStyle;
    tblNowPlaying_: TADOTable;
    tblNowPlaying: TdxMemData;
    tblNowPlayingTrack_ID: TIntegerField;
    tblNowPlayingAVTitle: TStringField;
    tblNowPlayingAVDuration: TStringField;
    tblPlaylists: TADOTable;
    tblPlaylistsID: TAutoIncField;
    tblPlaylistsName: TWideStringField;
    tblPlaylistsDescription: TWideStringField;
    tblPlaylistsDateCreated: TDateTimeField;
    tblPlaylist_Tracks_: TADOTable;
    tblPlaylist_Tracks_ID: TAutoIncField;
    tblPlaylist_Tracks_Playlist_ID: TIntegerField;
    tblPlaylist_Tracks_TrackNum: TIntegerField;
    tblPlaylist_Tracks_Track_ID: TIntegerField;
    qryPlaylist_Tracks: TADOQuery;
    qryPlaylist_TracksID: TAutoIncField;
    qryPlaylist_TracksPlaylist_ID: TIntegerField;
    qryPlaylist_TracksTrackNum: TIntegerField;
    qryPlaylist_TracksTrack_ID: TIntegerField;
    qryPlaylist_TracksFilePath: TWideStringField;
    qryPlaylist_TracksFileName: TWideStringField;
    qryPlaylist_TracksFileSize: TIntegerField;
    qryPlaylist_TracksFileSizeText: TWideStringField;
    qryPlaylist_TracksRating: TIntegerField;
    qryPlaylist_TracksDateCreated: TDateTimeField;
    qryPlaylist_TracksDateImported: TDateTimeField;
    qryPlaylist_TracksAVTitle: TWideStringField;
    qryPlaylist_TracksAVDuration: TWideStringField;
    qryPlaylist_TracksAVArtist: TWideStringField;
    qryPlaylist_TracksAVAlbum: TWideStringField;
    qryPlaylist_TracksAVGenre: TWideStringField;
    qryPlaylist_TracksAVSampleRate: TWideStringField;
    qryPlaylist_TracksAVBitRate: TWideStringField;
    qryPlaylist_TracksAVMode: TWideStringField;
    qryPlaylist_TracksAVTrackPlaylist: TMemoField;
    qryPlaylist_Tracks_Delete: TADOQuery;
    qryPlaylist_Tracks_DeleteTrack: TADOQuery;
    qryTracks_DeleteTrack: TADOQuery;
    qryPlaylist_Tracks_DeleteTrackPlaylist: TADOQuery;
    tblNowPlayingFilePath: TStringField;
    tblNowPlayingAVArtist: TStringField;
    tblNowPlayingAVAlbum: TStringField;
    tblNowPlayingLastPlayed: TDateTimeField;
    qryWAYLT: TdxMemData;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    qryWAYLTMemPic: TGraphicField;
    dsWAYLT: TDataSource;
    qryWAYLTAVLength: TStringField;
    qryMem_WAYLT: TdxMemData;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    DateField2: TDateField;
    TimeField2: TTimeField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    dsMem_WAYLT: TDataSource;
    qryMems_BB_InsertBBLink: TStringField;
    qryServerDateTime: TdxMemData;
    qryServerDateTimeServerDate: TDateField;
    qryServerDateTimeServerTime: TTimeField;
    qryWAYLT_Insert: TdxMemData;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    qryWAYLT_InsertAVArtist: TStringField;
    qryWAYLT_InsertAVAlbum: TStringField;
    qryWAYLT_InsertAVLength: TStringField;
    qryMems_Connects: TdxMemData;
    qryMems_ConnectsMem_ID: TIntegerField;
    qryMems_ConnectsRecord_Start: TIntegerField;
    qryMems_ConnectsRecords_Total: TIntegerField;
    dsMems_Connects: TDataSource;
    qryMems_ConnectsName: TStringField;
    qryMems_ConnectsEmail: TStringField;
    qryMems_ConnectsIsMember: TBooleanField;
    qryMems_ConnectsSelected: TBooleanField;
    qryMems_Profile: TdxMemData;
    IntegerField7: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    qryMems_ProfileGender: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    dsMems_Profile: TDataSource;
    qryMems_Profilebday_year: TIntegerField;
    qryMems_Profilebday_month: TIntegerField;
    qryMems_Profilebday_day: TIntegerField;
    qryMems_ProfileBirthday: TDateField;
    qryMems_ProfileLName: TStringField;
    qryMems_ProfileFName: TStringField;
    qryMems_ProfileCountry: TStringField;
    qryMems_ProfileCity: TStringField;
    qryMems_ProfileState: TStringField;
    qryMems_ProfileZip: TStringField;
    qryProfileMemPic: TdxMemData;
    qryProfileMemPicMemPic: TBlobField;
    dsProfileMemPic: TDataSource;
    qryMems_Profile_Update: TdxMemData;
    IntegerField13: TIntegerField;
    StringField15: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    StringField51: TStringField;
    StringField52: TStringField;
    StringField53: TStringField;
    StringField54: TStringField;
    StringField55: TStringField;
    StringField56: TStringField;
    qryMems_ProfileListInDirectory: TIntegerField;
    qryMems_Profile_UpdateListInDirectory: TIntegerField;
    qryNowPlaying_Delete: TADOQuery;
    tblNowPlaying_ID: TAutoIncField;
    tblNowPlaying_Track_ID: TIntegerField;
    qryWAYLTAVGenre: TStringField;
    qryMem_WAYLTAVGenre: TStringField;
    qryWAYLT_InsertAVGenre: TStringField;
    tblNowPlayingAVGenre: TStringField;
    qryWAYLT_Summary: TdxMemData;
    StringField60: TStringField;
    StringField61: TStringField;
    StringField62: TStringField;
    StringField63: TStringField;
    StringField64: TStringField;
    IntegerField20: TIntegerField;
    dsWAYLT_Summary: TDataSource;
    qryWAYLT_Summary_Posts: TdxMemData;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    StringField57: TStringField;
    StringField58: TStringField;
    DateField3: TDateField;
    TimeField3: TTimeField;
    StringField59: TStringField;
    dsWAYLT_Summary_Posts: TDataSource;
    styleVertGrid_Preview: TcxStyle;
    qryAlbumProfile: TdxMemData;
    dsAlbumProfile: TDataSource;
    qryArtistProfile: TdxMemData;
    dsArtistProfile: TDataSource;
    qryMems_DL_Summary: TdxMemData;
    dsMems_DL_Summary: TDataSource;
    qryMems_Fav: TdxMemData;
    dsMems_Fav: TDataSource;
    qryAlbumProfileID: TIntegerField;
    qryAlbumProfileArtist_ID: TIntegerField;
    qryAlbumProfileAlbumName: TStringField;
    qryAlbumProfileAlbumLabel: TStringField;
    qryAlbumProfileDateReleased: TDateField;
    qryAlbumProfileTotalTracks: TIntegerField;
    qryAlbumProfileTotalLength: TStringField;
    qryAlbumProfileAlbumGenre: TStringField;
    qryAlbumProfileAlbumIsMix: TIntegerField;
    qryAlbumProfileAlbumPic: TStringField;
    qryArtistProfileID: TIntegerField;
    qryArtistProfileArtistName: TStringField;
    qryArtistProfileBasedIn: TStringField;
    qryArtistProfileArtistLabel: TStringField;
    qryArtistProfileAffiliation: TStringField;
    qryArtistProfileArtistWeb: TStringField;
    qryArtistProfileJoinDate: TDateField;
    qryArtistProfileArtistPic: TStringField;
    qryMems_FavID: TIntegerField;
    qryMems_FavMem_ID: TIntegerField;
    qryMems_FavDateCreated: TDateField;
    qryMems_FavArtist_ID: TIntegerField;
    qryMems_FavMemo: TStringField;
    qryMems_FavArtistName: TStringField;
    qryMems_FavBasedIn: TStringField;
    qryMems_FavArtistLabel: TStringField;
    qryMems_FavAfilliation: TStringField;
    qryMems_FavArtistWeb: TStringField;
    qryMems_FavJoinDate: TDateField;
    qryMems_FavArtistPic: TStringField;
    qryMems_DL_SummaryID: TIntegerField;
    qryMems_DL_SummaryDateCreated: TDateField;
    qryMems_DL_SummaryTrack_ID: TIntegerField;
    qryMems_DL_SummaryAlbum_ID: TIntegerField;
    qryMems_DL_SummaryAlbumName: TStringField;
    qryMems_DL_SummaryTrackNum: TIntegerField;
    qryMems_DL_SummaryTrackTitle: TStringField;
    qryMems_DL_SummaryTrackLength: TStringField;
    qryMems_DL_SummaryGenre: TStringField;
    qryMems_DL_SummarySubGenre: TStringField;
    qryMems_DL_SummaryFile_ID: TIntegerField;
    qryMems_DL_SummaryDateAdded: TDateField;
    qryMems_DL_SummarySTServer: TStringField;
    qryMems_DL_SummaryDLServer: TStringField;
    qryMems_DL_SummaryFileSize: TIntegerField;
    qryMems_DL_SummaryFileSizeText: TStringField;
    qryMems_DL_SummaryPartOfMix: TIntegerField;
    qryMems_DL_SummaryActive: TIntegerField;
    qryTracks_Search: TdxMemData;
    IntegerField21: TIntegerField;
    IntegerField24: TIntegerField;
    StringField65: TStringField;
    IntegerField25: TIntegerField;
    StringField66: TStringField;
    StringField67: TStringField;
    StringField68: TStringField;
    StringField69: TStringField;
    IntegerField26: TIntegerField;
    DateField5: TDateField;
    StringField70: TStringField;
    StringField71: TStringField;
    IntegerField27: TIntegerField;
    StringField72: TStringField;
    IntegerField28: TIntegerField;
    IntegerField29: TIntegerField;
    dsTracks_Search: TDataSource;
    qryMems_DL_SummaryArtist_ID: TIntegerField;
    qryMems_DL_SummaryArtistName: TStringField;
    qryTracks_SearchArtist_ID: TIntegerField;
    qryTracks_SearchArtistName: TStringField;
    qryMems_DL_SummaryTotalPosts: TIntegerField;
    qryMems_FavRecord_Start: TIntegerField;
    qryMems_FavRecords_Total: TIntegerField;
    qryTracks_SearchRecord_Start: TIntegerField;
    qryTracks_SearchRecords_Total: TIntegerField;
    qryAlbumPic: TdxMemData;
    qryAlbumPicAlbumPic: TBlobField;
    dsAlbumPic: TDataSource;
    qryArtistPic: TdxMemData;
    qryArtistPicArtistPic: TBlobField;
    dsArtistPic: TDataSource;
    qryMems_MiniProfilemgroup: TIntegerField;
    qryMems_MiniProfiletitle: TStringField;
    qryMemsmgroup: TIntegerField;
    qryMemstitle: TStringField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure qryMemsAfterScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tblTracksAfterPost(DataSet: TDataSet);
    procedure qryPlaylist_TracksAfterPost(DataSet: TDataSet);
    procedure tblTracksRatingGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure tblTracksRatingSetText(Sender: TField; const Text: String);
    procedure qryPlaylist_TracksRatingGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure qryPlaylist_TracksRatingSetText(Sender: TField; const Text: String);
    procedure qryMems_MiniProfileGenderGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryMemsGenderGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryMems_ConnectsCalcFields(DataSet: TDataSet);
    procedure qryMems_ProfileGenderGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryMems_ProfileGenderSetText(Sender: TField;
      const Text: String);
    procedure qryMems_ProfileBirthdayChange(Sender: TField);
    procedure ieMainPacketRead(Sender: TObject);
    procedure qryMems_MiniProfilemgroupGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    FUserName: String;
    FUPassword: String;
    FMem_ID: Integer;
    FProcssing: Boolean;
    FLoggedIn: Boolean;
    FFileMask_Audio: TStringList;
    FAddToPlaylistID: Integer;
  public
    property Mem_ID: Integer read FMem_ID write FMem_ID;
    property UserName: String read FUserName;
    property LoggedIn: Boolean read FLoggedIn;
    property FileMask_Audio: TStringList read FFileMask_Audio;
    property AddToPlaylistID: Integer read FAddToPlaylistID write FAddToPlaylistID;

    function GetWindowsTemp: String;
    function SecondsToTime(timesec: LongInt): TDateTime;
    function ShortFileName(const FileName: String): String;
    function LongFileName(ShortName: String): String;
    function Mince(PathToMince: String; InSpace: Integer): String;
    procedure MergeForm(AControl: TWinControl; AForm: TForm; Align: TAlign; Show: Boolean);
    procedure CreateAndMergeForm(FormClass: TFormClass; var Reference: TForm; AControl: TWinControl; CallPrepare: Boolean = True);
    procedure CloseAndDestroy(AForm: TForm);
    function QueryServerLoadXML(ADataset: TdxMemData; var AXMLStream: TMemoryStream; AParams: TStringList): Boolean;
    function QueryServer(AScriptName: String; var AXMLStream: TMemoryStream; AParams: TStringList): Boolean;
    function PostDataToServer(AScriptName: String; ADataset: TDataset; ATableName: String): Boolean;
    function DatasetLoadXML(ADataset: TdxMemData; var AXMLStream: TMemoryStream): Boolean;
    function SignIn(AUserName: String; APassword: String): Boolean;
    procedure SignOut;
    function ConvertDatasetToXML(ADataset: TDataset; ATableName: String): TStringList;
    function GenericInsert(ADataset: TDataset; ATableName: String; AScriptName: String = 'qryGenericInsert.php'): Boolean;
    function GenericUpdate(ADataset: TDataset; ATableName: String; AScriptName: String = 'qryGenericUpdate.php'): Boolean;
    function FirstTimeUser: Boolean;
    function GetMessages_BB(AMessageTo_ID: Integer; APostedBy, APostDate: String): TStringList;
    function GetWAYLT(APostGroup: Integer; AGenre, APostedBy, APostDate: String): TStringList;
    procedure GetWAYLT_Summary(APostDate, AGenre, AGender, ACity, AState, ACountry, ASchool: String; AAgeRangeLow, AAgeRangeHigh: Integer);
    procedure GetWAYLT_Summary_Posts(ATitle, AArtist, AAlbum, AGender, ACity, AState, ACountry, ASchool: String; AAgeRangeLow, AAgeRangeHigh: Integer);
    procedure qryWAYLT_SummaryAfterScroll(DataSet: TDataSet; AGender, ACity, AState, ACountry, ASchool: String; AAgeRangeLow, AAgeRangeHigh: Integer);


    procedure GetMems_DL_Summary(AArtist_ID, AAlbum_ID, AMixSet, APostDate, AGenre, AGender, ACity, AState, ACountry, ASchool: String; AAgeRangeLow, AAgeRangeHigh: Integer);
    function GetTracks_Search(AArtist_ID, AAlbum_ID, AMixSet, ADateAdded, AGenre, ASubGenre, AArtistBasedIn, AArtistWeb, ATrackTitle, AArtist, AAlbum, ASortBy: String): TStringList;
    function GetMems_Fav(APostDate, AArtistBasedIn, AArtistWeb, AMemo: String): TStringList;
    procedure GetAlbumProfile(AAlbum_ID: Integer);
    procedure GetArtistProfile(AArtist_ID: Integer);

    function GetMem_WAYLT(AMem_ID: Integer; AGenre, APostDate: String): TStringList;
    function GetMems(AName, AEMail, AGender, AGroup, AState, ASchool, AFavArtists, ACountry: String; AAgeRangeLow, AAgeRangeHigh: Integer): TStringList;
    procedure GetMiniProfile_By_Mem_ID(AMem_ID: Integer);
    procedure GetMem_Info(AMem_ID: Integer);
    procedure Get1stDegree_Info(AMem_ID: Integer);
    procedure Mems_BB_Delete(ABB_ID: Integer);
    function StrReplace(sSrc, sLookFor, sReplaceWith: String): String;
    function ValidEmail(const Value: string): Boolean;
    function FindUser(AUsername: String): Integer;
    function GetMemberPic_Thumbnail(AMem_ID: Integer): Integer;
    procedure JPGtoBMP(const FileName: TFileName);
    procedure SetupPageNav(AQuery: TdxMemData; APageNav: TcxComboBox; ATotalLabel: TcxLabel);
    procedure QueryStr_Refresh(AQuery: TdxMemData; AQueryStr: TStringList; AStartPage: Integer = 1; ARecordsPerPage: Integer = cRECORDS_BY_PAGE);
    procedure PageNav_First(APageNav: TcxComboBox);
    procedure PageNav_Previous(APageNav: TcxComboBox);
    procedure PageNav_Next(APageNav: TcxComboBox);
    procedure PageNav_Last(APageNav: TcxComboBox);
    procedure LoadMemberPics(AImageField: TGraphicField; AQuery: TdxMemData); overload;
    procedure GetMemPic(AMem_ID: Integer; AImageField: TGraphicField); overload;
    procedure GetServerDateTime(var AServerDate: TDateTime; var AServerTime: TDateTime);
    function GetConn(AEditConnectType: TEditConnectType): TStringList;
    procedure DeleteConn(AEditConnectType: TEditConnectType);
    procedure ApproveConn;
    function GetPendingConnections: Integer;
    function ConnectConfirm(AMem_ID: Integer; AFName: String; ALName: String): Boolean;
    procedure ConnectRequest(AMem_ID: Integer);
    procedure InviteFriends(AName1, AName2, AName3, AName4, AName5, AEmail1, AEmail2, AEmail3, AEmail4, AEmail5: String);
    procedure GetMemProfile;
    procedure GetMemProfilePic;
    function SaveMemProfile: Boolean;
    function ResizeImageFile(AFileName: String; AMaxWidth: Integer; AMaxHeight: Integer; var IsValid: Boolean; ResizePercent: Integer = 0): TJPEGImage;
    function SaveMemProfilePic(AFileName: String): Boolean;
    procedure UpdateMemsConnects;
    function Studio109_UpdateRequired: String;
    procedure ExtractAndSaveLocalDB;
    procedure LoadAppVars;

    function Launch_StartConnection: TModalResult; overload;
    function Launch_StartConnection(AMem_ID: Integer; AName: String): TModalResult; overload;
    function Mem_Is1stDegree(AConnect_Mem_ID: Integer): Boolean;
    procedure Launch_ChangePass;
    procedure Launch_ChangeEmail;
    procedure Launch_Policy;
    procedure Launch_MyInbox;
    procedure Launch_ComposeMessage;
    procedure LaunchMem_SendPM;
    procedure LaunchMem_WebsiteURL;
    procedure LaunchMem_BlogURL;
    procedure LaunchMem_PhotoAlbumURL;
    procedure LaunchMem_ForumProfile;
    procedure LaunchMem_ForumPosts;
    procedure LaunchBBMessage_Link;
    procedure Launch109Music_Search(ATitle: String = ''; AArtist: String = ''; AAlbum: String = '');
  end;

type
  TConnectionNodeRec =  class(TObject)
  public
    ID: Integer;
    Mem_ID: Integer;
    Name: String;
    Nickname: String;
  end;

var
  datMain: TdatMain;
  BassPlayer1: TBassPlayer;
  EQGains: TEQGains;
  EchoLevel: Word;
  ReverbLevel: Word;
  UseEQ: Boolean;
  UseEcho: Boolean;
  UseReverb: Boolean;
  UseFlanger: Boolean;
  LastRecPlayed: TDateTime;
  ResetQueryProgress: Boolean;
  LoopNowPlaying: Boolean;

  cStudioTemp: String;
  cStudioMediaFolder: String;

implementation

uses
  frm_Main,
  frm_StartConnectionDLG,
  frm_AppModule;

{$R *.dfm}
{$R mod_dbStudio109.res}

//***********************************************************************************************************

type
  THack = class(TForm);
//***********************************************************************************************************

function TdatMain.GetWindowsTemp: String;
var
  Buffer: Array[0..MAX_PATH] of char;
begin
  FillChar(Buffer, MAX_PATH + 1, 0);
  GetTempPath(MAX_PATH, Buffer);
  Result := String(Buffer);
  if Result[Length(Result)] <> '\' then
     Result := Result + '\';
end;
//***********************************************************************************************************

function TdatMain.SecondsToTime(timesec: LongInt): TDateTime;
{ convert LongInt number of seconds to TDateTime }
var
  tmpHour : word;
  tmpMin : word;
  tmpSec : word;
begin
  tmpHour := timesec DIV (60*60);
  tmpMin := (timesec - (tmpHour * 60 * 60)) DIV 60;
  tmpSec := timesec - (tmpHour * 60 * 60) - (tmpMin * 60);
  SecondsToTime := EncodeTime (tmpHour, tmpMin, tmpSec,0);
end;
//***********************************************************************************************************

procedure TdatMain.DataModuleCreate(Sender: TObject);
begin
  LastRecPlayed := Now;
  BassPlayer1   := TBassPlayer.Create(Self);
  cStudioTemp   := GetWindowsTemp;
  LoadAppVars;

  if not FileExists(ExtractFilePath(Application.ExeName) + 'dbStudio109.mdb') then
     ExtractAndSaveLocalDB;

  dbStudio109.Connected        := False;
  dbStudio109.ConnectionString := EmptyStr;
  dbStudio109.ConnectionString := dbStudio109.ConnectionString + 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=' + ExtractFilePath(Application.ExeName) + 'dbStudio109.mdb;';
  dbStudio109.ConnectionString := dbStudio109.ConnectionString + 'Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";';
  dbStudio109.ConnectionString := dbStudio109.ConnectionString + 'Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;';
  dbStudio109.ConnectionString := dbStudio109.ConnectionString + 'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don''t Copy Locale on Compact=False;';
  dbStudio109.ConnectionString := dbStudio109.ConnectionString + 'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False';
  dbStudio109.Connected := True;
  tblTracks.Active      := True;
  tblNowPlaying.Active  := True;
  tblPlaylists.Active   := True;

  tblNowPlaying_.Open;
  tblNowPlaying_.First;
  while not tblNowPlaying_.Eof do
  begin
    tblNowPlaying.Insert;
    tblNowPlaying.FieldByName('Track_ID').AsInteger := tblNowPlaying_.FieldByName('Track_ID').AsInteger;
    tblNowPlaying.Post;
    tblNowPlaying_.Next;
  end;
  tblNowPlaying_.Close;

  BassPlayer1.EQGains     := EQGains;
  BassPlayer1.EchoLevel   := EchoLevel;
  BassPlayer1.ReverbLevel := ReverbLevel;
  if UseEQ then
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects + [Equalizer]
  else
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects - [Equalizer];
  if UseEcho then
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects + [Echo]
  else
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects - [Echo];
  if UseReverb then
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects + [Reverb]
  else
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects - [Reverb];
  if UseFlanger then
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects + [Flanger]
  else
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects - [Flanger];

  if BassPlayer1.BASSDLLVer = '' then
     Application.MessageBox('BASS.DLL is not loaded.', 'Confirm', MB_OK);

  if not BassPlayer1.BASSWMAReady then
     Application.MessageBox('BASSWMA.DLL is not loaded.', 'Confirm', MB_OK);

  FFileMask_Audio  := TStringList.Create;

  FFileMask_Audio.Add('*.MP4');
  FFileMask_Audio.Add('*.MP3');
  FFileMask_Audio.Add('*.MP2');
  FFileMask_Audio.Add('*.MP1');
  FFileMask_Audio.Add('*.WAV');
  FFileMask_Audio.Add('*.WMA');
end;
//***********************************************************************************************************

procedure TdatMain.DataModuleDestroy(Sender: TObject);
begin
  BassPlayer1.QuitVisPlugin;
  BassPlayer1.Free;

  if Assigned(FFileMask_Audio) then
     FFileMask_Audio.Free;

  qryNowPlaying_Delete.ExecSQL;
  tblNowPlaying_.Open;
  tblNowPlaying.First;
  while not tblNowPlaying.Eof do
  begin
    tblNowPlaying_.Insert;
    tblNowPlaying_.FieldByName('Track_ID').AsInteger := tblNowPlaying.FieldByName('Track_ID').AsInteger;
    tblNowPlaying_.Post;
    tblNowPlaying.Next;
  end;
  tblNowPlaying_.Close;

  tblNowPlaying.Active      := False;
  qryPlaylist_Tracks.Active := False;
  tblPlaylists.Active       := False;
  tblTracks.Active          := False;
  dbStudio109.Connected     := False;
end;
//***********************************************************************************************************

function TdatMain.ShortFileName(const FileName: String): String;
var
  aTmp: Array[0..255] of Char;
begin
  if not FileExists(FileName) then
  begin
    Result := '';
  end
  else
  begin
    if GetShortPathName(PChar (FileName), aTmp, Sizeof (aTmp) - 1) = 0 then
    begin
      Result:= FileName;
    end
    else
    begin
      Result:= StrPas (aTmp);
    end;
  end;
end;
//***********************************************************************************************************

function TdatMain.LongFileName(ShortName: String): String;
var
  SR: TSearchRec;
begin
  Result := '';
  while FindFirst(ShortName, faAnyFile, SR) = 0 do
  begin
    { next part as prefix }
    Result := '\' + SR.Name + Result;
    SysUtils.FindClose(SR); { the SysUtils, not the WinProcs procedure! }
    { directory up (cut before '\') }
    ShortName := ExtractFileDir (ShortName);
    if length (ShortName) <= 2 then
    begin
      Break; { ShortName contains drive letter followed by ':' }
    end;
  end;
  Result := ExtractFileDrive (ShortName) + Result;
end;
//***********************************************************************************************************

function TdatMain.Mince(PathToMince: String; InSpace: Integer): String;
// "C:\Program Files\Delphi\DDrop\TargetDemo\main.pas"
// "C:\Program Files\..\main.pas"
var
  sl: TStringList;
  sHelp, sFile: String;
  iPos: Integer;
begin
  sHelp := PathToMince;
  iPos := Pos('\', sHelp);
  if iPos = 0 then
  begin
    Result := PathToMince;
  end
  else
  begin
    sl := TStringList.Create;
    // Decode string
    while iPos <> 0 do
    begin
      sl.Add(Copy(sHelp, 1, (iPos - 1)));
      sHelp := Copy(sHelp, (iPos + 1), Length(sHelp));
      iPos := Pos('\', sHelp);
    end;
    if sHelp <> '' then
    begin
      sl.Add(sHelp);
    end;
    // Encode string
    sFile := sl[sl.Count - 1];
    sl.Delete(sl.Count - 1);
    Result := '';
    while (Length(Result + sFile) < InSpace) and (sl.Count <> 0) do
    begin
      Result := Result + sl[0] + '\';
      sl.Delete(0);
    end;
    if sl.Count = 0 then
    begin
      Result := Result + sFile;
    end
    else
    begin
      Result := Result + '..\' + sFile;
    end;
    sl.Free;
  end;
end;
//***********************************************************************************************************

procedure TdatMain.MergeForm(AControl: TWinControl; AForm: TForm; Align: TAlign; Show: Boolean);
var
  R: TRect;
  AutoScroll: Boolean;
begin
  AutoScroll := AForm.AutoScroll;
  AForm.Hide;
  THack(AForm).DestroyHandle;
  with AForm do begin
    BorderStyle := bsNone;
    BorderIcons := [];
    Parent := AControl;
  end;
  AControl.DisableAlign;
  try
    if Align <> alNone then AForm.Align := Align
    else begin
      R := AControl.ClientRect;
      AForm.SetBounds(R.Left + AForm.Left, R.Top + AForm.Top, AForm.Width,
        AForm.Height);
    end;
    AForm.AutoScroll := AutoScroll;
    AForm.Visible := Show;
  finally
    AControl.EnableAlign;
  end;
end;
//***********************************************************************************************************

procedure TdatMain.CreateAndMergeForm(FormClass: TFormClass; var Reference: TForm; AControl: TWinControl; CallPrepare: Boolean = True);
begin
  LockWindowUpdate(frmMain.Handle);
  if not Assigned(Reference) then
  begin
    Reference := FormClass.Create(Application);
    MergeForm(AControl, Reference, alClient, False);
  end;
  Reference.Show;
  if Reference is TfrmAppModule then
     if CallPrepare then
        TfrmAppModule(Reference).PrepareModule;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TdatMain.CloseAndDestroy(AForm: TForm);
begin
  if Assigned(AForm) then
  begin
    AForm.Close;
    FreeAndNil(AForm);
  end;
end;
//***********************************************************************************************************

function TdatMain.QueryServerLoadXML(ADataset: TdxMemData; var AXMLStream: TMemoryStream; AParams: TStringList): Boolean;
begin
  Result := False;
  try
    if QueryServer(ADataset.Name + '.php', AXMLStream, AParams) then
       if DatasetLoadXML(ADataset, AXMLStream) then
          Result := True;
  except
    //
  end;
end;
//***********************************************************************************************************

function TdatMain.QueryServer(AScriptName: String; var AXMLStream: TMemoryStream; AParams: TStringList): Boolean;
var
  I: Integer;
  strArgs: String;
  ieQuery: TIEHTTP;
begin
  Result := False;
  if not Assigned(AParams) then
     Exit;

  ieQuery := TIEHTTP.Create(Self);
  ieQuery.OnPacketRead := ieMainPacketRead;
  try
    if AParams.Count > 0 then
    begin
      strArgs := '?' + AParams.Strings[0];
      for I := 1 to AParams.Count - 1 do
          if Pos('=', AParams.Strings[I]) <> 0 then
             strArgs := strArgs + '&' + AParams.Strings[I];
    end
    else
    begin
      strArgs := EmptyStr;
    end;
    ieQuery.RequestMethod := 'GET';
    ieQuery.URL := c109Forums_URL + AScriptName + strArgs;
    ieQuery.Execute;
    ResetQueryProgress := True;
    if Assigned(AXMLStream) then
       AXMLStream.Free;

    AXMLStream := TMemoryStream.Create;

    ieQuery.result_sl.SaveToStream(AXMLStream);
    ieQuery.Free;
    Result := True;
  except
    ieQuery.Free;
  end;
end;
//***********************************************************************************************************

function TdatMain.DatasetLoadXML(ADataset: TdxMemData; var AXMLStream: TMemoryStream): Boolean;
var
  DataList: TStringlist;
  doc: IDOMDocument;
  nlist: IXMLNodelist;
  i: Integer;


  procedure TravelChildren(nlist1: IXMLNodeList);
  var
    j: Integer;
    temp: String;
  begin
    for j := 0 to nlist1.count - 1 do
    begin
      if ((nlist1.Get(j).nodeType = ntEntity) or (nlist1.Get(j).nodeType = ntEntityRef)) then
      begin
        travelChildren(nlist1.Get(j).childNodes)
      end
      else
      if (nlist1.Get(j).nodeType = ntElement) then
      begin
        temp := EmptyStr;
        if (nlist1.Get(j).IsTextElement) and (nlist1.Get(j).Text <> EmptyStr) then
           temp :=  trim(nlist1.Get(j).nodeValue);
        DataList.Add(temp);
      end;
    end;
  end;

  procedure InsertIntoTable(stpt: TStringList);
  var
    I: Integer;
  begin
    ADataset.Insert;
    for I := 0 to stpt.Count - 1 do
        if stpt[I] <> EmptyStr then
           ADataset.Fields[I + 1].AsVariant := stpt[I];
    try
      ADataset.post;
    except
      on e: Exception do
         Showmessage(e.message);
    end;
  end;

begin
  Result := False;
  try
    ADataset.DisableControls;
    FProcssing := True;
    ADataset.Close;
    ADataset.Open;
    xmlMain.LoadFromStream(AXMLStream);
    DataList := TStringList.Create;
    doc      := xmlMain.DOMDocument;
    nlist    := xmlMain.DocumentElement.ChildNodes;
    for i := 0 to nlist.Count - 1 do
    begin
      TravelChildren(nlist.Get(i).childNodes);
      InsertIntoTable(DataList);
      DataList.Clear;
    end;
    Result := True;
  except
    on e: Exception do
    begin
      ADataset.Close;
      ADataset.Open;
    end;
  end;

  if ADataset.Active then
     ADataset.EnableControls;
  if Assigned(AXMLStream) then
     AXMLStream.Free;

 xmlMain.Active := False;

 FProcssing := False;
end;
//***********************************************************************************************************

function TdatMain.SignIn(AUserName: String; APassword: String): Boolean;
var
  lstParams: TStringList;
  AXMLStream: TMemoryStream;
begin
  Result     := False;
  AXMLStream := TMemoryStream.Create;
  lstParams  := TStringList.Create;
  lstParams.Add('username=' + AUserName);
  lstParams.Add('password=' + APassword);

  if QueryServerLoadXML(qryFindUserAndPass, AXMLStream, lstParams) then
  begin
    if qryFindUserAndPass.Active then
    begin
      qryFindUserAndPass.First;

      if (qryFindUserAndPass.FieldByName('Name').AsString <> EmptyStr) and
         (Lowercase(qryFindUserAndPass.FieldByName('Name').AsString) = Lowercase(AUserName)) then
      begin
        FUserName  := AUserName;
        FUPassword := APassword;
        FMem_ID    := qryFindUserAndPass.FieldByName('ID').AsInteger;
        Result     := True;
        FLoggedIn  := True;
      end;
    end;
  end;
  lstParams.Free;
end;
//***********************************************************************************************************

procedure TdatMain.SignOut;
begin
  FUserName  := '';
  FUPassword := '';
  //close all 109Studios.com datasets here
end;
//***********************************************************************************************************

procedure TdatMain.cxLabelMouseEnter(Sender: TObject);
begin
  if Sender is TcxLabel then
  begin
     if TcxLabel(Sender).Style.Font.Color = clBlack then
     begin
       if TcxLabel(Sender).Style.Font.Style <> [fsBold] then
          TcxLabel(Sender).Style.Font.Color := clWhite;
     end
     else
     if TcxLabel(Sender).Style.Font.Color = $00333333 then
     begin
       if TcxLabel(Sender).Style.Font.Style <> [fsBold] then
          TcxLabel(Sender).Style.Font.Color := $005B5B5B;
     end;
  end;
end;
//***********************************************************************************************************

procedure TdatMain.cxLabelMouseLeave(Sender: TObject);
begin
  if Sender is TcxLabel then
  begin
     if TcxLabel(Sender).Style.Font.Color = clWhite then
     begin
       if TcxLabel(Sender).Style.Font.Style <> [fsBold] then
          TcxLabel(Sender).Style.Font.Color := clBlack;
     end
     else
     if TcxLabel(Sender).Style.Font.Color = $005B5B5B then
     begin
       if TcxLabel(Sender).Style.Font.Style <> [fsBold] then
          TcxLabel(Sender).Style.Font.Color := $00333333;
     end;
  end;
end;
//***********************************************************************************************************

procedure TdatMain.cxLabelMouseEnterWhite(Sender: TObject);
begin
  if Sender is TcxLabel then
     if TcxLabel(Sender).Style.Font.Color <> clRed then
        TcxLabel(Sender).Style.Font.Color := $00A0A0A0;//$000099FF;//$00D8A340;
end;
//***********************************************************************************************************

procedure TdatMain.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  if Sender is TcxLabel then
     if TcxLabel(Sender).Style.Font.Color <> clRed then
        TcxLabel(Sender).Style.Font.Color := clWhite;
end;
//***********************************************************************************************************

function TdatMain.ConvertDatasetToXML(ADataset: TDataset; ATableName: String): TStringList;
var
  I: Integer;
  intIDX: Integer;
begin
  Result := TStringList.Create;

  if ADataset.Active then
  begin
    Result.Add('<?xml version="1.0"?>');
    Result.Add('<table name="' + ATableName + '">');
    intIDX := 0;
    ADataset.First;
    while not ADataset.Eof do
    begin
      Result.Add('<row num="' + IntToStr(intIDX) + '">');
      for I := 1 to ADataset.FieldCount - 1 do
      begin
        Result.Add('<' + ADataset.Fields[I].FieldName + '>'  +
                         ADataset.Fields[I].AsString  + '</' +
                         ADataset.Fields[I].FieldName + '>');
      end;
      Result.Add('</row>');
      ADataset.Next;
    end;
    Result.Add('</table>');
  end;
end;
//***********************************************************************************************************

function TdatMain.PostDataToServer(AScriptName: String; ADataset: TDataset; ATableName: String): Boolean;
var
  AXMLContent: TStringList;
  ieQuery: TIEHTTP;
begin
  Result      := False;
  AXMLContent := ConvertDatasetToXML(ADataset, ATableName);
  ieQuery     := TIEHTTP.Create(Self);
  ieQuery.OnPacketRead := ieMainPacketRead;

  ieQuery.RequestMethod := 'POST';
  ieQuery.MultipartPOST := True;
  ieQuery.AddMultipartVar('file1'     , AXMLContent.Text);
  ieQuery.PostStr       := 'tablename=' + ATableName;

  ieQuery.ExecuteURL(c109Forums_URL + AScriptName);
  ResetQueryProgress := True;
  if ieQuery.result_sl.Strings[0] = 'True' then
     Result := True;

  AXMLContent.Free;
  ieQuery.Free;
end;
//***********************************************************************************************************

function TdatMain.GenericInsert(ADataset: TDataset; ATableName: String; AScriptName: String = 'qryGenericInsert.php'): Boolean;
begin
  Result := PostDataToServer(AScriptName, ADataset, ATableName);
end;
//***********************************************************************************************************

function TdatMain.GenericUpdate(ADataset: TDataset; ATableName: String; AScriptName: String = 'qryGenericUpdate.php'): Boolean;
begin
  Result := PostDataToServer(AScriptName, ADataset, ATableName);
end;
//***********************************************************************************************************

function TdatMain.FirstTimeUser: Boolean;
var
  ieQuery: TIEHTTP;
begin
  Result                := False;
  ieQuery               := TIEHTTP.Create(Self);
  ieQuery.OnPacketRead  := ieMainPacketRead;
  ieQuery.RequestMethod := 'GET';
  ieQuery.URL           := c109Forums_URL + 'qryFirstTimeUser.php?Mem_ID=' + IntToStr(FMem_ID);
  ieQuery.Execute;
  ResetQueryProgress := True;
  if ieQuery.result_sl.Strings[0] = 'True' then
     Result := True;
  ieQuery.Free;
end;
//***********************************************************************************************************

function TdatMain.GetMessages_BB(AMessageTo_ID: Integer; APostedBy, APostDate: String): TStringList;
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := EmptyStr;
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  lstParams.Add('Mem_ID='    + IntToStr(FMem_ID));
  lstParams.Add('PostedBy='  + APostedBy);
  lstParams.Add('PostDate='  + APostDate);

  Result := TStringList.Create;
  Result.AddStrings(lstParams);

  lstParams.Add('record_start=0');
  lstParams.Add('records_per_page=' + IntToStr(cRECORDS_BY_PAGE));

  case AMessageTo_ID of
    0: //1st
    begin
      strScriptName := 'qryMems_BB_1stDegree.php';
    end;
    1: //2nd
    begin
      strScriptName := 'qryMems_BB_2ndDegree.php';
    end;
  end;

  if strScriptName <> EmptyStr then
  begin
    if QueryServer(strScriptName, AXMLStream, lstParams) then
    begin
      DatasetLoadXML(qryMems_BB, AXMLStream);
      qryMems_BB.First;
    end;
    qryMems_MiniProfile.Close;
    qryMemPic.Close;
    Result.Add(strScriptName);
  end;

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

function TdatMain.GetWAYLT(APostGroup: Integer; AGenre, APostedBy, APostDate: String): TStringList;
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := EmptyStr;
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  if Uppercase(AGenre) = 'ALL' then
     AGenre := EmptyStr;
  lstParams.Add('Mem_ID='    + IntToStr(FMem_ID));
  lstParams.Add('Genre='     + AGenre);
  lstParams.Add('PostedBy='  + APostedBy);
  lstParams.Add('PostDate='  + APostDate);

  Result := TStringList.Create;
  Result.AddStrings(lstParams);

  lstParams.Add('record_start=0');
  lstParams.Add('records_per_page=' + IntToStr(cRECORDS_BY_PAGE));

  case APostGroup of
    0: //1st
    begin
      strScriptName := 'qryWAYLT_1stDegree.php';
    end;
    1: //2nd
    begin
      strScriptName := 'qryWAYLT_2ndDegree.php';
    end;
    2: //All
    begin
      strScriptName := 'qryWAYLT_All.php';
    end;
  end;

  if strScriptName <> EmptyStr then
  begin
    if QueryServer(strScriptName, AXMLStream, lstParams) then
    begin
      DatasetLoadXML(qryWAYLT, AXMLStream);
      qryWAYLT.First;
    end;
    qryMems_MiniProfile.Close;
    qryMemPic.Close;
    Result.Add(strScriptName);
  end;

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.GetWAYLT_Summary(APostDate, AGenre, AGender, ACity, AState, ACountry, ASchool: String; AAgeRangeLow, AAgeRangeHigh: Integer);
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := EmptyStr;
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  if Uppercase(AGenre) = 'ALL' then
     AGenre := EmptyStr;
  lstParams.Add('PostDate=' + APostDate);
  lstParams.Add('Genre='    + AGenre);
  lstParams.Add('Gender='   + AGender);
  lstParams.Add('City='     + ACity);
  lstParams.Add('State='    + AState);
  lstParams.Add('Country='  + ACountry);
  lstParams.Add('School='   + ASchool);
  lstParams.Add('AgeRangeLow='   + IntToStr(AAgeRangeLow));
  lstParams.Add('AgeRangeHigh='  + IntToStr(AAgeRangeHigh));

  strScriptName := 'qryWAYLT_Summary.php';

  if QueryServer(strScriptName, AXMLStream, lstParams) then
  begin
    DatasetLoadXML(qryWAYLT_Summary, AXMLStream);
    qryWAYLT_Summary.First;
  end;

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.GetWAYLT_Summary_Posts(ATitle, AArtist, AAlbum, AGender, ACity, AState, ACountry, ASchool: String; AAgeRangeLow, AAgeRangeHigh: Integer);
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := EmptyStr;
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  lstParams.Add('Title='   + ATitle);
  lstParams.Add('Artist='  + AArtist);
  lstParams.Add('Album='   + AAlbum);
  lstParams.Add('Gender='  + AGender);
  lstParams.Add('City='    + ACity);
  lstParams.Add('State='   + AState);
  lstParams.Add('Country=' + ACountry);
  lstParams.Add('School='  + ASchool);
  lstParams.Add('AgeRangeLow='   + IntToStr(AAgeRangeLow));
  lstParams.Add('AgeRangeHigh='  + IntToStr(AAgeRangeHigh));

  strScriptName := 'qryWAYLT_Summary_Posts.php';

  if QueryServer(strScriptName, AXMLStream, lstParams) then
  begin
    DatasetLoadXML(qryWAYLT_Summary_Posts, AXMLStream);
    qryWAYLT_Summary_Posts.First;
  end;

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

function TdatMain.GetMem_WAYLT(AMem_ID: Integer; AGenre, APostDate: String): TStringList;
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := EmptyStr;
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  if Uppercase(AGenre) = 'ALL' then
     AGenre := EmptyStr;
  lstParams.Add('Mem_ID='    + IntToStr(AMem_ID));
  lstParams.Add('Genre='     + AGenre);
  lstParams.Add('PostDate='  + APostDate);

  Result := TStringList.Create;
  Result.AddStrings(lstParams);

  lstParams.Add('record_start=0');
  lstParams.Add('records_per_page=' + IntToStr(cRECORDS_BY_PAGE));

  strScriptName := 'qryWAYLT_Member.php';

  qryMem_WAYLT.Close;
  if QueryServer(strScriptName, AXMLStream, lstParams) then
  begin
    DatasetLoadXML(qryMem_WAYLT, AXMLStream);
    qryMem_WAYLT.First;
  end;
  Result.Add(strScriptName);

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.GetAlbumProfile(AAlbum_ID: Integer);
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := EmptyStr;
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  lstParams.Add('Album_ID='  + IntToStr(AAlbum_ID));

  strScriptName := 'qryAlbumProfile.php';

  if QueryServer(strScriptName, AXMLStream, lstParams) then
  begin
    DatasetLoadXML(qryAlbumProfile, AXMLStream);
    qryAlbumProfile.First;
  end;

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.GetArtistProfile(AArtist_ID: Integer);
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := EmptyStr;
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  lstParams.Add('Artist_ID='  + IntToStr(AArtist_ID));

  strScriptName := 'qryArtistProfile.php';

  if QueryServer(strScriptName, AXMLStream, lstParams) then
  begin
    DatasetLoadXML(qryArtistProfile, AXMLStream);
    qryArtistProfile.First;
  end;

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.GetMems_DL_Summary(AArtist_ID, AAlbum_ID, AMixSet, APostDate, AGenre, AGender, ACity, AState, ACountry, ASchool: String; AAgeRangeLow, AAgeRangeHigh: Integer);
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := EmptyStr;
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  if Uppercase(AGenre) = 'ALL' then
     AGenre := EmptyStr;
  lstParams.Add('Artist_ID=' + AArtist_ID);
  lstParams.Add('Album_ID='  + AAlbum_ID);
  lstParams.Add('MixSet='    + AMixSet);
  lstParams.Add('PostDate='  + APostDate);
  lstParams.Add('Genre='     + AGenre);
  lstParams.Add('Gender='    + AGender);
  lstParams.Add('City='      + ACity);
  lstParams.Add('State='     + AState);
  lstParams.Add('Country='   + ACountry);
  lstParams.Add('School='    + ASchool);
  lstParams.Add('AgeRangeLow='   + IntToStr(AAgeRangeLow));
  lstParams.Add('AgeRangeHigh='  + IntToStr(AAgeRangeHigh));

  strScriptName := 'qryMems_DL_Summary.php';

  if QueryServer(strScriptName, AXMLStream, lstParams) then
  begin
    DatasetLoadXML(qryMems_DL_Summary, AXMLStream);
    qryMems_DL_Summary.First;
  end;

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

function TdatMain.GetTracks_Search(AArtist_ID, AAlbum_ID, AMixSet, ADateAdded, AGenre, ASubGenre, AArtistBasedIn, AArtistWeb, ATrackTitle, AArtist, AAlbum, ASortBy: String): TStringList;
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := EmptyStr;
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  if Uppercase(AGenre) = 'ALL' then
     AGenre := EmptyStr;
  lstParams.Add('Artist_ID='     + AArtist_ID);
  lstParams.Add('Album_ID='      + AAlbum_ID);
  lstParams.Add('MixSet='        + AMixSet);
  lstParams.Add('DateAdded='     + ADateAdded);
  lstParams.Add('Genre='         + AGenre);
  lstParams.Add('SubGenre='      + ASubGenre);
  lstParams.Add('ArtistBasedIn=' + AArtistBasedIn);
  lstParams.Add('ArtistWeb='     + AArtistWeb);
  lstParams.Add('TrackTitle='    + ATrackTitle);
  lstParams.Add('Artist='        + AArtist);
  lstParams.Add('Album='         + AAlbum);
  lstParams.Add('SortBy='        + ASortBy);

  Result := TStringList.Create;
  Result.AddStrings(lstParams);

  lstParams.Add('record_start=0');
  lstParams.Add('records_per_page=' + IntToStr(cRECORDS_BY_PAGE));

  strScriptName := 'qryTracks_Search.php';

  if QueryServer(strScriptName, AXMLStream, lstParams) then
  begin
    DatasetLoadXML(qryTracks_Search, AXMLStream);
    qryTracks_Search.First;
  end;
  Result.Add(strScriptName);

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

function TdatMain.GetMems_Fav(APostDate, AArtistBasedIn, AArtistWeb, AMemo: String): TStringList;
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := EmptyStr;
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;

  lstParams.Add('Mem_ID='        + IntToStr(FMem_ID));
  lstParams.Add('PostDate='      + APostDate);
  lstParams.Add('ArtistBasedIn=' + AArtistBasedIn);
  lstParams.Add('ArtistWeb='     + AArtistWeb);
  lstParams.Add('Memo='          + AMemo);

  Result := TStringList.Create;
  Result.AddStrings(lstParams);

  lstParams.Add('record_start=0');
  lstParams.Add('records_per_page=' + IntToStr(cRECORDS_BY_PAGE));

  strScriptName := 'qryMems_Fav.php';

  if QueryServer(strScriptName, AXMLStream, lstParams) then
  begin
    DatasetLoadXML(qryMems_Fav, AXMLStream);
    qryMems_Fav.First;
  end;
  Result.Add(strScriptName);

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

function TdatMain.GetConn(AEditConnectType: TEditConnectType): TStringList;
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := EmptyStr;
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  lstParams.Add('Mem_ID=' + IntToStr(FMem_ID));

  Result := TStringList.Create;
  Result.AddStrings(lstParams);

  lstParams.Add('record_start=0');
  lstParams.Add('records_per_page=' + IntToStr(cRECORDS_BY_PAGE));

  case AEditConnectType of
    ctMyConnections  : strScriptName := 'qryConn_MyConnections.php';
    ctUserConnections: strScriptName := 'qryConn_UserConnections.php';
    ctMyApproval     : strScriptName := 'qryConn_MyApproval.php';
    ctUserApproval   : strScriptName := 'qryConn_UserApproval.php';
  end;

  qryMems_Connects.Close;
  if QueryServer(strScriptName, AXMLStream, lstParams) then
  begin
    DatasetLoadXML(qryMems_Connects, AXMLStream);
    qryMems_Connects.First;
  end;
  qryMems_MiniProfile.Close;
  qryMemPic.Close;
  Result.Add(strScriptName);

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.DeleteConn(AEditConnectType: TEditConnectType);
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := EmptyStr;
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  lstParams.Add('Mem_ID='         + IntToStr(FMem_ID));
  lstParams.Add('Connect_Mem_ID=' + datMain.qryMems_Connects.FieldByName('Mem_ID').AsString);
  lstParams.Add('Connect_EMail='  + datMain.qryMems_Connects.FieldByName('Email').AsString);
  lstParams.Add('Connect_Name='   + datMain.qryMems_Connects.FieldByName('Name').AsString);

  case AEditConnectType of
    ctMyConnections  : strScriptName := 'qryConn_MyConnections_Delete.php';
    ctUserConnections: strScriptName := 'qryConn_UserConnections_Delete.php';
    ctMyApproval     : strScriptName := 'qryConn_MyApproval_Delete.php';
    ctUserApproval   : strScriptName := 'qryConn_UserApproval_Delete.php';
  end;

  QueryServer(strScriptName, AXMLStream, lstParams);

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.ApproveConn;
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := EmptyStr;
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  lstParams.Add('Mem_ID='         + IntToStr(FMem_ID));
  lstParams.Add('Connect_Mem_ID=' + datMain.qryMems_Connects.FieldByName('Mem_ID').AsString);
  lstParams.Add('Connect_EMail='  + datMain.qryMems_Connects.FieldByName('Email').AsString);
  lstParams.Add('Connect_Name='   + datMain.qryMems_Connects.FieldByName('Name').AsString);

  strScriptName := 'qryConn_MyApproval_Approve.php';

  QueryServer(strScriptName, AXMLStream, lstParams);

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.GetMiniProfile_By_Mem_ID(AMem_ID: Integer);
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  ieQuery: TIEHTTP;
  CurrentCursor: TCursor;
begin
  if AMem_ID = 0 then
     Exit;

  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  qryMems_MiniProfile.Close;
  qryMemPic.Close;
  strScriptName := 'qryMems_GetMiniProfile_By_Mem_ID.php';
  AXMLStream    := TMemoryStream.Create;
  ieQuery       := TIEHTTP.Create(Self);
  ieQuery.OnPacketRead := ieMainPacketRead;
  lstParams     := TStringList.Create;
  lstParams.Add('Mem_ID=' + IntToStr(AMem_ID));

  try
    if QueryServer(strScriptName, AXMLStream, lstParams) then
    begin
      qryMems_MiniProfile.ReadOnly := False;
      DatasetLoadXML(qryMems_MiniProfile, AXMLStream);
      qryMems_MiniProfile.ReadOnly := True;
      strScriptName := 'qryMems_GetPicture_By_Mem_ID.php';
      AXMLStream    := TMemoryStream.Create;
      if QueryServer(strScriptName, AXMLStream, lstParams) then
      begin
        DatasetLoadXML(qryMems_Picture, AXMLStream);
        if qryMems_Picture.RecordCount > 0 then
        begin
          if (not qryMems_Picture.FieldByName('AvatarPic').IsNull) and (qryMems_Picture.FieldByName('AvatarPic').AsString <> EmptyStr) and (qryMems_Picture.FieldByName('AvatarPic').AsString <> 'noavatar') then
          begin
            ieQuery.URL := cURLMemPics + qryMems_Picture.FieldByName('AvatarPic').AsString;
            ieQuery.Execute;
            ResetQueryProgress := True;
            ieQuery.result_ms.SaveToFile(cStudioTemp + 'mempic.' + ExtractFileExt(qryMems_Picture.FieldByName('AvatarPic').AsString));
            qryMemPic.ReadOnly := False;
            qryMemPic.Close;
            qryMemPic.Open;
            qryMemPic.Insert;
            qryMemPicMemPic.LoadFromFile(cStudioTemp + 'mempic.' + ExtractFileExt(qryMems_Picture.FieldByName('AvatarPic').AsString));
            qryMemPic.Post;
            qryMemPic.ReadOnly := True;
            DeleteFile(PAnsiChar(cStudioTemp + 'mempic.' + ExtractFileExt(qryMems_Picture.FieldByName('AvatarPic').AsString)));
          end
          else
          begin
            frmMain.imgNoPic.Picture.SaveToFile(cStudioTemp + 'mempic.jpg');
            qryMemPic.ReadOnly := False;
            qryMemPic.Close;
            qryMemPic.Open;
            qryMemPic.Insert;
            qryMemPicMemPic.LoadFromFile(cStudioTemp + 'mempic.jpg');
            qryMemPic.Post;
            qryMemPic.ReadOnly := True;
            DeleteFile(PAnsiChar(cStudioTemp + 'mempic.jpg'));
          end;
        end;
      end;
    end;
  finally
    if qryMemPicMemPic.IsNull then
    begin
      frmMain.imgNoPic.Picture.SaveToFile(cStudioTemp + 'mempic.jpg');
      qryMemPic.ReadOnly := False;
      qryMemPic.Close;
      qryMemPic.Open;
      qryMemPic.Insert;
      qryMemPicMemPic.LoadFromFile(cStudioTemp + 'mempic.jpg');
      qryMemPic.Post;
      qryMemPic.ReadOnly := True;
      DeleteFile(PAnsiChar(cStudioTemp + 'mempic.jpg'));
    end;
  end;
  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.qryMemsAfterScroll(DataSet: TDataSet);
begin
  if not DataSet.Active then
     Exit;

  if (DataSet.State = dsBrowse) and (DataSet.RecordCount > 0) and (DataSet.FieldByName('Mem_ID').AsInteger <> 0) then
  begin
    GetMiniProfile_By_Mem_ID(DataSet.FieldByName('Mem_ID').AsInteger)
  end
  else
  begin
    if qryMems_MiniProfile.Active then
       qryMems_MiniProfile.Close;
    if qryMemPic.Active then
       qryMemPic.Close;
  end;
end;
//***********************************************************************************************************

procedure TdatMain.qryWAYLT_SummaryAfterScroll(DataSet: TDataSet; AGender, ACity, AState, ACountry, ASchool: String; AAgeRangeLow, AAgeRangeHigh: Integer);
begin
  if not DataSet.Active then
     Exit;

  if (DataSet.State = dsBrowse) and (DataSet.RecordCount > 0) then
  begin
    GetWAYLT_Summary_Posts(DataSet.FieldByName('AVTitle').AsString, DataSet.FieldByName('AVArtist').AsString, DataSet.FieldByName('AVAlbum').AsString,
                           AGender, ACity, AState, ACountry, ASchool, AAgeRangeLow, AAgeRangeHigh);
  end
  else
  begin
    if qryWAYLT_Summary_Posts.Active then
       qryWAYLT_Summary_Posts.Close;
    if qryMems_MiniProfile.Active then
       qryMems_MiniProfile.Close;
    if qryMemPic.Active then
       qryMemPic.Close;
  end;
end;
//***********************************************************************************************************

procedure TdatMain.GetMem_Info(AMem_ID: Integer);
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := 'qryMems_Mem_Info.php';
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  lstParams.Add('Mem_ID=' + IntToStr(AMem_ID));

  if QueryServer(strScriptName, AXMLStream, lstParams) then
  begin
    qryMems_Mem_Info.ReadOnly := False;
    DatasetLoadXML(qryMems_Mem_Info, AXMLStream);
    qryMems_Mem_Info.ReadOnly := True;
  end;
  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.Get1stDegree_Info(AMem_ID: Integer);
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := 'qryMems_1stDegree_Info.php';
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  lstParams.Add('Mem_ID=' + IntToStr(AMem_ID));

  if QueryServer(strScriptName, AXMLStream, lstParams) then
  begin
    qryMems_1stDegree_Info.ReadOnly := False;
    DatasetLoadXML(qryMems_1stDegree_Info, AXMLStream);
    qryMems_1stDegree_Info.ReadOnly := True;
  end;
  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.Mems_BB_Delete(ABB_ID: Integer);
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := 'qryMems_BB_Delete.php';
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  lstParams.Add('BB_ID=' + IntToStr(ABB_ID));

  QueryServer(strScriptName, AXMLStream, lstParams);
  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

function TdatMain.StrReplace(sSrc, sLookFor, sReplaceWith: String): String;
var
  nPos,
  nLenLookFor : integer;
begin
  nPos        := Pos(sLookFor, sSrc);
  nLenLookFor := Length(sLookFor);
  while (nPos > 0) do
  begin
    Delete(sSrc, nPos, nLenLookFor);
    Insert(sReplaceWith, sSrc, nPos);
    nPos := Pos(sLookFor, sSrc);
  end;
  Result := sSrc;
end;
//***********************************************************************************************************

function TdatMain.GetMems(AName, AEMail, AGender, AGroup, AState, ASchool, AFavArtists, ACountry: String; AAgeRangeLow, AAgeRangeHigh: Integer): TStringList;
var
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  AXMLStream    := TMemoryStream.Create;
  lstParams     := TStringList.Create;
  lstParams.Add('Name='          + AName);
  lstParams.Add('EMail='         + AEMail);
  lstParams.Add('Gender='        + AGender);
  lstParams.Add('Group='         + AGroup);
  lstParams.Add('State='         + AState);
  lstParams.Add('School='        + ASchool);
  lstParams.Add('Country='       + ACountry);
  lstParams.Add('FavArtists='    + AFavArtists);
  lstParams.Add('AgeRangeLow='   + IntToStr(AAgeRangeLow));
  lstParams.Add('AgeRangeHigh='  + IntToStr(AAgeRangeHigh));

  Result := TStringList.Create;
  Result.AddStrings(lstParams);
  Result.Add('qryMems.php');

  lstParams.Add('record_start=0');
  lstParams.Add('records_per_page=' + IntToStr(cRECORDS_BY_PAGE));

  if QueryServer('qryMems.php', AXMLStream, lstParams) then
  begin
    DatasetLoadXML(qryMems, AXMLStream);
    qryMems.First;
  end;
  qryMems_MiniProfile.Close;
  qryMemPic.Close;

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

function TdatMain.ValidEmail(const Value: string): Boolean;
  function CheckAllowed(const s: string): boolean;
  var
    i: integer;
  begin 
    Result:= false; 
    for i:= 1 to Length(s) do
    begin 
      // illegal char in s -> no valid address 
      if not (s[i] in ['a'..'z','A'..'Z','0'..'9','_','-','.']) then 
        Exit; 
    end;
    Result:= true; 
  end; 
var 
  i: integer;
  namePart, serverPart: string; 
begin // of IsValidEmail
  Result:= false;
  i:= Pos('@', Value); 
  if (i = 0) or (pos('..', Value) > 0) then
    Exit; 
  namePart:= Copy(Value, 1, i - 1); 
  serverPart:= Copy(Value, i + 1, Length(Value)); 
  if (Length(namePart) = 0)         // @ or name missing 
    or ((Length(serverPart) < 4))   // name or server missing or 
    then Exit;                      // too short 
  i:= Pos('.', serverPart); 
  // must have dot and at least 3 places from end
  if (i < 2) or (i > (Length(serverPart) - 2)) then
    Exit; 
  Result:= CheckAllowed(namePart) and CheckAllowed(serverPart); 
end;
//***********************************************************************************************************

function TdatMain.FindUser(AUsername: String): Integer;
var
  lstParams: TStringList;
  AXMLStream: TMemoryStream;
begin
  Result     := -1;
  AXMLStream := TMemoryStream.Create;
  lstParams  := TStringList.Create;
  lstParams.Add('username=' + AUserName);

  if QueryServerLoadXML(qryFindUser, AXMLStream, lstParams) then
  begin
    if qryFindUser.Active then
    begin
      qryFindUser.First;

      if (qryFindUser.FieldByName('Name').AsString <> EmptyStr) and
         (qryFindUser.FieldByName('Name').AsString = AUserName) then
      begin
        Result := qryFindUser.FieldByName('ID').AsInteger;
      end;
    end;
  end;
  lstParams.Free;
end;
//***********************************************************************************************************

function TdatMain.GetMemberPic_Thumbnail(AMem_ID: Integer): Integer;
const
  cImageListWidth  = 50;
  cImageListHeight = 50;
var
  strScriptName: String;
  ieQuery: TIEHTTP;
  CurrentCursor: TCursor;
  jpeg: TJPEGImage;
  bmp: TBitmap;
  intImageListIndex: Integer;
begin
  Result := -1;
  if tblMemsThumbs.Active then
  begin
    if tblMemsThumbs.Locate('Mem_ID', AMem_ID, []) then
    begin
      Result := tblMemsThumbs.FieldByName('ImageListIndex').AsInteger;
    end
    else
    begin
      CurrentCursor := Screen.Cursor;
      Screen.Cursor := crHourGlass;
      strScriptName := 'qryMems_GetPictureThumb_By_Mem_ID.php';
      ieQuery       := TIEHTTP.Create(Self);
      ieQuery.OnPacketRead := ieMainPacketRead;
      ieQuery.URL   := c109Forums_URL + strScriptName + '?Mem_ID=' + IntToStr(AMem_ID);
      ieQuery.Execute;
      ResetQueryProgress := True;
      ieQuery.result_ms.SaveToFile(cStudioTemp + 'mempicthumb.jpg');
      try
        jpeg := TJPEGImage.Create;
        try
          jpeg.CompressionQuality := 100;
          try
            jpeg.LoadFromFile(cStudioTemp + 'mempicthumb.jpg');
          except
            frmMain.imgNoPic_S.Picture.SaveToFile(cStudioTemp + 'mempicthumb.jpg');
            jpeg.LoadFromFile(cStudioTemp + 'mempicthumb.jpg');
          end;
          bmp        := TBitmap.Create;
          bmp.Width  := cImageListWidth;
          bmp.Height := cImageListHeight;

          try
            bmp.Canvas.Pen.Color   := $00333333;
            bmp.Canvas.Brush.Color := $00333333;
            bmp.Canvas.FillRect(Rect(0, 0, cImageListWidth, cImageListHeight));
            try
              bmp.Canvas.Draw(((cImageListWidth - jpeg.Width) div 2), ((cImageListHeight - jpeg.Height) div 2), jpeg);
            except
              frmMain.imgNoPic_S.Picture.SaveToFile(cStudioTemp + 'mempicthumb.jpg');
              jpeg.LoadFromFile(cStudioTemp + 'mempicthumb.jpg');
              bmp.Canvas.Draw(((cImageListWidth - jpeg.Width) div 2), ((cImageListHeight - jpeg.Height) div 2), jpeg);
            end;
            intImageListIndex := imglstMetaTree.Add(bmp, nil);
            tblMemsThumbs.Insert;
            tblMemsThumbs.FieldByName('Mem_ID').AsInteger         := AMem_ID;
            tblMemsThumbs.FieldByName('ImageListIndex').AsInteger := intImageListIndex;
            tblMemsThumbs.Post;
            Result := intImageListIndex;
          finally
            bmp.Free;
          end;
        finally
          jpeg.Free;
        end;
      except
        //
      end;
      DeleteFile(PAnsiChar(cStudioTemp + 'mempicthumb.jpg'));
      Screen.Cursor := CurrentCursor;
    end;
  end;
end;
//***********************************************************************************************************

procedure TdatMain.JPGtoBMP(const FileName: TFileName);
var
  jpeg: TJPEGImage;
  bmp: TBitmap;
begin
  jpeg := TJPEGImage.Create;
  try
    jpeg.CompressionQuality := 100;
    jpeg.LoadFromFile(FileName);
    bmp := TBitmap.Create;
    try
      bmp.Assign(jpeg);
      bmp.SaveToFile(ChangeFileExt(FileName, '.bmp'));
    finally
      bmp.Free;
    end;
  finally
    jpeg.Free;
  end;
end;
//***********************************************************************************************************

procedure TdatMain.SetupPageNav(AQuery: TdxMemData; APageNav: TcxComboBox; ATotalLabel: TcxLabel);
var
  ANotifyEvent: TNotifyEvent;
  I: Integer;
  intPage_Current: Integer;
  intPage_Total: Integer;
  intRecords_Total: Integer;
begin
  ANotifyEvent := nil;
  if Assigned(APageNav.Properties.OnChange) then
     ANotifyEvent := APageNav.Properties.OnChange;

  APageNav.Properties.BeginUpdate;
  APageNav.Properties.OnChange := nil;
  APageNav.Properties.Items.Clear;
  APageNav.Text      := EmptyStr;
  APageNav.ItemIndex := -1;

  if AQuery.RecordCount > 0 then
  begin
    intRecords_Total := AQuery.FieldByName('Records_Total').AsInteger;
    SetRoundMode(rmDown);
    intPage_Total    := (Round(intRecords_Total / cRECORDS_BY_PAGE));
    if (intRecords_Total mod cRECORDS_BY_PAGE) <> 0 then
      intPage_Total  := intPage_Total + 1;
    intPage_Current  := (Round((AQuery.FieldByName('Record_Start').AsInteger + 1) / cRECORDS_BY_PAGE));
    if ((AQuery.FieldByName('Record_Start').AsInteger + 1) mod cRECORDS_BY_PAGE) >= 0 then
      intPage_Current  := intPage_Current + 1;
    SetRoundMode(rmNearest);
    for I := 1 to intPage_Total do
    begin
      APageNav.Properties.Items.Add(IntToStr(I));
    end;
    APageNav.ItemIndex := intPage_Current - 1;
    ATotalLabel.Caption := 'of ' + IntToStr(intPage_Total);
  end
  else
  begin
    ATotalLabel.Caption := 'No Results';
  end;

  if Assigned(ANotifyEvent) then
     APageNav.Properties.OnChange := ANotifyEvent;
  APageNav.Properties.EndUpdate;
end;
//***********************************************************************************************************

procedure TdatMain.QueryStr_Refresh(AQuery: TdxMemData; AQueryStr: TStringList; AStartPage: Integer = 1; ARecordsPerPage: Integer = cRECORDS_BY_PAGE);
var
  AXMLStream: TMemoryStream;
  CurrentCursor: TCursor;
  AStartRecord: Integer;
  strScriptName: String;
  lstParams: TStringList;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  AXMLStream    := TMemoryStream.Create;
  AStartRecord  := ((AStartPage * ARecordsPerPage) - ARecordsPerPage);

  strScriptName := AQueryStr.Strings[AQueryStr.Count - 1];

  lstParams := TStringList.Create;
  lstParams.AddStrings(AQueryStr);

  lstParams.Add('record_start='     + IntToStr(AStartRecord));
  lstParams.Add('records_per_page=' + IntToStr(ARecordsPerPage));

  if QueryServer(strScriptName, AXMLStream, lstParams) then
  begin
    DatasetLoadXML(AQuery, AXMLStream);
    AQuery.First;
  end;

  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.PageNav_First(APageNav: TcxComboBox);
begin
  APageNav.ItemIndex := 0;
end;
//***********************************************************************************************************

procedure TdatMain.PageNav_Previous(APageNav: TcxComboBox);
begin
  if APageNav.ItemIndex = 0 then
     Exit;

  APageNav.ItemIndex := APageNav.ItemIndex - 1;
end;
//***********************************************************************************************************

procedure TdatMain.PageNav_Next(APageNav: TcxComboBox);
begin
  if APageNav.ItemIndex = (APageNav.Properties.Items.Count - 1) then
     Exit;

  APageNav.ItemIndex := APageNav.ItemIndex + 1;
end;
//***********************************************************************************************************

procedure TdatMain.PageNav_Last(APageNav: TcxComboBox);
begin
  APageNav.ItemIndex := (APageNav.Properties.Items.Count - 1);
end;
//***********************************************************************************************************

procedure TdatMain.LoadMemberPics(AImageField: TGraphicField; AQuery: TdxMemData);
begin
  AQuery.DisableControls;
  AQuery.First;
  while not AQuery.EOF do
  begin
    GetMemPic(AQuery.FieldByName('Mem_ID').AsInteger, AImageField);
    AQuery.Next;
  end;
  AQuery.First;
  AQuery.EnableControls;
end;
//***********************************************************************************************************

procedure TdatMain.GetMemPic(AMem_ID: Integer; AImageField: TGraphicField);
const
  cImageListWidth  = 50;
  cImageListHeight = 50;
var
  strScriptName: String;
  ieQuery: TIEHTTP;
  CurrentCursor: TCursor;
  jpeg: TJPEGImage;
  bmp: TBitmap;
  AMemStream: TMemoryStream;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strScriptName := 'qryMems_GetPictureThumb_By_Mem_ID.php';
  ieQuery       := TIEHTTP.Create(Self);
  ieQuery.OnPacketRead := ieMainPacketRead;
  ieQuery.URL   := c109Forums_URL + strScriptName + '?Mem_ID=' + IntToStr(AMem_ID);
  ieQuery.Execute;
  ResetQueryProgress := True;
  ieQuery.result_ms.SaveToFile(cStudioTemp + 'mempicthumb.jpg');
  try
    jpeg := TJPEGImage.Create;
    try
      jpeg.CompressionQuality := 100;
      try
        jpeg.LoadFromFile(cStudioTemp + 'mempicthumb.jpg');
      except
        frmMain.imgNoPic_S2.Picture.SaveToFile(cStudioTemp + 'mempicthumb.jpg');
        jpeg.LoadFromFile(cStudioTemp + 'mempicthumb.jpg');
      end;
      bmp        := TBitmap.Create;
      bmp.Width  := cImageListWidth;
      bmp.Height := cImageListHeight;

      try
        bmp.Canvas.Pen.Color   := $00A0A0A0;
        bmp.Canvas.Brush.Color := $00A0A0A0;
        bmp.Canvas.FillRect(Rect(0, 0, cImageListWidth, cImageListHeight));
        try
          bmp.Canvas.Draw(((cImageListWidth - jpeg.Width) div 2), ((cImageListHeight - jpeg.Height) div 2), jpeg);
        except
          frmMain.imgNoPic_S2.Picture.SaveToFile(cStudioTemp + 'mempicthumb.jpg');
          jpeg.LoadFromFile(cStudioTemp + 'mempicthumb.jpg');
          bmp.Canvas.Draw(((cImageListWidth - jpeg.Width) div 2), ((cImageListHeight - jpeg.Height) div 2), jpeg);
        end;
        AMemStream := TMemoryStream.Create;
        try
          bmp.SaveToStream(AMemStream);
          AImageField.DataSet.Edit;
          AImageField.LoadFromStream(AMemStream);
          AImageField.DataSet.Post;
        finally
          AMemStream.Free;
        end;
      finally
        bmp.Free;
      end;
    finally
      jpeg.Free;
    end;
  except
    //
  end;
  DeleteFile(PAnsiChar(cStudioTemp + 'mempicthumb.jpg'));
  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.tblTracksAfterPost(DataSet: TDataSet);
begin
  tblNowPlaying.Refresh;
end;
//***********************************************************************************************************

procedure TdatMain.qryPlaylist_TracksAfterPost(DataSet: TDataSet);
begin
  tblNowPlaying.Refresh;
end;
//***********************************************************************************************************

procedure TdatMain.tblTracksRatingGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  case tblTracksRating.Value of
     0: Text := '';
     1: Text := '•';
     2: Text := '••';
     3: Text := '•••';
     4: Text := '••••';
     5: Text := '•••••';
     6: Text := '••••••';
     7: Text := '•••••••';
     8: Text := '••••••••';
     9: Text := '•••••••••';
    10: Text := '••••••••••';
  end;
end;
//***********************************************************************************************************

procedure TdatMain.tblTracksRatingSetText(Sender: TField; const Text: String);
begin
  if Text = '' then
     tblTracksRating.Value := 0
  else if Text = '•' then
     tblTracksRating.Value := 1
  else if Text = '••' then
     tblTracksRating.Value := 2
  else if Text = '•••' then
     tblTracksRating.Value := 3
  else if Text = '••••' then
     tblTracksRating.Value := 4
  else if Text = '•••••' then
     tblTracksRating.Value := 5
  else if Text = '••••••' then
     tblTracksRating.Value := 6
  else if Text = '•••••••' then
     tblTracksRating.Value := 7
  else if Text = '••••••••' then
     tblTracksRating.Value := 8
  else if Text = '•••••••••' then
     tblTracksRating.Value := 9
  else if Text = '••••••••••' then
     tblTracksRating.Value := 10;
end;
//***********************************************************************************************************

procedure TdatMain.qryPlaylist_TracksRatingGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  case qryPlaylist_TracksRating.Value of
     0: Text := '';
     1: Text := '•';
     2: Text := '••';
     3: Text := '•••';
     4: Text := '••••';
     5: Text := '•••••';
     6: Text := '••••••';
     7: Text := '•••••••';
     8: Text := '••••••••';
     9: Text := '•••••••••';
    10: Text := '••••••••••';
  end;
end;
//***********************************************************************************************************

procedure TdatMain.qryPlaylist_TracksRatingSetText(Sender: TField; const Text: String);
begin
  if Text = '' then
     qryPlaylist_TracksRating.Value := 0
  else if Text = '•' then
     qryPlaylist_TracksRating.Value := 1
  else if Text = '••' then
     qryPlaylist_TracksRating.Value := 2
  else if Text = '•••' then
     qryPlaylist_TracksRating.Value := 3
  else if Text = '••••' then
     qryPlaylist_TracksRating.Value := 4
  else if Text = '•••••' then
     qryPlaylist_TracksRating.Value := 5
  else if Text = '••••••' then
     qryPlaylist_TracksRating.Value := 6
  else if Text = '•••••••' then
     qryPlaylist_TracksRating.Value := 7
  else if Text = '••••••••' then
     qryPlaylist_TracksRating.Value := 8
  else if Text = '•••••••••' then
     qryPlaylist_TracksRating.Value := 9
  else if Text = '••••••••••' then
     qryPlaylist_TracksRating.Value := 10;
end;
//***********************************************************************************************************

procedure TdatMain.Launch_ChangePass;
begin
  ShellExecute(0, nil, cURLChangePass, nil, nil, SW_SHOWNORMAL);
end;
//***********************************************************************************************************

procedure TdatMain.Launch_ChangeEmail;
begin
  ShellExecute(0, nil, cURLChangeEmail, nil, nil, SW_SHOWNORMAL);
end;
//***********************************************************************************************************

procedure TdatMain.Launch_Policy;
begin
  ShowMessage('Any user found submitting offensive or innappropriate material' + #10#13 +
              'will be banned and possibly prosecuted depending on the offense.');
end;
//***********************************************************************************************************

procedure TdatMain.Launch_MyInbox;
begin
  ShellExecute(0, nil, cURLInbox, nil, nil, SW_SHOWNORMAL);
end;
//***********************************************************************************************************

procedure TdatMain.Launch_ComposeMessage;
begin
  ShellExecute(0, nil, cURLComposeMsg, nil, nil, SW_SHOWNORMAL);
end;
//***********************************************************************************************************

procedure TdatMain.LaunchMem_SendPM;
var
  intMem_ID: Integer;
begin
  intMem_ID := qryMems_MiniProfileMem_ID.Value;
  if (intMem_ID > 0) then
  begin
    ShellExecute(0, nil, PChar(cURLSendPM + IntToStr(intMem_ID)), nil, nil, SW_SHOWNORMAL);
  end;
end;
//***********************************************************************************************************

procedure TdatMain.LaunchMem_WebsiteURL;
var
  strLink: String;
begin
  strLink := qryMems_MiniProfileWebsiteURL.Value;
  if (strLink <> EmptyStr) then
  begin
    if StrPos(PChar(Copy(strLink, 0, 7)), 'http://') = nil then
       strLink := 'http://' + strLink;
    ShellExecute(0, nil, PChar(strLink), nil, nil, SW_SHOWNORMAL);
  end;
end;
//***********************************************************************************************************

procedure TdatMain.LaunchMem_BlogURL;
var
  strLink: String;
begin
  strLink := qryMems_MiniProfileBlogURL.Value;
  if (strLink <> EmptyStr) then
  begin
    if StrPos(PChar(Copy(strLink, 0, 7)), 'http://') = nil then
       strLink := 'http://' + strLink;
    ShellExecute(0, nil, PChar(strLink), nil, nil, SW_SHOWNORMAL);
  end;
end;
//***********************************************************************************************************

procedure TdatMain.LaunchMem_PhotoAlbumURL;
var
  strLink: String;
begin
  strLink := qryMems_MiniProfilePhotoAlbumURL.Value;
  if (strLink <> EmptyStr) then
  begin
    if StrPos(PChar(Copy(strLink, 0, 7)), 'http://') = nil then
       strLink := 'http://' + strLink;
    ShellExecute(0, nil, PChar(strLink), nil, nil, SW_SHOWNORMAL);
  end;
end;
//***********************************************************************************************************

procedure TdatMain.LaunchMem_ForumProfile;
var
  intMem_ID: Integer;
begin
  intMem_ID := qryMems_MiniProfileMem_ID.Value;
  if (intMem_ID > 0) then
  begin
    ShellExecute(0, nil, PChar(cURLForumProfile + IntToStr(intMem_ID)), nil, nil, SW_SHOWNORMAL);
  end;
end;
//***********************************************************************************************************

procedure TdatMain.LaunchMem_ForumPosts;
var
  intMem_ID: Integer;
begin
  intMem_ID := qryMems_MiniProfileMem_ID.Value;
  if (intMem_ID > 0) then
  begin
    ShellExecute(0, nil, PChar(cURLForumPosts + IntToStr(intMem_ID)), nil, nil, SW_SHOWNORMAL);
  end;
end;
//***********************************************************************************************************

procedure TdatMain.LaunchBBMessage_Link;
var
  strLink: String;
begin
  strLink := qryMems_BBBBLink.Value;
  if (strLink <> EmptyStr) then
  begin
    if StrPos(PChar(Copy(strLink, 0, 7)), 'http://') = nil then
       strLink := 'http://' + strLink;
    ShellExecute(0, nil, PChar(strLink), nil, nil, SW_SHOWNORMAL);
  end;
end;
//***********************************************************************************************************

procedure TdatMain.Launch109Music_Search(ATitle: String = ''; AArtist: String = ''; AAlbum: String = '');
begin
//TODO -- from Community
end;
//***********************************************************************************************************


procedure TdatMain.qryMems_MiniProfileGenderGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if (qryMems_MiniProfileGender.IsNull) or (qryMems_MiniProfileGender.Value = EmptyStr) then
     Text := EmptyStr
  else
  if qryMems_MiniProfileGender.Value = 'M' then
     Text := 'Male'
  else
  if qryMems_MiniProfileGender.Value = 'F' then
     Text := 'Female';
end;
//***********************************************************************************************************

procedure TdatMain.qryMemsGenderGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if (qryMemsGender.IsNull) or (qryMemsGender.Value = EmptyStr) then
     Text := EmptyStr
  else
  if qryMemsGender.Value = 'M' then
     Text := 'Male'
  else
  if qryMemsGender.Value = 'F' then
     Text := 'Female';
end;
//***********************************************************************************************************

procedure TdatMain.GetServerDateTime(var AServerDate: TDateTime; var AServerTime: TDateTime);
var
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
begin
  AXMLStream := TMemoryStream.Create;
  lstParams  := TStringList.Create;
  if QueryServer('qryServerDateTime.php', AXMLStream, lstParams) then
  begin
    DatasetLoadXML(qryServerDateTime, AXMLStream);
    if qryServerDateTime.Active then
    begin
      qryServerDateTime.First;
      AServerDate := qryServerDateTimeServerDate.Value;
      AServerTime := qryServerDateTimeServerTime.Value;
      qryServerDateTime.Close;
    end;
  end;
end;
//***********************************************************************************************************

procedure TdatMain.qryMems_ConnectsCalcFields(DataSet: TDataSet);
begin
  qryMems_ConnectsIsMember.Value := (not qryMems_ConnectsMem_ID.IsNull) and (qryMems_ConnectsMem_ID.Value > 0);
end;
//***********************************************************************************************************

function TdatMain.GetPendingConnections: Integer;
var
  CurrentCursor: TCursor;
  strPending: String;
  ieQuery: TIEHTTP;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  strPending := '0';
  ieQuery    := TIEHTTP.Create(Self);
  ieQuery.OnPacketRead  := ieMainPacketRead;
  ieQuery.RequestMethod := 'GET';
  ieQuery.URL           := c109Forums_URL + 'qryConn_MyApproval_Count.php?Mem_ID=' + IntToStr(FMem_ID);
  ieQuery.Execute;
  ResetQueryProgress := True;
  strPending := ieQuery.result_sl.Strings[0];
  ieQuery.Free;
  try
    Result := StrToInt(strPending);
  except
    Result := 0;
  end;
  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

function TdatMain.Launch_StartConnection: TModalResult;
begin
  Result := Launch_StartConnection(qryMems_MiniProfile.FieldByName('Mem_ID').AsInteger, qryMems_MiniProfile.FieldByName('Name').AsString);
end;
//***********************************************************************************************************

function TdatMain.Launch_StartConnection(AMem_ID: Integer; AName: String): TModalResult;
begin
  with TfrmStartConnectionDLG.Create(Application) do
  begin
    Result := StartConnection(AMem_ID, AName);
  end;
end;
//***********************************************************************************************************

function TdatMain.ConnectConfirm(AMem_ID: Integer; AFName: String; ALName: String): Boolean;
var
  CurrentCursor: TCursor;
  ieQuery: TIEHTTP;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  Result                := False;
  ieQuery               := TIEHTTP.Create(Self);
  ieQuery.OnPacketRead  := ieMainPacketRead;
  ieQuery.RequestMethod := 'GET';
  ieQuery.URL           := c109Forums_URL + 'qryConnectConfirm.php?Mem_ID=' + IntToStr(AMem_ID) + '&FName=' + Uppercase(AFName) + '&LName=' + Uppercase(ALName);
  ieQuery.Execute;
  ResetQueryProgress := True;
  if ieQuery.result_sl.Strings[0] = 'True' then
     Result := True;
  ieQuery.Free;
  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.ConnectRequest(AMem_ID: Integer);
var
  CurrentCursor: TCursor;
  ieQuery: TIEHTTP;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  ieQuery               := TIEHTTP.Create(Self);
  ieQuery.OnPacketRead  := ieMainPacketRead;
  ieQuery.RequestMethod := 'GET';
  ieQuery.URL           := c109Forums_URL + 'qryConnectRequest.php?Mem_ID=' + IntToStr(FMem_ID) + '&Connect_Mem_ID=' +  IntToStr(AMem_ID);
  ieQuery.Execute;
  ResetQueryProgress := True;
  ieQuery.Free;
  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.InviteFriends(AName1, AName2, AName3, AName4, AName5, AEmail1, AEmail2, AEmail3, AEmail4, AEmail5: String);
var
  CurrentCursor: TCursor;
  ieQuery: TIEHTTP;
  strURL: String;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  strURL := c109Forums_URL + 'qryInviteFriends.php?';
  strURL := strURL + 'Mem_ID=' + IntToStr(FMem_ID)  + '&';
  strURL := strURL + 'Name1='  + AName1  + '&';
  strURL := strURL + 'Name2='  + AName2  + '&';
  strURL := strURL + 'Name3='  + AName3  + '&';
  strURL := strURL + 'Name4='  + AName4  + '&';
  strURL := strURL + 'Name5='  + AName5  + '&';
  strURL := strURL + 'Email1=' + AEmail1 + '&';
  strURL := strURL + 'Email2=' + AEmail2 + '&';
  strURL := strURL + 'Email3=' + AEmail3 + '&';
  strURL := strURL + 'Email4=' + AEmail4 + '&';
  strURL := strURL + 'Email5=' + AEmail5;

  ieQuery               := TIEHTTP.Create(Self);
  ieQuery.OnPacketRead  := ieMainPacketRead;
  ieQuery.RequestMethod := 'GET';
  ieQuery.URL           := strURL;
  ieQuery.Execute;
  ResetQueryProgress := True;
  ieQuery.Free;
  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

function TdatMain.Mem_Is1stDegree(AConnect_Mem_ID: Integer): Boolean;
var
  CurrentCursor: TCursor;
  ieQuery: TIEHTTP;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  Result                := False;
  ieQuery               := TIEHTTP.Create(Self);
  ieQuery.OnPacketRead  := ieMainPacketRead;
  ieQuery.RequestMethod := 'GET';
  ieQuery.URL           := c109Forums_URL + 'qryIs1stDegree.php?Mem_ID=' + IntToStr(FMem_ID) + '&Connect_Mem_ID=' + IntToStr(AConnect_Mem_ID);
  ieQuery.Execute;
  ResetQueryProgress := True;
  if ieQuery.result_sl.Strings[0] = 'True' then
     Result := True;
  ieQuery.Free;
  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.GetMemProfile;
var
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  strDate: String;
  AFormatSettings: TFormatSettings;
begin
  AXMLStream := TMemoryStream.Create;
  lstParams  := TStringList.Create;
  if QueryServer('qryMems_GetProfile.php?Mem_ID=' + IntToStr(FMem_ID), AXMLStream, lstParams) then
  begin
    DatasetLoadXML(qryMems_Profile, AXMLStream);
    if qryMems_Profile.Active then
    begin
      if (not qryMems_Profile.FieldByName('bday_month').IsNull) and
         (not qryMems_Profile.FieldByName('bday_day').IsNull) and
         (not qryMems_Profile.FieldByName('bday_year').IsNull) and
         (not qryMems_Profile.FieldByName('bday_month').AsInteger = 0) and
         (not qryMems_Profile.FieldByName('bday_day').AsInteger = 0) and
         (not qryMems_Profile.FieldByName('bday_year').AsInteger = 0) then
      begin
        GetLocaleFormatSettings(Languages.LocaleID[0], AFormatSettings);
        strDate := qryMems_Profile.FieldByName('bday_month').AsString + '/' +
                   qryMems_Profile.FieldByName('bday_day').AsString   + '/' +
                   qryMems_Profile.FieldByName('bday_year').AsString;
        qryMems_ProfileBirthday.OnChange := nil;
        qryMems_Profile.Edit;
        try
          AFormatSettings.ShortDateFormat := 'm/d/yyyy';
          qryMems_ProfileBirthday.Value := StrToDate(strDate, AFormatSettings);
        except
          qryMems_ProfileBirthday.Value := NULL;
        end;
        qryMems_Profile.Post;
        qryMems_ProfileBirthday.OnChange := qryMems_ProfileBirthdayChange;
        GetMemProfilePic;
      end;
    end;
  end;
end;
//***********************************************************************************************************

procedure TdatMain.qryMems_ProfileGenderGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if (qryMems_ProfileGender.IsNull) or (qryMems_ProfileGender.Value = EmptyStr) then
     Text := EmptyStr
  else
  if qryMems_ProfileGender.Value = 'M' then
     Text := 'Male'
  else
  if qryMems_ProfileGender.Value = 'F' then
     Text := 'Female';
end;
//***********************************************************************************************************

procedure TdatMain.qryMems_ProfileGenderSetText(Sender: TField; const Text: String);
begin
  if Text = EmptyStr then
     qryMems_ProfileGender.Value := EmptyStr
  else
  if Text = 'Male' then
     qryMems_ProfileGender.Value := 'M'
  else
  if Text = 'Female' then
     qryMems_ProfileGender.Value := 'F';
end;
//***********************************************************************************************************

procedure TdatMain.qryMems_ProfileBirthdayChange(Sender: TField);
begin
  if (qryMems_Profile.FieldByName('Birthday').IsNull) then
  begin
    qryMems_Profile.Edit;
    qryMems_Profile.FieldByName('bday_month').Value := NULL;
    qryMems_Profile.FieldByName('bday_day').Value   := NULL;
    qryMems_Profile.FieldByName('bday_year').Value  := NULL;
    qryMems_Profile.Post;
  end
  else
  begin
    qryMems_Profile.Edit;
    qryMems_Profile.FieldByName('bday_month').Value := StrToInt(Copy(qryMems_ProfileBirthday.DisplayText, 1, 2));
    qryMems_Profile.FieldByName('bday_day').Value   := StrToInt(Copy(qryMems_ProfileBirthday.DisplayText, 4, 2));
    qryMems_Profile.FieldByName('bday_year').Value  := StrToInt(Copy(qryMems_ProfileBirthday.DisplayText, 7, 4));
    qryMems_Profile.Post;
  end;
end;
//***********************************************************************************************************

procedure TdatMain.GetMemProfilePic;
var
  strScriptName: String;
  AXMLStream: TMemoryStream;
  lstParams: TStringList;
  ieQuery: TIEHTTP;
  CurrentCursor: TCursor;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  qryProfileMemPic.Close;

  AXMLStream    := TMemoryStream.Create;
  ieQuery       := TIEHTTP.Create(Self);
  ieQuery.OnPacketRead := ieMainPacketRead;
  lstParams     := TStringList.Create;
  lstParams.Add('Mem_ID=' + IntToStr(FMem_ID));

  try
    strScriptName := 'qryMems_GetPicture_By_Mem_ID.php';
    AXMLStream    := TMemoryStream.Create;
    if QueryServer(strScriptName, AXMLStream, lstParams) then
    begin
      DatasetLoadXML(qryMems_Picture, AXMLStream);
      if qryMems_Picture.RecordCount > 0 then
      begin
        if (not qryMems_Picture.FieldByName('AvatarPic').IsNull) and (qryMems_Picture.FieldByName('AvatarPic').AsString <> EmptyStr) and (qryMems_Picture.FieldByName('AvatarPic').AsString <> 'noavatar') then
        begin
          ieQuery.URL := cURLMemPics + qryMems_Picture.FieldByName('AvatarPic').AsString;
          ieQuery.Execute;
          ResetQueryProgress := True;
          ieQuery.result_ms.SaveToFile(cStudioTemp + 'mempic.' + ExtractFileExt(qryMems_Picture.FieldByName('AvatarPic').AsString));
          qryProfileMemPic.ReadOnly := False;
          qryProfileMemPic.Close;
          qryProfileMemPic.Open;
          qryProfileMemPic.Insert;
          qryProfileMemPicMemPic.LoadFromFile(cStudioTemp + 'mempic.' + ExtractFileExt(qryMems_Picture.FieldByName('AvatarPic').AsString));
          qryProfileMemPic.Post;
          qryProfileMemPic.ReadOnly := True;
          DeleteFile(PAnsiChar(cStudioTemp + 'mempic.' + ExtractFileExt(qryMems_Picture.FieldByName('AvatarPic').AsString)));
        end
        else
        begin
          frmMain.imgNoPic.Picture.SaveToFile(cStudioTemp + 'mempic.jpg');
          qryProfileMemPic.ReadOnly := False;
          qryProfileMemPic.Close;
          qryProfileMemPic.Open;
          qryProfileMemPic.Insert;
          qryProfileMemPicMemPic.LoadFromFile(cStudioTemp + 'mempic.jpg');
          qryProfileMemPic.Post;
          qryProfileMemPic.ReadOnly := True;
          DeleteFile(PAnsiChar(cStudioTemp + 'mempic.jpg'));
        end;
      end;
    end;
  finally
    if qryProfileMemPicMemPic.IsNull then
    begin
      frmMain.imgNoPic.Picture.SaveToFile(cStudioTemp + 'mempic.jpg');
      qryProfileMemPic.ReadOnly := False;
      qryProfileMemPic.Close;
      qryProfileMemPic.Open;
      qryProfileMemPic.Insert;
      qryProfileMemPicMemPic.LoadFromFile(cStudioTemp + 'mempic.jpg');
      qryProfileMemPic.Post;
      qryProfileMemPic.ReadOnly := True;
      DeleteFile(PAnsiChar(cStudioTemp + 'mempic.jpg'));
    end;
  end;
  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

function TdatMain.SaveMemProfile: Boolean;
var
  I: Integer;
begin
  Result := False;
  if not (qryMems_Profile.State in [dsBrowse]) then
  begin
    try
      qryMems_Profile.Post;
    except
      Abort;
    end;
  end;

  qryMems_Profile.DisableControls;
  qryMems_Profile.Edit;
  for I := 0 to (qryMems_Profile.FieldCount - 1) do
  begin
    if qryMems_Profile.Fields.Fields[I] is TStringField then
    begin
      qryMems_Profile.Fields.Fields[I].AsString := StrReplace(StrReplace(qryMems_Profile.Fields.Fields[I].AsString, '''', ''), '\', '/');
    end;
  end;
  qryMems_Profile.Post;
  qryMems_Profile.EnableControls;

  qryMems_Profile_Update.Close;
  qryMems_Profile_Update.Open;
  qryMems_Profile_Update.Insert;
  qryMems_Profile_Update.FieldByName('ID').AsInteger              := qryMems_Profile.FieldByName('Mem_ID').AsInteger;
  qryMems_Profile_Update.FieldByName('Nickname').AsString         := qryMems_Profile.FieldByName('Nickname').AsString;
  qryMems_Profile_Update.FieldByName('LName').AsString            := qryMems_Profile.FieldByName('LName').AsString;
  qryMems_Profile_Update.FieldByName('FName').AsString            := qryMems_Profile.FieldByName('FName').AsString;
  qryMems_Profile_Update.FieldByName('Gender').AsString           := qryMems_Profile.FieldByName('Gender').AsString;

  qryMems_Profile_Update.FieldByName('Location').AsString         := qryMems_Profile.FieldByName('Location').AsString;
  qryMems_Profile_Update.FieldByName('Country').AsString          := qryMems_Profile.FieldByName('Country').AsString;
  qryMems_Profile_Update.FieldByName('City').AsString             := qryMems_Profile.FieldByName('City').AsString;
  qryMems_Profile_Update.FieldByName('State').AsString            := qryMems_Profile.FieldByName('State').AsString;
  qryMems_Profile_Update.FieldByName('Zip').AsString              := qryMems_Profile.FieldByName('Zip').AsString;

  qryMems_Profile_Update.FieldByName('Hometown').AsString         := qryMems_Profile.FieldByName('Hometown').AsString;
  qryMems_Profile_Update.FieldByName('Occupation').AsString       := qryMems_Profile.FieldByName('Occupation').AsString;
  qryMems_Profile_Update.FieldByName('AboutMe').AsString          := qryMems_Profile.FieldByName('AboutMe').AsString;
  qryMems_Profile_Update.FieldByName('Schools').AsString          := qryMems_Profile.FieldByName('Schools').AsString;
  qryMems_Profile_Update.FieldByName('FavArtists').AsString       := qryMems_Profile.FieldByName('FavArtists').AsString;

  qryMems_Profile_Update.FieldByName('aim_name').AsString         := qryMems_Profile.FieldByName('aim_name').AsString;
  qryMems_Profile_Update.FieldByName('msnname').AsString          := qryMems_Profile.FieldByName('msnname').AsString;
  qryMems_Profile_Update.FieldByName('yahoo').AsString            := qryMems_Profile.FieldByName('yahoo').AsString;
  qryMems_Profile_Update.FieldByName('website').AsString          := qryMems_Profile.FieldByName('website').AsString;
  qryMems_Profile_Update.FieldByName('BlogURL').AsString          := qryMems_Profile.FieldByName('BlogURL').AsString;

  qryMems_Profile_Update.FieldByName('PhotoAlbumURL').AsString    := qryMems_Profile.FieldByName('PhotoAlbumURL').AsString;

  {
  //TODO: update Age in seperate transaction
  with qryMems_Profile do
  begin
    if (not FieldByName('bday_year').IsNull) and (FieldByName('bday_year').Value <> 0) then
       qryMems_Profile_Update.FieldByName('bday_year').Value := qryMems_Profile.FieldByName('bday_year').AsString
    else
       qryMems_Profile_Update.FieldByName('bday_year').Clear;

    if (not FieldByName('bday_month').IsNull) and (FieldByName('bday_month').Value <> 0) then
       qryMems_Profile_Update.FieldByName('bday_month').Value := qryMems_Profile.FieldByName('bday_month').AsString
    else
       qryMems_Profile_Update.FieldByName('bday_month').Clear;

    if (not FieldByName('bday_day').IsNull) and (FieldByName('bday_year').Value <> 0) then
       qryMems_Profile_Update.FieldByName('bday_day').Value := qryMems_Profile.FieldByName('bday_day').AsString
    else
       qryMems_Profile_Update.FieldByName('bday_day').Clear;
  end;
  }

  qryMems_Profile_Update.FieldByName('ListInDirectory').AsInteger := qryMems_Profile.FieldByName('ListInDirectory').AsInteger;
  qryMems_Profile_Update.Post;

  if GenericUpdate(qryMems_Profile_Update, 'ibf_members') then
     Result := True;

  qryMems_Profile_Update.Close;
end;
//***********************************************************************************************************

function TdatMain.ResizeImageFile(AFileName: String; AMaxWidth: Integer; AMaxHeight: Integer; var IsValid: Boolean; ResizePercent: Integer = 0): TJPEGImage;
var
  oBmp: TBitmap;
  AspectRat: Double;
  ANewWidth: Integer;
  ANewHeight: Integer;
begin
  Result := TJPEGImage.Create;
  Result.Smoothing          := True;
  Result.CompressionQuality := 100;
  Result.Performance        := jpBestQuality;
  IsValid := False;

  try
    Result.LoadFromFile(AFileName);
  except
    Exit;
  end;

  oBmp        := TBitmap.Create;

  if (ResizePercent > 0) then
  begin
    oBmp.Width  := Round(Result.Width * ResizePercent / 100);
    oBmp.Height := Round(Result.Height * ResizePercent / 100);
  end
  else
  begin
    if (Result.Height <= Result.Width) then
    begin
      AspectRat := (Result.Width / Result.Height);
      if (Result.Width <= AMaxWidth) then
      begin
        ANewWidth  := Result.Width;
        ANewHeight := Result.Height;
      end
      else
      begin
        ANewWidth  := AMaxWidth;
        ANewHeight := Round(AMaxHeight / AspectRat);
      end;
    end
    else
    begin
      AspectRat := (Result.Height / Result.Width);
      if (Result.Height <= AMaxHeight) then
      begin
        ANewWidth  := Result.Width;
        ANewHeight := Result.Height;
      end
      else
      begin
        ANewWidth  := Round(AMaxWidth / AspectRat);
        ANewHeight := AMaxHeight;
      end;
    end;

    oBmp.Width  := ANewWidth;
    oBmp.Height := ANewHeight;
  end;

  oBmp.Canvas.StretchDraw(Rect(0, 0, oBmp.Width, oBmp.Height), Result);
  Result.Smoothing          := True;
  Result.CompressionQuality := 100;
  Result.Performance        := jpBestQuality;
  Result.Assign(oBmp);
  Result.Compress;

  oBmp.Free;
  IsValid := True;
end;
//***********************************************************************************************************

function TdatMain.SaveMemProfilePic(AFileName: String): Boolean;
var
  oAvatarPic: TJPEGImage;
  oAvatarThumb: TJPEGImage;
  ieQuery: TIEHTTP;
  CurrentCursor: TCursor;
  blnResult: Boolean;
begin
  Result        := False;
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  ieQuery       := TIEHTTP.Create(Self);
  ieQuery.OnPacketRead := ieMainPacketRead;
  oAvatarPic    := TJPEGImage.Create;
  oAvatarThumb  := TJPEGImage.Create;

  if AFileName = 'No Picture' then
  begin
    ieQuery.RequestMethod := 'GET';
    ieQuery.URL           := c109Forums_URL + 'qryMems_ProfilePic_Clear.php?Mem_ID=' + IntToStr(FMem_ID);
    ieQuery.Execute;
    ResetQueryProgress := True;
    ieQuery.Free;
    Screen.Cursor := CurrentCursor;
    Result        := True;
  end
  else
  begin
    try
      oAvatarPic   := datMain.ResizeImageFile(AFileName, 109, 109, blnResult);
      oAvatarPic.SaveToFile(cStudioTemp + 'AvatarPic.jpg');
      oAvatarPic.Free;

      oAvatarThumb := datMain.ResizeImageFile(AFileName, 50, 50, blnResult);
      oAvatarThumb.SaveToFile(cStudioTemp + 'AvatarThumb.jpg');
      oAvatarThumb.Free;

      ieQuery.MultipartPOST := True;
      ieQuery.AddMultipartVar ('AvatarPic_FileName'  , FUserName   + '.jpg');
      ieQuery.AddMultipartFile('AvatarPic_Image'     , cStudioTemp + 'AvatarPic.jpg');
      ieQuery.AddMultipartVar ('AvatarThumb_FileName', FUserName   + '_s.jpg');
      ieQuery.AddMultipartFile('AvatarThumb_Image'   , cStudioTemp + 'AvatarThumb.jpg');
      ieQuery.PostStr := 'Mem_ID=' + IntToStr(FMem_ID);
      ieQuery.ExecuteURL(c109Forums_URL + 'qryMems_ProfilePic_Save.php');
      ResetQueryProgress := True;
      ieQuery.Free;
      Screen.Cursor := CurrentCursor;
      Result        := True;
      DeleteFile(PAnsiChar(cStudioTemp + 'AvatarPic.jpg'));
      DeleteFile(PAnsiChar(cStudioTemp + 'AvatarThumb.jpg'));
    except
      Screen.Cursor := CurrentCursor;
      if Assigned(oAvatarPic) then
         oAvatarPic.Free;
      if Assigned(oAvatarThumb) then
         oAvatarThumb.Free;
      if Assigned(ieQuery) then
         ieQuery.Free;
    end;
  end;
end;
//***********************************************************************************************************

procedure TdatMain.ieMainPacketRead(Sender: TObject);
begin
  if (Sender is TIEHTTP) then
  begin
    ResetQueryProgress := False;
    frmMain.progQueryProgress.Properties.Max := 100;
    if frmMain.progQueryProgress.Position >= 100 then
    begin
      frmMain.progQueryProgress.Position := 1;
    end
    else
    begin
      frmMain.progQueryProgress.Position := frmMain.progQueryProgress.Position + 1;
    end;
    frmMain.progQueryProgress.Repaint;
    frmMain.progQueryProgress.Refresh;
  end;
end;
//***********************************************************************************************************

procedure TdatMain.UpdateMemsConnects;
var
  CurrentCursor: TCursor;
  ieQuery: TIEHTTP;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  ieQuery               := TIEHTTP.Create(Self);
  ieQuery.OnPacketRead  := ieMainPacketRead;
  ieQuery.RequestMethod := 'GET';
  ieQuery.URL           := c109Forums_URL + 'qryMems_Connects_Update.php?Mem_ID=' + IntToStr(FMem_ID);
  ieQuery.Execute;
  ResetQueryProgress := True;
  ieQuery.Free;
  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

function TdatMain.Studio109_UpdateRequired: String;
var
  CurrentCursor: TCursor;
  ieQuery: TIEHTTP;
begin
  CurrentCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  Result                := EmptyStr;
  ieQuery               := TIEHTTP.Create(Self);
  ieQuery.OnPacketRead  := ieMainPacketRead;
  ieQuery.RequestMethod := 'GET';
  ieQuery.URL           := c109Forums_URL + 'qryStudio109_UpdateRequired.php?Version=' + cStudioVersion;
  ieQuery.Execute;
  ResetQueryProgress := True;
  if Trim(ieQuery.result_sl.Strings[0]) <> 'False' then
     Result := ieQuery.result_sl.Strings[0];
  ieQuery.Free;
  Screen.Cursor := CurrentCursor;
end;
//***********************************************************************************************************

procedure TdatMain.ExtractAndSaveLocalDB;
var
  resdbStudio109: TResourceStream;
begin
  Screen.Cursor  := crHourGlass;
  resdbStudio109 := TResourceStream.Create(0, 'dbStudio109', RT_RCDATA);
  try
    resdbStudio109.SaveToFile(ExtractFilePath(Application.ExeName) + 'dbStudio109.mdb');
  except
    //
  end;
  resdbStudio109.Free;
  Screen.Cursor := crDefault;
end;
//***********************************************************************************************************

procedure TdatMain.LoadAppVars;
var
  Reg: TRegistry;
begin
  Reg         := TRegistry.Create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  try
    if Reg.OpenKey('\Software\109 Studios\109Studios.com\', True) then
    begin
      /////////////////////////////////////
      if Reg.ValueExists('EQ0') then
      begin
        EQGains[0] := Reg.ReadFloat('EQ0');
      end
      else
      begin
        Reg.WriteFloat('EQ0', 0);
        EQGains[0] := 0;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('EQ1') then
      begin
        EQGains[1] := Reg.ReadFloat('EQ1');
      end
      else
      begin
        Reg.WriteFloat('EQ1', 0);
        EQGains[1] := 0;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('EQ2') then
      begin
        EQGains[2] := Reg.ReadFloat('EQ2');
      end
      else
      begin
        Reg.WriteFloat('EQ2', 0);
        EQGains[2] := 0;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('EQ3') then
      begin
        EQGains[3] := Reg.ReadFloat('EQ3');
      end
      else
      begin
        Reg.WriteFloat('EQ3', 0);
        EQGains[3] := 0;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('EQ4') then
      begin
        EQGains[4] := Reg.ReadFloat('EQ4');
      end
      else
      begin
        Reg.WriteFloat('EQ4', 0);
        EQGains[4] := 0;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('EQ5') then
      begin
        EQGains[5] := Reg.ReadFloat('EQ5');
      end
      else
      begin
        Reg.WriteFloat('EQ5', 0);
        EQGains[5] := 0;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('EQ6') then
      begin
        EQGains[6] := Reg.ReadFloat('EQ6');
      end
      else
      begin
        Reg.WriteFloat('EQ6', 0);
        EQGains[6] := 0;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('EQ7') then
      begin
        EQGains[7] := Reg.ReadFloat('EQ7');
      end
      else
      begin
        Reg.WriteFloat('EQ7', 0);
        EQGains[7] := 0;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('EQ8') then
      begin
        EQGains[8] := Reg.ReadFloat('EQ8');
      end
      else
      begin
        Reg.WriteFloat('EQ8', 0);
        EQGains[8] := 0;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('EQ9') then
      begin
        EQGains[9] := Reg.ReadFloat('EQ9');
      end
      else
      begin
        Reg.WriteFloat('EQ9', 0);
        EQGains[9] := 0;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('EchoLevel') then
      begin
        EchoLevel := Reg.ReadInteger('EchoLevel');
      end
      else
      begin
        Reg.WriteInteger('EchoLevel', 16);
        EchoLevel := 16;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('ReverbLevel') then
      begin
        ReverbLevel := Reg.ReadInteger('ReverbLevel');
      end
      else
      begin
        Reg.WriteInteger('ReverbLevel', 16);
        ReverbLevel := 16;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('UseEQ') then
      begin
        UseEQ := Reg.ReadBool('UseEQ');
      end
      else
      begin
        Reg.WriteBool('UseEQ', False);
        UseEQ := False;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('UseEcho') then
      begin
        UseEcho := Reg.ReadBool('UseEcho');
      end
      else
      begin
        Reg.WriteBool('UseEcho', False);
        UseEcho := False;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('UseReverb') then
      begin
        UseReverb := Reg.ReadBool('UseReverb');
      end
      else
      begin
        Reg.WriteBool('UseReverb', False);
        UseReverb := False;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('UseFlanger') then
      begin
        UseFlanger := Reg.ReadBool('UseFlanger');
      end
      else
      begin
        Reg.WriteBool('UseFlanger', False);
        UseFlanger := False;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('LoopNowPlaying') then
      begin
        LoopNowPlaying := Reg.ReadBool('LoopNowPlaying');
      end
      else
      begin
        Reg.WriteBool('LoopNowPlaying', True);
        LoopNowPlaying := True;
      end;
      /////////////////////////////////////
      if Reg.ValueExists('MediaFolder') then
      begin
        cStudioMediaFolder := Reg.ReadString('MediaFolder');
      end
      else
      begin
        if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Media') then
           ForceDirectories(ExtractFilePath(Application.ExeName) + 'Media');
        Reg.WriteString('MediaFolder', ExtractFilePath(Application.ExeName) + 'Media\');
        cStudioMediaFolder := ExtractFilePath(Application.ExeName) + 'Media\';
      end;
      /////////////////////////////////////
    end;
  finally
    Reg.CloseKey;
    Reg.Free;
  end;
end;
//***********************************************************************************************************

procedure TdatMain.qryMems_MiniProfilemgroupGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Sender.AsInteger = 4 then
     Text := 'Admin'
  else
  if Sender.AsInteger = 6 then
     Text := 'Resident'
  else
     Text := 'Member';
end;
//***********************************************************************************************************

end.
