unit frm_About;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_AppModule, dxLayoutControl, cxControls, dat_Main, OleCtrls,
  SHDocVw, ExtCtrls, cxContainer, cxEdit, cxLabel, ShellAPI, HarmFade,
  ThdTimer;

type
  TfrmAbout = class(TfrmAppModule)
    layoutAppModuleGroup1: TdxLayoutGroup;
    lblWebsite: TcxLabel;
    layoutAppModuleItem2: TdxLayoutItem;
    cxLabel2: TcxLabel;
    layoutAppModuleItem3: TdxLayoutItem;
    layoutAppModuleItem1: TdxLayoutItem;
    imgLogo: THarmFade;
    timerLoop: TThreadedTimer;
    layoutAppModuleItem4: TdxLayoutItem;
    llVersion: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure lblWebsiteClick(Sender: TObject);
    procedure timerLoopTimer(Sender: TObject);
  private
  public
  end;

var
  frmAbout: TfrmAbout;

implementation

uses
  frm_Main;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmAbout.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmAbout.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmAbout.FormCreate(Sender: TObject);
begin
  imgLogo.Tag       := 0;
  imgLogo.PicFrom   := frmMain.imgSplash109.Picture;
  imgLogo.PicTo     := frmMain.imgAbout109.Picture;
  timerLoop.Enabled := True;
end;
//***********************************************************************************************************

procedure TfrmAbout.lblWebsiteClick(Sender: TObject);
begin
  ShellExecute(0, nil, cURLAbout, nil, nil, SW_SHOWNORMAL);
end;
//***********************************************************************************************************

procedure TfrmAbout.timerLoopTimer(Sender: TObject);
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

end.
