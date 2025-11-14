unit frm_PlaylistDLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dat_Main, cxButtons, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls, cxControls,
  Mask, cxLabel, ShellAPI, TFlatTitlebarUnit, cxMemo, cxDBEdit, cxCalendar;

type
  TfrmPlaylistDLG = class(TForm)
    layoutSignIn: TdxLayoutControl;
    Panel37: TPanel;
    Panel38: TPanel;
    lblSave: TcxLabel;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    layoutSignInItem4: TdxLayoutItem;
    layoutSignInGroup3: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    lblCancel: TcxLabel;
    layoutSignInItem1: TdxLayoutItem;
    titleMain: TFlatTitlebar;
    edtName: TcxDBTextEdit;
    layoutSignInItem3: TdxLayoutItem;
    mmoDescription: TcxDBMemo;
    layoutSignInItem7: TdxLayoutItem;
    dedtDateCreated: TcxDBDateEdit;
    layoutSignInItem2: TdxLayoutItem;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblSaveClick(Sender: TObject);
    procedure lblCancelClick(Sender: TObject);
    procedure edtNameKeyPress(Sender: TObject; var Key: Char);
  private
  public
  end;

var
  frmPlaylistDLG: TfrmPlaylistDLG;

implementation

uses
  DB;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmPlaylistDLG.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmPlaylistDLG.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmPlaylistDLG.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmPlaylistDLG.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmPlaylistDLG.FormCreate(Sender: TObject);
begin
  titleMain.Caption := 'Playlist -- ' + datMain.tblPlaylists.FieldByName('Name').AsString;
end;
//***********************************************************************************************************

procedure TfrmPlaylistDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;
//***********************************************************************************************************

procedure TfrmPlaylistDLG.lblSaveClick(Sender: TObject);
begin
  if edtName.Text = EmptyStr then
  begin
    MessageDlg('Please enter a name for this playlist.', mtError, [mbOK], 0);
    Exit;
  end;

  if datMain.tblPlaylists.State in [dsInsert, dsEdit] then
     datMain.tblPlaylists.Post;
  Close;
end;
//***********************************************************************************************************

procedure TfrmPlaylistDLG.lblCancelClick(Sender: TObject);
begin
  if datMain.tblPlaylists.State in [dsInsert, dsEdit] then
     datMain.tblPlaylists.Cancel;
  Close;
end;
//***********************************************************************************************************

procedure TfrmPlaylistDLG.edtNameKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     lblSaveClick(Sender);
end;
//***********************************************************************************************************

end.
