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
  Rev 1.0    8/24/2003 06:47:42 PM  JPMugaas
  FTPContext base class so that the ThreadClass may be shared with the
  FileSystem classes.
}

unit IdFTPServerContextBase;

{
  This is for a basic thread class that can be shared with the FTP File System
  component and any other file system class so they can share more information
  than just the Username
}

interface

{$i IdCompilerDefines.inc}

uses
  IdContext;

type
  TIdFTPUserType = (utNone, utAnonymousUser, utNormalUser);

  TIdFTPServerContextBase = class(TIdContext)
  protected
    FUserType: TIdFTPUserType;
    FAuthenticated: Boolean;
    FALLOSize: Integer;
    FCurrentDir: string;
    FHomeDir: string;
    FUsername: string;
    FPassword: string;
    FRESTPos: Integer;
    FRNFR: string;
    FNLSTUtf8: Boolean;
    FUseUtf8: Boolean;
    procedure ReInitialize; virtual;
  public
    property Authenticated: Boolean read FAuthenticated write FAuthenticated;
    property ALLOSize: Integer read FALLOSize write FALLOSize;
    property CurrentDir: string read FCurrentDir write FCurrentDir;
    property HomeDir: string read FHomeDir write FHomeDir;
    property Password: string read FPassword write FPassword;
    property Username: string read FUsername write FUsername;
    property UserType: TIdFTPUserType read FUserType write FUserType;
    property RESTPos: Integer read FRESTPos write FRESTPos;
    property RNFR: string read FRNFR write FRNFR;
    property NLSTUtf8: Boolean read FNLSTUtf8 write FNLSTUtf8;
    property UseUtf8: Boolean read FUseUtf8 write FUseUtf8;
  end;

implementation

{ TIdFTPServerContextBase }

procedure TIdFTPServerContextBase.ReInitialize;
begin
  UserType := utNone;
  FAuthenticated := False;
  FALLOSize := 0;
  FCurrentDir := '/';    {Do not Localize}
  FHomeDir := '';    {Do not Localize}
  FUsername := '';    {Do not Localize}
  FPassword := '';    {Do not Localize}
  FRESTPos := 0;
  FRNFR := '';    {Do not Localize}
  FNLSTUtf8 := False;
  FUseUtf8 := False;
end;

end.
