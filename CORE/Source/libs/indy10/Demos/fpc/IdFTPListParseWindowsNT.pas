{
  $Project$
  $Workfile$
  $Revision$
  $DateUTC$
  $Id$

  This file is part of the Indy (Internet Direct) project, and is offered
  under the dual-licensing agreement described on the Indy website.
  (http://www.indyproject.org/)

  Copyright:
   (c) 1993-2005, Chad Z. Hower and the Indy Pit Crew. All rights reserved.
}
{
  $Log$
}
{
  Rev 1.11    2/16/2005 7:26:52 AM  JPMugaas
  Should handle Microsoft IIS on Windows XP Professional if the
  FtpDirBrowseShowLongDate metadata is enabled.  That causes digit years to be
  outputted instead of two digit years.

  Rev 1.10    10/26/2004 10:03:22 PM  JPMugaas
  Updated refs.

  Rev 1.9    9/7/2004 10:01:12 AM  JPMugaas
  FIxed problem parsing:

  drwx------ 1 user group              0 Sep 07 09:20 xxx

  It was mistakenly being detected as Windows NT because there was a - in the
  fifth and eigth position in the string.  The fix is to detect to see if the
  other chactors in thbat column are numbers.

  I did the same thing to the another part of the detection so that something
  similar doesn't happen there with "-" in Unix listings causing false
  WindowsNT detection.

  Rev 1.8    6/5/2004 3:02:10 PM  JPMugaas
  Indicates SizeAvail = False for a directory.  That is the standard MS-DOS
  Format.

  Rev 1.7    4/20/2004 4:01:14 PM  JPMugaas
  Fix for nasty typecasting error.  The wrong create was being called.

  Rev 1.6    4/19/2004 5:05:16 PM  JPMugaas
  Class rework Kudzu wanted.

  Rev 1.5    2004.02.03 5:45:16 PM  czhower
  Name changes

  Rev 1.4    1/22/2004 4:56:12 PM  SPerry
  fixed set problems

  Rev 1.3    1/22/2004 7:20:54 AM  JPMugaas
  System.Delete changed to IdDelete so the code can work in NET.

  Rev 1.2    10/19/2003 3:48:16 PM  DSiders
  Added localization comments.

  Rev 1.1    9/27/2003 10:45:50 PM  JPMugaas
  Added support for an alternative date format.

  Rev 1.0    2/19/2003 02:01:54 AM  JPMugaas
  Individual parsing objects for the new framework.
}

unit IdFTPListParseWindowsNT;

interface

{$i IdCompilerDefines.inc}

uses
  Classes,
  IdFTPList, IdFTPListParseBase;

{
  Note:
  This parser comes from the code in Indy 9.0's MS-DOS parser.
  It has been renamed Windows NT here because that is more accurate than
  the old name.

  This is really the standard Microsoft IIS FTP Service format.  We have
  tested this parser with Windows NT 4.0, Windows 2000, and Windows XP.

  This parser also handles recursive dir lists.
}

type
  TIdWindowsNTFTPListItem = class(TIdFTPListItem);

  TIdFTPLPWindowsNT = class(TIdFTPListBase)
  protected
    class function MakeNewItem(AOwner : TIdFTPListItems) : TIdFTPListItem; override;
    class function ParseLine(const AItem : TIdFTPListItem; const APath : String = ''): Boolean; override;
  public
    class function GetIdent : String; override;
    class function CheckListing(AListing : TStrings; const ASysDescript : String = ''; const ADetails : Boolean = True): Boolean; override;
    class function ParseListing(AListing : TStrings; ADir : TIdFTPListItems) : Boolean; override;
  end;

const
  WINNTID = 'Windows NT'; {do not localize}

implementation

uses
  IdGlobal, IdFTPCommon, IdGlobalProtocols,
  SysUtils;

{ TIdFTPLPWindowsNT }

class function TIdFTPLPWindowsNT.CheckListing(AListing: TStrings;
  const ASysDescript: String; const ADetails: Boolean): Boolean;
var
  SDir, sSize : String;
  i : Integer;
  SData : String;
begin
  //maybe, we are dealing with this pattern
  //2002-09-02  18:48       <DIR>          DOS dir 2
  //
  //or
  //2002-09-02  19:06                9,730 DOS file 2
  //
  //Those were obtained from soem comments in some FileZilla source-code.
  //FtpListResult.cpp
  //Note that none of that GNU source-code was used.
  //
  //I personally came accross the following when on Microsoft IIS
  //FTP Service on WIndowsXP Pro when I enabled the "FtpDirBrowseShowLongDate"
  //metadata property.
  //
  //02-16-2005  04:16AM       <DIR>          pub

  Result := False;
  for i := 0 to AListing.Count - 1 do
  begin
    if (AListing[i] <> '') and (not IsSubDirContentsBanner(AListing[i])) then
    begin
      SData := UpperCase(AListing[i]);
      sDir := Copy(SData, 25, 5);
      //maybe this is two spacs off.  We don't use TrimLeft at this point
      //because we can't assume that this is a valid WIndows FTP Service listing.

      if sDir = '  <DI' then begin   {do not localize}
        sDir := Copy(SData, 27, 5);
      end;
      sDir := TrimLeft(sDir);
      //This is a workaround for large file sizes such as:

      //09-08-05  10:22AM            628551680 Test.txt
      //09-08-05  10:23AM            628623360 Test2.txt

      if IsNumeric(TrimLeft(sDir)) then begin
        sDir := '';
      end;
      sSize := StringReplace(TrimLeft(Copy(SData, 20, 19)), ',', '', [rfReplaceAll]);    {Do not Localize}
      //VM/BFS does share the date/time format as MS-DOS for the first two columns
  //    if ((CharIsInSet(SData, 3, ['/', '-'])) and (CharIsInSet(SData, 6, ['/', '-']))) then
      if IsMMDDYY(Copy(SData, 1, 8), '-') or IsMMDDYY(Copy(SData, 1, 8), '/') then
      begin
        if sDir = '<DIR>' then begin {do not localize}
          Result := not IsVMBFS(SData);
        end
        else
        begin
          if (sDir = '') and (IndyStrToInt64(sSize, -1) <> -1) then begin
          //may be a file - see if we can get the size if sDir is empty
            Result := not IsVMBFS(SData);
          end;
        end;
      end
      else if IsYYYYMMDD(SData) then
      begin
        if sDir = '<DIR>' then begin {do not localize}
          Result := not IsVMBFS(SData);
        end
        else if (sDir = '') and (IndyStrToInt64(sSize, -1) <> -1) then begin {Do not Localize}
          //may be a file - see if we can get the size if sDir is empty
          Result := not IsVMBFS(SData);
        end;
      end
      else if IsMMDDYY(SData, '-') then {do not localize}
      begin
        {
        It might be like this:
        02-16-2005  04:16AM       <DIR>          pub
        02-14-2005  07:22AM              9112103 ethereal-setup-0.10.9.exe
        }
        if sDir = '<DIR>' then begin {do not localize}
          Result := not IsVMBFS(SData);
        end
        else if (sDir = '') and (IndyStrToInt64(sSize, -1) <> -1) then begin {Do not Localize}
          Result := not IsVMBFS(SData);
        end;
      end;
    end;
  end;
end;

class function TIdFTPLPWindowsNT.GetIdent: String;
begin
  Result := WINNTID;
end;

class function TIdFTPLPWindowsNT.MakeNewItem(AOwner: TIdFTPListItems): TIdFTPListItem;
begin
  Result := TIdWindowsNTFTPListItem.Create(AOwner);
end;

class function TIdFTPLPWindowsNT.ParseLine(const AItem: TIdFTPListItem;
  const APath: String): Boolean;
var
  LModified: string;
  LTime: string;
  LName: string;
  LValue: string;
  LBuffer: string;
  LPosMarker : Integer;
begin
  //Note that there is quite a bit of duplicate code in this if.
  //That is because there are two similar forms but the dates are in
  //different forms and have to be processed differently.
  if IsNumeric(Copy(AItem.Data, 1, 4)) and (not IsNumeric(Copy(AItem.Data, 5, 1))) then
  begin
    LModified := Copy(AItem.Data, 1, 4) + '/' +  {do not localize}
                 Copy(AItem.Data, 6, 2) + '/' +  {do not localize}
                 Copy(AItem.Data, 9, 2) + ' ';   {do not localize}

    LBuffer := Trim(Copy(AItem.Data, 11, MaxInt));
    // Scan time info
    LTime := Fetch(LBuffer);
    // Scan optional letter in a[m]/p[m]
    LModified := LModified + LTime;
    // Convert modified to date time
    try
      AItem.ModifiedDate := DateYYMMDD(Fetch(LModified));
      AItem.ModifiedDate := AItem.ModifiedDate + TimeHHMMSS(LModified);
    except
      AItem.ModifiedDate := 0.0;
    end;
  end else
  begin
    LBuffer := AItem.Data;
    //get the date
    LModified := Fetch(LBuffer);
    LBuffer := TrimLeft(LBuffer);
    // Scan time info
    LTime := Fetch(LBuffer);
    // Scan optional letter in a[m]/p[m]
    LModified := LModified + ' ' + LTime; {do not localize}
    // Convert modified to date time
    try
      AItem.ModifiedDate := DateMMDDYY(Fetch(LModified));
      AItem.ModifiedDate := AItem.ModifiedDate + TimeHHMMSS(LModified);
    except
      AItem.ModifiedDate := 0.0;
    end;
  end;

  LBuffer := Trim(LBuffer);

  // Scan file size or dir marker
  LValue := Fetch(LBuffer);

  // Strip commas or StrToInt64Def will barf
  if IndyPos(',', LValue) <> 0 then begin   {Do not Localize}
    LValue := StringReplace(LValue, ',', '', [rfReplaceAll]);    {Do not Localize}
  end;

  // What did we get?
  if TextIsSame(LValue, '<DIR>') then    {Do not Localize}
  begin
    AItem.ItemType := ditDirectory;
    AItem.SizeAvail := False;
  end else
  begin
    AItem.ItemType := ditFile;
    AItem.Size := IndyStrToInt64(LValue, 0);
  end;

  //We do things this way because a space starting a file name is legel
  if AItem.ItemType = ditDirectory then begin
    LPosMarker := 10;
  end else begin
    LPosMarker := 1;
  end;

  // Rest of the buffer is item name
  AItem.LocalFileName := LName;
  LName := Copy(LBuffer, LPosMarker, MaxInt);
  if APath <> '' then
  begin
    //MS_DOS_CURDIR
    AItem.LocalFileName := LName;
    LName := APath + PATH_FILENAME_SEP_DOS + LName;
    if TextStartsWith(LName, MS_DOS_CURDIR) then begin
      IdDelete(LName, 1, Length(MS_DOS_CURDIR));
    end;
  end;
  AItem.FileName := LName;
  Result := True;
end;

class function TIdFTPLPWindowsNT.ParseListing(AListing: TStrings;
  ADir: TIdFTPListItems): Boolean;
var
  i : Integer;
  LPathSpec : String;
  LItem : TIdFTPListItem;
begin
  for i := 0 to AListing.Count -1 do
  begin
    if AListing[i] <> '' then
    begin
      if IsSubDirContentsBanner(AListing[i]) then begin
        LPathSpec := Copy(AListing[i], 1, Length(AListing[i])-1);
      end else
      begin
        LItem := MakeNewItem(ADir);
        LItem.Data := AListing[i];
        Result := ParseLine(LItem, LPathSpec);
        if not Result then begin
          FreeAndNil(LItem);
          Exit;
        end
      end;
    end;
  end;
  Result := True;
end;

initialization
  RegisterFTPListParser(TIdFTPLPWindowsNT);
finalization
  UnRegisterFTPListParser(TIdFTPLPWindowsNT);

end.
