unit frm_WAYLTDLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dat_Main, cxButtons, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls, cxControls,
  Mask, cxLabel, ShellAPI, TFlatTitlebarUnit, cxMemo, BassPlayer, PluginCtrl;

type
  TfrmWAYLTDLG = class(TForm)
    layoutWAYLT: TdxLayoutControl;
    Panel37: TPanel;
    Panel38: TPanel;
    lblSubmit: TcxLabel;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    layoutWAYLTItem4: TdxLayoutItem;
    layoutWAYLTGroup3: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    lblCancel: TcxLabel;
    layoutWAYLTItem1: TdxLayoutItem;
    titleMain: TFlatTitlebar;
    layoutWAYLTItem7: TdxLayoutItem;
    edtArtist: TEdit;
    layoutWAYLTItem8: TdxLayoutItem;
    mmoMessage: TcxMemo;
    lblPolicy: TcxLabel;
    layoutWAYLTItem2: TdxLayoutItem;
    edtTitle: TEdit;
    layoutWAYLTItem3: TdxLayoutItem;
    layoutWAYLTItem5: TdxLayoutItem;
    edtAlbum: TEdit;
    layoutWAYLTItem6: TdxLayoutItem;
    edtLength: TEdit;
    layoutWAYLTItem9: TdxLayoutItem;
    edtGenre: TEdit;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblSubmitClick(Sender: TObject);
    procedure lblCancelClick(Sender: TObject);
    procedure lblPolicyClick(Sender: TObject);
  private
  public
    function AddMessage: TModalResult;
  end;

var
  frmWAYLTDLG: TfrmWAYLTDLG;

implementation

var
  frmWAYLTDLG_Result: TModalResult;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmWAYLTDLG.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmWAYLTDLG.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmWAYLTDLG.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmWAYLTDLG.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmWAYLTDLG.FormCreate(Sender: TObject);
begin
//
end;
//***********************************************************************************************************

procedure TfrmWAYLTDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmWAYLTDLG_Result = -1 then
     Action := caFree
  else
     Action := caHide;
end;
//***********************************************************************************************************

procedure TfrmWAYLTDLG.lblCancelClick(Sender: TObject);
begin
  frmWAYLTDLG_Result := mrCancel;
  Close;
end;
//***********************************************************************************************************

procedure TfrmWAYLTDLG.lblSubmitClick(Sender: TObject);
var
  strTitle: String;
  strArtist: String;
  strAlbum: String;
  strGenre: String;
  strLength: String;
  strMessage: String;
  AServerDate: TDateTime;
  AServerTime: TDateTime;
begin
  LockWindowUpdate(Self.Handle);

  AServerDate := Now;
  AServerTime := Now;
  datMain.GetServerDateTime(AServerDate, AServerTime);

  strTitle   := datMain.StrReplace(edtTitle.Text  , '''', '');
  strArtist  := datMain.StrReplace(edtArtist.Text , '''', '');
  strAlbum   := datMain.StrReplace(edtAlbum.Text  , '''', '');
  strGenre   := datMain.StrReplace(edtGenre.Text  , '''', '');
  strLength  := datMain.StrReplace(edtLength.Text , '''', '');
  strMessage := datMain.StrReplace(mmoMessage.Text, '''', '');

  strTitle   := datMain.StrReplace(strTitle  , '\', '/');
  strArtist  := datMain.StrReplace(strArtist , '\', '/');
  strAlbum   := datMain.StrReplace(strAlbum  , '\', '/');
  strGenre   := datMain.StrReplace(strGenre  , '\', '/');
  strLength  := datMain.StrReplace(strLength , '\', '/');
  strMessage := datMain.StrReplace(strMessage, '\', '/');

  datMain.qryWAYLT_Insert.Close;
  datMain.qryWAYLT_Insert.Open;
  datMain.qryWAYLT_Insert.Insert;
  datMain.qryWAYLT_Insert.FieldByName('Mem_ID').AsInteger    := datMain.Mem_ID;
  datMain.qryWAYLT_Insert.FieldByName('DatePosted').AsString := FormatDateTime('yyyy-mm-dd', AServerDate);
  datMain.qryWAYLT_Insert.FieldByName('TimePosted').AsString := FormatDateTime('hh:mm:ss', AServerTime);
  datMain.qryWAYLT_Insert.FieldByName('Message').AsString    := strMessage;
  datMain.qryWAYLT_Insert.FieldByName('AVTitle').AsString    := strTitle;
  datMain.qryWAYLT_Insert.FieldByName('AVArtist').AsString   := strArtist;
  datMain.qryWAYLT_Insert.FieldByName('AVAlbum').AsString    := strAlbum;
  datMain.qryWAYLT_Insert.FieldByName('AVGenre').AsString    := strGenre;
  datMain.qryWAYLT_Insert.FieldByName('AVLength').AsString   := strLength;
  datMain.qryWAYLT_Insert.Post;

  if datMain.GenericInsert(datMain.qryWAYLT_Insert, 'tblWAYLT') then
  begin
    datMain.qryWAYLT_Insert.Close;
    frmWAYLTDLG_Result := mrOK;
    LockWindowUpdate(0);
    MessageDLG('Your message has been posted.', mtInformation, [mbOK], 0);
    Close;
  end
  else
  begin
    datMain.qryWAYLT_Insert.Close;
    frmWAYLTDLG_Result := mrCancel;
    LockWindowUpdate(0);
    MessageDLG('Error posting to server.', mtError, [mbOK], 0);
  end;
end;
//***********************************************************************************************************

function TfrmWAYLTDLG.AddMessage: TModalResult;
begin
  frmWAYLTDLG_Result := -1;
  mmoMessage.Lines.Clear;

  if BassPlayer1.Mode = plmPlaying then
  begin
    if datMain.tblNowPlaying.Locate('LastPlayed', LastRecPlayed, []) then
    begin
      edtTitle.Text  := datMain.tblNowPlaying.FieldByName('AVTitle').AsString;
      edtArtist.Text := datMain.tblNowPlaying.FieldByName('AVArtist').AsString;
      edtAlbum.Text  := datMain.tblNowPlaying.FieldByName('AVAlbum').AsString;
      edtGenre.Text  := datMain.tblNowPlaying.FieldByName('AVGenre').AsString;
      edtLength.Text := datMain.tblNowPlaying.FieldByName('AVDuration').AsString;
    end
    else
    begin
      edtTitle.Text  := BassPlayer1.StreamInfo.Title;
      edtArtist.Text := BassPlayer1.StreamInfo.Artist;
      edtAlbum.Text  := BassPlayer1.StreamInfo.Album;
      edtGenre.Text  := BassPlayer1.StreamInfo.Genre;
      edtLength.Text := FormatDateTime ('hh:nn:ss', (BassPlayer1.PlayLength) / (1000 * 24 * 60 * 60));
    end;
  end
  else
  begin
    MessageDLG('There''s no file playing to post.', mtError, [mbOK], 0);
    Result := mrCancel;
    Close;
    Exit;
  end;

  ShowModal;
  Result             := frmWAYLTDLG_Result;
  frmWAYLTDLG_Result := -1;
  Close;
end;
//***********************************************************************************************************

procedure TfrmWAYLTDLG.lblPolicyClick(Sender: TObject);
begin
  datMain.Launch_Policy;
end;
//***********************************************************************************************************

end.
