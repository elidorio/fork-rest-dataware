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
  Rev 1.9    2004.02.07 5:03:08 PM  czhower
  .net fixes.

  Rev 1.8    2004.02.03 5:45:42 PM  czhower
  Name changes

  Rev 1.7    30/1/2004 4:48:52 PM  SGrobety
  Fix problem in win32 version. Now works in both world

  Rev 1.6    1/30/2004 11:57:42 AM  BGooijen
  Compiles in D7

  Rev 1.5    29/1/2004 6:08:58 PM  SGrobety
  Now with extra crunchy DotNet compatibility!

  Rev 1.4    1/21/2004 3:31:18 PM  JPMugaas
  InitComponent

  Rev 1.3    10/19/2003 5:57:14 PM  DSiders
  Added localization comments.

  Rev 1.2    5/15/2003 10:24:04 PM  BGooijen
  Added IdGlobal to uses for pbyte on D5

  Rev 1.1    11/5/2003 10:58:54 AM  SGrobety
  Indy implementation of the CRAM-MD5 authentication protocol

  Rev 1.0    10/5/2003 10:00:00 AM  SGrobety
  Indy implementation of the CRAM-MD5 authentication protocol

  S.G. 9/5/2003: First implementation of the CRAM-MD5 authentication algorythm
}

unit IdSASL_CRAM_MD5;

{
  Refs: RFC 1321 (MD5)
  RFC 2195 (IMAP/POP3 AUTHorize Extension for Simple Challenge/Response)
  IETF draft draft-ietf-ipsec-hmac-md5-txt.00
}

interface
{$i IdCompilerDefines.inc}

uses
  IdHMACMD5,
  IdSASL,
  IdSASLUserPass;

type

  TIdSASLCRAMMD5 = class(TIdSASLUserPass)
  public
    class function BuildKeydMD5Auth(const Password, Challenge: string): string;
    class function ServiceName: TIdSASLServiceName; override;
    function StartAuthenticate(const AChallenge:string) : String; override;
    function ContinueAuthenticate(const ALastResponse: String): string; override;
  end;

implementation

uses
  IdGlobal,
  SysUtils;

class function TIdSASLCRAMMD5.BuildKeydMD5Auth(const Password, Challenge: string): string;
var
 aHash:TIdHMACMD5;
 aBuffer:TIdBytes;
begin
 aHash:=TIdHMACMD5.Create;
 try
  aHash.Key:=ToBytes(Password);
  aBuffer:=ToBytes(Challenge);
  aBuffer:=aHash.HashValue(aBuffer);
  Result:=LowerCase(ToHex(aBuffer));
 finally
  FreeAndNil(aHash);
 end;
end;

function TIdSASLCRAMMD5.ContinueAuthenticate(const ALastResponse: String): String;
//this is not called
begin
  Result:='';
end;

class function TIdSASLCRAMMD5.ServiceName: TIdSASLServiceName;
begin
  result := 'CRAM-MD5'; {do not localize}
end;

function TIdSASLCRAMMD5.StartAuthenticate(const AChallenge: string): String;
begin
  if Length(AChallenge) > 0 then
  begin
    result := GetUsername + ' ' + BuildKeydMD5Auth(GetPassword, AChallenge);
  end
  else
    result := '';
end;

end.
