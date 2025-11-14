unit frm_OptionsDLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dat_Main, cxButtons, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls, cxControls,
  Mask, cxLabel, ShellAPI, TFlatTitlebarUnit, cxCheckBox, cxTrackBar,
  BassPlayer, cxShellBrowserDialog, cxButtonEdit;

type
  TfrmOptionsDLG = class(TForm)
    layoutOptions: TdxLayoutControl;
    Panel37: TPanel;
    Panel38: TPanel;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    layoutOptionsGroup3: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    lblClose: TcxLabel;
    layoutOptionsItem1: TdxLayoutItem;
    titleMain: TFlatTitlebar;
    edtMediaFolder: TcxButtonEdit;
    layoutOptionsItem2: TdxLayoutItem;
    dlgMediaFolder: TcxShellBrowserDialog;
    chkLoopNowPlaying: TcxCheckBox;
    layoutOptionsItem3: TdxLayoutItem;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblCloseClick(Sender: TObject);
    procedure edtMediaFolderPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure chkLoopNowPlayingPropertiesChange(Sender: TObject);
  private
  public
    procedure ShowOptions;
  end;

var
  frmOptionsDLG: TfrmOptionsDLG;

implementation

uses
  Registry;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmOptionsDLG.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmOptionsDLG.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmOptionsDLG.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmOptionsDLG.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmOptionsDLG.FormCreate(Sender: TObject);
begin
  edtMediaFolder.Text       := cStudioMediaFolder;
  chkLoopNowPlaying.Checked := LoopNowPlaying;
end;
//***********************************************************************************************************

procedure TfrmOptionsDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;
//***********************************************************************************************************

procedure TfrmOptionsDLG.lblCloseClick(Sender: TObject);
var
  Reg: TRegistry;
begin
  Reg         := TRegistry.Create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  try
    if Reg.OpenKey('\Software\109 Studios\109Studios.com\', True) then
    begin
      /////////////////////////////////////
      Reg.WriteBool('LoopNowPlaying', LoopNowPlaying);
      Reg.WriteString('MediaFolder', cStudioMediaFolder);
      /////////////////////////////////////
    end;
  finally
    Reg.CloseKey;
    Reg.Free;
  end;
  Close;
end;
//***********************************************************************************************************

procedure TfrmOptionsDLG.ShowOptions;
begin
  ShowModal;
end;
//***********************************************************************************************************

procedure TfrmOptionsDLG.edtMediaFolderPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  try
    if dlgMediaFolder.Execute then
    begin
      if DirectoryExists(dlgMediaFolder.Path) then
      begin
        edtMediaFolder.Text := dlgMediaFolder.Path;
        cStudioMediaFolder  := edtMediaFolder.Text;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;
//***********************************************************************************************************

procedure TfrmOptionsDLG.chkLoopNowPlayingPropertiesChange(Sender: TObject);
begin
  LoopNowPlaying := chkLoopNowPlaying.Checked;
end;
//***********************************************************************************************************

end.
