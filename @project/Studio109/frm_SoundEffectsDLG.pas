unit frm_SoundEffectsDLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dat_Main, cxButtons, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls, cxControls,
  Mask, cxLabel, ShellAPI, TFlatTitlebarUnit, cxCheckBox, cxTrackBar,
  BassPlayer;

type
  TfrmSoundEffectsDLG = class(TForm)
    layoutSoundEffects: TdxLayoutControl;
    Panel37: TPanel;
    Panel38: TPanel;
    lblReset: TcxLabel;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    layoutSoundEffectsItem2: TdxLayoutItem;
    layoutSoundEffectsItem4: TdxLayoutItem;
    layoutSoundEffectsGroup3: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    lblClose: TcxLabel;
    layoutSoundEffectsItem1: TdxLayoutItem;
    titleMain: TFlatTitlebar;
    trackEcho: TcxTrackBar;
    layoutSoundEffectsItem3: TdxLayoutItem;
    layoutSoundEffectsGroup1: TdxLayoutGroup;
    trackReverb: TcxTrackBar;
    layoutSoundEffectsItem7: TdxLayoutItem;
    chkEcho: TcxCheckBox;
    chkReverb: TcxCheckBox;
    chkFlanger: TcxCheckBox;
    layoutSoundEffectsItem5: TdxLayoutItem;
    layoutSoundEffectsItem6: TdxLayoutItem;
    layoutSoundEffectsGroup2: TdxLayoutGroup;
    layoutSoundEffectsGroup4: TdxLayoutGroup;
    layoutSoundEffectsAlignmentConstraint1: TdxLayoutAlignmentConstraint;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblResetClick(Sender: TObject);
    procedure lblCloseClick(Sender: TObject);
    procedure chkEchoClick(Sender: TObject);
    procedure chkReverbClick(Sender: TObject);
    procedure chkFlangerClick(Sender: TObject);
    procedure trackEchoPropertiesChange(Sender: TObject);
    procedure trackReverbPropertiesChange(Sender: TObject);
  private
  public
  end;

var
  frmSoundEffectsDLG: TfrmSoundEffectsDLG;

implementation

uses
  Registry;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmSoundEffectsDLG.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmSoundEffectsDLG.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmSoundEffectsDLG.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmSoundEffectsDLG.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmSoundEffectsDLG.FormCreate(Sender: TObject);
begin
  trackEcho.Position   := (BassPlayer1.EchoLevel   * -1) + 32;
  trackReverb.Position := (BassPlayer1.ReverbLevel * -1) + 32;
  chkEcho.Checked      := UseEcho;
  chkReverb.Checked    := UseReverb;
  chkFlanger.Checked   := UseFlanger;
end;
//***********************************************************************************************************

procedure TfrmSoundEffectsDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;
//***********************************************************************************************************

procedure TfrmSoundEffectsDLG.lblResetClick(Sender: TObject);
begin
  LockWindowUpdate(Self.Handle);
  trackEcho.Position   := 16;
  trackReverb.Position := 16;
  LockWindowUpdate(0);
end;
//***********************************************************************************************************

procedure TfrmSoundEffectsDLG.lblCloseClick(Sender: TObject);
var
  Reg: TRegistry;
begin
  Reg         := TRegistry.Create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  try
    if Reg.OpenKey('\Software\109 Studios\109Studios.com\', True) then
    begin
      /////////////////////////////////////
      Reg.WriteInteger('EchoLevel', EchoLevel);
      Reg.WriteInteger('ReverbLevel', ReverbLevel);
      Reg.WriteBool('UseEcho', UseEcho);
      Reg.WriteBool('UseReverb', UseReverb);
      Reg.WriteBool('UseFlanger', UseFlanger);
      /////////////////////////////////////
    end;
  finally
    Reg.CloseKey;
    Reg.Free;
  end;
  Close;
end;
//***********************************************************************************************************

procedure TfrmSoundEffectsDLG.chkEchoClick(Sender: TObject);
begin
  if chkEcho.Checked then
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects + [Echo]
  else
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects - [Echo];

  UseEcho := chkEcho.Checked;
end;
//***********************************************************************************************************

procedure TfrmSoundEffectsDLG.chkReverbClick(Sender: TObject);
begin
  if chkReverb.Checked then
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects + [Reverb]
  else
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects - [Reverb];

  UseReverb := chkReverb.Checked;
end;
//***********************************************************************************************************

procedure TfrmSoundEffectsDLG.chkFlangerClick(Sender: TObject);
begin
  if chkFlanger.Checked then
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects + [Flanger]
  else
     BassPlayer1.SoundEffects := BassPlayer1.SoundEffects - [Flanger];

  UseFlanger := chkFlanger.Checked;
end;
//***********************************************************************************************************

procedure TfrmSoundEffectsDLG.trackEchoPropertiesChange(Sender: TObject);
begin
  BassPlayer1.EchoLevel := (trackEcho.Position * -1) + 32;
  EchoLevel             := BassPlayer1.EchoLevel;
end;
//***********************************************************************************************************

procedure TfrmSoundEffectsDLG.trackReverbPropertiesChange(Sender: TObject);
begin
  BassPlayer1.ReverbLevel := (trackReverb.Position * -1) + 32;
  ReverbLevel             := BassPlayer1.ReverbLevel;
end;
//***********************************************************************************************************

end.
