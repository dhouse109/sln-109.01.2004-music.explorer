unit frm_AddFolderDLG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dat_Main, cxButtons, dxLayoutControl, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls, cxControls,
  Mask, cxLabel, ShellAPI, TFlatTitlebarUnit, cxShellBrowserDialog,
  cxCheckBox, cxButtonEdit, cxProgressBar, mod_FileInfo, BassPlayer, PluginCtrl;

type
  TfrmAddFolderDLG = class(TForm)
    layoutAddFolder: TdxLayoutControl;
    Panel37: TPanel;
    Panel38: TPanel;
    lblStartScan: TcxLabel;
    lblCancel: TcxLabel;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    layoutAddFolder_PathToScan: TdxLayoutItem;
    layoutAddFolder_IncludeSub: TdxLayoutItem;
    layoutAddFolderGroup3: TdxLayoutGroup;
    layoutAddFolderItem5: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    titleMain: TFlatTitlebar;
    layoutMain_lblScanStatus: TdxLayoutItem;
    layoutMain_lblScanStatus_Count: TdxLayoutItem;
    layoutMain_progScanStatus: TdxLayoutItem;
    lblScanStatus: TcxLabel;
    lblScanStatus_Count: TcxLabel;
    progScanStatus: TcxProgressBar;
    edtPathToScan: TcxButtonEdit;
    chkRecurseSubDirs: TcxCheckBox;
    dlgPathToScan: TcxShellBrowserDialog;
    procedure cxLabelMouseEnter(Sender: TObject);
    procedure cxLabelMouseLeave(Sender: TObject);
    procedure cxLabelMouseEnterWhite(Sender: TObject);
    procedure cxLabelMouseLeaveWhite(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblStartScanClick(Sender: TObject);
    procedure lblCancelClick(Sender: TObject);
    procedure edtPathToScanPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormActivate(Sender: TObject);
  private
    FScanning: Boolean;
    FCancelScan: Boolean;
    FFilePath: String;
    {$WARNINGS OFF}
    function FindFiles(const filespec: TFileName; RecurseSubFolders: Boolean = true; attributes: integer = faReadOnly Or faHidden Or faSysFile Or faArchive): TStringList;
    {$WARNINGS ON}
    function GetFileList(APath: String; ARecurse: Boolean): TStringList;
  public
    property FilePath: String read FFilePath write FFilePath;
  end;

var
  frmAddFolderDLG: TfrmAddFolderDLG;

implementation

uses
  DB;

{$R *.dfm}

//***********************************************************************************************************

procedure TfrmAddFolderDLG.cxLabelMouseEnter(Sender: TObject);
begin
  datMain.cxLabelMouseEnter(Sender);
end;
//***********************************************************************************************************

procedure TfrmAddFolderDLG.cxLabelMouseLeave(Sender: TObject);
begin
  datMain.cxLabelMouseLeave(Sender);
end;
//***********************************************************************************************************

procedure TfrmAddFolderDLG.cxLabelMouseEnterWhite(Sender: TObject);
begin
  datMain.cxLabelMouseEnterWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmAddFolderDLG.cxLabelMouseLeaveWhite(Sender: TObject);
begin
  datMain.cxLabelMouseLeaveWhite(Sender);
end;
//***********************************************************************************************************

procedure TfrmAddFolderDLG.FormCreate(Sender: TObject);
begin
  FFilePath   := EmptyStr;
  FScanning   := False;
  FCancelScan := False;
  datMain.tblTracks.DisableControls;

  layoutMain_lblScanStatus.Visible       := False;
  layoutMain_lblScanStatus_Count.Visible := False;
  layoutMain_progScanStatus.Visible      := False;
  lblScanStatus_Count.Caption            := '';
  progScanStatus.Properties.Min          := 0;
  progScanStatus.Properties.Max          := 100;
  progScanStatus.Position                := 0;
end;
//***********************************************************************************************************

procedure TfrmAddFolderDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  datMain.tblTracks.EnableControls;
  Action := caFree;
end;
//***********************************************************************************************************

procedure TfrmAddFolderDLG.lblStartScanClick(Sender: TObject);
var
  I: Integer;
  strlstTotalMediaFound: TStringList;
  RecurseSubDirs: Boolean;
  AFileInfo: TFileInfo;
  dateCreated: TDateTime;
  dateAccessed: TDateTime;
  dateModified: TDateTime;
  strPath: String;
  strFileName: String;
  AlreadyExists: Boolean;

  AStreamInfo: TStreamInfo;
  ASupportedBy: TSupportedBy;
begin
  RecurseSubDirs := False;
  if FFilePath = EmptyStr then
  begin
    if edtPathToScan.Text = EmptyStr then
    begin
      MessageDlg('Enter a directory path to scan first.', mtError, [mbOK], 0);
      Exit;
    end;

    strPath := edtPathToScan.Text;
    if strPath[Length(strPath)] <> '\' then
       strPath := strPath + '\';
    RecurseSubDirs := chkRecurseSubDirs.Checked;

    if not DirectoryExists(strPath) then
    begin
      MessageDlg('Path not found.', mtError, [mbOK], 0);
      Exit;
    end;
  end;

  FScanning       := True;
  FCancelScan     := False;
  vCancelFindFile := False;

  edtPathToScan.Enabled              := False;
  chkRecurseSubDirs.Enabled          := False;
  layoutAddFolder_PathToScan.Visible := False;
  layoutAddFolder_IncludeSub.Visible := False;

  lblScanStatus_Count.Caption            := 'Searching for files . . .';
  layoutMain_lblScanStatus.Visible       := True;
  layoutMain_lblScanStatus_Count.Visible := True;
  layoutMain_progScanStatus.Visible      := True;
  lblStartScan.Enabled                   := False;
  Self.Repaint;
  Self.Refresh;
  Application.ProcessMessages;
  strlstTotalMediaFound := TStringList.Create;
  AFileInfo  := TFileInfo.Create('');

  try

    if FFilePath = EmptyStr then
       strlstTotalMediaFound := GetFileList(strPath, RecurseSubDirs)
    else
       strlstTotalMediaFound.Add(FFilePath);

    Application.ProcessMessages;
    if FCancelScan then
    begin
      if Assigned(strlstTotalMediaFound) then
         strlstTotalMediaFound.Free;

      Self.Repaint;
      FScanning := False;
      Close;
      Exit;
    end;

    progScanStatus.Properties.Min := 0;
    progScanStatus.Properties.Max := strlstTotalMediaFound.Count;
    progScanStatus.Position       := 0;
    lblScanStatus_Count.Caption   := Format('Importing %d of %d files found', [Round(progScanStatus.Position), Round(progScanStatus.Properties.Max)]);
    Self.Repaint;

    for I := 0 to strlstTotalMediaFound.Count - 1 do
    begin
      strFileName   := strlstTotalMediaFound.Strings[I];
      AlreadyExists := False;
      if datMain.tblTracks.Locate('FilePath', strFileName, [loCaseInsensitive]) then
         AlreadyExists := True;

      if not AlreadyExists then
      begin
        try
          AFileInfo := TFileInfo.Create(strFileName);
          if Assigned(AFileInfo) then
          begin
            try
              if datMain.tblTracks.State in [dsInsert, dsEdit] then
                 datMain.tblTracks.Cancel;

              datMain.tblTracks.Append;
              AFileInfo.GetDateTime(dateCreated, dateAccessed, dateModified);
              datMain.tblTracks.FieldByName('FilePath').AsString       := AFileInfo.GetFileNameFull;
              datMain.tblTracks.FieldByName('FileName').AsString       := AFileInfo.GetFileNameDisplay;
              datMain.tblTracks.FieldByName('FileSize').AsInteger      := AFileInfo.GetFileSize;
              datMain.tblTracks.FieldByName('FileSizeText').AsString   := FormatFileSizeValue(AFileInfo.GetFileSize);
              datMain.tblTracks.FieldByName('DateCreated').AsDateTime  := dateCreated;
              datMain.tblTracks.FieldByName('Rating').AsInteger        := 0;
              datMain.tblTracks.FieldByName('DateImported').AsDateTime := Now;

              AStreamInfo.Artist     := EmptyStr;
              AStreamInfo.Title      := EmptyStr;
              AStreamInfo.Album      := EmptyStr;
              AStreamInfo.Genre      := EmptyStr;
              AStreamInfo.Duration   := 0;
              AStreamInfo.SampleRate := 0;
              AStreamInfo.BitRate    := 0;
              AStreamInfo.Channels   := 0;

              if (BassPlayer1.GetStreamInfo(strFileName, AStreamInfo, ASupportedBy)) and (Trim(AStreamInfo.Title) <> EmptyStr) then
              begin
                datMain.tblTracks.FieldByName('AVArtist').AsString     := AStreamInfo.Artist;
                datMain.tblTracks.FieldByName('AVTitle').AsString      := AStreamInfo.Title;
                datMain.tblTracks.FieldByName('AVAlbum').AsString      := AStreamInfo.Album;
                datMain.tblTracks.FieldByName('AVGenre').AsString      := AStreamInfo.Genre;
                datMain.tblTracks.FieldByName('AVDuration').AsString   := FormatDateTime('hh:nn:ss', datMain.SecondsToTime(Round(AStreamInfo.Duration / 1000)));
                datMain.tblTracks.FieldByName('AVSampleRate').AsString := IntToStr(AStreamInfo.SampleRate);
                datMain.tblTracks.FieldByName('AVBitRate').AsString    := IntToStr(AStreamInfo.BitRate);
                datMain.tblTracks.FieldByName('AVMode').AsString       := IntToStr(AStreamInfo.Channels);
              end
              else
              begin
                datMain.tblTracks.FieldByName('AVTitle').AsString := Copy(AFileInfo.GetFileNameDisplay, 1, Length(AFileInfo.GetFileNameDisplay) - Length(ExtractFileExt(AFileInfo.GetFileNameDisplay)));
                if AStreamInfo.Duration > 0 then
                   datMain.tblTracks.FieldByName('AVDuration').AsString   := FormatDateTime('hh:nn:ss', datMain.SecondsToTime(Round(AStreamInfo.Duration / 1000)))
                else
                   datMain.tblTracks.FieldByName('AVDuration').AsString   := '00:00:00';
              end;
              datMain.tblTracks.Post;
            except
              if datMain.tblTracks.State in [dsInsert, dsEdit] then
                 datMain.tblTracks.Cancel;
            end;
          end;
        except
          //
        end;
      end;
      progScanStatus.Position     := progScanStatus.Position + 1;
      lblScanStatus_Count.Caption := Format('Importing %d of %d files found', [Round(progScanStatus.Position), Round(progScanStatus.Properties.Max)]);
      Self.Repaint;
      Self.Refresh;
      Application.ProcessMessages;
      if FCancelScan then
      begin
        FScanning := False;
        Close;
        Break;
      end;
    end;

    try
    {$WARNINGS OFF}
      if Assigned(AFileInfo) then
         AFileInfo.Free;
      if Assigned(strlstTotalMediaFound) then
         strlstTotalMediaFound.Free;
    {$WARNINGS ON}
    except
    end;
    FScanning := False;
    Self.Repaint;
    Close;
  except
    try
    {$WARNINGS OFF}
      if Assigned(AFileInfo) then
         AFileInfo.Free;
      if Assigned(strlstTotalMediaFound) then
         strlstTotalMediaFound.Free;
    {$WARNINGS ON}
    except
    end;
    FScanning := False;
    Self.Repaint;
    Close;
  end;
end;
//***********************************************************************************************************

procedure TfrmAddFolderDLG.lblCancelClick(Sender: TObject);
begin
  if not FScanning then
  begin
    Close;
  end
  else
  begin
    FCancelScan := True;
    FScanning   := False;
  end;
end;
//***********************************************************************************************************

procedure TfrmAddFolderDLG.edtPathToScanPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  try
    if dlgPathToScan.Execute then
    begin
      edtPathToScan.Text := dlgPathToScan.Path;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;
//***********************************************************************************************************

function TfrmAddFolderDLG.FindFiles(const filespec: TFileName; RecurseSubFolders: Boolean; attributes: integer): TStringList;
var
  spec: string;
  list: TStringList;

  procedure RFindFile(const folder: TFileName);
  var
    SearchRec: TSearchRec;
  begin
    // Locate all matching files in the current
    // folder and add their names to the list
    if FindFirst(folder + spec, attributes, SearchRec)=0 then
    begin
      try
        repeat
          begin
            if (SearchRec.Attr and faDirectory = 0) or (SearchRec.Name<>'.') and (SearchRec.Name<>'..') then
               list.Add(folder + SearchRec.Name);
            Application.ProcessMessages;
            if FCancelScan then
            begin
              FindClose(SearchRec);
              Exit;
            end;
          end
        until
          FindNext(SearchRec) <> 0;
      except
        FindClose(SearchRec);
        raise;
      end;
      FindClose(SearchRec);
    end;

    Application.ProcessMessages;
    if FCancelScan then
       Exit;

    // Now search the subfolders
    if RecurseSubFolders and (FindFirst(folder + '*', attributes Or faDirectory, SearchRec) = 0) then
    begin
      try
        repeat
          begin
            if ((SearchRec.Attr and faDirectory) <> 0) and (SearchRec.Name<>'.') and (SearchRec.Name<>'..') then
               RFindFile(folder + SearchRec.Name + '\');
            Application.ProcessMessages;
            if FCancelScan then
            begin
              FindClose(SearchRec);
              Exit;
            end;
          end
        until
          FindNext(SearchRec) <> 0;
      except
        FindClose(SearchRec);
        raise;
      end;
      FindClose(SearchRec);
    end;

    Application.ProcessMessages;
    if FCancelScan then
       Exit;

  end;

begin
{$WARNINGS OFF}
  Result := TStringList.Create;
  Application.ProcessMessages;
  if FCancelScan then
     Exit;

  list := TStringList.Create;
  try
    spec   := ExtractFileName(filespec);
    RFindFile(ExtractFilePath(filespec));
    Result := list;
  except
    list.Free;
    raise;
  end;
{$WARNINGS ON}
end;
//***********************************************************************************************************

function TfrmAddFolderDLG.GetFileList(APath: String; ARecurse: Boolean): TStringList;
var
  I: Integer;
  strlstMediaFound: TStringList;
begin
  if APath[Length(APath)] <> '\' then
     APath := APath + '\';

  strlstMediaFound := TStringList.Create;
  Result           := TStringList.Create;

  for I := 0 to datMain.FileMask_Audio.Count - 1 do
  begin
    try
      strlstMediaFound := FindFiles(APath + datMain.FileMask_Audio.Strings[I], ARecurse);
      Application.ProcessMessages;
      if Assigned(strlstMediaFound) then
         Result.AddStrings(strlstMediaFound);
    except
    end;
  end;

  try
    if Assigned(strlstMediaFound) then
       strlstMediaFound.Free;
  except
  end;
end;
//***********************************************************************************************************

procedure TfrmAddFolderDLG.FormActivate(Sender: TObject);
begin
  if FFilePath <> EmptyStr then
  begin
    Self.Repaint;
    Self.Refresh;
    Application.ProcessMessages;
    lblStartScanClick(Self);
  end;
end;
//***********************************************************************************************************

end.
