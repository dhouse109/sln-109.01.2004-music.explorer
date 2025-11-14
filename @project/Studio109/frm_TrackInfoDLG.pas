unit frm_TrackInfoDLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dat_Main, cxButtons, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls, cxControls,
  Mask, cxLabel, ShellAPI, TFlatTitlebarUnit, cxCheckBox, cxTrackBar,
  BassPlayer;

type
  TfrmTrackInfoDLG = class(TForm)
    layoutTrackInfo: TdxLayoutControl;
    Panel37: TPanel;
    Panel38: TPanel;
    lblEdit: TcxLabel;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    layoutTrackInfoItem4: TdxLayoutItem;
    layoutTrackInfoGroup3: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    lblClose: TcxLabel;
    layoutTrackInfoItem1: TdxLayoutItem;
    titleMain: TFlatTitlebar;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblEditClick(Sender: TObject);
    procedure lblCloseClick(Sender: TObject);
  private
  public
    procedure ShowLocalTrackInfo(ALocalTrackID: Integer);
  end;

var
  frmTrackInfoDLG: TfrmTrackInfoDLG;

implementation

uses
  frm_Main;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmTrackInfoDLG.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmTrackInfoDLG.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmTrackInfoDLG.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmTrackInfoDLG.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmTrackInfoDLG.FormCreate(Sender: TObject);
begin
//
end;
//***********************************************************************************************************

procedure TfrmTrackInfoDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;
//***********************************************************************************************************

procedure TfrmTrackInfoDLG.lblEditClick(Sender: TObject);
begin
//
end;
//***********************************************************************************************************

procedure TfrmTrackInfoDLG.lblCloseClick(Sender: TObject);
begin
  Close;
end;
//***********************************************************************************************************

procedure TfrmTrackInfoDLG.ShowLocalTrackInfo(ALocalTrackID: Integer);
begin
  ShowModal;
end;
//***********************************************************************************************************


end.
