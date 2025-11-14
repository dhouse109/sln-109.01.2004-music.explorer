unit frm_EqualizerDLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dat_Main, cxButtons, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls, cxControls,
  Mask, cxLabel, ShellAPI, TFlatTitlebarUnit, cxCheckBox, cxTrackBar,
  BassPlayer, dxBar;

type
  TfrmEqualizerDLG = class(TForm)
    layoutEqualizer: TdxLayoutControl;
    Panel37: TPanel;
    Panel38: TPanel;
    lblPreset: TcxLabel;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    layoutEqualizerItem2: TdxLayoutItem;
    layoutEqualizerItem4: TdxLayoutItem;
    layoutEqualizerGroup3: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    lblClose: TcxLabel;
    layoutEqualizerItem1: TdxLayoutItem;
    titleMain: TFlatTitlebar;
    trackEQ01: TcxTrackBar;
    layoutEqualizerItem3: TdxLayoutItem;
    layoutEqualizerGroup1: TdxLayoutGroup;
    trackEQ02: TcxTrackBar;
    trackEQ03: TcxTrackBar;
    trackEQ04: TcxTrackBar;
    trackEQ05: TcxTrackBar;
    trackEQ06: TcxTrackBar;
    trackEQ07: TcxTrackBar;
    trackEQ08: TcxTrackBar;
    trackEQ09: TcxTrackBar;
    trackEQ10: TcxTrackBar;
    layoutEqualizerItem7: TdxLayoutItem;
    layoutEqualizerItem8: TdxLayoutItem;
    layoutEqualizerItem9: TdxLayoutItem;
    layoutEqualizerItem10: TdxLayoutItem;
    layoutEqualizerItem11: TdxLayoutItem;
    layoutEqualizerItem12: TdxLayoutItem;
    layoutEqualizerItem13: TdxLayoutItem;
    layoutEqualizerItem14: TdxLayoutItem;
    layoutEqualizerItem15: TdxLayoutItem;
    chkUseEQ: TcxCheckBox;
    barEQ: TdxBarManager;
    mnuReset: TdxBarButton;
    popmnuPreset: TdxBarPopupMenu;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblPresetClick(Sender: TObject);
    procedure lblCloseClick(Sender: TObject);
    procedure chkUseEQClick(Sender: TObject);
    procedure trackEQPropertiesChange(Sender: TObject);
    procedure mnuResetClick(Sender: TObject);
  private
  public
    procedure PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
  end;

var
  frmEqualizerDLG: TfrmEqualizerDLG;

implementation

uses
  Registry;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmEqualizerDLG.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmEqualizerDLG.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmEqualizerDLG.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmEqualizerDLG.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmEqualizerDLG.PopMenuPopup_Bottom(APopupMenu: TdxBarPopupMenu; ALabel: TcxLabel; ALayout: TdxLayoutControl);
var
  P: TPoint;
begin
  P.X := ALabel.Left;
  P.Y := ALabel.Top  + ALabel.Height + 1;
  P   := ALayout.ClientToScreen(P);
  APopupMenu.Popup(P.X, P.Y);
end;
//***********************************************************************************************************

procedure TfrmEqualizerDLG.FormCreate(Sender: TObject);
begin
  trackEQ01.Position := ((Trunc(EQGains[0]) + 15) * -1) + 30;
  trackEQ02.Position := ((Trunc(EQGains[1]) + 15) * -1) + 30;
  trackEQ03.Position := ((Trunc(EQGains[2]) + 15) * -1) + 30;
  trackEQ04.Position := ((Trunc(EQGains[3]) + 15) * -1) + 30;
  trackEQ05.Position := ((Trunc(EQGains[4]) + 15) * -1) + 30;
  trackEQ06.Position := ((Trunc(EQGains[5]) + 15) * -1) + 30;
  trackEQ07.Position := ((Trunc(EQGains[6]) + 15) * -1) + 30;
  trackEQ08.Position := ((Trunc(EQGains[7]) + 15) * -1) + 30;
  trackEQ09.Position := ((Trunc(EQGains[8]) + 15) * -1) + 30;
  trackEQ10.Position := ((Trunc(EQGains[9]) + 15) * -1) + 30;
  chkUseEQ.Checked   := UseEQ;
end;
//***********************************************************************************************************

procedure TfrmEqualizerDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;
//***********************************************************************************************************

procedure TfrmEqualizerDLG.lblPresetClick(Sender: TObject);
begin
  PopMenuPopup_Bottom(popmnuPreset, lblPreset, layoutEqualizer);
end;
//***********************************************************************************************************

procedure TfrmEqualizerDLG.lblCloseClick(Sender: TObject);
var
  Reg: TRegistry;
begin
  Reg         := TRegistry.Create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  try
    if Reg.OpenKey('\Software\109 Studios\109Studios.com\', True) then
    begin
      /////////////////////////////////////
      Reg.WriteFloat('EQ0', EQGains[0]);
      Reg.WriteFloat('EQ1', EQGains[1]);
      Reg.WriteFloat('EQ2', EQGains[2]);
      Reg.WriteFloat('EQ3', EQGains[3]);
      Reg.WriteFloat('EQ4', EQGains[4]);
      Reg.WriteFloat('EQ5', EQGains[5]);
      Reg.WriteFloat('EQ6', EQGains[6]);
      Reg.WriteFloat('EQ7', EQGains[7]);
      Reg.WriteFloat('EQ8', EQGains[8]);
      Reg.WriteFloat('EQ9', EQGains[9]);
      Reg.WriteBool('UseEQ', UseEQ);
      /////////////////////////////////////
    end;
  finally
    Reg.CloseKey;
    Reg.Free;
  end;
  Close;
end;
//***********************************************************************************************************

procedure TfrmEqualizerDLG.chkUseEQClick(Sender: TObject);
begin
  if chkUseEQ.Checked then
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects + [Equalizer]
  else
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects - [Equalizer];

  UseEQ := chkUseEQ.Checked;
end;
//***********************************************************************************************************

procedure TfrmEqualizerDLG.trackEQPropertiesChange(Sender: TObject);
var
   BandNum : integer;
begin
   BandNum             := (Sender as TcxTrackBar).Tag - 1;
   EQGains[BandNum]    := (-1.0 * ((Sender as TcxTrackBar).Position - 30.0)) - 15.0;
   BassPlayer1.EQGains := EQGains;
end;
//***********************************************************************************************************

procedure TfrmEqualizerDLG.mnuResetClick(Sender: TObject);
begin
  LockWindowUpdate(Self.Handle);
  trackEQ01.Position := 15;
  trackEQ02.Position := 15;
  trackEQ03.Position := 15;
  trackEQ04.Position := 15;
  trackEQ05.Position := 15;
  trackEQ06.Position := 15;
  trackEQ07.Position := 15;
  trackEQ08.Position := 15;
  trackEQ09.Position := 15;
  trackEQ10.Position := 15;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

end.
