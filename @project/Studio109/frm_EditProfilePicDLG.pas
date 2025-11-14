unit frm_EditProfilePicDLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dat_Main, cxButtons, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls, cxControls,
  Mask, cxLabel, ShellAPI, TFlatTitlebarUnit, cxMemo, BassPlayer, cxImage,
  cxDBEdit, cxButtonEdit, jpeg;

type
  TfrmEditProfilePicDLG = class(TForm)
    layoutEditProfilePic: TdxLayoutControl;
    Panel37: TPanel;
    Panel38: TPanel;
    lblSave: TcxLabel;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    layoutEditProfilePicItem4: TdxLayoutItem;
    layoutEditProfilePicGroup3: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    lblCancel: TcxLabel;
    layoutEditProfilePicItem1: TdxLayoutItem;
    titleMain: TFlatTitlebar;
    lblPolicy: TcxLabel;
    layoutEditProfilePicItem2: TdxLayoutItem;
    layoutEditProfilePicItem8: TdxLayoutItem;
    lblConfirmMsg: TcxLabel;
    layoutEditProfilePicItem9: TdxLayoutItem;
    edtPictureFile: TcxButtonEdit;
    layoutEditProfilePicItem5: TdxLayoutItem;
    imgEditProfile_Pic: TcxDBImage;
    lblClearPic: TcxLabel;
    layoutEditProfilePicItem3: TdxLayoutItem;
    dlgOpen: TOpenDialog;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblSaveClick(Sender: TObject);
    procedure lblCancelClick(Sender: TObject);
    procedure lblPolicyClick(Sender: TObject);
    procedure edtPictureFilePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure lblClearPicClick(Sender: TObject);
  private
  public
    function EditProfilePic: TModalResult;
  end;

var
  frmEditProfilePicDLG: TfrmEditProfilePicDLG;

implementation

uses
  frm_Main;

var
  frmEditProfilePicDLG_Result: TModalResult;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmEditProfilePicDLG.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmEditProfilePicDLG.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmEditProfilePicDLG.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmEditProfilePicDLG.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmEditProfilePicDLG.FormCreate(Sender: TObject);
begin
  imgEditProfile_Pic.Style.BorderStyle := ebsNone;
end;
//***********************************************************************************************************

procedure TfrmEditProfilePicDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmEditProfilePicDLG_Result = -1 then
     Action := caFree
  else
     Action := caHide;
end;
//***********************************************************************************************************

procedure TfrmEditProfilePicDLG.lblCancelClick(Sender: TObject);
begin
  frmEditProfilePicDLG_Result := mrCancel;
  Close;
end;
//***********************************************************************************************************

procedure TfrmEditProfilePicDLG.lblSaveClick(Sender: TObject);
begin
  if edtPictureFile.Text = EmptyStr then
  begin
    MessageDLG('Please enter a file to save.', mtError, [mbOK], 0);
    Exit;
  end;

  LockWindowUpdate(Self.Handle);
  if datMain.qryProfileMemPicMemPic.IsNull then
  begin
     frmMain.imgNoPic.Picture.SaveToFile(cStudioTemp + 'mempic.jpg');
     datMain.qryProfileMemPic.ReadOnly := False;
     datMain.qryProfileMemPic.Edit;
     datMain.qryProfileMemPicMemPic.Clear;
     datMain.qryProfileMemPicMemPic.LoadFromFile(cStudioTemp + 'mempic.jpg');
     datMain.qryProfileMemPic.Post;
     datMain.qryProfileMemPic.ReadOnly := True;
     DeleteFile(PAnsiChar(cStudioTemp + 'mempic.jpg'));
  end;

  if datMain.SaveMemProfilePic(edtPictureFile.Text) then
  begin
    LockWindowUpdate(0);
    MessageDLG('Your Avatar Picture has been updated.', mtInformation, [mbOK], 0);
    frmEditProfilePicDLG_Result := mrOK;
    Close;
  end
  else
  begin
    LockWindowUpdate(0);
    MessageDLG('There was a problem updating your Avatar Picture.', mtError, [mbOK], 0);
    Exit;
  end;
end;
//***********************************************************************************************************

function TfrmEditProfilePicDLG.EditProfilePic: TModalResult;
begin
  frmEditProfilePicDLG_Result := -1;
  edtPictureFile.Text := EmptyStr;

  ShowModal;
  Result                      := frmEditProfilePicDLG_Result;
  frmEditProfilePicDLG_Result := -1;
  Close;
end;
//***********************************************************************************************************

procedure TfrmEditProfilePicDLG.lblPolicyClick(Sender: TObject);
begin
  datMain.Launch_Policy;
end;
//***********************************************************************************************************

procedure TfrmEditProfilePicDLG.edtPictureFilePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  oJPG:  TJPEGImage;
  blnResult: Boolean;
begin
  if dlgOpen.Execute then
  begin
    edtPictureFile.Text := dlgOpen.FileName;
    oJPG := TJPEGImage.Create;
    blnResult := False;
    try
      oJPG := datMain.ResizeImageFile(edtPictureFile.Text, 109, 109, blnResult);
      if blnResult then
      begin
        oJPG.SaveToFile(cStudioTemp + 'mempic.jpg');
        if datMain.qryProfileMemPic.Active = False then
           datMain.qryProfileMemPic.Active := True;

        datMain.qryProfileMemPic.ReadOnly := False;
        datMain.qryProfileMemPic.Edit;
        datMain.qryProfileMemPicMemPic.Clear;
        datMain.qryProfileMemPicMemPic.LoadFromFile(cStudioTemp + 'mempic.jpg');
        datMain.qryProfileMemPic.Post;
        datMain.qryProfileMemPic.ReadOnly := True;
        DeleteFile(PAnsiChar(cStudioTemp + 'mempic.jpg'));
        oJPG.Free;
      end
      else
      begin
        if Assigned(oJPG) then
           oJPG.Free;
        MessageDLG('The file you selected is not a valid JPG file.', mtError, [mbOK], 0);
        edtPictureFile.Text := EmptyStr;
      end;
    except
      if Assigned(oJPG) then
         oJPG.Free;
      MessageDLG('The file you selected is not a valid JPG file.', mtError, [mbOK], 0);
      edtPictureFile.Text := EmptyStr;
    end;
  end;
end;
//***********************************************************************************************************

procedure TfrmEditProfilePicDLG.lblClearPicClick(Sender: TObject);
begin
  edtPictureFile.Text               := 'No Picture';
  datMain.qryProfileMemPic.ReadOnly := False;
  datMain.qryProfileMemPic.Edit;
  datMain.qryProfileMemPicMemPic.Clear;
  datMain.qryProfileMemPic.Post;
  datMain.qryProfileMemPic.ReadOnly := True;
end;
//***********************************************************************************************************

end.
