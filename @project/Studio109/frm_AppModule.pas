unit frm_AppModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dat_Main, ExtCtrls, dxLayoutControl, cxControls;

type
  TfrmAppModule = class(TForm)
    layoutAppModuleGroup_Root: TdxLayoutGroup;
    layoutAppModule: TdxLayoutControl;
  private
  public
    procedure CreateParams(var Params: TCreateParams); override;
    procedure PrepareModule; virtual;
    procedure PrepareActive; virtual;
  end;

var
  frmAppModule: TfrmAppModule;

implementation

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmAppModule.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;
//***********************************************************************************************************

procedure TfrmAppModule.PrepareModule;
begin
//
end;
//***********************************************************************************************************

procedure TfrmAppModule.PrepareActive;
begin
//
end;
//***********************************************************************************************************

end.
