unit frm_BulletinBoardDLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dat_Main, cxButtons, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls, cxControls,
  Mask, cxLabel, ShellAPI, TFlatTitlebarUnit, cxMemo;

type
  TfrmBulletinBoardDLG = class(TForm)
    layoutBB: TdxLayoutControl;
    Panel37: TPanel;
    Panel38: TPanel;
    lblSubmit: TcxLabel;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    layoutBBItem4: TdxLayoutItem;
    layoutBBGroup3: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    lblCancel: TcxLabel;
    layoutBBItem1: TdxLayoutItem;
    titleMain: TFlatTitlebar;
    layoutBBItem6: TdxLayoutItem;
    cboMessageFor: TcxComboBox;
    layoutBBItem7: TdxLayoutItem;
    edtMessageTitle: TEdit;
    layoutBBItem8: TdxLayoutItem;
    mmoMessage: TcxMemo;
    lblPolicy: TcxLabel;
    layoutBBItem2: TdxLayoutItem;
    edtLink: TcxMaskEdit;
    layoutBBItem5: TdxLayoutItem;
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
    function AddMessage(ADefaultMessageTo_IDX: Integer): TModalResult;
  end;

var
  frmBulletinBoardDLG: TfrmBulletinBoardDLG;

implementation

var
  frmBulletinBoardDLG_Result: TModalResult;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmBulletinBoardDLG.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoardDLG.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoardDLG.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoardDLG.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmBulletinBoardDLG.FormCreate(Sender: TObject);
begin
//
end;
//***********************************************************************************************************

procedure TfrmBulletinBoardDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmBulletinBoardDLG_Result = -1 then
     Action := caFree
  else
     Action := caHide;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoardDLG.lblCancelClick(Sender: TObject);
begin
  frmBulletinBoardDLG_Result := mrCancel;
  Close;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoardDLG.lblSubmitClick(Sender: TObject);
var
  strFieldsToEnter: String;
  strTitle: String;
  strMessage: String;
  strLink: String;
  intMessageTo_ID: Integer;
  AServerDate: TDateTime;
  AServerTime: TDateTime;
begin
  strFieldsToEnter := EmptyStr;
  if edtMessageTitle.Text = EmptyStr then
     strFieldsToEnter := strFieldsToEnter + #13#10 + 'Message Title';
  if mmoMessage.Text      = EmptyStr then
     strFieldsToEnter := strFieldsToEnter + #13#10 + 'Message';

  if strFieldsToEnter <> EmptyStr then
  begin
    MessageDLG('You must enter information in the following fields: ' + strFieldsToEnter, mtError, [mbOK], 0);
    edtMessageTitle.SetFocus;
    Exit;
  end;

  LockWindowUpdate(Self.Handle);
  intMessageTo_ID := 0;

  if cboMessageFor.Text = 'My Friends' then
     intMessageTo_ID := 0
  else
  if cboMessageFor.Text = 'My Friends & Their Friends' then
     intMessageTo_ID := 1;

  if (edtLink.Text = 'http://') or (edtLink.Text = EmptyStr) then
  begin
    strLink := EmptyStr;
  end
  else
  begin
    strLink := Copy(edtLink.Text, 0, 7);
    if StrPos(PChar(strLink), 'http://') <> nil then
       strLink := edtLink.Text
    else
       strLink := 'http://' + edtLink.Text;
  end;

  AServerDate := Now;
  AServerTime := Now;
  datMain.GetServerDateTime(AServerDate, AServerTime);

  strTitle   := datMain.StrReplace(edtMessageTitle.Text, '''', '');
  strMessage := datMain.StrReplace(mmoMessage.Text, '''', '');
  strLink    := datMain.StrReplace(strLink, '''', '');

  strTitle   := datMain.StrReplace(strTitle, '\', '/');
  strMessage := datMain.StrReplace(strMessage, '\', '/');
  strLink    := datMain.StrReplace(strLink, '\', '/');

  datMain.qryMems_BB_Insert.Close;
  datMain.qryMems_BB_Insert.Open;
  datMain.qryMems_BB_Insert.Insert;
  datMain.qryMems_BB_Insert.FieldByName('Mem_ID').AsInteger         := datMain.Mem_ID;
  datMain.qryMems_BB_Insert.FieldByName('BBTitle').AsString         := strTitle;
  datMain.qryMems_BB_Insert.FieldByName('BBMessage').AsString       := strMessage;
  datMain.qryMems_BB_Insert.FieldByName('BBLink').AsString          := strLink;
  datMain.qryMems_BB_Insert.FieldByName('BBMessageTo_ID').AsInteger := intMessageTo_ID;
  datMain.qryMems_BB_Insert.FieldByName('BBDatePosted').AsString    := FormatDateTime('yyyy-mm-dd', AServerDate);
  datMain.qryMems_BB_Insert.FieldByName('BBTimePosted').AsString    := FormatDateTime('hh:mm:ss', AServerTime);
  datMain.qryMems_BB_Insert.Post;

  if datMain.GenericInsert(datMain.qryMems_BB_Insert, 'tblMems_BB') then
  begin
    datMain.qryMems_BB_Insert.Close;
    frmBulletinBoardDLG_Result := mrOK;
    LockWindowUpdate(0);
    MessageDLG('Your message has been posted.', mtInformation, [mbOK], 0);
    Close;
  end
  else
  begin
    datMain.qryMems_BB_Insert.Close;
    frmBulletinBoardDLG_Result := mrCancel;
    LockWindowUpdate(0);
    MessageDLG('Error posting to server.', mtError, [mbOK], 0);
  end;
end;
//***********************************************************************************************************

function TfrmBulletinBoardDLG.AddMessage(ADefaultMessageTo_IDX: Integer): TModalResult;
begin
  if ADefaultMessageTo_IDX < 0 then
     ADefaultMessageTo_IDX := 0;

  frmBulletinBoardDLG_Result := -1;
  cboMessageFor.ItemIndex    := ADefaultMessageTo_IDX;
  edtMessageTitle.Text       := EmptyStr;
  mmoMessage.Lines.Clear;
  ShowModal;
  Result := frmBulletinBoardDLG_Result;
  frmBulletinBoardDLG_Result := -1;
  Close;
end;
//***********************************************************************************************************

procedure TfrmBulletinBoardDLG.lblPolicyClick(Sender: TObject);
begin
  datMain.Launch_Policy;
end;
//***********************************************************************************************************

end.
