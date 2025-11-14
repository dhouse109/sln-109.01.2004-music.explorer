unit mod_Fonts;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Forms,
  ShellAPI,
  Registry;

procedure RegisterStudio109Fonts;

implementation

{$R *.RES}

//***********************************************************************************************************

procedure RegisterStudio109Fonts;
var
  resFont: TResourceStream;
  strFontPath: String;
  chrFontsPath: array[0..MAX_PATH] of char;
begin
  GetWindowsDirectory(chrFontsPath, MAX_PATH);
  strFontPath := String(chrFontsPath) + '\FONTS\';

  if not FileExists(strFontPath + 'OCRAEXT.TTF') then
  begin
    resFont := TResourceStream.Create(0, 'OCRAEXT', RT_RCDATA);
    try
      resFont.SaveToFile(strFontPath + 'OCRAEXT.TTF');
    finally
      resFont.Free;
    end;
    AddFontResource(PChar(strFontPath + 'OCRAEXT.TTF'));
    SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0);
    Application.ProcessMessages;
  end;
end;
//***********************************************************************************************************

end.
