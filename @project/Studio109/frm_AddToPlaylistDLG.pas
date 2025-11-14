unit frm_AddToPlaylistDLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dat_Main, cxButtons, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls, cxControls,
  Mask, cxLabel, ShellAPI, TFlatTitlebarUnit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DB, cxClasses, cxGridCustomView,
  cxGrid, ADODB, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox;

type
  TfrmAddToPlaylistDLG = class(TForm)
    layoutSignIn: TdxLayoutControl;
    Panel37: TPanel;
    Panel38: TPanel;
    lblOK: TcxLabel;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    layoutSignInItem4: TdxLayoutItem;
    layoutSignInGroup3: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    lblCancel: TcxLabel;
    layoutSignInItem1: TdxLayoutItem;
    titleMain: TFlatTitlebar;
    edtPlaylistName: TcxExtLookupComboBox;
    layoutSignInItem3: TdxLayoutItem;
    qryPlaylists: TADOQuery;
    dsPlaylists: TDataSource;
    greposMain: TcxGridViewRepository;
    gridviewPlaylists: TcxGridDBTableView;
    qryPlaylistsID: TAutoIncField;
    qryPlaylistsName: TWideStringField;
    qryPlaylistsDescription: TWideStringField;
    qryPlaylistsDateCreated: TDateTimeField;
    gridviewPlaylistsName: TcxGridDBColumn;
    gridviewPlaylistsDescription: TcxGridDBColumn;
    gridviewPlaylistsDateCreated: TcxGridDBColumn;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblOKClick(Sender: TObject);
    procedure lblCancelClick(Sender: TObject);
    procedure edtPlaylistNameKeyPress(Sender: TObject; var Key: Char);
  private
  public
  end;

var
  frmAddToPlaylistDLG: TfrmAddToPlaylistDLG;

implementation

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmAddToPlaylistDLG.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmAddToPlaylistDLG.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmAddToPlaylistDLG.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmAddToPlaylistDLG.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmAddToPlaylistDLG.FormCreate(Sender: TObject);
begin
  qryPlaylists.Open;
end;
//***********************************************************************************************************

procedure TfrmAddToPlaylistDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryPlaylists.Close;
  Action := caFree;
end;
//***********************************************************************************************************

procedure TfrmAddToPlaylistDLG.lblOKClick(Sender: TObject);
begin
  if edtPlaylistName.Text = EmptyStr then
  begin
    MessageDlg('Please select a Playlist.', mtError, [mbOK], 0);
    Exit;
  end;
    
  datMain.AddToPlaylistID := qryPlaylists.FieldByName('ID').AsInteger;
  Close;
end;
//***********************************************************************************************************

procedure TfrmAddToPlaylistDLG.lblCancelClick(Sender: TObject);
begin
  datMain.AddToPlaylistID := -1;
  Close;
end;
//***********************************************************************************************************

procedure TfrmAddToPlaylistDLG.edtPlaylistNameKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     lblOKClick(Sender);
end;
//***********************************************************************************************************

end.
