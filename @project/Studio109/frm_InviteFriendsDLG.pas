unit frm_InviteFriendsDLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dat_Main, cxButtons, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls, cxControls,
  Mask, cxLabel, ShellAPI, TFlatTitlebarUnit, cxMemo, BassPlayer;

type
  TfrmInviteFriendsDLG = class(TForm)
    layoutInviteFriends: TdxLayoutControl;
    Panel37: TPanel;
    Panel38: TPanel;
    lblSubmit: TcxLabel;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    layoutInviteFriendsItem4: TdxLayoutItem;
    layoutInviteFriendsGroup3: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    lblCancel: TcxLabel;
    layoutInviteFriendsItem1: TdxLayoutItem;
    titleMain: TFlatTitlebar;
    layoutInviteFriendsItem7: TdxLayoutItem;
    edtEmail1: TEdit;
    lblPolicy: TcxLabel;
    layoutInviteFriendsItem2: TdxLayoutItem;
    edtName1: TEdit;
    layoutInviteFriendsItem3: TdxLayoutItem;
    lblCaption: TcxLabel;
    layoutInviteFriendsItem8: TdxLayoutItem;
    layoutInviteFriendsGroup1: TdxLayoutGroup;
    layoutInviteFriendsItem5: TdxLayoutItem;
    edtName2: TEdit;
    layoutInviteFriendsItem6: TdxLayoutItem;
    edtEmail2: TEdit;
    layoutInviteFriendsItem9: TdxLayoutItem;
    edtName3: TEdit;
    layoutInviteFriendsItem10: TdxLayoutItem;
    edtEmail3: TEdit;
    layoutInviteFriendsItem11: TdxLayoutItem;
    edtName4: TEdit;
    layoutInviteFriendsItem12: TdxLayoutItem;
    edtEmail4: TEdit;
    layoutInviteFriendsItem13: TdxLayoutItem;
    edtName5: TEdit;
    layoutInviteFriendsItem14: TdxLayoutItem;
    edtEmail5: TEdit;
    layoutInviteFriendsGroup2: TdxLayoutGroup;
    layoutInviteFriendsGroup4: TdxLayoutGroup;
    layoutInviteFriendsGroup5: TdxLayoutGroup;
    layoutInviteFriendsGroup6: TdxLayoutGroup;
    layoutInviteFriendsGroup7: TdxLayoutGroup;
    layoutInviteFriendsGroup8: TdxLayoutGroup;
    layoutInviteFriendsGroup9: TdxLayoutGroup;
    layoutInviteFriendsGroup10: TdxLayoutGroup;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblSubmitClick(Sender: TObject);
    procedure lblCancelClick(Sender: TObject);
    procedure lblPolicyClick(Sender: TObject);
    procedure edtName1KeyPress(Sender: TObject; var Key: Char);
  private
  public
    function InviteFriends: TModalResult;
  end;

var
  frmInviteFriendsDLG: TfrmInviteFriendsDLG;

implementation

var
  frmInviteFriendsDLG_Result: TModalResult;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmInviteFriendsDLG.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmInviteFriendsDLG.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmInviteFriendsDLG.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmInviteFriendsDLG.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmInviteFriendsDLG.FormCreate(Sender: TObject);
begin
//
end;
//***********************************************************************************************************

procedure TfrmInviteFriendsDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmInviteFriendsDLG_Result = -1 then
     Action := caFree
  else
     Action := caHide;
end;
//***********************************************************************************************************

procedure TfrmInviteFriendsDLG.lblCancelClick(Sender: TObject);
begin
  frmInviteFriendsDLG_Result := mrCancel;
  Close;
end;
//***********************************************************************************************************

procedure TfrmInviteFriendsDLG.lblSubmitClick(Sender: TObject);
var
  strName1 : String;
  strName2 : String;
  strName3 : String;
  strName4 : String;
  strName5 : String;
  strEmail1: String;
  strEmail2: String;
  strEmail3: String;
  strEmail4: String;
  strEmail5: String;
  blnFieldEntered: Boolean;
begin
  blnFieldEntered := False;

  strName1  := datMain.StrReplace(edtName1.Text  , '''', '');
  strName2  := datMain.StrReplace(edtName2.Text  , '''', '');
  strName3  := datMain.StrReplace(edtName3.Text  , '''', '');
  strName4  := datMain.StrReplace(edtName4.Text  , '''', '');
  strName5  := datMain.StrReplace(edtName5.Text  , '''', '');
  strEmail1 := datMain.StrReplace(edtEmail1.Text , '''', '');
  strEmail2 := datMain.StrReplace(edtEmail2.Text , '''', '');
  strEmail3 := datMain.StrReplace(edtEmail3.Text , '''', '');
  strEmail4 := datMain.StrReplace(edtEmail4.Text , '''', '');
  strEmail5 := datMain.StrReplace(edtEmail5.Text , '''', '');

  if strName1 <> EmptyStr then
     blnFieldEntered := True;
  if strName2 <> EmptyStr then
     blnFieldEntered := True;
  if strName3 <> EmptyStr then
     blnFieldEntered := True;
  if strName4 <> EmptyStr then
     blnFieldEntered := True;
  if strName5 <> EmptyStr then
     blnFieldEntered := True;
  if strEmail1 <> EmptyStr then
     blnFieldEntered := True;
  if strEmail2 <> EmptyStr then
     blnFieldEntered := True;
  if strEmail3 <> EmptyStr then
     blnFieldEntered := True;
  if strEmail4 <> EmptyStr then
     blnFieldEntered := True;
  if strEmail5 <> EmptyStr then
     blnFieldEntered := True;

  if (not blnFieldEntered) then
  begin
    MessageDLG('There''s no information to submit.', mtError, [mbOK], 0);
    Exit;
  end;

  if ((strName1 <> EmptyStr) and (strEmail1 = EmptyStr)) or ((strName1 = EmptyStr) and (strEmail1 <> EmptyStr)) then
  begin
    MessageDLG('A Name and Email address is required' + #13#10 + 'for each friend.', mtError, [mbOK], 0);
    Exit;
  end;

  if ((strName2 <> EmptyStr) and (strEmail2 = EmptyStr)) or ((strName2 = EmptyStr) and (strEmail2 <> EmptyStr)) then
  begin
    MessageDLG('A Name and Email address is required' + #13#10 + 'for each friend.', mtError, [mbOK], 0);
    Exit;
  end;

  if ((strName3 <> EmptyStr) and (strEmail3 = EmptyStr)) or ((strName3 = EmptyStr) and (strEmail3 <> EmptyStr)) then
  begin
    MessageDLG('A Name and Email address is required' + #13#10 + 'for each friend.', mtError, [mbOK], 0);
    Exit;
  end;

  if ((strName4 <> EmptyStr) and (strEmail4 = EmptyStr)) or ((strName4 = EmptyStr) and (strEmail4 <> EmptyStr)) then
  begin
    MessageDLG('A Name and Email address is required' + #13#10 + 'for each friend.', mtError, [mbOK], 0);
    Exit;
  end;

  if ((strName5 <> EmptyStr) and (strEmail5 = EmptyStr)) or ((strName5 = EmptyStr) and (strEmail5 <> EmptyStr)) then
  begin
    MessageDLG('A Name and Email address is required' + #13#10 + 'for each friend.', mtError, [mbOK], 0);
    Exit;
  end;


  if (strEmail1 <> EmptyStr) and (datMain.ValidEmail(strEmail1) = False) then
  begin
    MessageDLG('Please enter a valid email address for Friend #1.', mtError, [mbOK], 0);
    Exit;
  end;
  if (strEmail2 <> EmptyStr) and (datMain.ValidEmail(strEmail2) = False) then
  begin
    MessageDLG('Please enter a valid email address for Friend #2.', mtError, [mbOK], 0);
    Exit;
  end;
  if (strEmail3 <> EmptyStr) and (datMain.ValidEmail(strEmail3) = False) then
  begin
    MessageDLG('Please enter a valid email address for Friend #3.', mtError, [mbOK], 0);
    Exit;
  end;
  if (strEmail4 <> EmptyStr) and (datMain.ValidEmail(strEmail4) = False) then
  begin
    MessageDLG('Please enter a valid email address for Friend #4.', mtError, [mbOK], 0);
    Exit;
  end;
  if (strEmail5 <> EmptyStr) and (datMain.ValidEmail(strEmail5) = False) then
  begin
    MessageDLG('Please enter a valid email address for Friend #5.', mtError, [mbOK], 0);
    Exit;
  end;

  datMain.InviteFriends(strName1, strName2, strName3, strName4, strName5, strEmail1, strEmail2, strEmail3, strEmail4, strEmail5);
  frmInviteFriendsDLG_Result := mrOK;
  MessageDLG('An invitation to 109 Studios has been sent to the email addresse(s) you provided.', mtInformation, [mbOK], 0);
  Close;
end;
//***********************************************************************************************************

function TfrmInviteFriendsDLG.InviteFriends: TModalResult;
begin
  frmInviteFriendsDLG_Result := -1;

  ShowModal;
  Result                       := frmInviteFriendsDLG_Result;
  frmInviteFriendsDLG_Result := -1;
  Close;
end;
//***********************************************************************************************************

procedure TfrmInviteFriendsDLG.lblPolicyClick(Sender: TObject);
begin
  datMain.Launch_Policy;
end;
//***********************************************************************************************************

procedure TfrmInviteFriendsDLG.edtName1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     lblSubmitClick(Self);
end;
//***********************************************************************************************************

end.
