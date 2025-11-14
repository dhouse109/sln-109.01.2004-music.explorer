unit frm_StartConnectionDLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dat_Main, cxButtons, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls, cxControls,
  Mask, cxLabel, ShellAPI, TFlatTitlebarUnit, cxMemo, BassPlayer;

type
  TfrmStartConnectionDLG = class(TForm)
    layoutStartConnection: TdxLayoutControl;
    Panel37: TPanel;
    Panel38: TPanel;
    lblConfirm: TcxLabel;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    layoutStartConnectionItem4: TdxLayoutItem;
    layoutStartConnectionGroup3: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    lblCancel: TcxLabel;
    layoutStartConnectionItem1: TdxLayoutItem;
    titleMain: TFlatTitlebar;
    layoutStartConnectionItem7: TdxLayoutItem;
    edtLName: TEdit;
    lblPolicy: TcxLabel;
    layoutStartConnectionItem2: TdxLayoutItem;
    edtFName: TEdit;
    layoutStartConnectionItem3: TdxLayoutItem;
    lblCaption: TcxLabel;
    layoutStartConnectionItem8: TdxLayoutItem;
    lblConfirmMsg: TcxLabel;
    layoutStartConnectionItem9: TdxLayoutItem;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblConfirmClick(Sender: TObject);
    procedure lblCancelClick(Sender: TObject);
    procedure lblPolicyClick(Sender: TObject);
    procedure edtFNameKeyPress(Sender: TObject; var Key: Char);
  private
    FMem_ID: Integer;
    FMem_Name: String;
  public
    function StartConnection(AMem_ID: Integer; AName: String): TModalResult;
  end;

var
  frmStartConnectionDLG: TfrmStartConnectionDLG;

implementation

var
  frmStartConnectionDLG_Result: TModalResult;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmStartConnectionDLG.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmStartConnectionDLG.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmStartConnectionDLG.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmStartConnectionDLG.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmStartConnectionDLG.FormCreate(Sender: TObject);
begin
//
end;
//***********************************************************************************************************

procedure TfrmStartConnectionDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmStartConnectionDLG_Result = -1 then
     Action := caFree
  else
     Action := caHide;
end;
//***********************************************************************************************************

procedure TfrmStartConnectionDLG.lblCancelClick(Sender: TObject);
begin
  frmStartConnectionDLG_Result := mrCancel;
  Close;
end;
//***********************************************************************************************************

procedure TfrmStartConnectionDLG.lblConfirmClick(Sender: TObject);
var
  strFName: String;
  strLName: String;
begin
  LockWindowUpdate(Self.Handle);

  strFName := datMain.StrReplace(edtFName.Text  , '''', '');
  strLName := datMain.StrReplace(edtLName.Text , '''', '');

  strFName := datMain.StrReplace(strFName  , '\', '/');
  strLName := datMain.StrReplace(strLName , '\', '/');

  if datMain.ConnectConfirm(FMem_ID, strFName, strLName) then
  begin
    datMain.ConnectRequest(FMem_ID);
    frmStartConnectionDLG_Result := mrOK;
    LockWindowUpdate(0);
    MessageDLG('Your connection request has been posted.' + #13#10 + FMem_Name + ' will be notified of your request.', mtInformation, [mbOK], 0);
    Close;
  end
  else
  begin
    frmStartConnectionDLG_Result := mrCancel;
    LockWindowUpdate(0);
    MessageDLG('The name you provided is incorrect.', mtError, [mbOK], 0);
  end;
end;
//***********************************************************************************************************

function TfrmStartConnectionDLG.StartConnection(AMem_ID: Integer; AName: String): TModalResult;
begin
  frmStartConnectionDLG_Result := -1;

  FMem_ID            := AMem_ID;
  FMem_Name          := AName;
  lblCaption.Caption := 'Connect To ' + AName;
  edtFName.Text      := EmptyStr;
  edtLName.Text      := EmptyStr;

  if datMain.Mem_ID = FMem_ID then
  begin
    MessageDLG('You cannot connect to yourself.', mtInformation, [mbOK], 0);
    Result := mrCancel;
    Close;
  end
  else
  if datMain.Mem_Is1stDegree(FMem_ID) then
  begin
    MessageDLG('You are already connected to this member.', mtInformation, [mbOK], 0);
    Result := mrCancel;
    Close;
  end
  else
  begin
    ShowModal;
    Result                       := frmStartConnectionDLG_Result;
    frmStartConnectionDLG_Result := -1;
    Close;
  end;
end;
//***********************************************************************************************************

procedure TfrmStartConnectionDLG.lblPolicyClick(Sender: TObject);
begin
  datMain.Launch_Policy;
end;
//***********************************************************************************************************

procedure TfrmStartConnectionDLG.edtFNameKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     lblConfirmClick(Self);
end;
//***********************************************************************************************************

end.
