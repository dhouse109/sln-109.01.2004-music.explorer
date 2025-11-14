unit frm_Splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dat_Main, cxButtons, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls, cxControls,
  Mask, cxLabel, ShellAPI, TFlatTitlebarUnit, ThdTimer, HarmFade;

type
  TfrmSplash = class(TForm)
    layoutSignIn: TdxLayoutControl;
    Panel37: TPanel;
    Panel38: TPanel;
    cboSignIn_MemberID: TcxComboBox;
    lbSignIn_SignIn: TcxLabel;
    lblSignIn_CreateID: TcxLabel;
    edtSignIn_Password: TMaskEdit;
    lblSignIn_ForgotPassword: TcxLabel;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    layoutSignInItem2: TdxLayoutItem;
    layoutSignInItem6: TdxLayoutItem;
    layoutSignInItem4: TdxLayoutItem;
    layoutSignInGroup3: TdxLayoutGroup;
    layoutSignInItem5: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    lblClose: TcxLabel;
    layoutSignInItem1: TdxLayoutItem;
    titleMain: TFlatTitlebar;
    timerLoop: TThreadedTimer;
    imgLogo: THarmFade;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbSignIn_SignInClick(Sender: TObject);
    procedure lblSignIn_CreateIDClick(Sender: TObject);
    procedure lblSignIn_ForgotPasswordClick(Sender: TObject);
    procedure lblCloseClick(Sender: TObject);
    procedure edtSignIn_PasswordKeyPress(Sender: TObject; var Key: Char);
    procedure timerLoopTimer(Sender: TObject);
    procedure imgLogoClick(Sender: TObject);
  private
    FValidatedLogin: Boolean;
    FLastUser: String;
    procedure LoadMemberNames;
    procedure SaveMemberName;
  public
    function ValidateLogin: Boolean;
  end;

var
  frmSplash: TfrmSplash;

implementation

uses
  Registry,
  frm_Main;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmSplash.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmSplash.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmSplash.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmSplash.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmSplash.FormCreate(Sender: TObject);
begin
  imgLogo.Tag     := 0;
  imgLogo.PicFrom := frmMain.imgSplash109.Picture;
  imgLogo.PicTo   := frmMain.imgAbout109.Picture;
  FLastUser       := EmptyStr;
  LoadMemberNames;
  cboSignIn_MemberID.Text := FLastUser;
end;
//***********************************************************************************************************

procedure TfrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;
//***********************************************************************************************************

function TfrmSplash.ValidateLogin: Boolean;
begin
  FValidatedLogin := False;
  ShowModal;
  Result          := FValidatedLogin;
end;
//***********************************************************************************************************

procedure TfrmSplash.lbSignIn_SignInClick(Sender: TObject);
begin
  if datMain.SignIn(cboSignIn_MemberID.Text, edtSignIn_Password.Text) then
  begin
    FValidatedLogin := True;
    SaveMemberName;
    Close;
  end
  else
  begin
    MessageDLG('Resident ID and/or Password is invalid.', mtError, [mbOK], 0);
  end;
end;
//***********************************************************************************************************

procedure TfrmSplash.lblSignIn_CreateIDClick(Sender: TObject);
begin
  ShellExecute(0, nil, cURLRegister, nil, nil, SW_SHOWNORMAL);
end;
//***********************************************************************************************************

procedure TfrmSplash.lblSignIn_ForgotPasswordClick(Sender: TObject);
begin
  ShellExecute(0, nil, cURLForgotPass, nil, nil, SW_SHOWNORMAL);
end;
//***********************************************************************************************************

procedure TfrmSplash.lblCloseClick(Sender: TObject);
begin
  FValidatedLogin := False;
  Close;
end;
//***********************************************************************************************************

procedure TfrmSplash.edtSignIn_PasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
     lbSignIn_SignInClick(Sender);
end;
//***********************************************************************************************************

procedure TfrmSplash.timerLoopTimer(Sender: TObject);
begin
  if imgLogo.Tag = 0 then
  begin
    imgLogo.Tag := 1;
    imgLogo.Blend;
  end
  else
  begin
    imgLogo.Tag := 0;
    imgLogo.UnBlend;
  end;
end;
//***********************************************************************************************************

procedure TfrmSplash.imgLogoClick(Sender: TObject);
begin
  ShellExecute(0, nil, cURLHome, nil, nil, SW_SHOWNORMAL);
end;
//***********************************************************************************************************

procedure TfrmSplash.LoadMemberNames;
var
  Reg: TRegistry;
begin
  Reg         := TRegistry.Create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  try
    if Reg.OpenKey('\Software\109 Studios\109Studios.com\Users\', True) then
       Reg.GetValueNames(cboSignIn_MemberID.Properties.Items);
    Reg.CloseKey;
    if Reg.OpenKey('\Software\109 Studios\109Studios.com\', True) then
       if Reg.ValueExists('LastUser') then
          FLastUser := Reg.ReadString('LastUser');
  finally
    Reg.CloseKey;
    Reg.Free;
  end;
end;
//***********************************************************************************************************

procedure TfrmSplash.SaveMemberName;
var
  Reg: TRegistry;
begin
  Reg         := TRegistry.Create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  try
    if Reg.OpenKey('\Software\109 Studios\109Studios.com\Users\', True) then
    begin
      if not Reg.ValueExists(cboSignIn_MemberID.Text) then
         Reg.WriteString(cboSignIn_MemberID.Text, EmptyStr)
    end;
    Reg.CloseKey;
    if Reg.OpenKey('\Software\109 Studios\109Studios.com\', True) then
    begin
      Reg.WriteString('LastUser', cboSignIn_MemberID.Text)
    end;
  finally
    Reg.CloseKey;
    Reg.Free;
  end;
end;
//***********************************************************************************************************

end.
