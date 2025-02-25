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
  Rev 1.9    10.10.2004 13:46:00  ARybin
  dont add default port to URI

  Rev 1.8    2004.02.03 5:44:40 PM  czhower
  Name changes

  Rev 1.7    2004.01.22 5:27:24 PM  czhower
  Fixed compile errors.

  Rev 1.6    1/22/2004 4:06:56 PM  SPerry
  fixed set problems

  Rev 1.5    10/5/2003 11:44:24 PM  GGrieve
  Use IsLeadChar

  Rev 1.4    6/9/2003 9:35:58 PM  BGooijen
  %00 is valid now too

  Rev 1.3    2003.05.09 10:30:16 PM  czhower

  Rev 1.2    2003.04.11 9:41:34 PM  czhower

  Rev 1.1    29/11/2002 9:56:10 AM  SGrobety    Version: 1.1
  Changed URL encoding

  Rev 1.0    21/11/2002 12:42:52 PM  SGrobety    Version: Indy 10

  Rev 1.0    11/13/2002 08:04:10 AM  JPMugaas
}

unit IdURI;

{Details of implementation
-------------------------
2002-Apr-14 Peter Mee
- Fixed reset.  Now resets FParams as well - wasn't before.
2001-Nov Doychin Bondzhev
 - Fixes in URLEncode. There is difference when encoding Path+Doc and Params
2001-Oct-17 Peter Mee
 - Minor speed improvement - removed use of NormalizePath in SetURI.
 - Fixed bug that was cutting off the first two chars of the host when a
    username / password present.
 - Fixed bug that prevented username and password being updated.
 - Fixed bug that was leaving the bookmark in the document when no ? or =
    parameters existed.
2001-Feb-18 Doychin Bondzhev
 - Added UserName and Password to support URI's like
    http://username:password@hostname:port/path/document#bookmark
}

interface

{$i IdCompilerDefines.inc}

uses
  IdException,
  IdGlobal;

type
  TIdURIOptionalFields = (ofAuthInfo, ofBookmark);
  TIdURIOptionalFieldsSet = set of TIdURIOptionalFields;

  TIdURI = class
  protected
    FDocument: string;
    FProtocol: string;
    FURI: String;
    FPort: string;
    Fpath: string;
    FHost: string;
    FBookmark: string;
    FUserName: string;
    FPassword: string;
    FParams: string;
    FIPVersion: TIdIPVersion;
    //
    procedure SetURI(const Value: String);
    function GetURI: String;
  public
    constructor Create(const AURI: string = ''); virtual;    {Do not Localize}
    function GetFullURI(const AOptionalFields: TIdURIOptionalFieldsSet = [ofAuthInfo, ofBookmark]): String;
    function GetPathAndParams: String;
    class procedure NormalizePath(var APath: string);
    class function URLDecode(ASrc: string): string;
    class function URLEncode(const ASrc: string): string;
    class function ParamsEncode(const ASrc: string): string;
    class function PathEncode(const ASrc: string): string;
    //
    property Bookmark : string read FBookmark write FBookMark;
    property Document: string read FDocument write FDocument;
    property Host: string read FHost write FHost;
    property Password: string read FPassword write FPassword;
    property Path: string read FPath write FPath;
    property Params: string read FParams write FParams;
    property Port: string read FPort write FPort;
    property Protocol: string read FProtocol write FProtocol;
    property URI: string read GetURI write SetURI;
    property Username: string read FUserName write FUserName;
    property IPVersion : TIdIPVersion read FIPVersion write FIPVersion;
  end;

  EIdURIException = class(EIdException);

implementation

uses
  IdResourceStringsProtocols, IdGlobalProtocols, SysUtils;

constructor TIdURI.Create(const AURI: string = '');    {Do not Localize}
begin
  inherited Create;
  if length(AURI) > 0 then begin
    URI := AURI;
  end;
end;

class procedure TIdURI.NormalizePath(var APath: string);
var
  i: Integer;
begin
  // Normalize the directory delimiters to follow the UNIX syntax
  i := 1;
  while i <= Length(APath) do begin
    if IsLeadChar(APath[i]) then begin
      inc(i, 2)
    end else if APath[i] = '\' then begin    {Do not Localize}
      APath[i] := '/';    {Do not Localize}
      inc(i, 1);
    end else begin
      inc(i, 1);
    end;
  end;
end;

procedure TIdURI.SetURI(const Value: String);
var
  LBuffer: string;
  LTokenPos: Integer;
  LURI: string;
begin
  FURI := Value;
  NormalizePath(FURI);
  LURI := FURI;
  FHost := '';    {Do not Localize}
  FProtocol := '';    {Do not Localize}
  FPath := '';    {Do not Localize}
  FDocument := '';    {Do not Localize}
  FPort := '';    {Do not Localize}
  FBookmark := '';    {Do not Localize}
  FUsername := '';    {Do not Localize}
  FPassword := '';    {Do not Localize}
  FParams := '';  {Do not localise}  //Peter Mee
  FIPVersion := Id_IPv4;

  LTokenPos := IndyPos('://', LURI);    {Do not Localize}
  if LTokenPos > 0 then begin
    // absolute URI
    // What to do when data don't match configuration ??    {Do not Localize}
    // Get the protocol
    FProtocol := Copy(LURI, 1, LTokenPos  - 1);
    Delete(LURI, 1, LTokenPos + 2);
    // separate the path from the parameters
    LTokenPos := IndyPos('?', LURI);    {Do not Localize}
    if LTokenPos = 0 then begin
      LTokenPos := IndyPos('=', LURI);    {Do not Localize}
    end;
    if LTokenPos > 0 then begin
      FParams := Copy(LURI, LTokenPos + 1, MaxInt);
      LURI := Copy(LURI, 1, LTokenPos - 1);
    end;
    // Get the user name, password, host and the port number
    LBuffer := Fetch(LURI, '/', True);    {Do not Localize}
    // Get username and password
    LTokenPos := IndyPos('@', LBuffer);    {Do not Localize}
    if LTokenPos > 0 then begin
      FPassword := Copy(LBuffer, 1, LTokenPos  - 1);
      Delete(LBuffer, 1, LTokenPos);
      FUserName := Fetch(FPassword, ':');    {Do not Localize}
      // Ignore cases where there is only password (http://:password@host/pat/doc)
      if Length(FUserName) = 0 then begin
        FPassword := '';    {Do not Localize}
      end;
    end;
    // Get the host and the port number
    if (IndyPos('[', LBuffer) > 0) and (IndyPos(']', LBuffer) > IndyPos('[', LBuffer)) then begin {Do not Localize}
      //This is for IPv6 Hosts
      FHost := Fetch(LBuffer, ']'); {Do not Localize}
      Fetch(FHost, '['); {Do not Localize}
      Fetch(LBuffer, ':'); {Do not Localize}
      FIPVersion := Id_IPv6;
    end else begin
      FHost := Fetch(LBuffer, ':', True);    {Do not Localize}
    end;
    FPort := LBuffer;
    // Get the path
    LTokenPos := RPos('/', LURI, -1);
    if LTokenPos > 0 then begin
      FPath := '/' + Copy(LURI, 1, LTokenPos);    {Do not Localize}
      Delete(LURI, 1, LTokenPos);
    end else begin
      FPath := '/';    {Do not Localize}
    end;
  end else begin
    // received an absolute path, not an URI
    LTokenPos := IndyPos('?', LURI);    {Do not Localize}
    if LTokenPos = 0 then begin
      LTokenPos := IndyPos('=', LURI);    {Do not Localize}
    end;
    if LTokenPos > 0 then begin // The case when there is parameters after the document name
      FParams := Copy(LURI, LTokenPos + 1, MaxInt);
      LURI := Copy(LURI, 1, LTokenPos - 1);
    end;
    // Get the path
    LTokenPos := RPos('/', LURI, -1);    {Do not Localize}
    if LTokenPos > 0 then begin
      FPath := Copy(LURI, 1, LTokenPos);
      Delete(LURI, 1, LTokenPos);
    end;
  end;
  // Get the document
  FDocument := LURI;
  // Parse the # bookmark from the document
  FBookmark := FDocument;
  FDocument := Fetch(FBookmark, '#');    {Do not Localize}
end;

function TIdURI.GetURI: String;
begin
  FURI := GetFullURI;
  // Result must contain only the proto://host/path/document
  // If you need the full URI then you have to call GetFullURI
  Result := GetFullURI([]);
end;

class function TIdURI.URLDecode(ASrc: string): string;
var
  i: Integer;
  ESC: string[4];
  CharCode: Integer;
begin
  Result := '';    {Do not Localize}
  // S.G. 27/11/2002: Spaces is NOT to be encoded as "+".
  // S.G. 27/11/2002: "+" is a field separator in query parameter, space is...
  // S.G. 27/11/2002: well, a space
  // ASrc := StringReplace(ASrc, '+', ' ', [rfReplaceAll]);  {do not localize}
  i := 1;
  while i <= Length(ASrc) do begin
    if ASrc[i] <> '%' then begin  {do not localize}
      Result := Result + ASrc[i]; // Copy the char
      Inc(i); // Then skip it
    end else begin
      Inc(i); // skip the % char
      if not CharIsInSet(ASrc, i, 'uU') then begin  {do not localize}
        // simple ESC char
        ESC := Copy(ASrc, i, 2); // Copy the escape code
        Inc(i, 2); // Then skip it.
        try
          CharCode := IndyStrToInt('$' + ESC);  {do not localize}
          Result := Result + Char(CharCode);
        except end;
      end else
      begin
        // unicode ESC code

        // RLebeau 5/10/2006: under Win32, the character will end
        // up as '?' in the Result when converted from Unicode to Ansi,
        // but at least the URL will be parsed properly
        
        ESC := Copy(ASrc, i+1, 4); // Copy the escape code
        Inc(i, 5); // Then skip it.
        try
          CharCode := IndyStrToInt('$' + ESC);  {do not localize}
          Result := Result + WideChar(CharCode);
        except end;
      end;
    end;
  end;
end;

class function TIdURI.ParamsEncode(const ASrc: string): string;
var
  i: Integer;
const
  UnsafeChars = '*#%<> []';  {do not localize}
begin
  Result := '';    {Do not Localize}
  for i := 1 to Length(ASrc) do
  begin
    // S.G. 27/11/2002: Changed the parameter encoding: Even in parameters, a space
    // S.G. 27/11/2002: is much more likely to be meaning "space" than "this is
    // S.G. 27/11/2002: a new parameter"
    // S.G. 27/11/2002: ref: Message-ID: <3de30169@newsgroups.borland.com> borland.public.delphi.internet.winsock
    // S.G. 27/11/2002: Most low-ascii is actually Ok in parameters encoding.
    if CharIsInSet(ASrc, i, UnsafeChars) or (not CharIsInSet(ASrc, i, CharRange(#33,#128))) then begin {do not localize}
      Result := Result + '%' + IntToHex(Ord(ASrc[i]), 2);  {do not localize}
    end else begin
      Result := Result + ASrc[i];
    end;
  end;
end;

class function TIdURI.PathEncode(const ASrc: string): string;
const
  UnsafeChars = '*#%<>+ []';  {do not localize}
var
  i: Integer;
begin
  Result := '';    {Do not Localize}
  for i := 1 to Length(ASrc) do begin
    if CharIsInSet(ASrc, i, UnsafeChars) or (not CharIsInSet(ASrc, i, CharRange(#32, #127))) then begin
      Result := Result + '%' + IntToHex(Ord(ASrc[i]), 2);  {do not localize}
    end else begin
      Result := Result + ASrc[i];
    end;
  end;
end;

class function TIdURI.URLEncode(const ASrc: string): string;
begin
  with TIdURI.Create(ASrc) do try
    Path := PathEncode(Path);
    Document := PathEncode(Document);
    Params := ParamsEncode(Params);
    Result := URI;
  finally Free; end;
end;

function TIdURI.GetFullURI(const AOptionalFields: TIdURIOptionalFieldsSet): String;
var
  LURI: String;
begin
  if FProtocol = '' then begin
    raise EIdURIException.Create(RSURINoProto);
  end;

  if FHost = '' then begin
    raise EIdURIException.Create(RSURINoHost);
  end;

  LURI := FProtocol + '://';    {Do not Localize}

  if (FUserName <> '') and (ofAuthInfo in AOptionalFields) then begin
    LURI := LURI + FUserName;
    if FPassword <> '' then begin
      LURI := LURI + ':' + FPassword;    {Do not Localize}
    end;
    LURI := LURI + '@';    {Do not Localize}
  end;

  LURI := LURI + FHost;
  if FPort <> '' then begin
    case PosInStrArray(FProtocol, ['HTTP', 'HTTPS', 'FTP'], False) of {Do not Localize}
      0:
        begin
          if FPort <> '80' then begin
            LURI := LURI + ':' + FPort;    {Do not Localize}
          end;
        end;
      1:
        begin
          if FPort <> '443' then begin
            LURI := LURI + ':' + FPort;    {Do not Localize}
          end;
        end;
      2:
        begin
          if FPort <> '21' then begin
            LURI := LURI + ':' + FPort;    {Do not Localize}
          end;
        end;
      else
        begin
          LURI := LURI + ':' + FPort;    {Do not Localize}
        end;
    end;
  end;

  LURI := LURI + GetPathAndParams;

  if (FBookmark <> '') and (ofBookmark in AOptionalFields) then begin
    LURI := LURI + '#' + FBookmark;    {Do not Localize}
  end;

  Result := LURI;
end;

function TIdURI.GetPathAndParams: String;
begin
  Result := FPath + FDocument;
  if FParams <> '' then begin
    Result := Result + '?' + FParams; {Do not Localize}
  end;
end;

end.
