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
  Rev 1.66  3/24/2005 3:03:28 AM  DSiders
  Modified TIdIMAP4.ParseStatusResult to correct an endless loop parsing an odd
  number of status messages/values in the server response.

  Rev 1.65  3/23/2005 3:03:40 PM  DSiders
  Modified TIdIMAP4.Destroy to free resources for Capabilities and MUtf7
  properties.

  Rev 1.64  3/4/2005 3:08:42 PM  JPMugaas
  Removed compiler warning with stream.  You sometimes need to use IdStreamVCL.

  Rev 1.63  3/3/2005 12:54:04 PM  JPMugaas
  Replaced TStringList with TIdStringList.

  Rev 1.62  3/3/2005 12:09:04 PM  JPMugaas
  TStrings were replaced with TIdStrings.

  Rev 1.60  20/02/2005 20:41:06  CCostelloe
  Cleanup and reorganisations

  Rev 1.59  11/29/2004 2:46:10 AM  JPMugaas
  I hope that this fixes a compile error.

  Rev 1.58  11/27/04 3:11:56 AM  RLebeau
  Fixed bug in ownership of SASLMechanisms property.

  Updated to use TextIsSame() instead of Uppercase() comparisons.

  Rev 1.57  11/8/2004 8:39:00 AM  DSiders
  Removed comment in TIdIMAP4.SearchMailBox implementation that caused DOM
  problem when locating the symbol id.

  Rev 1.56  10/26/2004 10:19:58 PM  JPMugaas
  Updated refs.

  Rev 1.55  2004.10.26 2:19:56 PM  czhower
  Resolved alias conflict.

  Rev 1.54  6/11/2004 9:36:34 AM  DSiders
  Added "Do not Localize" comments.

  Rev 1.53  6/4/04 12:48:12 PM  RLebeau
  ContentTransferEncoding bug fix

  Rev 1.52  01/06/2004 19:03:46  CCostelloe
  .NET bug fix

  Rev 1.51  01/06/2004 01:16:18  CCostelloe
  Various improvements

  Rev 1.50  20/05/2004 22:04:14  CCostelloe
  IdStreamVCL changes

  Rev 1.49  20/05/2004 08:43:12  CCostelloe
  IdStream change

  Rev 1.48  16/05/2004 20:40:46  CCostelloe
  New TIdText/TIdAttachment processing

  Rev 1.47  24/04/2004 23:54:42  CCostelloe
  IMAP-style UTF-7 encoding/decoding of mailbox names added

  Rev 1.46  13/04/2004 22:24:28  CCostelloe
  Bug fix (FCapabilities not created if not DOTNET)

  Rev 1.45  3/18/2004 2:32:40 AM  JPMugaas
  Should compile under D8 properly.

  Rev 1.44  3/8/2004 10:10:32 AM  JPMugaas
  IMAP4 should now have SASLMechanisms again.  Those work in DotNET now.
  SSL abstraction is now supported even in DotNET so that should not be
  IFDEF'ed out.

  Rev 1.43  07/03/2004 17:55:16  CCostelloe
  Updates to cover changes in other units

  Rev 1.42  2/4/2004 2:36:58 AM  JPMugaas
  Moved more units down to the implementation clause in the units to make them
  easier to compile.

  Rev 1.41  2/3/2004 4:12:50 PM  JPMugaas
  Fixed up units so they should compile.

  Rev 1.40  2004.02.03 5:43:48 PM  czhower
  Name changes

  Rev 1.39  2004.02.03 2:12:10 PM  czhower
  $I path change

  Rev 1.38  1/27/2004 4:01:12 PM  SPerry
  StringStream ->IdStringStream

  Rev 1.37  1/25/2004 3:11:12 PM  JPMugaas
  SASL Interface reworked to make it easier for developers to use.
  SSL and SASL reenabled components.

  Rev 1.36  23/01/2004 01:48:28  CCostelloe
  Added BinHex4.0 encoding support for parts

  Rev 1.35  1/21/2004 3:10:40 PM  JPMugaas
  InitComponent

  Rev 1.34  31/12/2003 09:40:32  CCostelloe
  ChangeReplyClass removed, replaced AnsiSameText with TextIsSame, stream code
  not tested.

  Rev 1.33  28/12/2003 23:48:18  CCostelloe
  More TEMPORARY fixes to get it to compile under D7 and D8 .NET

  Rev 1.32  22/12/2003 01:20:20  CCostelloe
  .NET fixes.  This is a TEMPORARY combined Indy9/10/.NET master file.

  Rev 1.31  14/12/2003 21:03:16  CCostelloe
  First version for .NET

  Rev 1.30  10/17/2003 12:11:06 AM  DSiders
  Added localization comments.
  Added resource strings for exception messages.

  Rev 1.29  2003.10.12 3:53:10 PM  czhower
  compile todos

  Rev 1.28  10/12/2003 1:49:50 PM  BGooijen
  Changed comment of last checkin

  Rev 1.27  10/12/2003 1:43:34 PM  BGooijen
  Changed IdCompilerDefines.inc to Core\IdCompilerDefines.inc

  Rev 1.26  20/09/2003 15:38:38  CCostelloe
  More patches added for different IMAP servers

  Rev 1.25  12/08/2003 01:17:38  CCostelloe
  Retrieve and AppendMsg updated to suit changes made to attachment encoding
  changes in other units

  Rev 1.24  21/07/2003 01:22:24  CCostelloe
  Added CopyMsg and UIDCopyMsgs.  (UID)Receive(Peek) rewritten.  AppendMsg
  still buggy with attachments.  Public variable FGreetingBanner added.  Added
  "if Connected then " to Destroy.  Attachment filenames now decoded if
  necessary.  Added support for multisection parts.  Resolved issue of some
  servers leaving out the trailing "NIL NIL NIL" at the end of some body
  structures.  UIDRetrieveAllHeaders removed

  Rev 1.23  18/06/2003 21:53:36  CCostelloe
  Rewrote GetResponse from scratch.  Restored Capabilities for login.  Compiles
  and runs properly (may be a couple of minor bugs not yet discovered).

  Rev 1.22  6/16/2003 11:48:18 PM  JPMugaas
  Capabilities has to be restored for SASL and SSL support.

  Rev 1.21  17/06/2003 01:33:46  CCostelloe
  Updated to support new LoginSASL.  Compiles OK, may not yet run OK.

  Rev 1.20  12/06/2003 10:17:54  CCostelloe
  Partial update for Indy 10's new Reply structure.  Compiles but does not run
  correctly.  Checked in to show problem with Get/SetNumericCode in IdReplyIMAP.

  Rev 1.19  04/06/2003 02:33:44  CCostelloe
  Compiles under Indy 10 with the revised Indy 10 structure, but does not yet
  work properly due to some of the changes.  Will be fixed by me in a later
  check-in.

  Rev 1.18  14/05/2003 01:55:50  CCostelloe
  This version (with the extra IMAP functionality recently added) now compiles
  on Indy 10 and works in a real application.

  Rev 1.17  5/12/2003 02:19:56 AM  JPMugaas
  Now should work properly again.  I also removed all warnings and errors in
  Indy 10.

  Rev 1.16  5/11/2003 07:35:44 PM  JPMugaas

  Rev 1.15  5/11/2003 07:11:06 PM  JPMugaas
  Fixed to eliminate some warnings and compile errors in Indy 10.

  Rev 1.14  11/05/2003 23:53:52  CCostelloe
  Bug fix due to Windows 98 / 2000 discrepancies

  Rev 1.13  11/05/2003 23:08:36  CCostelloe
  Lots more bug fixes, plus IMAP code moved up from IdRFCReply

  Rev 1.12  5/10/2003 07:31:22 PM  JPMugaas
  Updated with some bug fixes and some cleanups.

  Rev 1.11  5/9/2003 10:51:26 AM  JPMugaas
  Bug fixes.  Now works as it should.  Verified.

  Rev 1.9  5/9/2003 03:49:44 AM  JPMugaas
  IMAP4 now supports SASL.  Merged some code from Ciaran which handles the +
  SASL continue reply in IMAP4 and makes a few improvements.  Verified to work
  on two servers.

  Rev 1.8  5/8/2003 05:41:48 PM  JPMugaas
  Added constant for SASL continuation.

  Rev 1.7  5/8/2003 03:17:50 PM  JPMugaas
  Flattened ou the SASL authentication API, made a custom descendant of SASL
  enabled TIdMessageClient classes.

  Rev 1.6  5/8/2003 11:27:52 AM  JPMugaas
  Moved feature negoation properties down to the ExplicitTLSClient level as
  feature negotiation goes hand in hand with explicit TLS support.

  Rev 1.5  5/8/2003 02:17:44 AM  JPMugaas
  Fixed an AV in IdPOP3 with SASL list on forms.  Made exceptions for SASL
  mechanisms missing more consistant, made IdPOP3 support feature feature
  negotiation, and consolidated some duplicate code.

  Rev 1.4  5/7/2003 10:20:32 PM  JPMugaas

  Rev 1.3  5/7/2003 04:35:30 AM  JPMugaas
  IMAP4 should now compile.  Started on prelimary SSL support (not finished
  yet).

  Rev 1.2  15/04/2003 00:57:08  CCostelloe

  Rev 1.1  2/24/2003 09:03:06 PM  JPMugaas

  Rev 1.0  11/13/2002 07:54:50 AM  JPMugaas

  2001-FEB-27 IC: First version most of the IMAP features are implemented and
          the core IdPOP3 features are implemented to allow a seamless
          switch.
          The unit is currently oriented to a session connection and not
          to constant connection, because of that server events that are
          raised from another user actions are not supported.

  2001-APR-18 IC: Added support for the session's connection state with a
          special exception for commands preformed in wrong connection
          states. Exceptions were also added for response errors.

  2001-MAY-05 IC:

  2001-Mar-13 DS: Fixed Bug # 494813 in CheckMsgSeen where LastCmdResult.Text
          was not using the Ln index variable to access server
          responses.

  2002-Apr-12 DS: fixed bug # 506026 in TIdIMAP4.ListSubscribedMailBoxes.  Call
          ParseLSubResut instead of ParseListResult.

  2003-Mar-31 CC: Added GetUID and UIDSearchMailBox, sorted out some bugs (details
          shown in comments in those functions which start with "CC:").

  2003-Apr-15 CC2:Sorted out some more bugs (details shown in comments in those
          functions which start with "CC2:").  Set FMailBoxSeparator
          in ParseListResult and ParseLSubResult.
          Some IMAP servers generally return "OK completed" even if they
          returned no data, such as passing a non-existent message
          number to them: they possibly should return NO or BAD; the
          functions here have been changed to return FALSE unless they
          get good data back, even if the server answers OK.  Similar
          change made for other functions.
          There are a few exceptions, e.g. ListMailBoxes may only return
          "OK completed" if the user has no mailboxes, these are noted.
          Also, RetrieveStructure(), UIDRetrieveStructure, RetrievePart,
          UIDRetrievePart, RetrievePartPeek and UIDRetrievePartPeek
          added to allow user to find the structure of a message and
          just retrieve the part or parts he needs.

  2003-Apr-30 CC3:Added functionality to retrieve the text of a message (only)
          via RetrieveText / UIDRetrieveText / RetrieveTextPeek /
          UIDRetrieveTextPeek.
          Return codes now generally reflect if the function succeeded
          instead of returning True even though function fails.

  2003-May-15 CC4:Added functionality to retrieve individual parts of a message
          to a file, including the decoding of those parts.

  2003-May-29 CC5:Response of some servers to UID version of commands varies,
          code changed to deal with those (UID position varies).
          Some servers return NO such as when you request an envelope
          for a message number that does not exist: functions return
          False instead of throwing an exception, as was done for other
          servers.  The general logic is that if a valid result is
          returned from the IMAP server, return True;  if there is no
          result (but the command is validly structured), return FALSE;
          if the command is badly structured or if it gives a response
          that this code does not expect, throw an exception (typically
          when we get a BAD response instead of OK or NO).
          Added IsNumberValid, IsUIDValid to prevent rubbishy parameters
          being passed through to IMAP functions.
          Sender field now filled in correctly in ParseEnvelope
          functions.
          All fields in ParseEnvelopeAddress are cleared out first,
          avoids an unwitting error where some entries, such as CC list,
          will append entries to existing entries.
          Full test script now used that tests every TIdIMAP command,
          more bugs eradicated.
          First version to pass testing against both CommuniGate and
          Cyrus IMAP servers.
          Not tested against Microsoft Exchange, don't have an Exchange
          account to test it against.

  2003-Jun-10 CC6:Added (UID)RetrieveEnvelopeRaw, in case the user wants to do
          their own envelope parsing.
          Code in RetrievePart altered to make it more consistent.
          Altered to incorporate Indy 10's use of IdReplyIMAP4 (not
          complete at this stage).
          ReceiveBody added to IdIMAP4, due to the response of some
          servers, which gets (UID)Receive(Peek) functions to work on
          more servers.

  2003-Jun-20 CC7:ReceiveBody altered to work with Indy 10.  Made changes due to
          LoginSASL moving from TIdMessageSASLClient to TIdSASLList.
          Public variable FGreetingBanner added to help user identify
          the IMAP server he is connected to (may help him decide the
          best strategy).  Made AppendMsg work a bit better (now uses
          platform-independent EOL and supports ExtraHeaders field).
          Added 2nd version of AppendMsg.  Added "if Connected then "
          to Destroy.  Attachment filenames now decoded if necessary.
          Added support for multisection parts.

  2003-Jul-16 CC8:Added RemoveAnyAdditionalResponses.  Resolved issue of some
          servers leaving out the trailing "NIL NIL NIL" at the end of
          some body structures.  (UID)Retrieve(Peek) functions
          integrated via InternalRetrieve, new method of implementing
          these functions (all variations of Retrieve) added for Indy
          10 based on getting message by the byte-count and then feeding
          it into the standard message parser.
          UIDRetrieveAllHeaders removed: it was never implemented anyway
          but it makes no sense to retrieve a non-contiguous list which
          would have gaps due to missing UIDs.
          In the Indy 10 version, AppendMsg functions were altered to
          support the sending of attachments (attachments had never
          been supported in AppendMsg prior to this).
          Added CopyMsg and UIDCopyMsgs to complete the command set.
  2003-Jul-30 CC9:Removed wDoublePoint so that the code is compliant with
          the guidelines.  Allowed for servers that don't implement
          search commands in Indy 9 (OK in 10).  InternalRetrieve
          altered to (hopefully) deal with optional "FLAGS (\Seen)"
          in response.
  2003-Aug-22 CCA:Yet another IMAP oddity - a server returns NIL for the
          mailbox separator, ParseListResult modified.  Added "Length
          (LLine) > 0)" test to stop GPF on empty line in ReceiveBody.
  2003-Sep-26 CCB:Changed SendCmd altered to try to remove anything that may
          be unprocessed from a previous (probably failed) command.
          This uses the property FMilliSecsToWaitToClearBuffer, which
          defaults to 10ms.
          Added EIdDisconnectedProbablyIdledOut, trapped in
          GetInternalResponse.
          Unsolicited responses now filtered out (they are now transferred
          from FLastCmdResult.Text to a new field, FLastCmdResult.Extra,
          leaving just the responses we want to our command in
          FLastCmdResult.Text).
  2003-Oct-21 CCC:Original GetLineResponse merged with GetResponse to reduce
          complexity and to add filtering unsolicited responses when
          we are looking for single-line responses (which GetLineResponse
          did), removed/coded-out much of these functions to make the
          code much simpler.
          Removed RemoveAnyAdditionalResponses, no longer needed.
          Parsing of body structure reworked to support ParentPart concept
          allowing parsing of indefinitely-nested MIME parts.  Note that
          a`MIME "alternative" message with a plain-text and a html part
          will have part[0] marked "alternative" with size 0 and ImapPartNumber
          of 1, a part[1] of type text/plain with a ParentPart of 0 and an
          ImapPartNumber of 1.1, and finally a part[2] of type text/html
          again with a ParentPart of 0 and an ImapPartNumber of 1.2.
          Imap part number changed from an integer to string, allowing
          retrieval of IMAP sub-parts, e.g. part '3.2' is the 2nd subpart
          of part 3.
  2003-Nov-20 CCD:Added UIDRetrievePartHeader & RetrievePartHeader.  Started to
          use an abstracted parsing method for the command response in
          UIDRetrieveFlags.  Added function FindHowServerCreatesFolders.
  2003-Dec-04 CCE:Copied DotNet connection changes from IdSMTP to tempoarily bypass
          the SASL authentications until they are ported.
  2004-Jan-23 CCF:Finished .NET port, added BinHex4.0 encoding.
  2004-Apr-16 CCG:Added UTF-7 decoding/encoding code kindly written and submitted by
          Roman Puls for encoding/decoding mailbox names.  IMAP does not use
          standard UTF-7 code (what's new?!) so these routines are localised
          to this unit.
}

unit IdIMAP4;

{
  IMAP 4 (Internet Message Access Protocol - Version 4 Rev 1)
  By Idan Cohen i_cohen@yahoo.com
}

interface

{ Todo -oIC :
Change the mailbox list commands so that they receive TMailBoxTree
structures and so they can store in them the mailbox name and it's attributes. }

{ Todo -oIC :
Add support for \* special flag in messages, and check for \Recent
flag in STORE command because it cant be stored (will get no reply!!!) }

{ Todo -oIC :
5.1.2.  Mailbox Namespace Naming Convention
By convention, the first hierarchical element of any mailbox name
which begins with "#" identifies the "namespace" of the remainder of
the name.  This makes it possible to disambiguate between different
types of mailbox stores, each of which have their own namespaces.
For example, implementations which offer access to USENET
newsgroups MAY use the "#news" namespace to partition the USENET
newsgroup namespace from that of other mailboxes.  Thus, the
comp.mail.misc newsgroup would have an mailbox name of
"#news.comp.mail.misc", and the name "comp.mail.misc" could refer
to a different object (e.g. a user's private mailbox). }   

{ TO BE CONSIDERED -CC :
Double-quotes in mailbox names can cause major but subtle failures.  Maybe
add the automatic stripping of double-quotes if passed in mailbox names,
to avoid ending up with ""INBOX""
}

{CC3: WARNING - if the following gives a "File not found" error on compilation,
you need to add the path "C:\Program Files\Borland\Delphi7\Source\Indy" in
Project -> Options -> Directories/Conditionals -> Search Path}

{$I IdCompilerDefines.inc}

uses
  Classes,
  IdMessage,
  IdAssignedNumbers,
  IdMailBox,
  IdException,
  IdGlobal,
  IdMessageParts,
  IdMessageClient,
  IdReply,
  IdComponent,
  IdMessageCoder,
  IdHeaderList,
  IdCoderHeader,
  IdCoderMIME,
  IdCoderQuotedPrintable,
  IdCoderBinHex4,
  IdSASLCollection,
  IdMessageCollection,
  IdBaseComponent;

{ MUTF7 }

type
  EmUTF7Error = class(EIdSilentException);
  EmUTF7Encode = class(EmUTF7Error);
  EmUTF7Decode = class(EmUTF7Error);

const
  b64Chars : array[0..63] of char =
    'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+,';  {Do not Localize}

  b64Index : array [0..127] of integer = (
    -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,          //  16
    -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,          //  32
    -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,62,63,-1,-1,-1,          //  48
    52,53,54,55,56,57,58,59,60,61,-1,-1,-1,-1,-1,-1,          //  64
    -1,00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,          //  80
    15,16,17,18,19,20,21,22,23,24,25,-1,-1,-1,-1,-1,          //  96
    -1,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,          // 112
    41,42,43,44,45,46,47,48,49,50,51,-1,-1,-1,-1,-1           // 128
  );
  b64Table : array[0..127] of integer = (
    $FF,$FF,$FF,$FF, $FF,$FF,$FF,$FF, $FF,$FF,$FF,$FF, $FF,$FF,$FF,$FF, //  16
    $FF,$FF,$FF,$FF, $FF,$FF,$FF,$FF, $FF,$FF,$FF,$FF, $FF,$FF,$FF,$FF, //  32
    $20,$21,$22,$23, $24,$25,$FF,$27, $28,$29,$2A,$2B, $2C,$2D,$2E,$2F, //  48
    $30,$31,$32,$33, $34,$35,$36,$37, $38,$39,$3A,$3B, $3C,$3D,$3E,$3F, //  64
    $40,$41,$42,$43, $44,$45,$46,$47, $48,$49,$4A,$4B, $4C,$4D,$4E,$4F, //  80
    $50,$51,$52,$53, $54,$55,$56,$57, $58,$59,$5A,$5B, $5C,$5D,$5E,$5F, //  96
    $60,$61,$62,$63, $64,$65,$66,$67, $68,$69,$6A,$6B, $6C,$6D,$6E,$6F, // 112
    $70,$71,$72,$73, $74,$75,$76,$77, $78,$79,$7A,$7B, $7C,$7D,$7E,$FF);// 128

type
  TIdMUTF7 = class(TObject)
  public
    function Encode(aString : string):string;
    function Decode(aString : string):string;
    function Valid(aMUTF7String : string):boolean;
    function Append(const aMUTF7String, aAnsiStr : string):string;
  end;

{ TIdIMAP4 }

const
  wsOk  = 1;
  wsNo  = 2;
  wsBad = 3;
  wsPreAuth = 4;
  wsBye = 5;
  wsContinue = 6;

type
  TIdIMAP4FolderTreatment = (     //Result codes from FindHowServerCreatesFolders
    ftAllowsTopLevelCreation,     //Folders can be created at the same level as Inbox (the top level)
    ftFoldersMustBeUnderInbox,    //Folders must be created under INBOX, such as INBOX.Sent
    ftDoesNotAllowFolderCreation,   //Wont allow you create folders at top level or under Inbox (may be read-only connection)
    ftCannotTestBecauseHasNoInbox,  //Wont allow top-level creation but cannot test creation under Inbox because it does not exist
    ftCannotRetrieveAnyFolders    //No folders present for that user, cannot be determined
  );

type
  TIdIMAP4AuthenticationType = (
    iatUserPass,
    iatSASL
  );

const
  DEF_IMAP4_AUTH = iatUserPass;
  IDF_DEFAULT_MS_TO_WAIT_TO_CLEAR_BUFFER = 10;

{CC3: TIdImapMessagePart and TIdImapMessageParts added for retrieving
individual parts of a message via IMAP, because IMAP uses some additional
terms.
Note that (rarely) an IMAP can have two sub-"parts" in the one part -
they are sent in the one part by the server, typically a plain-text and
html version with a boundary at the start, in between, and at the end.
TIdIMAP fills in the boundary in that case, and the FSubpart holds the
info on the second part.  I call these multisection parts.}

type
  TIdImapMessagePart = class(TCollectionItem)
  protected
    FBodyType: string;
    FBodySubType: string;
    FFileName: string;
    FDescription: string;
    FEncoding: TIdMessageEncoding;
    FContentTransferEncoding: string;
    FSize: integer;
    FUnparsedEntry: string; {Text returned from server: useful for debugging or workarounds}
    FBoundary: string; {Only used for multisection parts}
    FParentPart: Integer;
    FImapPartNumber: string;
  public
    constructor Create(Collection: TCollection); override;
    property BodyType : String read FBodyType write FBodyType;
    property BodySubType : String read FBodySubType write FBodySubType;
    property FileName : String read FFileName write FFileName;
    property Description : String read FDescription write FDescription;
    property Encoding: TIdMessageEncoding read FEncoding write FEncoding;
    property ContentTransferEncoding : String read FContentTransferEncoding write FContentTransferEncoding;
    property Size : integer read FSize write FSize;
    property UnparsedEntry : string read FUnparsedEntry write FUnparsedEntry;
    property Boundary : string read FBoundary write FBoundary;
    property ParentPart: integer read FParentPart write FParentPart;
    property ImapPartNumber: string read FImapPartNumber write FImapPartNumber;
  end;

  {CC3: Added for validating message number}
  EIdNumberInvalid = class(EIdException);
  {CCB: Added for server disconnecting you if idle too long...}
  EIdDisconnectedProbablyIdledOut = class(EIdException);

  TIdImapMessageParts = class(TOwnedCollection)
  protected
    function  GetItem(Index: Integer): TIdImapMessagePart;
    procedure SetItem(Index: Integer; const Value: TIdImapMessagePart);
  public
    function  Add: TIdImapMessagePart;
    property  Items[Index: Integer]: TIdImapMessagePart read GetItem write SetItem; default;
  end;

{CCD: Added to parse out responses, because the order in which the responses appear
varies between servers.  A typical line that gets parsed into this is:
  * 9 FETCH (UID 1234 FLAGS (\Seen \Deleted))
}
  TIdIMAPLineStruct = class(TObject)
  protected
    HasStar: Boolean;       //Line starts with a '*'
    MessageNumber: string;    //Line has a message number (after the *)
    Command: string;      //IMAP servers send back the command they are responding to, e.g. FETCH
    UID: string;        //Sometimes the UID is echoed back
    Flags: TIdMessageFlagsSet;  //Sometimes the FLAGS are echoed back
    Complete: Boolean;      //If false, line has no closing bracket (response continues on following line(s))
    ByteCount: integer;     //The value in a trailing byte count like {123}, -1 means not present
    IMAPFunction: string;     //E.g. FLAGS
    IMAPValue: string;      //E.g. '(\Seen \Deleted)'
  end;

  TIdIMAP4Commands = (
    cmdCAPABILITY,
    cmdNOOP,
    cmdLOGOUT,
    cmdAUTHENTICATE,
    cmdLOGIN,
    cmdSELECT,
    cmdEXAMINE,
    cmdCREATE,
    cmdDELETE,
    cmdRENAME,
    cmdSUBSCRIBE,
    cmdUNSUBSCRIBE,
    cmdLIST,
    cmdLSUB,
    cmdSTATUS,
    cmdAPPEND,
    cmdCHECK,
    cmdCLOSE,
    cmdEXPUNGE,
    cmdSEARCH,
    cmdFETCH,
    cmdSTORE,
    cmdCOPY,
    cmdUID,
    cmdXCmd
  );

  {CC3: Add csUnexpectedlyDisconnected for when we receive "Connection reset by peer"}
  TIdIMAP4ConnectionState = (
    csAny,
    csNonAuthenticated,
    csAuthenticated,
    csSelected,
    csUnexpectedlyDisconnected
  );

  {****************************************************************************
  Universal commands CAPABILITY, NOOP, and LOGOUT
  Authenticated state commands SELECT, EXAMINE, CREATE, DELETE, RENAME,
  SUBSCRIBE, UNSUBSCRIBE, LIST, LSUB, STATUS, and APPEND
  Selected state commands CHECK, CLOSE, EXPUNGE, SEARCH, FETCH, STORE, COPY, and UID
  *****************************************************************************}

  TIdIMAP4SearchKey = (
    skAll,     //All messages in the mailbox; the default initial key for ANDing.
    skAnswered,  //Messages with the \Answered flag set.
    skBcc,     //Messages that contain the specified string in the envelope structure's BCC field.
    skBefore,  //Messages whose internal date is earlier than the specified date.
    skBody,    //Messages that contain the specified string in the body of the message.
    skCc,    //Messages that contain the specified string in the envelope structure's CC field.
    skDeleted,   //Messages with the \Deleted flag set.
    skDraft,   //Messages with the \Draft flag set.
    skFlagged,   //Messages with the \Flagged flag set.
    skFrom,    //Messages that contain the specified string in the envelope structure's FROM field.
    skHeader,  //Messages that have a header with the specified field-name (as defined in [RFC-822])
           //and that contains the specified string in the [RFC-822] field-body.
    skKeyword,   //Messages with the specified keyword set.
    skLarger,  //Messages with an [RFC-822] size larger than the specified number of octets.
    skNew,     //Messages that have the \Recent flag set but not the \Seen flag.
           //This is functionally equivalent to "(RECENT UNSEEN)".
    skNot,     //Messages that do not match the specified search key.
    skOld,     //Messages that do not have the \Recent flag set. This is functionally
           //equivalent to "NOT RECENT" (as opposed to "NOT NEW").
    skOn,    //Messages whose internal date is within the specified date.
    skOr,    //Messages that match either search key.
    skRecent,  //Messages that have the \Recent flag set.
    skSeen,    //Messages that have the \Seen flag set.
    skSentBefore,//Messages whose [RFC-822] Date: header is earlier than the specified date.
    skSentOn,  //Messages whose [RFC-822] Date: header is within the specified date.
    skSentSince, //Messages whose [RFC-822] Date: header is within or later than the specified date.
    skSince,   //Messages whose internal date is within or later than the specified date.
    skSmaller,   //Messages with an [RFC-822] size smaller than the specified number of octets.
    skSubject,   //Messages that contain the specified string in the envelope structure's SUBJECT field.
    skText,    //Messages that contain the specified string in the header or body of the message.
    skTo,    //Messages that contain the specified string in the envelope structure's TO field.
    skUID,     //Messages with unique identifiers corresponding to the specified unique identifier set.
    skUnanswered,//Messages that do not have the \Answered flag set.
    skUndeleted, //Messages that do not have the \Deleted flag set.
    skUndraft,   //Messages that do not have the \Draft flag set.
    skUnflagged, //Messages that do not have the \Flagged flag set.
    skUnKeyWord, //Messages that do not have the specified keyword set.
    skUnseen
  );

  TIdIMAP4SearchKeyArray = array of TIdIMAP4SearchKey;

  TIdIMAP4SearchRec = record
    Date: TDateTime;
    Size: Integer;
    Text: String;
    SearchKey : TIdIMAP4SearchKey;
  end;

  TIdIMAP4SearchRecArray = array of TIdIMAP4SearchRec;

  TIdIMAP4StatusDataItem = (
    mdMessages,
    mdRecent,
    mdUIDNext,
    mdUIDValidity,
    mdUnseen
  );

  TIdIMAP4StoreDataItem = (
    sdReplace,
    sdReplaceSilent,
    sdAdd,
    sdAddSilent,
    sdRemove,
    sdRemoveSilent
  );

  TIdRetrieveOnSelect = (
    rsDisabled,
    rsHeaders,
    rsMessages
  );

  TIdAlertEvent = procedure(ASender: TObject; const AAlertMsg: String) of object;

  TIdIMAP4 = class(TIdMessageClient)
  protected
    FCmdCounter : Integer;
    FConnectionState : TIdIMAP4ConnectionState;
    FMailBox : TIdMailBox;
    FMailBoxSeparator: Char;
    FOnAlert: TIdAlertEvent;
    FRetrieveOnSelect: TIdRetrieveOnSelect;
    FMilliSecsToWaitToClearBuffer: integer;
    FMUTF7: TIdMUTF7;
    FOnWorkForPart: TWorkEvent;
    FOnWorkBeginForPart: TWorkBeginEvent;
    FOnWorkEndForPart: TWorkEndEvent;
    FGreetingBanner : String;  {CC7: Added because it may help identify the server}
    FHasCapa : Boolean;
    FSASLMechanisms : TIdSASLEntries;
    FAuthType : TIdIMAP4AuthenticationType;
    FCapabilities: TStrings;
    FLineStruct: TIdIMAPLineStruct;
    function  GetReplyClass:TIdReplyClass; override;
    function  CheckConnectionState(AAllowedState: TIdIMAP4ConnectionState): TIdIMAP4ConnectionState; overload;
    function  CheckConnectionState(const AAllowedStates: array of TIdIMAP4ConnectionState): TIdIMAP4ConnectionState; overload;
    procedure BeginWorkForPart(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
    procedure DoWorkForPart(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure EndWorkForPart(ASender: TObject; AWorkMode: TWorkMode);
    //The following call FMUTF7 but do exception-handling on invalid strings...
    function  DoMUTFEncode(aString : string):string;
    function  DoMUTFDecode(aString : string):string;
    function  GetCmdCounter: String;
    function  GetConnectionStateName: String;
    function  GetNewCmdCounter: String;
    property  LastCmdCounter: String read GetCmdCounter;
    property  NewCmdCounter: String read GetNewCmdCounter;
    { General Functions }
    function  ArrayToNumberStr (const AMsgNumList: array of Integer): String;
    function  MessageFlagSetToStr (const AFlags: TIdMessageFlagsSet): String;
    //This function is needed because when using the regular DateToStr with dd/MMM/yyyy
    //(which is the IMAP needed convension) may give the month as the local language
    //three letter month instead of the English month needed.
    function  DateToIMAPDateStr (const ADate: TDateTime): String;
    procedure StripCRLFs(var AText: string); overload; virtual;  //Allow users to optimise
    procedure StripCRLFs(ASourceStream, ADestStream: TStream); overload;
    { Parser Functions }
    procedure ParseImapPart(ABodyStructure: string;
          AImapParts: TIdImapMessageParts; AThisImapPart: TIdImapMessagePart;
          AParentImapPart: TIdImapMessagePart; APartNumber: integer);
    procedure ParseMessagePart(ABodyStructure: string; AMessageParts: TIdMessageParts;
          AThisMessagePart: TIdMessagePart; AParentMessagePart: TIdMessagePart;
          APartNumber: integer);
    procedure ParseBodyStructureResult(ABodyStructure: string; ATheParts: TIdMessageParts; AImapParts: TIdImapMessageParts);
    procedure ParseBodyStructurePart(APartString: string; AThePart: TIdMessagePart; AImapPart: TIdImapMessagePart);
    procedure ParseTheLine(ALine: string; APartsList: TStrings);
    procedure ParseIntoParts(APartString: string; AParams: TStrings);
    procedure ParseIntoBrackettedQuotedAndUnquotedParts(APartString: string; AParams: TStrings; AKeepBrackets: Boolean);
    procedure BreakApartParamsInQuotes(const AParam: string; AParsedList: TStrings);
    function  GetNextWord(AParam: string): string;
    function  GetNextQuotedParam(AParam: string; ARemoveQuotes: Boolean): string;
    procedure ParseExpungeResult (AMB: TIdMailBox; ACmdResultDetails: TStrings);
    procedure ParseListResult (AMBList: TStrings; ACmdResultDetails: TStrings);
    procedure ParseLSubResult(AMBList: TStrings; ACmdResultDetails: TStrings);
    procedure InternalParseListResult(ACmd: string; AMBList: TStrings; ACmdResultDetails: TStrings);
    procedure ParseMailBoxAttributeString(AAttributesList: String; var AAttributes: TIdMailBoxAttributesSet);
    procedure ParseMessageFlagString (AFlagsList: String; var AFlags: TIdMessageFlagsSet);
    procedure ParseSelectResult (AMB: TIdMailBox; ACmdResultDetails: TStrings);
    procedure ParseStatusResult (AMB: TIdMailBox; ACmdResultDetails: TStrings);
    procedure ParseSearchResult (AMB: TIdMailBox; ACmdResultDetails: TStrings);
    procedure ParseEnvelopeResult (AMsg: TIdMessage; ACmdResultStr: String);
    function  ParseLastCmdResult(ALine: string; AExpectedCommand: string; AExpectedIMAPFunction: array of string): Boolean;
    procedure ParseLastCmdResultButAppendInfo(ALine: string);
    function  InternalRetrieve(const AMsgNum: Integer; AUseUID: Boolean; AUsePeek: Boolean; ANoDecode: Boolean;
          AMsg: TIdMessage): Boolean;
    function  InternalRetrievePart(const AMsgNum: Integer; const APartNum: string;
          AUseUID: Boolean; AUsePeek: Boolean;
          ADestStream: TStream;
          var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
          var ABufferLength: Integer; {NOTE: var args cannot have default params}
          ADestFileNameAndPath: string = '';                     {Do not Localize}
          AContentTransferEncoding: string = 'text'): Boolean;             {Do not Localize}
    function  ParseBodyStructureSectionAsEquates(AParam: string): string;
    function  ParseBodyStructureSectionAsEquates2(AParam: string): string;
    function  InternalRetrieveText(const AMsgNum: Integer; var AText: string;
          AUseUID: Boolean; AUsePeek: Boolean; AUseFirstPartInsteadOfText: Boolean): Boolean;
    function  IsCapabilityListed(ACapability: string): Boolean;
    function  InternalRetrieveEnvelope(const AMsgNum: Integer; AMsg: TIdMessage; ADestList: TStrings): Boolean;
    function  UIDInternalRetrieveEnvelope(const AMsgUID: String; AMsg: TIdMessage; ADestList: TStrings): Boolean;
    function  InternalRetrievePartHeader(const AMsgNum: Integer; const APartNum: string; const AUseUID: Boolean;
          AHeaders: TIdHeaderList): Boolean;
    function  ReceiveHeader(AMsg: TIdMessage; const AAltTerm: string = ''): string; override;
    {CC3: Need to validate message numbers (relative and UIDs) and part numbers, because otherwise
    the routines wait for a response that never arrives and so functions never return.
    Also used for validating part numbers.}
    function  IsNumberValid(const ANumber: Integer): Boolean;
    function  IsUIDValid(const AUID: string): Boolean;
    function  IsImapPartNumberValid(const AUID: string): Boolean;
    function  IsItDigitsAndOptionallyPeriod(const AStr: string; AAllowPeriod: Boolean): Boolean;
    {CC6: Override IdMessageClient's ReceiveBody due to the responses from some servers...}
    procedure ReceiveBody(AMsg: TIdMessage; const ADelim: string = '.'); override;     {Do not Localize}
    procedure InitComponent; override;
    procedure SetMailBox(const Value: TIdMailBox);
    procedure SetSASLMechanisms(AValue: TIdSASLEntries);
  public
    { TIdIMAP4 Commands }
    destructor Destroy; override;
    //Requests a listing of capabilities that the server supports...
    function  Capability(ASlCapability: TStrings): Boolean; overload;
    function  FindHowServerCreatesFolders: TIdIMAP4FolderTreatment;
    procedure DoAlert(const AMsg: String);
    property  ConnectionState: TIdIMAP4ConnectionState read FConnectionState;
    property  MailBox: TIdMailBox read FMailBox write SetMailBox;
    {CC7: Two versions of AppendMsg are provided.  The first is the normal one you
    would use.  The second allows you to specify an alternative header list which
    will be used in place of AMsg.Headers.
    An email client may need the second type if it sends an email via IdSMTP and wants
    to copy it to a "Sent" IMAP folder.  In Indy 10,
    IdSMTP puts the generated headers in the LastGeneratedHeaders field, so you
    can use the second version of AppendMsg, passing it AMsg.LastGeneratedHeaders as
    the AAlternativeHeaders field.  Note that IdSMTP puts both the Headers and
    the ExtraHeaders fields in LastGeneratedHeaders.}
    function  AppendMsg(const AMBName: String; AMsg: TIdMessage; const AFlags: TIdMessageFlagsSet = []): Boolean; overload;
    function  AppendMsg(const AMBName: String; AMsg: TIdMessage; AAlternativeHeaders: TIdHeaderList;
          const AFlags: TIdMessageFlagsSet = []): Boolean; overload;
    //The following are used for raw (unparsed) messages in a file or stream...
    function  AppendMsgNoEncodeFromFile(const AMBName: String; ASourceFile: string; const AFlags: TIdMessageFlagsSet = []): Boolean;
    function  AppendMsgNoEncodeFromStream(const AMBName: String; AStream: TStream; const AFlags: TIdMessageFlagsSet = []): Boolean;
    //Requests a checkpoint of the currently selected mailbox.  Does NOTHING on most servers.
    function  CheckMailBox: Boolean;
    //Checks if the message was read or not.
    function  CheckMsgSeen(const AMsgNum: Integer): Boolean;
    //Method for logging in manually if you didn't login at connect
    procedure Login; virtual;
    //Connects and logins to the IMAP4 account.
    function  Connect(const AAutoLogin: boolean = true): Boolean; reintroduce; virtual;
    //Closes the current selected mailbox in the account.
    function  CloseMailBox: Boolean;
    //Creates a new mailbox with the specified name in the account.
    function  CreateMailBox(const AMBName: String): Boolean;
    //Deletes the specified mailbox from the account.
    function  DeleteMailBox(const AMBName: String): Boolean;
    //Marks messages for deletion, it will be deleted when the mailbox is purged.
    function  DeleteMsgs(const AMsgNumList: array of Integer): Boolean;
    //Logouts and disconnects from the IMAP account.
    procedure Disconnect(ANotifyPeer: Boolean); override;
    procedure DisconnectNotifyPeer; override;
    //Examines the specified mailbox and inserts the results to the TIdMailBox provided.
    function  ExamineMailBox(const AMBName: String; AMB: TIdMailBox): Boolean;
    //Expunges (deletes the marked files) the current selected mailbox in the account.
    function  ExpungeMailBox: Boolean;
    //Sends a NOOP (No Operation) to keep the account connection with the server alive.
    procedure KeepAlive;
    //Returns a list of all the child mailboxes (one level down) to the mailbox supplied.
    //This should be used when you fear that there are too many mailboxes and the listing of
    //all of them could be time consuming, so this should be used to retrieve specific mailboxes.
    function  ListInferiorMailBoxes(AMailBoxList, AInferiorMailBoxList: TStrings): Boolean;
    //Returns a list of all the mailboxes in the user account.
    function  ListMailBoxes(AMailBoxList: TStrings): Boolean;
    //Returns a list of all the subscribed mailboxes in the user account.
    function  ListSubscribedMailBoxes (AMailBoxList: TStrings): Boolean;
    //Renames the specified mailbox in the account.
    function  RenameMailBox(const AOldMBName, ANewMBName: String): Boolean;
    //Searches the current selected mailbox for messages matching the SearchRec and
    //returns the results to the mailbox SearchResults array.
    function  SearchMailBox(const ASearchInfo: array of TIdIMAP4SearchRec): Boolean;
    //Selects the current a mailbox in the account.
    function  SelectMailBox(const AMBName: String): Boolean;
    //Retrieves the status of the indicated mailbox.
    {CC2: It is pointless calling StatusMailBox with AStatusDataItems set to []
    because you are asking the IMAP server to update none of the status flags.
    Instead, if called with no AStatusDataItems specified, we use the standard flags
    returned by SelectMailBox, which allows the user to easily check if the mailbox
    has changed.}
    function  StatusMailBox(const AMBName: String; AMB: TIdMailBox): Boolean; overload;
    function  StatusMailBox(const AMBName: String; AMB: TIdMailBox;
          const AStatusDataItems: array of TIdIMAP4StatusDataItem): Boolean; overload;
    //Changes (adds or removes) message flags.
    function  StoreFlags(const AMsgNumList: array of Integer; const AStoreMethod: TIdIMAP4StoreDataItem;
          const AFlags: TIdMessageFlagsSet): Boolean;
    //Adds the specified mailbox name to the server's set of "active" or "subscribed"
    //mailboxes as returned by the LSUB command.
    function  SubscribeMailBox(const AMBName: String): Boolean;
    {CC8: Added CopyMsg, should have always been there...}
    function  CopyMsg(const AMsgNum: Integer; const AMBName: String): Boolean;
    //Copies a message from the current selected mailbox to the specified mailbox.     {Do not Localize}
    function  CopyMsgs(const AMsgNumList: array of Integer; const AMBName: String): Boolean;
    //Retrieves a whole message while marking it read.
    function  Retrieve(const AMsgNum: Integer; AMsg: TIdMessage): Boolean;
    //Retrieves a whole message "raw" and saves it to file, while marking it read.
    function  RetrieveNoDecodeToFile(const AMsgNum: Integer; ADestFile: string): Boolean;
    function  RetrieveNoDecodeToStream(const AMsgNum: Integer; AStream: TStream): Boolean;
    //Retrieves all envelope of the selected mailbox to the specified TIdMessageCollection.
    function  RetrieveAllEnvelopes(AMsgList: TIdMessageCollection): Boolean;
    //Retrieves all headers of the selected mailbox to the specified TIdMessageCollection.
    function  RetrieveAllHeaders(AMsgList: TIdMessageCollection): Boolean;
    //Retrieves all messages of the selected mailbox to the specified TIdMessageCollection.
    function  RetrieveAllMsgs(AMsgList: TIdMessageCollection): Boolean;
    //Retrieves the message envelope, parses it, and discards the envelope.
    function  RetrieveEnvelope(const AMsgNum: Integer; AMsg: TIdMessage): Boolean;
    //Retrieves the message envelope into a TStringList but does NOT parse it.
    function  RetrieveEnvelopeRaw(const AMsgNum: Integer; ADestList: TStrings): Boolean;
    //Returnes the message flag values.
    function  RetrieveFlags(const AMsgNum: Integer; var AFlags: TIdMessageFlagsSet): Boolean;
    {CC2: Following added for retrieving individual parts of a message...}
    function  InternalRetrieveStructure(const AMsgNum: Integer; AMsg: TIdMessage; AParts: TIdImapMessageParts): Boolean;
    //Retrieve only the message structure (this tells you what parts are in the message).
    function  RetrieveStructure(const AMsgNum: Integer; AMsg: TIdMessage): Boolean; overload;
    function  RetrieveStructure(const AMsgNum: Integer; AParts: TIdImapMessageParts): Boolean; overload;
    {CC2: Following added for retrieving individual parts of a message...}
    {Retrieve a specific individual part of a message to a stream (part/sub-part like '2' or '2.3')...}
    function  RetrievePart(const AMsgNum: Integer; const APartNum: string;
          ADestStream: TStream; AContentTransferEncoding: string = 'text'): Boolean; overload;    {Do not Localize}
    {Retrieve a specific individual part of a message where part is an integer or sub-part like '2.3'...}
    function  RetrievePart(const AMsgNum: Integer; const APartNum: string;
          var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
          var ABufferLength: Integer; AContentTransferEncoding: string = 'text'): Boolean; overload;  {Do not Localize}
    {Retrieve a specific individual part of a message where part is an integer (for backward compatibility)...}
    function  RetrievePart(const AMsgNum: Integer; const APartNum: Integer;
          var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
          var ABufferLength: Integer; AContentTransferEncoding: string = 'text'): Boolean; overload;  {Do not Localize}
    {Retrieve a specific individual part of a message to a stream (part/sub-part like '2' or '2.3')
     without marking the message as "read"...}
    function  RetrievePartPeek(const AMsgNum: Integer; const APartNum: string;
          ADestStream: TStream; AContentTransferEncoding: string = 'text'): Boolean; overload;    {Do not Localize}
    {Retrieve a specific individual part of a message where part is an integer or sub-part like '2.3'
     without marking the message as "read"...}
    function  RetrievePartPeek(const AMsgNum: Integer; const APartNum: string;
          var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
          var ABufferLength: Integer; AContentTransferEncoding: string = 'text'): Boolean; overload;  {Do not Localize}
    {Retrieve a specific individual part of a message where part is an integer (for backward compatibility)
     without marking the message as "read"...}
    function  RetrievePartPeek(const AMsgNum: Integer; const APartNum: Integer;
          var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
          var ABufferLength: Integer; AContentTransferEncoding: string = 'text'): Boolean; overload;  {Do not Localize}
    {CC2: Following added for retrieving individual parts of a message...}
    {Retrieve a specific individual part of a message where part is an integer (for backward compatibility)...}
    function  RetrievePartToFile(const AMsgNum: Integer; const APartNum: Integer;
          ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean; overload;
    {Retrieve a specific individual part of a message where part is an integer or sub-part like '2.3'...}
    function  RetrievePartToFile(const AMsgNum: Integer; const APartNum: string;
          ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean; overload;
    {CC2: Following added for retrieving individual parts of a message...}
    {Retrieve a specific individual part of a message where part is an integer (for backward compatibility)
     without marking the message as "read"...}
    function  RetrievePartToFilePeek(const AMsgNum: Integer; const APartNum: Integer;
          ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean;  overload;
    {Retrieve a specific individual part of a message where part is an integer or sub-part like '2.3'
     without marking the message as "read"...}
    function  RetrievePartToFilePeek(const AMsgNum: Integer; const APartNum: string;
          ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean; overload;
    {CC3: Following added for retrieving the text-only part of a message...}
    function  RetrieveText(const AMsgNum: Integer; var AText: string): Boolean;
    {CC4: An alternative for retrieving the text-only part of a message which
    may give a better response from some IMAP implementations...}
    function  RetrieveText2(const AMsgNum: Integer; var AText: string): Boolean;
    {CC3: Following added for retrieving the text-only part of a message
     without marking the message as "read"...}
    function  RetrieveTextPeek(const AMsgNum: Integer; var AText: string): Boolean;
    function  RetrieveTextPeek2(const AMsgNum: Integer; var AText: string): Boolean;
    //Retrieves only the message header.
    function  RetrieveHeader (const AMsgNum: Integer; AMsg: TIdMessage): Boolean;
    //CCD: Retrieve the header for a particular part...
    function  RetrievePartHeader(const AMsgNum: Integer; const APartNum: string; AHeaders: TIdHeaderList): Boolean;
    //Retrives the current selected mailbox size.
    function  RetrieveMailBoxSize: Integer;
    //Returnes the message size.
    function  RetrieveMsgSize(const AMsgNum: Integer): Integer;
    //Retrieves a whole message while keeping its Seen flag unchanged
    //(preserving the previous value).
    function  RetrievePeek(const AMsgNum: Integer; AMsg: TIdMessage): Boolean;
    //Get the UID corresponding to a relative message number.
    function  GetUID(const AMsgNum: Integer; var AUID: string): Boolean;
    //Copies a message from the current selected mailbox to the specified mailbox.
    function  UIDCopyMsg(const AMsgUID: String; const AMBName: String): Boolean;
    {CC8: Added UID version of CopyMsgs...}
    function  UIDCopyMsgs(const AMsgUIDList: TStrings; const AMBName: String): Boolean;
    //Checks if the message was read or not.
    function  UIDCheckMsgSeen(const AMsgUID: String): Boolean;
    //Marks a message for deletion, it will be deleted when the mailbox will be purged.
    function  UIDDeleteMsg(const AMsgUID: String): Boolean;
    function  UIDDeleteMsgs(const AMsgUIDList: array of String): Boolean;
    //Retrieves all envelope and UID of the selected mailbox to the specified TIdMessageCollection.
    function  UIDRetrieveAllEnvelopes(AMsgList: TIdMessageCollection): Boolean;
    //Retrieves a whole message while marking it read.
    function  UIDRetrieve(const AMsgUID: String; AMsg: TIdMessage): Boolean;
    //Retrieves a whole message "raw" and saves it to file, while marking it read.
    function  UIDRetrieveNoDecodeToFile(const AMsgUID: String; ADestFile: string): Boolean;
    function  UIDRetrieveNoDecodeToStream(const AMsgUID: String; AStream: TStream): Boolean;
    //Retrieves the message envelope, parses it, and discards the envelope.
    function  UIDRetrieveEnvelope(const AMsgUID: String; AMsg: TIdMessage): Boolean;
    //Retrieves the message envelope into a TStringList but does NOT parse it.
    function  UIDRetrieveEnvelopeRaw(const AMsgUID: String; ADestList: TStrings): Boolean;
    //Returnes the message flag values.
    function  UIDRetrieveFlags(const AMsgUID: String; var AFlags: TIdMessageFlagsSet): Boolean;
    {CC2: Following added for retrieving individual parts of a message...}
    function  UIDInternalRetrieveStructure(const AMsgUID: String; AMsg: TIdMessage; AParts: TIdImapMessageParts): Boolean;
    //Retrieve only the message structure (this tells you what parts are in the message).
    function  UIDRetrieveStructure(const AMsgUID: String; AMsg: TIdMessage): Boolean; overload;
    function  UIDRetrieveStructure(const AMsgUID: String; AParts: TIdImapMessageParts): Boolean; overload;
    {Retrieve a specific individual part of a message to a stream (part/sub-part like '2' or '2.3')...}
    function  UIDRetrievePart(const AMsgUID: String; const APartNum: string;
          var ADestStream: TStream; AContentTransferEncoding: string = 'text'): Boolean; overload;  {Do not Localize}
    {Retrieve a specific individual part of a message where part is an integer or sub-part like '2.3'...}
    function  UIDRetrievePart(const AMsgUID: String; const APartNum: string;
          var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
          var ABufferLength: Integer; AContentTransferEncoding: string = 'text'): Boolean; overload;  {Do not Localize}
    {Retrieve a specific individual part of a message where part is an integer (for backward compatibility)...}
    function  UIDRetrievePart(const AMsgUID: String; const APartNum: Integer;
          var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
          var ABufferLength: Integer; AContentTransferEncoding: string = 'text'): Boolean; overload;  {Do not Localize}
    {Retrieve a specific individual part of a message to a stream (part/sub-part like '2' or '2.3')
     without marking the message as "read"...}
    function  UIDRetrievePartPeek(const AMsgUID: String; const APartNum: string;
          var ADestStream: TStream; AContentTransferEncoding: string = 'text'): Boolean; overload;  {Do not Localize}
    {Retrieve a specific individual part of a message where part is an integer or sub-part like '2.3'...}
    function  UIDRetrievePartPeek(const AMsgUID: String; const APartNum: string;
          var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
          var ABufferLength: Integer; AContentTransferEncoding: string = 'text'): Boolean; overload;  {Do not Localize}
    {Retrieve a specific individual part of a message where part is an integer (for backward compatibility)...}
    function  UIDRetrievePartPeek(const AMsgUID: String; const APartNum: Integer;
          var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
          var ABufferLength: Integer; AContentTransferEncoding: string = 'text'): Boolean; overload;  {Do not Localize}
    {Retrieve a specific individual part of a message where part is an integer (for backward compatibility)...}
    function  UIDRetrievePartToFile(const AMsgUID: String; const APartNum: Integer;
          ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean; overload;
    {Retrieve a specific individual part of a message where part is an integer or sub-part like '2.3'...}
    function  UIDRetrievePartToFile(const AMsgUID: String; const APartNum: string;
          ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean; overload;
    {Retrieve a specific individual part of a message where part is an integer (for backward compatibility)...}
    function  UIDRetrievePartToFilePeek(const AMsgUID: String; const APartNum: Integer;
          ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean; overload;
    {Retrieve a specific individual part of a message where part is an integer or sub-part like '2.3'...}
    function  UIDRetrievePartToFilePeek(const AMsgUID: String; const APartNum: string;
          ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean; overload;
    {Following added for retrieving the text-only part of a message...}
    function  UIDRetrieveText(const AMsgUID: String; var AText: string): Boolean;
    function  UIDRetrieveText2(const AMsgUID: String; var AText: string): Boolean;
    {Following added for retrieving the text-only part of a message without marking the message as read...}
    function  UIDRetrieveTextPeek(const AMsgUID: String; var AText: string): Boolean;
    function  UIDRetrieveTextPeek2(const AMsgUID: String; var AText: string): Boolean;
    //Retrieves only the message header.
    function  UIDRetrieveHeader(const AMsgUID: String; AMsg: TIdMessage): Boolean;
    //Retrieve the header for a particular part...
    function  UIDRetrievePartHeader(const AMsgUID: String; const APartNum: string; AHeaders: TIdHeaderList): Boolean;
    //Retrives the current selected mailbox size.
    function  UIDRetrieveMailBoxSize: Integer;
    //Returnes the message size.
    function  UIDRetrieveMsgSize(const AMsgUID: String): Integer;
    //Retrieves a whole message while keeping its Seen flag untucked
    //(preserving the previous value).
    function  UIDRetrievePeek(const AMsgUID: String; AMsg: TIdMessage): Boolean;
    //Searches the current selected mailbox for messages matching the SearchRec and
    //returnes the results as UIDs to the mailbox SearchResults array.
    function  UIDSearchMailBox(const ASearchInfo: array of TIdIMAP4SearchRec): Boolean;
    //Changes (adds or removes) message flags.
    function  UIDStoreFlags(const AMsgUID: String; const AStoreMethod: TIdIMAP4StoreDataItem;
          const AFlags: TIdMessageFlagsSet): Boolean; overload;
    function  UIDStoreFlags(const AMsgUIDList: array of String; const AStoreMethod: TIdIMAP4StoreDataItem;
          const AFlags: TIdMessageFlagsSet): Boolean; overload;
    //Removes the specified mailbox name from the server's set of "active" or "subscribed"
    //mailboxes as returned by the LSUB command.
    function  UnsubscribeMailBox(const AMBName: String): Boolean;
    { IdTCPConnection Commands }
    function  GetInternalResponse(const ATag: String; AExpectedResponses: array of String; ASingleLineMode: Boolean;
          ASingleLineMayBeSplit: Boolean = False): string; reintroduce; overload;
    function  GetResponse: string; reintroduce; overload;
    function  SendCmd(const AOut: string; AExpectedResponses: array of String): string; overload;
    function  SendCmd(const ATag, AOut: string; AExpectedResponses: array of String): string; overload;
    function  ReadLnWait: string;
    procedure WriteLn(const AOut: string = '');
  { IdTCPConnection Commands }
    published
    property  OnAlert: TIdAlertEvent read FOnAlert write FOnAlert;
    property  Password;
    property  RetrieveOnSelect: TIdRetrieveOnSelect read FRetrieveOnSelect write FRetrieveOnSelect default rsDisabled;
    property  Port default IdPORT_IMAP4;
    property  Username;
    property  MailBoxSeparator: Char read FMailBoxSeparator write FMailBoxSeparator default '/';      {Do not Localize}
    {GreetingBanner added because it may help identify the server...}
    property  GreetingBanner : string read FGreetingBanner;
    property  Host;
    property  UseTLS;
    property  SASLMechanisms : TIdSASLEntries read FSASLMechanisms write SetSASLMechanisms;
    property  AuthType : TIdIMAP4AuthenticationType read FAuthType write FAuthType default DEF_IMAP4_AUTH;
    property  MilliSecsToWaitToClearBuffer: integer read FMilliSecsToWaitToClearBuffer write FMilliSecsToWaitToClearBuffer;
    {The following is the OnWork property for use when retrieving PARTS of a message.
    It is also used for AppendMsg and Retrieve.  This is in addition to the normal
    OnWork property, which is exposed by TIdIMAP4, but which is only activated during
    IMAP sending & receiving of commands (subject to the general OnWork caveats, i.e.
    it is only called during certain methods, note OnWork[Begin][End] are all only
    called in the methods AllData(), PerformCapture() and Read/WriteStream() ).
    When a PART of a message is processed, use this for progress notification of
    retrieval of IMAP parts, such as retrieving attachments.  OnWorkBegin and
    OnWorkEnd are not exposed, because they won't be activated during the processing
    of a part.}
    property  OnWorkForPart: TWorkEvent read FOnWorkForPart write FOnWorkForPart;
    property  OnWorkBeginForPart: TWorkBeginEvent read FOnWorkBeginForPart write FOnWorkBeginForPart;
    property  OnWorkEndForPart: TWorkEndEvent read FOnWorkEndForPart write FOnWorkEndForPart;
  end;

implementation

uses
  //facilitate inlining only.
  {$IFDEF WIN32_OR_WIN64_OR_WINCE}
     {$IFDEF USEINLINE}
  Windows,
     {$ENDIF}
  {$ENDIF}
  {$IFDEF DOTNET}
    {$IFDEF USEINLINE}
  System.IO,
    {$ENDIF}
  {$ENDIF} 
  IdCoder,
  IdEMailAddress,
  IdResourceStrings,
  IdExplicitTLSClientServerBase,
  IdGlobalProtocols,
  IdExceptionCore,
  IdStack,
  IdStream,
  IdTCPStream,
  IdText,
  IdAttachment,
  IdResourceStringsProtocols,
  IdBuffer,
  IdAttachmentMemory,
  IdReplyIMAP4,
  IdTCPConnection, SysUtils;

type
  TIdIMAP4FetchDataItem = (
    fdAll,           //Macro equivalent to: (FLAGS INTERNALDATE RFC822.SIZE ENVELOPE)
    fdBody,          //Non-extensible form of BODYSTRUCTURE.
    fdBodyExtensible,
    fdBodyPeek,
    fdBodyStructure, //The [MIME-IMB] body structure of the message.  This
                     //is computed by the server by parsing the [MIME-IMB]
                     //header fields in the [RFC-822] header and [MIME-IMB] headers.
    fdEnvelope,      //The envelope structure of the message.  This is
                     //computed by the server by parsing the [RFC-822]
                     //header into the component parts, defaulting various
                     //fields as necessary.
    fdFast,          //Macro equivalent to: (FLAGS INTERNALDATE RFC822.SIZE)
    fdFlags,         //The flags that are set for this message.
    fdFull,          //Macro equivalent to: (FLAGS INTERNALDATE RFC822.SIZE ENVELOPE BODY)
    fdInternalDate,  //The internal date of the message.
    fdRFC822,        //Functionally equivalent to BODY[], differing in the
                     //syntax of the resulting untagged FETCH data (RFC822
                     //is returned).
    fdRFC822Header,  //Functionally equivalent to BODY.PEEK[HEADER],
                     //differing in the syntax of the resulting untagged
                     //FETCH data (RFC822.HEADER is returned).
    fdRFC822Size,    //The [RFC-822] size of the message.
    fdRFC822Text,    //Functionally equivalent to BODY[TEXT], differing in
                     //the syntax of the resulting untagged FETCH data
                     //(RFC822.TEXT is returned).
    fdHeader,        //CC: Added to get the header of a part
    fdUID            //The unique identifier for the message.
  );

const
  IMAP4Commands : array [cmdCapability..cmdXCmd] of String = (
    { Client Commands - Any State}
    'CAPABILITY',     {Do not Localize}
    'NOOP',       {Do not Localize}
    'LOGOUT',       {Do not Localize}
    { Client Commands - Non Authenticated State}
    'AUTHENTICATE',   {Do not Localize}
    'LOGIN',      {Do not Localize}
    { Client Commands - Authenticated State}
    'SELECT',       {Do not Localize}
    'EXAMINE',      {Do not Localize}
    'CREATE',       {Do not Localize}
    'DELETE',       {Do not Localize}
    'RENAME',       {Do not Localize}
    'SUBSCRIBE',    {Do not Localize}
    'UNSUBSCRIBE',    {Do not Localize}
    'LIST',       {Do not Localize}
    'LSUB',       {Do not Localize}
    'STATUS',       {Do not Localize}
    'APPEND',       {Do not Localize}
    { Client Commands - Selected State}
    'CHECK',      {Do not Localize}
    'CLOSE',      {Do not Localize}
    'EXPUNGE',      {Do not Localize}
    'SEARCH',       {Do not Localize}
    'FETCH',      {Do not Localize}
    'STORE',      {Do not Localize}
    'COPY',       {Do not Localize}
    'UID',        {Do not Localize}
    { Client Commands - Experimental/ Expansion}
    'X'         {Do not Localize}
  );

  IMAP4FetchDataItem : array [fdAll..fdUID] of String = (
    'ALL',       {Do not Localize}   //Macro equivalent to: (FLAGS INTERNALDATE RFC822.SIZE ENVELOPE)
    'BODY',      {Do not Localize}   //Non-extensible form of BODYSTRUCTURE.
    'BODY[%s]<%s>',  {Do not Localize}
    'BODY.PEEK[]',   {Do not Localize}
    'BODYSTRUCTURE',   {Do not Localize}   //The [MIME-IMB] body structure of the message.  This
                       //is computed by the server by parsing the [MIME-IMB]
                       //header fields in the [RFC-822] header and [MIME-IMB] headers.
    'ENVELOPE',    {Do not Localize}   //The envelope structure of the message.  This is
                      //computed by the server by parsing the [RFC-822]
                      //header into the component parts, defaulting various
                      //fields as necessary.
    'FAST',      {Do not Localize}   //Macro equivalent to: (FLAGS INTERNALDATE RFC822.SIZE)
    'FLAGS',       {Do not Localize}   //The flags that are set for this message.
    'FULL',      {Do not Localize}   //Macro equivalent to: (FLAGS INTERNALDATE RFC822.SIZE ENVELOPE BODY)
    'INTERNALDATE',  {Do not Localize}   //The internal date of the message.
    'RFC822',      {Do not Localize}   //Functionally equivalent to BODY[], differing in the
                      //syntax of the resulting untagged FETCH data (RFC822
                      //is returned).
    'RFC822.HEADER',   {Do not Localize}   //Functionally equivalent to BODY.PEEK[HEADER],
                      //differing in the syntax of the resulting untagged
                      //FETCH data (RFC822.HEADER is returned).
    'RFC822.SIZE',   {Do not Localize}   //The [RFC-822] size of the message.
    'RFC822.TEXT',   {Do not Localize}   //Functionally equivalent to BODY[TEXT], differing in
                      //the syntax of the resulting untagged FETCH data
                      //(RFC822.TEXT is returned).
    'HEADER',      {Do not Localize}   //CC: Added to get the header of a part
    'UID'        {Do not Localize}   //The unique identifier for the message.
  );

  IMAP4SearchKeys : array [skAll..skUnseen] of String = (
    'ALL',       {Do not Localize}   //All messages in the mailbox; the default initial key for ANDing.
    'ANSWERED',  {Do not Localize}   //Messages with the \Answered flag set.
    'BCC',       {Do not Localize}   //Messages that contain the specified string in the envelope structure's BCC field.
    'BEFORE',    {Do not Localize}   //Messages whose internal date is earlier than the specified date.
    'BODY',      {Do not Localize}   //Messages that contain the specified string in the body of the message.
    'CC',        {Do not Localize}   //Messages that contain the specified string in the envelope structure's CC field.
    'DELETED',   {Do not Localize}   //Messages with the \Deleted flag set.
    'DRAFT',     {Do not Localize}   //Messages with the \Draft flag set.
    'FLAGGED',   {Do not Localize}   //Messages with the \Flagged flag set.
    'FROM',      {Do not Localize}   //Messages that contain the specified string in the envelope structure's FROM field.
    'HEADER',    {Do not Localize}   //Messages that have a header with the specified field-name (as defined in [RFC-822])
                                     //and that contains the specified string in the [RFC-822] field-body.
    'KEYWORD',   {Do not Localize}   //Messages with the specified keyword set.
    'LARGER',    {Do not Localize}   //Messages with an [RFC-822] size larger than the specified number of octets.
    'NEW',       {Do not Localize}   //Messages that have the \Recent flag set but not the \Seen flag.
                                     //This is functionally equivalent to "(RECENT UNSEEN)".
    'NOT',       {Do not Localize}   //Messages that do not match the specified search key.
    'OLD',       {Do not Localize}   //Messages that do not have the \Recent flag set. This is functionally
                                     //equivalent to "NOT RECENT" (as opposed to "NOT NEW").
    'ON',        {Do not Localize}   //Messages whose internal date is within the specified date.
    'OR',        {Do not Localize}   //Messages that match either search key.
    'RECENT',    {Do not Localize}   //Messages that have the \Recent flag set.
    'SEEN',      {Do not Localize}   //Messages that have the \Seen flag set.
    'SENTBEFORE',{Do not Localize}   //Messages whose [RFC-822] Date: header is earlier than the specified date.
    'SENTON',    {Do not Localize}   //Messages whose [RFC-822] Date: header is within the specified date.
    'SENTSINCE', {Do not Localize}   //Messages whose [RFC-822] Date: header is within or later than the specified date.
    'SINCE',     {Do not Localize}   //Messages whose internal date is within or later than the specified date.
    'SMALLER',   {Do not Localize}   //Messages with an [RFC-822] size smaller than the specified number of octets.
    'SUBJECT',   {Do not Localize}   //Messages that contain the specified string in the envelope structure's SUBJECT field.
    'TEXT',      {Do not Localize}   //Messages that contain the specified string in the header or body of the message.
    'TO',        {Do not Localize}   //Messages that contain the specified string in the envelope structure's TO field.
    'UID',       {Do not Localize}   //Messages with unique identifiers corresponding to the specified unique identifier set.
    'UNANSWERED',{Do not Localize}   //Messages that do not have the \Answered flag set.
    'UNDELETED', {Do not Localize}   //Messages that do not have the \Deleted flag set.
    'UNDRAFT',   {Do not Localize}   //Messages that do not have the \Draft flag set.
    'UNFLAGGED', {Do not Localize}   //Messages that do not have the \Flagged flag set.
    'UNKEYWORD', {Do not Localize}   //Messages that do not have the specified keyword set.
    'UNSEEN'     {Do not Localize}
  );

  IMAP4StoreDataItem : array [sdReplace..sdRemoveSilent] of String = (
    'FLAGS',         {Do not Localize}
    'FLAGS.SILENT',  {Do not Localize}
    '+FLAGS',        {Do not Localize}
    '+FLAGS.SILENT', {Do not Localize}
    '-FLAGS',        {Do not Localize}
    '-FLAGS.SILENT'  {Do not Localize}
  );

  IMAP4StatusDataItem : array [mdMessages..mdUnseen] of String = (
    'MESSAGES',      {Do not Localize}
    'RECENT',        {Do not Localize}
    'UIDNEXT',       {Do not Localize}
    'UIDVALIDITY',   {Do not Localize}
    'UNSEEN'         {Do not Localize}
  );

{ TIdIMAP4WorkHelper }

type
  TIdIMAP4WorkHelper = class(TIdComponent)
  protected
    fIMAP4: TIdIMAP4;
    fOldTarget: TIdComponent;
  public
    constructor Create(AIMAP4: TIdIMAP4); reintroduce;
    destructor Destroy; override;
  end;

constructor TIdIMAP4WorkHelper.Create(AIMAP4: TIdIMAP4);
begin
  inherited Create(nil);
  fIMAP4 := AIMAP4;
  fOldTarget := fIMAP4.WorkTarget;
  fIMAP4.WorkTarget := Self;
  Self.OnWorkBegin := fIMAP4.BeginWorkForPart;
  Self.OnWork := fIMAP4.DoWorkForPart;
  Self.OnWorkEnd := fIMAP4.EndWorkForPart;
end;

destructor TIdIMAP4WorkHelper.Destroy;
begin
  fIMAP4.WorkTarget := fOldTarget;
  inherited Destroy;
end;

{ TIdEMUTF7 }

function TIdMUTF7.Encode(aString: string): string;
{ -- MUTF7Encode -------------------------------------------------------------
PRE:  nothing
POST: returns a string encoded as described in IETF RFC 3501, section 5.1.3
    based upon RFC 2152

    2004-03-02 roman puls: speed improvements of around 2000 percent due to
         replacement of pchar/while loops to delphi-style string/for
         loops. Minor changes for '&' handling. Delphi 8 compatible.
    2004-02-29 roman puls: initial version                ---}
var
  c : byte;
  bitbuf : Cardinal;
  bitShift : integer;
  x : integer;
  escaped : boolean;
begin
  result := '';
  escaped := false;
  bitShift := 0;
  bitbuf := 0;

  for x := 1 to length(aString) do begin
    c := byte(aString[x]);
    // c must be < 128 _and_ in table b64table
    if (c <= $7f) and (b64Table[c] <> $ff) or (aString[x] = '&') then begin  // we can directly encode that char
      if escaped then begin
        if (bitShift > 0) then begin  // flush bitbuffer if needed
          result := result +
          char(byte(b64Chars[bitbuf shl (6 - bitShift) and $3f]));
        end;
        result := result + '-';       // leave escape sequence
        escaped := false;
      end;
      if (aString[x] = '&') then begin   // escape special char "&"
        escaped := false;
        result := result + '&-';
      end else begin
        result := result + char(c);     // store direct translated char
      end;
    end else begin
      if not escaped then begin
        result := result + '&';
        escaped := true;
        bitShift := 0;
      end;
      bitbuf := bitbuf shl 16;        // shift
      bitBuf := bitBuf or c;        // and store new bye
      inc(bitShift, 16);
      while (bitShift >= 6) do begin    // flush buffer as far as we can
        dec(bitShift, 6);
        result := result + char(byte(b64Chars[(bitbuf shr bitShift) and $3f]));
      end;
    end;
  end;

  // we love duplicate work but must test for flush buffers for the price
  // of speed (loop)
  if escaped then begin
    if (bitShift > 0) then begin
      result := result + char(byte(b64Chars[bitbuf shl (6 - bitShift) and $3f]));
    end;
    result := result + '-';
  end;
end;

function TIdMUTF7.Decode(aString: string): string;
{ -- mUTF7Decode -------------------------------------------------------------
PRE:  aString encoding must conform to IETF RFC 3501, section 5.1.3
POST: SUCCESS: an 8bit string
    FAILURE: an exception of type EMUTF7Decode

    2004-03-02 roman puls: speed improvements of around 400 percent due to
         replacement of pchar/while loops to delphi-style string/for
         loops. Delphi 8 compatible.
    2004-02-29 roman puls: initial version                ---}
var
  ch : word;
  c  : byte;
  last : char;
  bitBuf  : word;
  escaped : boolean;
  x,
  bitShift: integer;
begin
  result := '';
  escaped := false;
  bitShift := 0;
  last := #0;
  bitBuf := 0;

  for x := 1 to length(aString) do begin
    ch := byte(aString[x]);
    if not escaped then begin
      if (aString[x] = '&') then begin         // escape sequence found
        escaped := true;
        bitBuf := 0;
        bitShift := 10;
        last := '&';
      end else begin
        if (ch < $80) and (b64Table[ch] <> $ff) then begin
          result := result + aString[x];
        end else begin
          raise EMUTF7Decode.CreateFmt('Illegal char #%d in UTF7 sequence.', [ch]);    {do not localize}
        end;
      end;
    end else begin // we're escaped
      { break out of escape mode }
      if (astring[x] = '-') then begin
        // extra check for pending bits
        escaped := false;
        if (last = '&') then begin // special sequence '&-' ?
          result := result + '&';
        end else begin
          if ((bitBuf or bitShift) < 6) then begin  // check for bitboundaries
            raise EMUTF7Decode.Create('Illegal bit shifting in MUTF7 string');       {do not localize}
          end;
        end;
      end else begin // escaped
        // check range for ch: must be < 128 and in b64table
        if (ch >= $80) or (b64Index[ch] = -1) then begin
          raise EMUTF7Decode.CreateFmt('Illegal char #%d in UTF7 sequence.', [ch]);    {do not localize}
        end;
        ch := b64Index[ch];
        if (bitShift > 0) then begin
          bitbuf := bitBuf or (ch shl bitShift);
          dec(bitShift, 6);
        end else begin
          bitbuf := bitBuf or (ch shr -bitShift);
          c := byte(bitBuf);

          // us ASCII in encoded string?
          if (c >= $20) and (c < $7f) then begin // what is with '&'? -> not allowed!
            // must be encoded "&-"
            raise EMUTF7Decode.CreateFmt('US-ASCII char #%d in UTF7 sequence.', [c]);  {do not localize}
          end;
          result := result + char(c);
          bitBuf := (ch shl (16 + bitShift)) and $ffff;
          inc(bitShift, 10);
        end;
      end;
      last := #0;
    end;
  end;
  if escaped then begin
    raise EmUTF7Decode.create('Missing unescape in UTF7 sequence.');           {do not localize}
  end
  else if (bitBuf <> 0) then begin
    raise EmUTF7Decode.create('Illegal bit boundaries in UTF7 sequence.');       {do not localize}
  end;
end;

function TIdMUTF7.Valid(aMUTF7String : string):boolean;
{ -- mUTF7valid -------------------------------------------------------------
PRE:  NIL
POST: returns true if string is correctly encoded (as described in mUTF7Encode)
    returns false otherwise
}
begin
  try
    result := (aMUTF7String = {mUTF7}Encode({mUTF7}Decode(aMUTF7String)));
  except
    on e: EmUTF7Error do begin Result := False; end;
    // do not handle others
  end;
end;

function TIdMUTF7.Append(const aMUTF7String, aAnsiStr : string):string;
{ -- mUTF7Append -------------------------------------------------------------
PRE:  aMUTF7String is complying to mUTF7Encode's description
POST: SUCCESS: a concatenation of both input strings in mUTF
    FAILURE: an exception of EMUTF7Decode or EMUTF7Decode will be raised
}
begin
  result := {mUTF7}Encode({mUTF7}Decode(aMUTF7String) + aAnsiStr);
end;

{ TIdImapMessageParts }

constructor TIdImapMessagePart.Create(Collection: TCollection);
begin
  {Make sure these are initialised properly...}
  inherited Create(Collection);
  FParentPart := -1;
  FBoundary := '';          {Do not Localize}
end;

function TIdImapMessageParts.GetItem(Index: Integer): TIdImapMessagePart;
begin
  Result := TIdImapMessagePart(inherited GetItem(Index));
end;

function TIdImapMessageParts.Add: TIdImapMessagePart;
begin
  Result := TIdImapMessagePart(inherited Add);
end;

procedure TIdImapMessageParts.SetItem(Index: Integer; const Value: TIdImapMessagePart);
begin
  inherited SetItem(Index, Value);
end;

{ TIdIMAP4 }

procedure TIdIMAP4.BeginWorkForPart(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  if Assigned(FOnWorkBeginForPart) then begin
    FOnWorkBeginForPart(Self, AWorkMode, AWorkCountMax);
  end;
end;

procedure TIdIMAP4.DoWorkForPart(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  if Assigned(FOnWorkForPart) then begin
    FOnWorkForPart(Self, AWorkMode, AWorkCount);
  end;
end;

procedure TIdIMAP4.EndWorkForPart(ASender: TObject; AWorkMode: TWorkMode);
begin
  if Assigned(FOnWorkEndForPart) then begin
    FOnWorkEndForPart(Self, AWorkMode);
  end;
end;

//The following call FMUTF7 but do exception-handling on invalid strings...
function TIdIMAP4.DoMUTFEncode(aString : string):string;
begin
  try
    Result := FMUTF7.Encode(aString);
  except
    Result := aString;
  end;
end;

function TIdIMAP4.DoMUTFDecode(aString : string):string;
begin
  try
    Result := FMUTF7.Decode(aString);
  except
    Result := aString;
  end;
end;

function TIdIMAP4.GetReplyClass:TIdReplyClass;
begin
  Result := TIdReplyIMAP4;
end;

function TIdIMAP4.CheckConnectionState(AAllowedState: TIdIMAP4ConnectionState): TIdIMAP4ConnectionState;
begin
  Result := CheckConnectionState([AAllowedState]);
end;

function TIdIMAP4.CheckConnectionState(const AAllowedStates: array of TIdIMAP4ConnectionState): TIdIMAP4ConnectionState;
var
  i: integer;
begin
  if High(AAllowedStates) > -1 then begin
    for i := Low(AAllowedStates) to High(AAllowedStates) do begin
      if FConnectionState = AAllowedStates[i] then begin
        Result := FConnectionState;
        Exit;
      end;
    end;
  end;
  raise EIdConnectionStateError.CreateFmt(RSIMAP4ConnectionStateError, [GetConnectionStateName]);
end;

function TIdIMAP4.FindHowServerCreatesFolders: TIdIMAP4FolderTreatment;
var
  LUsersFolders: TStringList;
  LN: integer;
  LInbox: string;
  LTestFolder: string;
  LFound: Boolean;
begin
  LUsersFolders := TStringList.Create;
  try
    //Get folder names...
    if (not ListMailBoxes(LUsersFolders)) or (LUsersFolders.Count = 0) then begin
      Result := ftCannotRetrieveAnyFolders;
      Exit;
    end;
    //Do we have an Inbox?
    LInbox := '';
    for LN := 0 to LUsersFolders.Count-1 do begin
      if TextIsSame(LUsersFolders.Strings[LN], 'INBOX') then begin      {Do not Localize}
        LInbox := LUsersFolders.Strings[LN];
        break;
      end;
    end;
    if LInbox = '' then begin
      Result := ftCannotTestBecauseHasNoInbox;
      Exit;
    end;

    //Make sure our test folder does not already exist at the top level...
    LTestFolder := 'CiaransTestFolder';                     {Do not Localize}
    repeat
      LFound := False;
      for LN := 0 to LUsersFolders.Count-1 do begin
        if TextIsSame(LUsersFolders.Strings[LN], LTestFolder) then begin
          LTestFolder := LTestFolder + '9';                 {Do not Localize}
          LFound := True;
          Break;
        end;
      end;
    until not LFound;

    //Try to create LTestFolder at the top level...
    if CreateMailbox(LTestFolder) then begin
      //We were able to create it at the top level - delete it and exit..
      DeleteMailbox(LTestFolder);
      Result := ftAllowsTopLevelCreation;
      Exit;
    end;

    //See if our test folder does not exist under INBOX...
    LTestFolder := LInbox + FMailBoxSeparator + 'CiaransTestFolder';      {Do not Localize}
    repeat
      LFound := False;
      for LN := 0 to LUsersFolders.Count-1 do begin
        if TextIsSame(LUsersFolders.Strings[LN], LTestFolder) then begin
          LTestFolder := LTestFolder + '9';                 {Do not Localize}
          LFound := True;
          Break;
        end;
      end;
    until not LFound;

    //Try to create LTestFolder under Inbox...
    if CreateMailbox(LTestFolder) then begin
      //We were able to create it under the top level - delete it and exit..
      DeleteMailbox(LTestFolder);
      Result := ftFoldersMustBeUnderInbox;
      Exit;
    end;

    //It does not allow us create folders under any level (read-only?)...
    Result := ftDoesNotAllowFolderCreation;
  finally
    FreeAndNil(LUsersFolders);
  end;
end;

function TIdIMAP4.IsNumberValid(const ANumber: Integer): Boolean;
  {CC3: Need to validate message numbers (relative and UIDs), because otherwise
  the routines wait for a response that never arrives and so functions never return.}
begin
  if ANumber < 1 then begin
    raise EIdNumberInvalid.Create(RSIMAP4NumberInvalid);
  end;
  Result := True;
end;

function TIdIMAP4.IsUIDValid(const AUID: string): Boolean;
  {CC3: Need to validate message numbers (relative and UIDs), because otherwise
  the routines wait for a response that never arrives and so functions never return.}
begin
  //Must be digits only (no - or .)
  IsItDigitsAndOptionallyPeriod(AUID, False);
  Result := IsNumberValid(IndyStrToInt(AUID));
end;

function TIdIMAP4.IsImapPartNumberValid(const AUID: string): Boolean;
  {CC3: IMAP part numbers are 3 or 4.5 etc, i.e. digits or period allowed}
begin
  Result := IsItDigitsAndOptionallyPeriod(AUID, True);
end;

function TIdIMAP4.IsItDigitsAndOptionallyPeriod(const AStr: string; AAllowPeriod: Boolean): Boolean;
var
  LN: integer;
begin
  if Length(AStr) = 0 then begin
    raise EIdNumberInvalid.Create(RSIMAP4NumberInvalid);
  end;
  for LN := 1 to Length(AStr) do begin
    if not IsNumeric(AStr[LN]) then begin
      if (not AAllowPeriod) or (AStr[LN] <> '.') then begin  {Do not Localize}
        raise EIdNumberInvalid.Create(RSIMAP4NumberInvalid);
      end;
    end;
  end;
  Result := True;
end;

function TIdIMAP4.GetUID(const AMsgNum: Integer; var AUID: string): Boolean;
{This gets the message UID from the message relative number.}
begin
  Result := False;
  AUID := '';         {Do not Localize}
  IsNumberValid(AMsgNum);

  CheckConnectionState(csSelected);
  {Some servers return NO if the requested message number is not present
  (e.g. Cyrus), others return OK but no data (CommuniGate).}
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdFetch] + ' ' + IntToStr(AMsgNum) + {Do not Localize}
    ' (' + IMAP4FetchDataItem[fdUID] + ')' ), [IMAP4Commands[cmdFetch]]);   {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    //Might as well leave 3rd param as [] because ParseLastCmdResult always grabs the UID...
    if LastCmdResult.Text.Count > 0 then begin
      if ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], []) then begin
        AUID := FLineStruct.UID;
        Result := True;
      end;
    end;
  end;
end;


procedure TIdIMAP4.WriteLn(const AOut: string = '');
begin
  IOHandler.WriteLn(AOut);
end;

function  TIdIMAP4.ReadLnWait: string;
begin
  Result := IOHandler.ReadLnWait;  {This can have hit an exception of Connection Reset By Peer (timeout)}
end;

{ IdTCPConnection Commands... }

function TIdIMAP4.GetInternalResponse(const ATag: String; AExpectedResponses: array of String;
  ASingleLineMode: Boolean; ASingleLineMayBeSplit: Boolean {= False}): string;
{ASingleLineMode is True if the caller just wants the FIRST line of the response,
e.g., he may be looking only for "* FETCH (blah blah)", because he needs to parse
that line to figure out how the rest will follow.  This arises with a number of the
FETCH commands where the caller needs to get the byte-count from the first line
before he can retrieve the rest of the response.
Note "FETCH" would have to be in AExpectedResponses.
When False, the caller wants everything up to and including the reply terminator
(e.g. "C45 OK Completed").
In ASingleLineMode, we ignore any lines that dont have one of AExpectedResponses
at the start, otherwise we add all lines to .Text and later strip out any lines that
dont have one of AExpectedResponses at the start.
ASingleLineMayBeSplit (which should only be used with ASingleLineMode = True) deals
with the (unusual) case where the server cannot or does not fit a single-line
response onto one line.  This arises when FETCHing the BODYSTRUCTURE, which can
be very long.  The server (Courier, anyway) signals it by adding a byte-count to
the end of the first line, that would not normally be present.}
//For example, for normal short responses, the server would send:
//   * FETCH (BODYSTRUCTURE (Part1 Part2))
//but if it splits it, it sends:
//   * FETCH (BODYSTRUCTURE (Part1 {16}
//   Part2))
//The number in the chain brackets {16} seems to be random.
{WARNING: If you use ASingleLineMayBeSplit on a line that is EXPECTED to end
with a byte-count, the code will break, so don't use it unless absolutely
necessary.}
var
  LLine: String;
  LResponse: TStringList;
  LWord: string;
  LPos: integer;
  LGotALineWithAnExpectedResponse: Boolean;
  LStrippedLine: string;
  LSplitLine: string;
begin
  LGotALineWithAnExpectedResponse := False;
  LResponse := TStringList.Create;
  try
    repeat
      LLine := ReadLnWait;
      LResponse.Add(LLine);
      {CCB: Trap case of server telling you that you have been disconnected, usually because
      you were inactive for too long (get "* BYE idle time too long").  }
      if TextStartsWith(LLine, '* BYE') then begin       {Do not Localize}
        {If BYE is in AExpectedResponses, this means we are expecting to
        disconnect, i.e. it is a LOGOUT.}
        if PosInStrArray('BYE', AExpectedResponses) = -1 then begin   {Do not Localize}
          {We were not expecting a BYE response.
          For the moment, throw an exception.  Could modify this by adding a
          ReconnectOnDisconnect property to automatically reconnect?}
          FConnectionState := csUnexpectedlyDisconnected;
          raise EIdDisconnectedProbablyIdledOut.Create(RSIMAP4DisconnectedProbablyIdledOut);
        end;
      end;
      if ASingleLineMode then begin
        LStrippedLine := LLine;
        if TextStartsWith(LStrippedLine, '* ') then begin  {Do not Localize}
          LStrippedLine := Copy(LStrippedLine, 3, MaxInt);
        end;
        LGotALineWithAnExpectedResponse := TIdReplyIMAP4(FLastCmdResult).DoesLineHaveExpectedResponse(LStrippedLine, AExpectedResponses);
        if LGotALineWithAnExpectedResponse then begin
          //See if it may continue on the next line...
          if ASingleLineMayBeSplit then begin
            //If the line is split, it will have a byte-count field at the end...
            while TextEndsWith(LStrippedLine, '}') do begin
              //It is split.
              //First, remove the byte count...
              LPos := Length(LStrippedLine)-1;
              while LStrippedLine[LPos] <> '{' do begin
                Dec(LPos);
              end;
              LStrippedLine := Copy(LStrippedLine, 1, LPos-1);
              //The rest of the reply is on the following line...
              LSplitLine := ReadLnWait;  //Cannot thrash LLine, need it later
              LResponse.Add(LSplitLine);
              LStrippedLine := LStrippedLine + LSplitLine;
            end;
          end;
          FLastCmdResult.Text.Clear;
          TIdReplyIMAP4(FLastCmdResult).Extra.Clear;
          FLastCmdResult.Text.Add(LStrippedLine);
        end;
      end;
      //Need to get the 1st word on the line in case it is +, PREAUTH, etc...
      LPos := Pos(' ', LLine);                      {Do not Localize}
      if LPos <> 0 then begin
        {There are at least two words on this line...}
        LWord := Trim(Copy(LLine, 1, LPos-1));
      end;
    until
      TextStartsWith(LLine, ATag)
      or (PosInStrArray(LWord, VALID_TAGGEDREPLIES) <> -1)
      or LGotALineWithAnExpectedResponse;
    if LGotALineWithAnExpectedResponse then begin
      //This only arises if ASingleLineMode is True...
      FLastCmdResult.Code := IMAP_OK;
    end else begin
      FLastCmdResult.FormattedReply := LResponse;
      TIdReplyIMAP4(FLastCmdResult).RemoveUnsolicitedResponses(AExpectedResponses);
    end;
    Result := FLastCmdResult.Code;
  finally
    FreeAndNil(LResponse);
  end;
end;

function TIdIMAP4.SendCmd(const AOut: string; AExpectedResponses: array of String): string;
begin
  Result := SendCmd(NewCmdCounter, AOut, AExpectedResponses);
end;

function TIdIMAP4.SendCmd(const ATag, AOut: string; AExpectedResponses: array of String): string;
var
  LDataInBuffer: Boolean;
begin
  if (AOut <> #0) then begin
    repeat
      //Remove anything that may be unprocessed from a previous (probably failed) command...
      LDataInBuffer := inherited IOHandler.Readable(MilliSecsToWaitToClearBuffer);
      if LDataInBuffer then begin
        inherited IOHandler.ReadLnWait;
      end;
    until not LDataInBuffer;
    {CC3: Catch "Connection reset by peer"...}
    try
      WriteLn(ATag + ' ' + AOut);                     {Do not Localize}
    except
      on E: EIdSocketError do begin
        if E.LastError = 10054 then begin
          //Connection reset by peer...
          FConnectionState := csUnexpectedlyDisconnected;
          raise;
        end;
      end;
    end;
  end;
  Result := GetInternalResponse(ATag , AExpectedResponses, False);
end;

{ ...IdTCPConnection Commands }

procedure TIdIMAP4.DoAlert(const AMsg: String);
begin
  if Assigned(OnAlert) then begin
    OnAlert(Self, AMsg);
  end;
end;

procedure TIdIMAP4.SetMailBox(const Value: TIdMailBox);
begin
  FMailBox.Assign(Value);
end;

procedure TIdIMAP4.SetSASLMechanisms(AValue: TIdSASLEntries);
begin
  FSASLMechanisms.Assign(AValue);
end;

procedure TIdIMAP4.Login;
begin
  try
    if UseTLS in ExplicitTLSVals then begin
      if SupportsTLS then begin
        if SendCmd(NewCmdCounter, 'STARTTLS', []) = IMAP_OK then begin  {Do not Localize}
          TLSHandshake;
          //obtain capabilities again - RFC2595
          Capability(FCapabilities);
        end else begin
          ProcessTLSNegCmdFailed;
        end;
      end else begin
        ProcessTLSNotAvail;
      end;
    end;
    if LastCmdResult.Code = IMAP_OK then begin
      FConnectionState := csNonAuthenticated;
      FCmdCounter := 0;
      if FAuthType = iatUserPass then begin
        if Length(Password) <> 0 then begin                              {Do not Localize}
          SendCmd(NewCmdCounter, IMAP4Commands[cmdLogin] + ' ' + Username + ' ' + Password, []);   {Do not Localize}
        end else begin
          SendCmd(NewCmdCounter, IMAP4Commands[cmdLogin] + ' ' + Username, []);          {Do not Localize}
        end;
        if LastCmdResult.Code = IMAP_OK then begin
          FConnectionState := csAuthenticated;
          Capability(FCapabilities);
        end;
      end else begin
        if Capability(FCapabilities) then begin
          FSASLMechanisms.LoginSASL('AUTHENTICATE', ['* OK'], ['* +'], Self, FCapabilities);     {Do not Localize}
        end;
        Capability(FCapabilities);
      end;
    end else begin
      if LastCmdResult.Code = IMAP_PREAUTH then begin
        FConnectionState := csAuthenticated;
        FCmdCounter := 0;
      end;
    end;
    Capability(FCapabilities);
  except
    Disconnect;
    raise;
  end;
end;

function TIdIMAP4.Connect(const AAutoLogin: Boolean = True): Boolean;
begin
  {CC2: Need to set FConnectionState to csNonAuthenticated here.  If not, then
  an unsuccessful connect after a previous successful connect (such as when a
  client program changes users) can leave it as csAuthenticated.}
  FConnectionState := csNonAuthenticated;
  {CC2: Don't call Connect if already connected, this could be just a change of user}
  if not Connected then begin
    inherited Connect;
  end;
  try
    GetResponse;
   // if PosInStrArray(LastCmdResult.Code, [IMAP_OK, IMAP_PREAUTH]) = -1 then begin
      {Should have got OK or PREAUTH in the greeting.  Happened with some server,
      may need further investigation and coding...}
  //  end;
    {CC7: Save FGreetingBanner so the user can use it to determine what type of
    server he is connected to...}
    if LastCmdResult.Text.Count > 0 then begin
      FGreetingBanner := LastCmdResult.Text[0];
    end else begin
      FGreetingBanner := '';
    end;
    if AAutoLogin then begin
      Login;
    end;
    Result := True;
  except
    Disconnect(False);
    raise;
  end;
end;

procedure TIdIMAP4.InitComponent;
begin
  inherited InitComponent;
  FMailBox := TIdMailBox.Create(Self);
  FSASLMechanisms := TIdSASLEntries.Create(Self);
  Port := IdPORT_IMAP4;
  FLineStruct := TIdIMAPLineStruct.Create;
  FCapabilities := TStringList.Create;
  FMUTF7 := TIdMUTF7.Create;

  //Todo:  Not sure which number is appropriate.  Should be tested further.
  FImplicitTLSProtPort := IdPORT_IMAP4S;
  FRegularProtPort := IdPORT_IMAP4;

  FMilliSecsToWaitToClearBuffer := IDF_DEFAULT_MS_TO_WAIT_TO_CLEAR_BUFFER;
  FCmdCounter := 0;
  FConnectionState := csNonAuthenticated;
  FRetrieveOnSelect := rsDisabled;
  {CC2: FMailBoxSeparator is now detected when a mailbox is selected, following
  line is probably redundant, but leave it here as a default just in case.}
  FMailBoxSeparator := '/';                           {Do not Localize}
end;

procedure TIdIMAP4.Disconnect(ANotifyPeer: Boolean);
begin
  try
    inherited Disconnect(ANotifyPeer);
  finally
    FConnectionState := csNonAuthenticated;
    FCapabilities.Clear;
  end;
end;

procedure TIdIMAP4.DisconnectNotifyPeer;
begin
  inherited DisconnectNotifyPeer;
  //IMPORTANT: Logout must pass 'BYE' as the first
  //element of the AExpectedResponses array (the 3rd param in SendCmd
  //below), because this flags to GetInternalResponse that this is the
  //logout, and it must EXPECT the BYE response
  SendCmd(NewCmdCounter, IMAP4Commands[cmdLogout], ['BYE']);        {Do not Localize}
end;

procedure TIdIMAP4.KeepAlive;
begin
  //Avialable in any state.
  SendCmd(NewCmdCounter, IMAP4Commands[cmdNoop], []);
end;

function TIdIMAP4.IsCapabilityListed(ACapability: string):Boolean;
var
  LCapabilities: TStringList;
  LN: Integer;
begin
  Result := False;
  LCapabilities := TStringList.Create;
  try
    if Capability(LCapabilities) then begin
      for LN := 0 to LCapabilities.Count-1 do begin
        if TextIsSame(ACapability, LCapabilities.Strings[LN]) then begin
          Result := True;
          Exit;
        end;
      end;
    end;
  finally
    FreeAndNil(LCapabilities);
  end;
end;


function TIdIMAP4.Capability(ASlCapability: TStrings): Boolean;
begin
  //Available in any state.
  ASlCapability.Clear;
  Result := False;
  SendCmd(NewCmdCounter, (IMAP4Commands[CmdCapability]), [IMAP4Commands[CmdCapability]]);
  if LastCmdResult.Code = IMAP_OK then begin
    if LastCmdResult.Text.Count > 0 then begin
      BreakApart(LastCmdResult.Text[0], ' ', ASlCapability);        {Do not Localize}
    end;
    ASlCapability.Delete(0);
    Result := True;
  end;
  FHasCapa := Result;
end;

function TIdIMAP4.GetCmdCounter: String;
begin
  Result := 'C' + IntToStr(FCmdCounter);                    {Do not Localize}
end;

function TIdIMAP4.GetNewCmdCounter: String;
begin
  Inc(FCmdCounter);
  Result := 'C' + IntToStr(FCmdCounter);                    {Do not Localize}
end;

destructor TIdIMAP4.Destroy;
begin
  {Disconnect before we die}
  { Note we have to pass false to an overloaded method or an exception is
    raised in the destructor.  That can cause weirdness in the IDE. }
  if Connected then begin
    Disconnect(False);
  end;
  FreeAndNil(FMailBox);
  FreeAndNil(FSASLMechanisms);
  FreeAndNil(FLineStruct);
  FreeAndNil(FCapabilities);
  FreeAndNil(FMUTF7);
  inherited Destroy;
end;

function TIdIMAP4.SelectMailBox(const AMBName: String): Boolean;
begin
  Result := False;
  CheckConnectionState([csAuthenticated, csSelected]);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdSelect] + ' "' + DoMUTFEncode(AMBName) + '"'),    {Do not Localize}
    ['FLAGS', 'OK', 'EXISTS', 'RECENT', '[READ-WRITE]', '[ALERT]']);               {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    //Put the parse in the IMAP Class and send the MB;
    ParseSelectResult(FMailBox, LastCmdResult.Text);
    FMailBox.Name := AMBName;
    FConnectionState := csSelected;
    case RetrieveOnSelect of
      rsHeaders: RetrieveAllHeaders(FMailBox.MessageList);
      rsMessages: RetrieveAllMsgs(FMailBox.MessageList);
    end;
    Result := True;
  end;
end;

function TIdIMAP4.ExamineMailBox(const AMBName: String; AMB: TIdMailBox): Boolean;
begin
  Result := False;
  CheckConnectionState([csAuthenticated, csSelected]);
  //TO DO: Check that Examine's expected responses really are STATUS, FLAGS and OK...
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdExamine] + ' "' + DoMUTFEncode(AMBName) + '"'),     {Do not Localize}
    ['STATUS', 'FLAGS', 'OK', 'EXISTS', 'RECENT', '[READ-WRITE]', '[ALERT]']);           {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    ParseSelectResult(AMB, LastCmdResult.Text);
    AMB.Name := AMBName;
    FConnectionState := csSelected;
    Result := True;
  end;
end;

function TIdIMAP4.CloseMailBox: Boolean;
begin
  Result := False;
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, IMAP4Commands[cmdClose], []);
  if LastCmdResult.Code = IMAP_OK then begin
    MailBox.Clear;
    FConnectionState := csAuthenticated;
    Result := True;
  end;
end;

function TIdIMAP4.CreateMailBox(const AMBName: String): Boolean;
begin
  {CC5: Recode to return False if NO returned rather than throwing an exception...}
  Result := False;
  CheckConnectionState([csAuthenticated, csSelected]);
  {CC5: The NO response is typically due to Permission Denied}
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdCreate] + ' "' + DoMUTFEncode(AMBName) + '"'), []);   {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    Result := True;
  end;
end;

function TIdIMAP4.DeleteMailBox(const AMBName: String): Boolean;
begin
  {CC5: Recode to return False if NO returned rather than throwing an exception...}
  Result := False;
  CheckConnectionState([csAuthenticated, csSelected]);
  {CC5: The NO response is typically due to Permission Denied}
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdDelete] + ' "' + DoMUTFEncode(AMBName) + '"'), []);   {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    Result := True;
  end;
end;

function TIdIMAP4.RenameMailBox(const AOldMBName, ANewMBName: String): Boolean;
begin
  {CC5: Recode to return False if NO returned rather than throwing an exception...}
  Result := False;
  CheckConnectionState([csAuthenticated, csSelected]);
  {CC5: The NO response is typically due to Permission Denied}
  SendCmd(NewCmdCounter, ( IMAP4Commands[cmdRename] + ' "' +               {Do not Localize}
    DoMUTFEncode(AOldMBName) + '" "' + DoMUTFEncode(ANewMBName) + '"'), []);       {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    Result := True;
  end;
end;

function TIdIMAP4.StatusMailBox(const AMBName: String; AMB: TIdMailBox): Boolean;
  {CC2: It is pointless calling StatusMailBox with AStatusDataItems set to []
  because you are asking the IMAP server to update none of the status flags.
  Instead, if called with no AStatusDataItems specified, use the standard flags
  returned by SelectMailBox, which allows the user to easily check if the mailbox
  has changed.  Overload the functions, since AStatusDataItems cannot be set
  to nil.}
var
  AStatusDataItems: array[1..5] of TIdIMAP4StatusDataItem;
begin
  AStatusDataItems[1] := mdMessages;
  AStatusDataItems[2] := mdRecent;
  AStatusDataItems[3] := mdUIDNext;
  AStatusDataItems[4] := mdUIDValidity;
  AStatusDataItems[5] := mdUnseen;
  Result := StatusMailBox(AMBName, AMB, AStatusDataItems);
end;

function TIdIMAP4.StatusMailBox(const AMBName: String; AMB: TIdMailBox; const AStatusDataItems: array of TIdIMAP4StatusDataItem): Boolean;
var
  LDataItems : string;
  Ln : Integer;
begin
  Result := False;
  CheckConnectionState([csAuthenticated, csSelected]);
  for Ln := Low(AStatusDataItems) to High(AStatusDataItems) do begin
    case AStatusDataItems[Ln] of
      mdMessages:    LDataItems := LDataItems + IMAP4StatusDataItem[mdMessages] + ' ';      {Do not Localize}
      mdRecent:      LDataItems := LDataItems + IMAP4StatusDataItem[mdRecent] + ' ';        {Do not Localize}
      mdUIDNext:     LDataItems := LDataItems + IMAP4StatusDataItem[mdUIDNext] + ' ';      {Do not Localize}
      mdUIDValidity: LDataItems := LDataItems + IMAP4StatusDataItem[mdUIDValidity] + ' ';  {Do not Localize}
      mdUnseen:      LDataItems := LDataItems + IMAP4StatusDataItem[mdUnseen] + ' ';        {Do not Localize}
    end;
  end;
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdStatus] + ' "' + DoMUTFEncode(AMBName) + '" (' +    {Do not Localize}
    Trim(LDataItems) + ')'), [IMAP4Commands[cmdStatus]]);                    {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    ParseStatusResult(AMB, LastCmdResult.Text);
    Result := True;
  end;
end;

function TIdIMAP4.CheckMailBox: Boolean;
begin
  Result := False;
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, IMAP4Commands[cmdCheck], []);
  if LastCmdResult.Code = IMAP_OK then begin
    Result := True;
  end;
end;

function TIdIMAP4.ExpungeMailBox: Boolean;
begin
  Result := False;
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, IMAP4Commands[cmdExpunge], []);
  if LastCmdResult.Code = IMAP_OK then begin
    ParseExpungeResult(FMailBox, LastCmdResult.Text);
    Result := True;
  end;
end;

function TIdIMAP4.SearchMailBox(const ASearchInfo: array of TIdIMAP4SearchRec): Boolean;
var
  LSearchStr : String;
  Ln : Integer;
begin
  Result := False;
  for Ln := Low(ASearchInfo) to High(ASearchInfo) do begin
    case ASearchInfo[Ln].SearchKey of
      skAnswered:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skAnswered] + ' ';                             {Do not Localize}
      skBcc:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skBcc] + ' "' + ASearchInfo[Ln].Text + '" ';               {Do not Localize}
      skBefore:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skBefore] + ' ' + DateToIMAPDateStr ( ASearchInfo[Ln].Date ) + ' ';    {Do not Localize}
      skBody:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skBody] + ' "' + ASearchInfo[Ln].Text + '" ';              {Do not Localize}
      skCc:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skCc] + ' "' + ASearchInfo[Ln].Text + '" ';                {Do not Localize}
      skDeleted:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skDeleted] + ' ';                            {Do not Localize}
      skDraft:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skDraft] + ' ';                              {Do not Localize}
      skFlagged:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skFlagged] + ' ';                            {Do not Localize}
      skFrom:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skFrom] + ' "' + ASearchInfo[Ln].Text + '" ';              {Do not Localize}
      skLarger:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skLarger] + ' ' + IntToStr ( ASearchInfo[Ln].Size ) + ' ';         {Do not Localize}
      skNew:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skNew] + ' ';                              {Do not Localize}
      skNot:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skNot] + ' ';                              {Do not Localize}
      skOld:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skOld] + ' ';                              {Do not Localize}
      skOn:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skOn] + ' ' + DateToIMAPDateStr ( ASearchInfo[Ln].Date ) + ' ';      {Do not Localize}
      skOr:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skOr] + ' ';                               {Do not Localize}
      skRecent:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skRecent] + ' ';                             {Do not Localize}
      skSeen:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skSeen] + ' ';                               {Do not Localize}
      skSentBefore:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skSentBefore] + ' ' + DateToIMAPDateStr ( ASearchInfo[Ln].Date ) + ' ';  {Do not Localize}
      skSentOn:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skSentOn] + ' ' + DateToIMAPDateStr ( ASearchInfo[Ln].Date ) + ' ';    {Do not Localize}
      skSentSince:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skSentSince] + ' ' + DateToIMAPDateStr ( ASearchInfo[Ln].Date ) + ' ';   {Do not Localize}
      skSince:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skSince] + ' ' + DateToIMAPDateStr ( ASearchInfo[Ln].Date ) + ' ';     {Do not Localize}
      skSmaller:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skSmaller] + ' ' + IntToStr ( ASearchInfo[Ln].Size ) + ' ';        {Do not Localize}
      skSubject:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skSubject] + ' "' + ASearchInfo[Ln].Text + '" ';             {Do not Localize}
      skText:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skText] + ' "' + ASearchInfo[Ln].Text + '" ';              {Do not Localize}
      skTo:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skTo] + ' "' + ASearchInfo[Ln].Text + '" ';                {Do not Localize}
      skUID:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skUID] + ' ' + ASearchInfo[Ln].Text + ' ';                 {Do not Localize}
      skUnanswered:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skUnanswered] + ' ';                           {Do not Localize}
      skUndeleted:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skUndeleted] + ' ';                            {Do not Localize}
      skUndraft:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skUndraft] + ' ';                            {Do not Localize}
      skUnflagged:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skUnflagged] + ' ';                            {Do not Localize}
      skUnKeyWord:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skUnKeyWord] + ' ';                            {Do not Localize}
      skUnseen:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skUnseen] + ' ';                             {Do not Localize}
    end;
  end;
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdSearch] + ' ' + Trim (LSearchStr)), [IMAP4Commands[cmdSearch]]);           {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    ParseSearchResult(FMailBox, LastCmdResult.Text);
    Result := True;
  end;
end;

function TIdIMAP4.UIDSearchMailBox(const ASearchInfo: array of TIdIMAP4SearchRec) : Boolean;
var
  LSearchStr : String;
  Ln : Integer;
begin
  Result := False;
  for Ln := Low(ASearchInfo) to High(ASearchInfo) do begin
    case ASearchInfo[Ln].SearchKey of
      skAnswered:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skAnswered] + ' ';                             {Do not Localize}
      skBcc:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skBcc] + ' "' + ASearchInfo[Ln].Text + '" ';               {Do not Localize}
      skBefore:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skBefore] + ' ' + DateToIMAPDateStr ( ASearchInfo[Ln].Date ) + ' ';    {Do not Localize}
      skBody:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skBody] + ' "' + ASearchInfo[Ln].Text + '" ';              {Do not Localize}
      skCc:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skCc] + ' "' + ASearchInfo[Ln].Text + '" ';                {Do not Localize}
      skDeleted:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skDeleted] + ' ';                            {Do not Localize}
      skDraft:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skDraft] + ' ';                              {Do not Localize}
      skFlagged:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skFlagged] + ' ';                            {Do not Localize}
      skFrom:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skFrom] + ' "' + ASearchInfo[Ln].Text + '" ';              {Do not Localize}
      //skHeader: //Need to check
      //skKeyword: //Need to check
      skLarger:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skLarger] + ' ' + IntToStr ( ASearchInfo[Ln].Size ) + ' ';         {Do not Localize}
      skNew:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skNew] + ' ';                              {Do not Localize}
      skNot:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skNot] + ' ';                              {Do not Localize}
      skOld:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skOld] + ' ';                              {Do not Localize}
      skOn:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skOn] + ' ' + DateToIMAPDateStr ( ASearchInfo[Ln].Date ) + ' ';      {Do not Localize}
      skOr:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skOr] + ' ';                               {Do not Localize}
      skRecent:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skRecent] + ' ';                             {Do not Localize}
      skSeen:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skSeen] + ' ';                               {Do not Localize}
      skSentBefore:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skSentBefore] + ' ' + DateToIMAPDateStr ( ASearchInfo[Ln].Date ) + ' ';  {Do not Localize}
      skSentOn:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skSentOn] + ' ' + DateToIMAPDateStr ( ASearchInfo[Ln].Date ) + ' ';    {Do not Localize}
      skSentSince:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skSentSince] + ' ' + DateToIMAPDateStr ( ASearchInfo[Ln].Date ) + ' ';   {Do not Localize}
      skSince:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skSince] + ' ' + DateToIMAPDateStr ( ASearchInfo[Ln].Date ) + ' ';     {Do not Localize}
      skSmaller:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skSmaller] + ' ' + IntToStr ( ASearchInfo[Ln].Size ) + ' ';        {Do not Localize}
      skSubject:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skSubject] + ' "' + ASearchInfo[Ln].Text + '" ';             {Do not Localize}
      skText:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skText] + ' "' + ASearchInfo[Ln].Text + '" ';              {Do not Localize}
      skTo:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skTo] + ' "' + ASearchInfo[Ln].Text + '" ';                {Do not Localize}
      skUID:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skUID] + ' ' + ASearchInfo[Ln].Text + ' ';                 {Do not Localize}
      skUnanswered:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skUnanswered] + ' ';                           {Do not Localize}
      skUndeleted:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skUndeleted] + ' ';                            {Do not Localize}
      skUndraft:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skUndraft] + ' ';                            {Do not Localize}
      skUnflagged:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skUnflagged] + ' ';                            {Do not Localize}
      skUnKeyWord:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skUnKeyWord] + ' ';                            {Do not Localize}
      skUnseen:
        LSearchStr := LSearchStr + IMAP4SearchKeys[skUnseen] + ' ';                             {Do not Localize}
    end;
  end;
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdUID] + ' ' + IMAP4Commands[cmdSearch] + ' ' + Trim (LSearchStr)),          {Do not Localize}
    [IMAP4Commands[cmdSearch], IMAP4Commands[cmdUID]]);                                     {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    ParseSearchResult(FMailBox, LastCmdResult.Text);
    Result := True;
  end;
end;

function TIdIMAP4.SubscribeMailBox(const AMBName: String): Boolean;
begin
  Result := False;
  CheckConnectionState([csAuthenticated, csSelected]);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdSubscribe] + ' "' + DoMUTFEncode(AMBName) + '"'), []);      {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    Result := True;
  end;
end;

function TIdIMAP4.UnsubscribeMailBox(const AMBName: String): Boolean;
begin
  Result := False;
  CheckConnectionState([csAuthenticated, csSelected]);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdUnsubscribe] + ' "' + DoMUTFEncode(AMBName) + '"' ), []);     {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    Result := True;
  end;
end;

function TIdIMAP4.ListMailBoxes(AMailBoxList: TStrings): Boolean;
begin
  Result := False;
  {CC2: This is one of the few cases where the server can return only "OK completed"
  meaning that the user has no mailboxes.}
  CheckConnectionState([csAuthenticated, csSelected]);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdList] + ' "" *'), [IMAP4Commands[cmdList]]);      {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    ParseListResult(AMailBoxList, LastCmdResult.Text);
    Result := True;
  end;
end;

function TIdIMAP4.ListInferiorMailBoxes(AMailBoxList, AInferiorMailBoxList: TStrings): Boolean;
var
  Ln : Integer;
  LAuxMailBoxList : TStringList;
begin
  Result := False;
  {CC2: This is one of the few cases where the server can return only "OK completed"
  meaning that the user has no inferior mailboxes.}
  CheckConnectionState([csAuthenticated, csSelected]);
  if AMailBoxList = nil then begin
    SendCmd(NewCmdCounter, (IMAP4Commands[cmdList] + ' "" %'), [IMAP4Commands[cmdList]]);    {Do not Localize}
    if LastCmdResult.Code = IMAP_OK then begin
      ParseListResult(AInferiorMailBoxList, LastCmdResult.Text);
      //The INBOX mailbox is added because I think it always has to exist
      //in an IMAP4 account (default) but it does not list it in this command.
      Result := True;
    end;
  end else begin
    LAuxMailBoxList := TStringList.Create;
    try
      AInferiorMailBoxList.Clear;
      for Ln := 0 to AMailBoxList.Count - 1 do begin
        SendCmd(NewCmdCounter, ( IMAP4Commands[cmdList] + ' "" "' +            {Do not Localize}
          AMailBoxList[Ln] + FMailBoxSeparator + '%"'), [IMAP4Commands[cmdList]]);     {Do not Localize}
        if LastCmdResult.Code = IMAP_OK then begin
          ParseListResult(LAuxMailBoxList, LastCmdResult.Text);
          AInferiorMailBoxList.AddStrings(LAuxMailBoxList);
          Result := True;
        end else begin
          Break;
        end;
      end;
    finally
      FreeAndNil(LAuxMailBoxList);
    end;
  end;
end;

function TIdIMAP4.ListSubscribedMailBoxes(AMailBoxList: TStrings): Boolean;
begin
  {CC2: This is one of the few cases where the server can return only "OK completed"
  meaning that the user has no subscribed mailboxes.}
  Result := False;
  CheckConnectionState([csAuthenticated, csSelected]);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdLSub] + ' "" *'), [IMAP4Commands[cmdList], IMAP4Commands[cmdLSub]]);   {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    // ds - fixed bug # 506026
    ParseLSubResult(AMailBoxList, LastCmdResult.Text);
    Result := True;
  end;
end;

function TIdIMAP4.StoreFlags(const AMsgNumList: array of Integer;
  const AStoreMethod: TIdIMAP4StoreDataItem; const AFlags: TIdMessageFlagsSet): Boolean;
var
  LDataItem,
  LMsgSet,
  LFlags: String;
begin
  Result := False;
  if Length(AMsgNumList) > 0 then begin
    LMsgSet := ArrayToNumberStr(AMsgNumList);
    case AStoreMethod of
      sdReplace: LDataItem := IMAP4StoreDataItem[sdReplaceSilent];
      sdAdd:     LDataItem := IMAP4StoreDataItem[sdAddSilent];
      sdRemove:  LDataItem := IMAP4StoreDataItem[sdRemoveSilent];
    end;
    LFlags := MessageFlagSetToStr(AFlags);
    CheckConnectionState(csSelected);
    SendCmd(NewCmdCounter, (IMAP4Commands[cmdStore] + ' ' + LMsgSet + ' ' +      {Do not Localize}
      LDataItem + ' (' + Trim ( LFlags ) + ')'), []);                {Do not Localize}
    if LastCmdResult.Code = IMAP_OK then begin
      Result := True;
    end;
  end;
end;

function TIdIMAP4.UIDStoreFlags(const AMsgUID: String;
  const AStoreMethod: TIdIMAP4StoreDataItem; const AFlags: TIdMessageFlagsSet): Boolean;
var
  LDataItem,
  LFlags : String;
begin
  Result := False;
  IsUIDValid(AMsgUID);
  case AStoreMethod of
    sdReplace: LDataItem := IMAP4StoreDataItem[sdReplaceSilent];
    sdAdd:     LDataItem := IMAP4StoreDataItem[sdAddSilent];
    sdRemove:  LDataItem := IMAP4StoreDataItem[sdRemoveSilent];
  end;
  LFlags := MessageFlagSetToStr(AFlags);
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdUID] + ' ' + IMAP4Commands[cmdStore] + ' ' +  {Do not Localize}
    AMsgUID + ' ' + LDataItem + ' (' + Trim ( LFlags ) + ')'), []);            {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    Result := True;
  end;
end;

function TIdIMAP4.UIDStoreFlags(const AMsgUIDList: array of String;
  const AStoreMethod: TIdIMAP4StoreDataItem; const AFlags: TIdMessageFlagsSet): Boolean;
var
  LDataItem,
  LMsgSet,
  LFlags : String;
  LN: integer;
begin
  Result := False;
  LMsgSet := '';
  for LN := 0 to Length(AMsgUIDList) -1 do begin
    IsUIDValid(AMsgUIDList[LN]);
    if LN > 0 then begin
      LMsgSet := LMsgSet + ',';          {Do not Localize}
    end;
    LMsgSet := LMsgSet+AMsgUIDList[LN];
  end;
  case AStoreMethod of
    sdReplace: LDataItem := IMAP4StoreDataItem[sdReplaceSilent];
    sdAdd:     LDataItem := IMAP4StoreDataItem[sdAddSilent];
    sdRemove:  LDataItem := IMAP4StoreDataItem[sdRemoveSilent];
  end;
  LFlags := MessageFlagSetToStr(AFlags);
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdUID] + ' ' + IMAP4Commands[cmdStore] + ' ' +  {Do not Localize}
    LMsgSet + ' ' + LDataItem + ' (' + Trim ( LFlags ) + ')'), []);            {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    Result := True;
  end;
end;

function TIdIMAP4.CopyMsgs(const AMsgNumList: array of Integer; const AMBName: String): Boolean;
var
  LMsgSet : String;
begin
  Result := False;
  if Length(AMsgNumList) > 0 then begin
    LMsgSet := ArrayToNumberStr ( AMsgNumList );
    CheckConnectionState(csSelected);
    SendCmd(NewCmdCounter, ( IMAP4Commands[cmdCopy] + ' ' + LMsgSet + ' "' + DoMUTFEncode(AMBName) + '"' ), []);  {Do not Localize}
    if LastCmdResult.Code = IMAP_OK then begin
      Result := True;
    end;
  end;
end;

function TIdIMAP4.UIDCopyMsgs(const AMsgUIDList: TStrings; const AMBName: String): Boolean;
var
  LCmd : String;
  LN: integer;
begin
  Result := False;
  if AMsgUIDList.Count > 0 then begin
    LCmd := IMAP4Commands[cmdUID] + ' ' + IMAP4Commands[cmdCopy] + ' ';   {Do not Localize}
    for LN := 0 to AMsgUIDList.Count-1 do begin
      if LN = 0 then begin
        LCmd := LCmd + AMsgUIDList.Strings[LN];
      end else begin
        LCmd := LCmd + ',' + AMsgUIDList.Strings[LN];           {Do not Localize}
      end;
    end;
    LCmd := LCmd + ' "' + DoMUTFEncode(AMBName) + '"';            {Do not Localize}
    CheckConnectionState(csSelected);
    SendCmd(NewCmdCounter, LCmd, []);
    if LastCmdResult.Code = IMAP_OK then begin
      Result := True;
    end;
  end;
end;

function TIdIMAP4.CopyMsg(const AMsgNum: Integer; const AMBName: String): Boolean;
//Copies a message from the current selected mailbox to the specified mailbox.
begin
  Result := False;
  IsNumberValid(AMsgNum);
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdCopy] + ' ' + IntToStr(AMsgNum) + ' "' + DoMUTFEncode(AMBName) + '"' ), []);  {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    Result := True;
  end;
end;

function TIdIMAP4.UIDCopyMsg(const AMsgUID: String; const AMBName: String): Boolean;
//Copies a message from the current selected mailbox to the specified mailbox.
begin
  Result := False;
  IsUIDValid(AMsgUID);
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdUID] + ' ' + IMAP4Commands[cmdCopy] + ' ' + AMsgUID + ' "' + DoMUTFEncode(AMBName) + '"'), []); {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    Result := True;
  end;
end;


function TIdIMAP4.AppendMsg(const AMBName: String; AMsg: TIdMessage; const AFlags: TIdMessageFlagsSet = []): Boolean;
begin
  Result := AppendMsg(AMBName, AMsg, nil, AFlags);
end;

function TIdIMAP4.AppendMsg(const AMBName: String; AMsg: TIdMessage; AAlternativeHeaders: TIdHeaderList; const AFlags: TIdMessageFlagsSet = []): Boolean;
var
  LFlags,
  LMsgLiteral: String;
  Ln: Integer;
  LCmd: string;
  LLength: integer;
  LHeadersAsString: string;
  LText: TextFile;
  LTempPathname: string;
  LSourceStream: TIdReadFileExclusiveStream;
  LHelper: TIdIMAP4WorkHelper;
  LLengthOfAMsgHeaders: integer;
  LLengthOfFileHeaders: integer;
  LLine: string;
begin
  Result := False;
  CheckConnectionState([csAuthenticated, csSelected]);
  if Length(AMBName) <> 0 then begin
    LFlags := MessageFlagSetToStr(AFlags);
    if Length(LFlags) <> 0 then begin                        {Do not Localize}
      LFlags := '(' + Trim (LFlags) + ')';                     {Do not Localize}
    end;
    {We are better off making up the headers as a string first rather than predicting
    its length.  Slightly wasteful of memory, but it will not take up much.}
    LHeadersAsString := '';                              {Do not Localize}
    if AAlternativeHeaders = nil then begin
      {Use the headers that are in the message AMsg...}
      for Ln := 0 to Pred (AMsg.Headers.Count) do begin
        LHeadersAsString := LHeadersAsString + AMsg.Headers[Ln] + EOL;       {Do not Localize}
      end;
      for Ln := 0 to Pred (AMsg.ExtraHeaders.Count) do begin
        LHeadersAsString := LHeadersAsString + AMsg.ExtraHeaders[Ln] + EOL;    {Do not Localize}
      end;
    end else begin
      {Note AAlternativeHeaders is probably IdSMTP's LastGeneratedHeaders,
      which would include the ExtraHeaders field.}
      {Use the headers that the user has passed to us...}
      for Ln := 0 to Pred (AAlternativeHeaders.Count) do begin
        LHeadersAsString := LHeadersAsString + AAlternativeHeaders[Ln] + EOL;  {Do not Localize}
      end;
    end;
    LLengthOfAMsgHeaders := Length(LHeadersAsString);
    {CC8: In Indy 10, we want to support attachments (previous versions did
    not).  The problem is that we have to know the size of the message
    in advance of sending it for the IMAP APPEND command.
    The problem is that there is no way of calculating the size of a
    message without generating the encoded message.  Therefore, write the
    message out to a temporary file, and then get the size of the file,
    which with a bit of adjustment, will give us the size of the message
    we will send.
    The "adjustment" is necessary because SaveToFile generates it's own
    headers, which will be different to both the ones in AMsg and
    AAlternativeHeaders, in the Date header, if nothing else.}
    LTempPathname := MakeTempFilename;
    AMsg.SaveToFile(LTempPathname);

    LLength := FileSizeByName(LTempPathname);
    {Get the size of the headers (by opening it as a text file) which
    SaveToFile may have generated, and will be different from the ones
    in AMsg...}
    AssignFile(LText, LTempPathname);
    Reset(LText);
    LLengthOfFileHeaders := 0;
    while True do begin
      Readln(LText, LLine);
      if Length(LLine) = 0 then begin
        break;
      end;
      LLengthOfFileHeaders := LLengthOfFileHeaders + Length(LLine) + 2;
    end;
    CloseFile(LText);
    {We have to subtract the size of the headers in the file and
    add back the size of the headers we are to use
    to get the size of the message we are going to send...}
    LLength := LLength - LLengthOfFileHeaders + LLengthOfAMsgHeaders;
    {Some servers may want the message termination sequence CRLF.CRLF
    and some may want CRLFCRLF so pass both by using CRLF.CRLFCRLF}
    LLength := LLength + 2;
    LMsgLiteral := '{' + IntToStr ( LLength ) + '}';            {Do not Localize}
    {CC: The original code sent the APPEND command first, then followed it with the
    message.  Maybe this worked with some server, but most send a
    response like "+ Send the additional command..." between the two,
    which was not expected by the client and caused an exception.}

    //CC: Added double quotes around mailbox name, else mailbox names with spaces will cause server parsing error
    LCmd := IMAP4Commands[cmdAppend] + ' "' + AMBName + '" ';         {Do not Localize}
    if Length(LFlags) <> 0 then begin
      LCmd := LCmd + LFlags + ' ';                    {Do not Localize}
    end;
    LCmd := LCmd + LMsgLiteral;                       {Do not Localize}

    {Used to add the message to LCmd here.  Try sending the APPEND command, get
    the + response, then send the message...}
    SendCmd (NewCmdCounter, LCmd, []);
    if LastCmdResult.Code = IMAP_CONT then begin
      LHelper := TIdIMAP4WorkHelper.Create(Self);
      try
        LSourceStream := TIdReadFileExclusiveStream.Create(LTempPathname);
        try
          IOHandler.Write(LHeadersAsString);
          //Change from CopyFrom to WriteStream (I think) to get OnWork invoked, as we do elsewhere
          //with LSourceStream.Connection.IOHandler.ReadStream(LUnstrippedStream, ABufferLength);
          //ReadStream uses OnWork, most other methods dont
          LSourceStream.Position := LLengthOfFileHeaders;
          IOHandler.Write(LSourceStream, LSourceStream.Size - LLengthOfFileHeaders);
          {Adding another CRLF so that the ending is CRLF.CRLFCRLF}
          WriteLn;

          {WARNING: After we send the message (which should be exactly
          LLength bytes long), we need to send an EXTRA CRLF which is in
          addition to to count in LLength, because this CRLF terminates the
          APPEND command...}
          WriteLn;
        finally
          FreeAndNil(LSourceStream);
        end;
      finally
        FreeAndNil(LHelper);
      end;
      {Delete the file, don't need it anymore...}
      DeleteFile(LTempPathname);
      if GetInternalResponse(LastCmdCounter, [IMAP4Commands[cmdAppend]], False) = IMAP_OK then begin
        Result := True;
      end;
    end;
  end;
end;

function  TIdIMAP4.AppendMsgNoEncodeFromFile(const AMBName: String; ASourceFile: string; const AFlags: TIdMessageFlagsSet = []): Boolean;
var
  LSourceStream: TIdReadFileExclusiveStream;
begin
  LSourceStream := TIdReadFileExclusiveStream.Create(ASourceFile);
  try
    Result := AppendMsgNoEncodeFromStream(AMBName, LSourceStream, AFlags);
  finally
    FreeAndNil(LSourceStream);
  end;
end;

function  TIdIMAP4.AppendMsgNoEncodeFromStream(const AMBName: String; AStream: TStream; const AFlags: TIdMessageFlagsSet = []): Boolean;
const
  cTerminator: array[0..4] of Byte = (13, 10, Ord('.'), 13, 10);
var
  LFlags, LMsgLiteral: String;
  I: Integer;
  LFound: Boolean;
  LCmd: string;
  LLength: Int64;
  LTempStream: TMemoryStream;
  LHelper: TIdIMAP4WorkHelper;
  LBuf: TIdBytes;
begin
  Result := False;
  CheckConnectionState([csAuthenticated, csSelected]);
  if Length(AMBName) <> 0 then begin                      {Do not Localize}
    LFlags := MessageFlagSetToStr(AFlags);
    if LFlags <> '' then begin                        {Do not Localize}
      LFlags := '(' + Trim (LFlags) + ')';                {Do not Localize}
    end;
    LLength := AStream.Size;
    LTempStream := TMemoryStream.Create;
    try
      //Hunt for CRLF.CRLF, if present then we need to remove it...
      SetLength(LBuf, 5);
      LTempStream.CopyFrom(AStream, LLength);
      LTempStream.Position := 0;
      repeat
        if TIdStreamHelper.ReadBytes(LTempStream, LBuf, 5) < 5 then begin
          Break;
        end;
        LFound := True;
        for I := 0 to 4 do begin
          if LBuf[I] <> cTerminator[I] then begin
            LFound := False;
            Break;
          end;
        end;
        if LFound then begin
          LLength := LTempStream.Position-5;
          Break;
        end;
        TIdStreamHelper.Seek(LTempStream, -4, soCurrent);
      until False;

      {Some servers may want the message termination sequence CRLF.CRLF
      and some may want CRLFCRLF so pass both by using CRLF.CRLFCRLF}
      Inc(LLength, 2);

      LMsgLiteral := '{' + IntToStr(LLength) + '}';           {Do not Localize}
      {CC: The original code sent the APPEND command first, then followed it with the
      message.  Maybe this worked with some server, but most send a
      response like "+ Send the additional command..." between the two,
      which was not expected by the client and caused an exception.}

      //CC: Added double quotes around mailbox name, else mailbox names with spaces will cause server parsing error
      LCmd := IMAP4Commands[cmdAppend] + ' "' + AMBName + '" ';     {Do not Localize}
      if Length(LFlags) <> 0 then begin                 {Do not Localize}
        LCmd := LCmd + LFlags + ' ';                {Do not Localize}
      end;
      LCmd := LCmd + LMsgLiteral;                   {Do not Localize}

      {Used to add the message to LCmd here.  Try sending the APPEND command, get
      the + response, then send the message...}
      SendCmd(NewCmdCounter, LCmd, []);
      if LastCmdResult.Code = IMAP_CONT then begin
        LHelper := TIdIMAP4WorkHelper.Create(Self);
        try
          LTempStream.Position := 0;
          IOHandler.Write(LTempStream, LLength);
          IOHandler.WriteLn(EOL+'.'+EOL);
          {WARNING: After we send the message (which should be exactly
          LLength bytes long), we need to send an EXTRA CRLF which is in
          addition to the count in LLength, because this CRLF terminates the
          APPEND command...}
          IOHandler.WriteLn;
        finally
          FreeAndNil(LHelper);
        end;
        if GetInternalResponse(LastCmdCounter, [IMAP4Commands[cmdAppend]], False) = IMAP_OK then begin
          Result := True;
        end;
      end;
    finally
       FreeAndNil(LTempStream);
    end;
  end;
end;

function TIdIMAP4.RetrieveEnvelope(const AMsgNum: Integer; AMsg: TIdMessage): Boolean;
begin
  Result := InternalRetrieveEnvelope(AMsgNum, AMsg, nil);
end;

function TIdIMAP4.RetrieveEnvelopeRaw(const AMsgNum: Integer; ADestList: TStrings): Boolean;
begin
  Result := InternalRetrieveEnvelope(AMsgNum, nil, ADestList);
end;

function TIdIMAP4.InternalRetrieveEnvelope(const AMsgNum: Integer; AMsg: TIdMessage; ADestList: TStrings): Boolean;
begin
  {CC2: Return False if message number is invalid...}
  IsNumberValid(AMsgNum);
  Result := False;
  CheckConnectionState(csSelected);
  {Some servers return NO if the requested message number is not present
  (e.g. Cyrus), others return OK but no data (CommuniGate).}
  SendCmd(NewCmdCounter, ( IMAP4Commands[cmdFetch] + ' ' +          {Do not Localize}
    IntToStr ( AMsgNum ) + ' (' +                       {Do not Localize}
    IMAP4FetchDataItem[fdEnvelope] + ')'), [IMAP4Commands[cmdFetch]]);    {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    if LastCmdResult.Text.Count > 0 then begin
      if ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdEnvelope]]) then begin
        if ADestList <> nil then begin
          ADestList.Clear;
          ADestList.Add(FLineStruct.IMAPValue);
        end;
        if AMsg <> nil then begin
          ParseEnvelopeResult(AMsg, FLineStruct.IMAPValue);
        end;
        Result := True;
      end;
    end;
  end;
end;

function TIdIMAP4.UIDRetrieveEnvelope(const AMsgUID: String; AMsg: TIdMessage): Boolean;
begin
  Result := UIDInternalRetrieveEnvelope(AMsgUID, AMsg, nil);
end;

function TIdIMAP4.UIDRetrieveEnvelopeRaw(const AMsgUID: String; ADestList: TStrings): Boolean;
begin
  Result := UIDInternalRetrieveEnvelope(AMsgUID, nil, ADestList);
end;

function TIdIMAP4.UIDInternalRetrieveEnvelope(const AMsgUID: String; AMsg: TIdMessage; ADestList: TStrings): Boolean;
begin
  IsUIDValid(AMsgUID);
  {CC2: Return False if message number is invalid...}
  Result := False;
  CheckConnectionState(csSelected);
  {Some servers return NO if the requested message number is not present
  (e.g. Cyrus), others return OK but no data (CommuniGate).}
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdUID] + ' ' + IMAP4Commands[cmdFetch] + ' ' +               {Do not Localize}
    AMsgUID + ' (' + IMAP4FetchDataItem[fdEnvelope] + ')'), [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]]);  {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    if LastCmdResult.Text.Count > 0 then begin
      if ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdEnvelope]]) then begin
        if ADestList <> nil then begin
          ADestList.Clear;
          ADestList.Add(FLineStruct.IMAPValue);
        end;
        if AMsg <> nil then begin
          ParseEnvelopeResult(AMsg, FLineStruct.IMAPValue);
        end;
        Result := True;
      end;
    end;
  end;
end;

function TIdIMAP4.RetrieveAllEnvelopes(AMsgList: TIdMessageCollection): Boolean;
{NOTE: If AMsgList is empty or does not have enough records, records will be added.
If you pass a non-empty AMsgList, it is assumed the records are in relative record
number sequence: if not, pass in an empty AMsgList and copy the results to your
own AMsgList.}
var
  Ln: Integer;
  LMsgItem: TIdMessageItem;
begin
  Result := False;
  {CC2: This is one of the few cases where the server can return only "OK completed"
  meaning that the user has no envelopes.}
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdFetch] + ' 1:* (' +        {Do not Localize}
    IMAP4FetchDataItem[fdEnvelope] + ')'), []);                 {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    for Ln := 0 to LastCmdResult.Text.Count-1 do begin
      if ParseLastCmdResult(LastCmdResult.Text[Ln], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdEnvelope]]) then begin
        if LN >= AMsgList.Count then begin
          LMsgItem := AMsgList.Add;
          ParseEnvelopeResult(LMsgItem.Msg, FLineStruct.IMAPValue);
        end else begin
          ParseEnvelopeResult(AMsgList.Messages[LN], FLineStruct.IMAPValue);
        end;
      end;
    end;
    Result := True;
  end;
end;

function TIdIMAP4.UIDRetrieveAllEnvelopes(AMsgList: TIdMessageCollection): Boolean;
{NOTE: If AMsgList is empty or does not have enough records, records will be added.
If you pass a non-empty AMsgList, it is assumed the records are in relative record
number sequence: if not, pass in an empty AMsgList and copy the results to your
own AMsgList.}
var
  Ln: Integer;
  LMsgItem: TIdMessageItem;
begin
  Result := False;
  {CC2: This is one of the few cases where the server can return only "OK completed"
  meaning that the user has no envelopes.}
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, ( IMAP4Commands[cmdUID] + ' ' + IMAP4Commands[cmdFetch] + ' 1:* (' +  {Do not Localize}
    IMAP4FetchDataItem[fdEnvelope] + ')'), []);                          {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    for Ln := 0 to LastCmdResult.Text.Count-1 do begin
      if ParseLastCmdResult(LastCmdResult.Text[Ln], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdEnvelope]]) then begin
        if LN >= AMsgList.Count then begin
          LMsgItem := AMsgList.Add;
          ParseEnvelopeResult(LMsgItem.Msg, FLineStruct.IMAPValue);
          LMsgItem.Msg.UID := FLineStruct.UID;
        end else begin
          ParseEnvelopeResult(AMsgList.Messages[LN], FLineStruct.IMAPValue);
          AMsgList.Messages[LN].UID := FLineStruct.UID;
        end;
      end;
    end;
    Result := True;
  end;
end;

function TIdIMAP4.RetrieveText(const AMsgNum: Integer; var AText: string): Boolean;
  //Retrieve a specific individual part of a message
begin
  IsNumberValid(AMsgNum);
  Result := InternalRetrieveText(AMsgNum, AText, False, False, False);
end;

function TIdIMAP4.RetrieveText2(const AMsgNum: Integer; var AText: string): Boolean;
  //Retrieve a specific individual part of a message
begin
  IsNumberValid(AMsgNum);
  Result := InternalRetrieveText(AMsgNum, AText, False, False, True);
end;

function TIdIMAP4.RetrieveTextPeek(const AMsgNum: Integer; var AText: string): Boolean;
  {CC3: Added: Retrieve the text part of the message...}
begin
  IsNumberValid(AMsgNum);
  Result := InternalRetrieveText(AMsgNum, AText, False, True, False);
end;

function TIdIMAP4.RetrieveTextPeek2(const AMsgNum: Integer; var AText: string): Boolean;
  {CC3: Added: Retrieve the text part of the message...}
begin
  IsNumberValid(AMsgNum);
  Result := InternalRetrieveText(AMsgNum, AText, False, True, True);
end;

function TIdIMAP4.UIDRetrieveText(const AMsgUID: String; var AText: string): Boolean;
  {CC3: Added: Retrieve the text part of the message...}
begin
  IsUIDValid(AMsgUID);
  Result := InternalRetrieveText(IndyStrToInt(AMsgUID), AText, True, False, False);
end;

function TIdIMAP4.UIDRetrieveText2(const AMsgUID: String; var AText: string): Boolean;
  {CC3: Added: Retrieve the text part of the message...}
begin
  IsUIDValid(AMsgUID);
  Result := InternalRetrieveText(IndyStrToInt(AMsgUID), AText, True, False, True);
end;

function TIdIMAP4.UIDRetrieveTextPeek(const AMsgUID: String; var AText: string): Boolean;
  {CC3: Added: Retrieve the text part of the message...}
begin
  IsUIDValid(AMsgUID);
  Result := InternalRetrieveText(IndyStrToInt(AMsgUID), AText, True, True, False);
end;

function TIdIMAP4.UIDRetrieveTextPeek2(const AMsgUID: String; var AText: string): Boolean;
  {CC3: Added: Retrieve the text part of the message...}
begin
  IsUIDValid(AMsgUID);
  Result := InternalRetrieveText(IndyStrToInt(AMsgUID), AText, True, True, True);
end;

function TIdIMAP4.InternalRetrieveText(const AMsgNum: Integer; var AText: string;
  AUseUID: Boolean; AUsePeek: Boolean; AUseFirstPartInsteadOfText: Boolean): Boolean;
  {CC3: Added: Retrieve the text part of the message...}
var
  LText: string;
  LCmd: string;
  LTextLength: Integer;
  LParts: TIdImapMessageParts;
  LThePart: TIdImapMessagePart;
  LContentTransferEncoding: string;
  LBase64Decoder: TIdDecoderMIME;
  LQuotedPrintableDecoder: TIdDecoderQuotedPrintable;
  LTextPart: integer;
  LHelper: TIdIMAP4WorkHelper;
begin
  Result := False;
  AText := '';                                {Do not Localize}
  CheckConnectionState(csSelected);
  LTextPart := 0;  {The text part is usually part 1 but could be part 2}
  if AUseFirstPartInsteadOfText then begin
    {In this case, we need the body structure to find out what
    encoding has been applied to part 1...}
    LParts := TIdImapMessageParts.Create(nil, TIdImapMessagePart);
    try
      if AUseUID then begin
        if not UIDRetrieveStructure(IntToStr(AMsgNum), LParts) then begin
          Exit;
        end;
      end else begin
        if not RetrieveStructure(AMsgNum, LParts) then begin
          Exit;
        end;
      end;

      {Get the info we want out of LParts...}
      repeat
        LThePart := LParts.Items[LTextPart];   {Part 1 is index 0}
        if LThePart.FSize = 0 then begin
          {Some emails have part 0 empty, they intend you to use part 1}
          if LTextPart = 0 then begin
            LTextPart := 1;
            Continue;
          end else begin
            Break;
          end;
        end;
      until False;

      LContentTransferEncoding := LThePart.ContentTransferEncoding;
    finally
      FreeAndNil(LParts);
    end;
  end;
  LCmd :=  NewCmdCounter + ' ';                         {Do not Localize}
  if AUseUID then begin
    LCmd := LCmd + IMAP4Commands[cmdUID] + ' ';               {Do not Localize}
  end;
  LCmd := LCmd + IMAP4Commands[cmdFetch] + ' ' + IntToStr ( AMsgNum ) + ' ('; {Do not Localize}
  if AUsePeek then begin
    LCmd := LCmd + IMAP4FetchDataItem[fdBody]+'.PEEK';            {Do not Localize}
  end else begin
    LCmd := LCmd + IMAP4FetchDataItem[fdBody];
  end;
  if not AUseFirstPartInsteadOfText then begin
    LCmd := LCmd + '[TEXT])';                         {Do not Localize}
  end else begin
    LCmd := LCmd + '[' +IntToStr(LTextPart+1)+ '])';            {Do not Localize}
  end;
  WriteLn(LCmd);
  if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]], True) = IMAP_OK then begin
    {For an invalid request (non-existent part or message), NIL is returned as the size...}
    if (LastCmdResult.Text.Count < 1)
      or (not ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch],
        [IMAP4FetchDataItem[fdBody]+'['+'TEXT'+']' , IMAP4FetchDataItem[fdBody]+'['+IntToStr(LTextPart+1)+']']))             {do not localize}
      or (PosInStrArray(FLineStruct.IMAPValue, ['NIL', '""'], False) <> -1) {do not localize}
      or (FLineStruct.ByteCount < 1) then
    begin
      GetInternalResponse ( GetCmdCounter, [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]], False );
      Result := False;
      Exit;
    end;
    LTextLength := FLineStruct.ByteCount;
    SetLength(LText, LTextLength);
    LHelper := TIdIMAP4WorkHelper.Create(Self);
    try
      BeginWork(wmRead, LTextLength); //allow ReadString to use OnWork
      try
        LText := IOHandler.ReadString(LTextLength);
      finally
        EndWork(wmRead);
      end;
    finally
      FreeAndNil(LHelper);
    end;
    if TextIsSame(LContentTransferEncoding, 'base64') then begin             {Do not Localize}
      LBase64Decoder := TIdDecoderMIME.Create(Self);
      try
        {Strip out any embedded CRLFs which are inserted by MTAs to ensure
        the line-length limit is not exceeded...}
        StripCRLFs(LText);
        AText := LBase64Decoder.DecodeString(LText);
      finally
        FreeAndNil(LBase64Decoder);
      end;
    end else if TextIsSame(LContentTransferEncoding, 'quoted-printable') then begin  {Do not Localize}
      LQuotedPrintableDecoder := TIdDecoderQuotedPrintable.Create(Self);
      try
        AText := LQuotedPrintableDecoder.DecodeString(LText);
      finally
        FreeAndNil(LQuotedPrintableDecoder);
      end;
    end else begin
      AText := LText;
    end;
    ReadLnWait();  {Remove last line, ')' or 'UID 1)'}
    if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]], False) = IMAP_OK then begin
      Result := True;
    end;
  end;
end;

function TIdIMAP4.RetrieveStructure(const AMsgNum: Integer; AMsg: TIdMessage): Boolean;
begin
  IsNumberValid(AMsgNum);
  Result := InternalRetrieveStructure(AMsgNum, AMsg, nil);
end;

function TIdIMAP4.RetrieveStructure(const AMsgNum: Integer; AParts: TIdImapMessageParts): Boolean;
begin
  IsNumberValid(AMsgNum);
  Result := InternalRetrieveStructure(AMsgNum, nil, AParts);
end;

function TIdIMAP4.InternalRetrieveStructure(const AMsgNum: Integer; AMsg: TIdMessage; AParts: TIdImapMessageParts): Boolean;
var
  LTheParts: TIdMessageParts;
begin
  Result := False;
  CheckConnectionState(csSelected);
  WriteLn(NewCmdCounter + ' ' + (                       {Do not Localize}
    IMAP4Commands[cmdFetch] + ' ' + IntToStr ( AMsgNum ) + ' (' +       {Do not Localize}
    IMAP4FetchDataItem[fdBodyStructure] + ')' ));               {Do not Localize}
  if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch]], True) = IMAP_OK then begin
    if LastCmdResult.Text.Count > 0 then begin
      if ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdBodyStructure]]) then begin
        if AMsg <> nil then begin
          LTheParts := AMsg.MessageParts;
          ParseBodyStructureResult(FLineStruct.IMAPValue, LTheParts, nil);
        end;
        if AParts <> nil then begin
          ParseBodyStructureResult(FLineStruct.IMAPValue, nil, AParts);
        end;
        if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch]], False) = IMAP_OK then begin
          Result := True;
        end;
      end;
    end;
  end;
end;

// retrieve a specific individual part of a message
function TIdIMAP4.RetrievePart(const AMsgNum: Integer; const APartNum: string;
  ADestStream: TStream; AContentTransferEncoding: string): Boolean;
var
  LDummy1: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
  LDummy2: Integer;
begin
  IsNumberValid(AMsgNum);
  Result := InternalRetrievePart(AMsgNum, APartNum, False, False, ADestStream, LDummy1, LDummy2, '', AContentTransferEncoding);  {Do not Localize}
end;

function TIdIMAP4.RetrievePart(const AMsgNum: Integer; const APartNum: Integer;
  var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
  var ABufferLength: Integer; AContentTransferEncoding: string): Boolean;
begin
  IsNumberValid(APartNum);
  Result := RetrievePart(AMsgNum, IntToStr(APartNum), ABuffer, ABufferLength, AContentTransferEncoding);
end;

// Retrieve a specific individual part of a message
function TIdIMAP4.RetrievePart(const AMsgNum: Integer; const APartNum: string;
  var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
  var ABufferLength: Integer; AContentTransferEncoding: string): Boolean;
begin
  IsNumberValid(AMsgNum);
  Result := InternalRetrievePart(AMsgNum, APartNum, False, False, nil, ABuffer, ABufferLength, '', AContentTransferEncoding);  {Do not Localize}
end;

// retrieve a specific individual part of a message
function TIdIMAP4.RetrievePartPeek(const AMsgNum: Integer; const APartNum: string;
  ADestStream: TStream; AContentTransferEncoding: string): Boolean;
var
  LDummy1: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
  LDummy2: Integer;
begin
  IsNumberValid(AMsgNum);
  Result := InternalRetrievePart(AMsgNum, APartNum, False, True, ADestStream, LDummy1, LDummy2, '', AContentTransferEncoding);  {Do not Localize}
end;

function TIdIMAP4.RetrievePartPeek(const AMsgNum: Integer; const APartNum: Integer;
  var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
  var ABufferLength: Integer; AContentTransferEncoding: string): Boolean;
begin
  IsNumberValid(APartNum);
  Result := RetrievePartPeek(AMsgNum, IntToStr(APartNum), ABuffer, ABufferLength, AContentTransferEncoding);
end;

//Retrieve a specific individual part of a message
function TIdIMAP4.RetrievePartPeek(const AMsgNum: Integer; const APartNum: string;
  var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
  var ABufferLength: Integer; AContentTransferEncoding: string): Boolean;
begin
  IsNumberValid(AMsgNum);
  Result := InternalRetrievePart(AMsgNum, APartNum, False, True, nil, ABuffer, ABufferLength, '', AContentTransferEncoding);  {Do not Localize}
end;

// Retrieve a specific individual part of a message
function TIdIMAP4.UIDRetrievePart(const AMsgUID: String; const APartNum: string;
  var ADestStream: TStream; AContentTransferEncoding: string): Boolean;
var
  LDummy1: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
  LDummy2: Integer;
begin
  IsUIDValid(AMsgUID);
  Result := InternalRetrievePart(IndyStrToInt(AMsgUID), APartNum, True, False, ADestStream, LDummy1, LDummy2, '', AContentTransferEncoding);  {Do not Localize}
end;

function TIdIMAP4.UIDRetrievePart(const AMsgUID: String; const APartNum: Integer;
  var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
  var ABufferLength: Integer; AContentTransferEncoding: string): Boolean;
begin
  IsNumberValid(APartNum);
  Result := UIDRetrievePart(AMsgUID, IntToStr(APartNum), ABuffer, ABufferLength, AContentTransferEncoding);
end;

// Retrieve a specific individual part of a message
function TIdIMAP4.UIDRetrievePart(const AMsgUID: String; const APartNum: string;
  var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
  var ABufferLength: Integer; AContentTransferEncoding: string): Boolean;
begin
  IsUIDValid(AMsgUID);
  Result := InternalRetrievePart(IndyStrToInt(AMsgUID), APartNum, True, False, nil, ABuffer, ABufferLength, '', AContentTransferEncoding);  {Do not Localize}
end;

// retrieve a specific individual part of a message
function TIdIMAP4.UIDRetrievePartPeek(const AMsgUID: String; const APartNum: string;
  var ADestStream: TStream; AContentTransferEncoding: string): Boolean;
var
  LDummy1: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
  LDummy2: Integer;
begin
  IsUIDValid(AMsgUID);
  Result := InternalRetrievePart(IndyStrToInt(AMsgUID), APartNum, True, True, ADestStream, LDummy1, LDummy2, '', AContentTransferEncoding);  {Do not Localize}
end;

function TIdIMAP4.UIDRetrievePartPeek(const AMsgUID: String; const APartNum: Integer;
  var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
  var ABufferLength: Integer; AContentTransferEncoding: string): Boolean;
begin
  IsNumberValid(APartNum);
  Result := UIDRetrievePartPeek(AMsgUID, IntToStr(APartNum), ABuffer, ABufferLength, AContentTransferEncoding);
end;

function TIdIMAP4.UIDRetrievePartPeek(const AMsgUID: String; const APartNum: string;
  var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
  var ABufferLength: Integer; AContentTransferEncoding: string): Boolean;
  //Retrieve a specific individual part of a message
begin
  IsUIDValid(AMsgUID);
  Result := InternalRetrievePart(IndyStrToInt(AMsgUID), APartNum, True, True, nil, ABuffer, ABufferLength, '', AContentTransferEncoding);  {Do not Localize}
end;

function TIdIMAP4.RetrievePartToFile(const AMsgNum: Integer; const APartNum: Integer;
  ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean;
begin
  IsNumberValid(APartNum);
  Result := RetrievePartToFile(AMsgNum, IntToStr(APartNum), ALength, ADestFileNameAndPath, AContentTransferEncoding);
end;

// retrieve a specific individual part of a message
function TIdIMAP4.RetrievePartToFile(const AMsgNum: Integer; const APartNum: string;
  ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean;
var
  LDummy: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
begin
  IsNumberValid(AMsgNum);
  if Length(ADestFileNameAndPath) = 0 then begin
    Result := False;
    Exit;
  end;
  Result := InternalRetrievePart(AMsgNum, APartNum, False, False, nil,
    LDummy, ALength, ADestFileNameAndPath, AContentTransferEncoding);
end;

function TIdIMAP4.RetrievePartToFilePeek(const AMsgNum: Integer; const APartNum: Integer;
  ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean;
begin
  IsNumberValid(APartNum);
  Result := RetrievePartToFilePeek(AMsgNum, IntToStr(APartNum), ALength, ADestFileNameAndPath, AContentTransferEncoding);
end;

// retrieve a specific individual part of a message
function TIdIMAP4.RetrievePartToFilePeek(const AMsgNum: Integer; const APartNum: string;
  ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean;
var
  LDummy: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
begin
  IsNumberValid(AMsgNum);
  if Length(ADestFileNameAndPath) = 0 then begin
    Result := False;
    Exit;
  end;
  Result := InternalRetrievePart(AMsgNum, APartNum, False, True, nil,
    LDummy, ALength, ADestFileNameAndPath, AContentTransferEncoding);
end;

function TIdIMAP4.UIDRetrievePartToFile(const AMsgUID: String; const APartNum: Integer;
  ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean;
begin
  IsNumberValid(APartNum);
  Result := UIDRetrievePartToFile(AMsgUID, IntToStr(APartNum), ALength, ADestFileNameAndPath, AContentTransferEncoding);
end;

// retrieve a specific individual part of a message
function TIdIMAP4.UIDRetrievePartToFile(const AMsgUID: String; const APartNum: string;
  ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean;
var
  LDummy: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
begin
  IsUIDValid(AMsgUID);
  if Length(ADestFileNameAndPath) = 0 then begin
    Result := False;
    Exit;
  end;
  Result := InternalRetrievePart(IndyStrToInt(AMsgUID), APartNum, True, False, nil,
    LDummy, ALength, ADestFileNameAndPath, AContentTransferEncoding);
end;

function TIdIMAP4.UIDRetrievePartToFilePeek(const AMsgUID: String; const APartNum: Integer;
  ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean;
begin
  IsNumberValid(APartNum);
  Result := UIDRetrievePartToFilePeek(AMsgUID, IntToStr(APartNum), ALength, ADestFileNameAndPath, AContentTransferEncoding);
end;

// retrieve a specific individual part of a message
function TIdIMAP4.UIDRetrievePartToFilePeek(const AMsgUID: String; const APartNum: {Integer} string;
  ALength: Integer; ADestFileNameAndPath: string; AContentTransferEncoding: string): Boolean;
var
  LDummy: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
begin
  IsUIDValid(AMsgUID);
  if Length(ADestFileNameAndPath) = 0 then begin
    Result := False;
    Exit;
  end;
  Result := InternalRetrievePart(IndyStrToInt(AMsgUID), APartNum, True, True,
    nil, LDummy, ALength, ADestFileNameAndPath, AContentTransferEncoding);
end;

// retrieve a specific individual part of a message
function TIdIMAP4.InternalRetrievePart(const AMsgNum: Integer; const APartNum: {Integer} string;
  AUseUID: Boolean; AUsePeek: Boolean; ADestStream: TStream;
  var ABuffer: {$IFDEF DOTNET}TIdBytes{$ELSE}PChar{$ENDIF};
  var ABufferLength: Integer; {NOTE: var args cannot have default params}
  ADestFileNameAndPath: string;
  AContentTransferEncoding: string): Boolean;
var
  LCmd: string;
  bCreatedStream: Boolean;
  LDestStream: TStream;
  LMemoryStream: TMemoryStream;
  LPartSizeParam: string;
  LHelper: TIdIMAP4WorkHelper;

  procedure DoDecode(ATargetStream: TStream; ADecoderClass: TIdDecoderClass = nil; AStripCRLFs: Boolean = False);
  var
    LDecoder: TIdDecoder;
    LStream: TStream;
    LStrippedStream: TStringStream;
    LUnstrippedStream: TStringStream;
  begin
    if ATargetStream = nil then begin
      LStream := TMemoryStream.Create;
    end else begin
      LStream := ATargetStream;
    end;
    try
      if ADecoderClass <> nil then begin
        LDecoder := ADecoderClass.Create(Self);
        try
          LDecoder.DecodeBegin(LStream);
          try
            LUnstrippedStream := TStringStream.Create('');
            try
              IOHandler.ReadStream(LUnstrippedStream, ABufferLength);  //ReadStream uses OnWork, most other methods dont
              {This is more complicated than quoted-printable because we
              have to strip CRLFs that have been inserted by the MTA to
              avoid overly long lines...}
              if AStripCRLFs then begin
                LStrippedStream := TStringStream.Create('');
                try
                  StripCRLFs(LUnstrippedStream, LStrippedStream);
                  LDecoder.Decode(LStrippedStream.DataString);
                finally
                  FreeAndNil(LStrippedStream);
                end;
              end else begin
                LDecoder.Decode(LUnstrippedStream.DataString);
              end;
            finally
              FreeAndNil(LUnstrippedStream);
            end;
          finally
            LDecoder.DecodeEnd;
          end;
        finally
          FreeAndNil(LDecoder);
        end;
      end else begin
        IOHandler.ReadStream(ADestStream, ABufferLength);  //ReadStream uses OnWork, most other methods dont
      end;
      if ATargetStream = nil then begin
        ABufferLength := ADestStream.Size;
        {$IFDEF DOTNET}
        //ABuffer is a TIdBytes.
        SetLength(ABuffer, ABufferLength);
        LMemoryStream.Position := 0;
        ReadTIdBytesFromStream(LMemoryStream, ABuffer, ABufferLength);
        {$ELSE}
        //ABuffer is a PChar.
        GetMem(ABuffer, ABufferLength);
        Move(LMemoryStream.Memory, ABuffer, ABufferLength);
        {$ENDIF}
      end;
    finally
      if ATargetStream = nil then begin
        FreeAndNil(LStream);
      end;
    end;
  end;

begin
  {CCC: Make sure part number is valid since it is now passed as a string...}
  IsImapPartNumberValid(APartNum);
  Result := False;
  ABuffer := nil;
  ABufferLength := 0;
  CheckConnectionState(csSelected);
  LCmd :=  NewCmdCounter + ' ';                         {Do not Localize}
  if AUseUID then begin
    LCmd := LCmd + IMAP4Commands[cmdUID] + ' ';               {Do not Localize}
  end;
  LCmd := LCmd + IMAP4Commands[cmdFetch] + ' ' + IntToStr ( AMsgNum ) + ' ('; {Do not Localize}
  if AUsePeek then begin
    LCmd := LCmd + IMAP4FetchDataItem[fdBody]+'.PEEK';            {Do not Localize}
  end else begin
    LCmd := LCmd + IMAP4FetchDataItem[fdBody];
  end;
  LCmd := LCmd + '[' + APartNum + '])';                     {Do not Localize}
  WriteLn(LCmd);
  {CC7: wsBAD added because Ipswitch's IMAP server sometimes returns it here...}
  if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]], True) = IMAP_OK then begin
    LPartSizeParam := '';                                               {Do not Localize}
    if ( (LastCmdResult.Text.Count < 1) or
      (not ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], []))
      or (PosInStrArray(FLineStruct.IMAPValue, ['NIL', '""'], False) <> -1)    {do not localize}
      or (FLineStruct.ByteCount < 1) ) then begin
      GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]], False);
      Result := False;
    end else begin
      {CC4: Some messages have an empty first part.  These respond as:
         17 FETCH (BODY[1] "" UID 20)
       instead of the more normal:
         17 FETCH (BODY[1] {11}        {This bracket is not part of the response!
         ...
         UID 20)
      }
      ABufferLength := FLineStruct.ByteCount;
      bCreatedStream := False;

      if (Length(ADestFileNameAndPath) = 0) and (ADestStream = nil) then begin
        {User wants to write it to a memory block...}
        LDestStream := nil;
      end
      else if ADestStream = nil then begin
        {User wants to write it to a file...}
        LDestStream := TIdFileCreateStream.Create(ADestFileNameAndPath);
        bCreatedStream := True;
      end else
      begin
        {User wants to write it to a stream ...}
        LDestStream := ADestStream;
      end;
      try
        LHelper := TIdIMAP4WorkHelper.Create(Self);
        try
          if TextIsSame(AContentTransferEncoding, 'base64') then begin  {Do not Localize}
            DoDecode(LDestStream, TIdDecoderMIME, True);
          end else if TextIsSame(AContentTransferEncoding, 'quoted-printable') then begin  {Do not Localize}
            DoDecode(LDestStream, TIdDecoderQuotedPrintable);
          end else if TextIsSame(AContentTransferEncoding, 'binhex40') then begin  {Do not Localize}
            DoDecode(LDestStream, TIdDecoderBinHex4);
          end else begin
            {Assume no encoding or something we cannot decode...}
            DoDecode(LDestStream);
          end;
        finally
          FreeAndNil(LHelper);
        end;
      finally
        if bCreatedStream then begin
          FreeAndNil(LDestStream);
        end;
      end;
      ReadLnWait;  {Remove last line, ')' or 'UID 1)'}
      if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]], False) = IMAP_OK then begin
        Result := True;
      end;
    end;
  end;
end;

function TIdIMAP4.UIDRetrieveStructure(const AMsgUID: String; AMsg: TIdMessage): Boolean;
begin
  IsUIDValid(AMsgUID);
  Result := UIDInternalRetrieveStructure(AMsgUID, AMsg, nil);
end;

function TIdIMAP4.UIDRetrieveStructure(const AMsgUID: String; AParts: TIdImapMessageParts): Boolean;
begin
  IsUIDValid(AMsgUID);
  Result := UIDInternalRetrieveStructure(AMsgUID, nil, AParts);
end;

function TIdIMAP4.UIDInternalRetrieveStructure(const AMsgUID: String; AMsg: TIdMessage; AParts: TIdImapMessageParts): Boolean;
var
  //LSlRetrieve : TStringList;
  //LStr: string;
  LTheParts: TIdMessageParts;
begin
  Result := False;
  CheckConnectionState(csSelected);
  WriteLn(NewCmdCounter + ' ' + ( IMAP4Commands[cmdUID] + ' ' +                  {Do not Localize}
    IMAP4Commands[cmdFetch] + ' ' + AMsgUID + ' (' +                       {Do not Localize}
    IMAP4FetchDataItem[fdBodyStructure] + ')' ));                        {Do not Localize}
  //Note: The normal single-line response may be split for huge bodystructures,
  //allow for this by setting ASingleLineMayBeSplit to True...
  if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]], True, True) = IMAP_OK then begin
    if LastCmdResult.Text.Count > 0 then begin
      if ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdBodyStructure]]) then begin
        if AMsg <> nil then begin
          LTheParts := AMsg.MessageParts;
          ParseBodyStructureResult(FLineStruct.IMAPValue, LTheParts, nil);
        end;
        if AParts <> nil then begin
          ParseBodyStructureResult(FLineStruct.IMAPValue, nil, AParts);
        end;
        if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]], False) = IMAP_OK then begin
          Result := True;
        end;
      end;
    end;
  end;
end;

function TIdIMAP4.RetrieveHeader(const AMsgNum: Integer; AMsg: TIdMessage): Boolean;
var
  LStr: string;
begin
  Result := False;
  IsNumberValid(AMsgNum);
  CheckConnectionState(csSelected);
  WriteLn(NewCmdCounter + ' ' + (                       {Do not Localize}
    IMAP4Commands[cmdFetch] + ' ' + IntToStr ( AMsgNum ) + ' (' +       {Do not Localize}
    IMAP4FetchDataItem[fdRFC822Header] + ')'));                 {Do not Localize}
  if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch]], True ) = IMAP_OK then begin
    if LastCmdResult.Text.Count > 0 then begin
      if ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdRFC822Header]])
        and (FLineStruct.ByteCount > 0) then begin
        BeginWork(wmRead, FLineStruct.ByteCount);  //allow ReadString to use OnWork
        try
          LStr := IOHandler.ReadString(FLineStruct.ByteCount);
        finally
          EndWork(wmRead);
        end;
        {CC2: Clear out body so don't get multiple copies of bodies}
        AMsg.Clear;
        AMsg.Headers.Text := LStr;
        AMsg.ProcessHeaders;
        LStr := ReadLnWait;  {Remove trailing line after the message, probably a ')' }
        ParseLastCmdResultButAppendInfo(LStr);  //There may be a UID or FLAGS in this
        if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch]], False) = IMAP_OK then begin
          Result := True;
        end;
      end;
    end;
  end;
end;

function TIdIMAP4.UIDRetrieveHeader(const AMsgUID: String; AMsg: TIdMessage): Boolean;
var
  LStr: string;
begin
  Result := False;
  IsUIDValid(AMsgUID);
  CheckConnectionState(csSelected);
  WriteLn(NewCmdCounter + ' ' + (IMAP4Commands[cmdUID] + ' ' + IMAP4Commands[cmdFetch] + ' ' +                 {Do not Localize}
    AMsgUID + ' (' + IMAP4FetchDataItem[fdRFC822Header] + ')'));                               {Do not Localize}
  if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]], True) = IMAP_OK then begin
    if LastCmdResult.Text.Count > 0 then begin
      if ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdRFC822Header]])
        and (FLineStruct.ByteCount > 0) then begin
        BeginWork(wmRead, FLineStruct.ByteCount); //allow ReadString to use OnWork
        try
          LStr := IOHandler.ReadString(FLineStruct.ByteCount);
        finally
          EndWork(wmRead);
        end;
        {CC2: Clear out body so don't get multiple copies of bodies}
        AMsg.Clear;
        AMsg.Headers.Text := LStr;
        AMsg.ProcessHeaders;
        LStr := ReadLnWait;  {Remove trailing line after the message, probably a ')' }
        ParseLastCmdResultButAppendInfo(LStr);  //There may be a UID or FLAGS in this
        if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]], False) = IMAP_OK then begin
          Result := True;
        end;
      end;
    end;
  end;
end;

function TIdIMAP4.RetrievePartHeader(const AMsgNum: Integer; const APartNum: string; AHeaders: TIdHeaderList): Boolean;
begin
  IsNumberValid(AMsgNum);
  Result := InternalRetrievePartHeader(AMsgNum, APartNum, False, AHeaders);
end;

function TIdIMAP4.UIDRetrievePartHeader(const AMsgUID: String; const APartNum: string; AHeaders: TIdHeaderList): Boolean;
begin
  IsUIDValid(AMsgUID);
  Result := InternalRetrievePartHeader(IndyStrToInt(AMsgUID), APartNum, True, AHeaders);
end;

function TIdIMAP4.InternalRetrievePartHeader(const AMsgNum: Integer; const APartNum: string;
  const AUseUID: Boolean; AHeaders: TIdHeaderList): Boolean;
var
  LCmd: string;
begin
  Result := False;
  CheckConnectionState(csSelected);
  LCmd :=  NewCmdCounter + ' ';                    {Do not Localize}
  if AUseUID then begin
    LCmd := LCmd + IMAP4Commands[cmdUID] + ' ';          {Do not Localize}
  end;
  LCmd := LCmd + IMAP4Commands[cmdFetch] + ' ' +           {Do not Localize}
    IntToStr(AMsgNum) + ' (' + IMAP4FetchDataItem[fdBody] +      {Do not Localize}
    '[' + APartNum + '.' + IMAP4FetchDataItem[fdHeader] + ']' +    {Do not Localize}
    ')';                               {Do not Localize}
  WriteLn(LCmd);                           {Do not Localize}
  if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]], True) = IMAP_OK then begin
    if LastCmdResult.Text.Count > 0 then begin
      if ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], [])
        and (PosInStrArray(FLineStruct.IMAPValue, ['NIL', '""'], False) = -1)
        and (FLineStruct.ByteCount > 0) then
      begin
        {CC4: Some messages have an empty first part.  These respond as:
         17 FETCH (BODY[1] "" UID 20)
         instead of the more normal:
           17 FETCH (BODY[1] {11}        {This bracket is not part of the response!
           ...
           UID 20)
        }
        BeginWork(wmRead, FLineStruct.ByteCount); //allow ReadString to use OnWork
        try
          AHeaders.Text := IOHandler.ReadString(FLineStruct.ByteCount);
        finally
          EndWork(wmRead);
        end;
      end;
    end;
    ReadLnWait;
    if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]], False) = IMAP_OK then begin
      Result := True;
    end;
  end;
end;

//This code was just pulled up from IdMessageClient so that logging could be added.
function TIdIMAP4.ReceiveHeader(AMsg: TIdMessage; const AAltTerm: string = ''): string;
begin
  repeat
    Result := IOHandler.ReadLn;
    // Exchange Bug: Exchange sometimes returns . when getting a message instead of
    // '' then a . - That is there is no seperation between the header and the message for an
    // empty message.
    if ((Length(AAltTerm) = 0) and (Result = '.')) or (Result = AAltTerm) then begin
      Break;
    end else if Length(Result) <> 0 then begin
      AMsg.Headers.Append(Result);
    end;
  until False;
  AMsg.ProcessHeaders;
end;

function TIdIMAP4.Retrieve(const AMsgNum: Integer; AMsg: TIdMessage): Boolean;
begin
  IsNumberValid(AMsgNum);
  Result := InternalRetrieve(AMsgNum, False, False, False, AMsg);
end;

//Retrieves a whole message "raw" and saves it to file, while marking it read.
function  TIdIMAP4.RetrieveNoDecodeToFile(const AMsgNum: Integer; ADestFile: string): Boolean;
var
  LMsg: TIdMessage;
begin
  Result := False;
  IsNumberValid(AMsgNum);
  LMsg := TIdMessage.Create(nil);
  try
    if InternalRetrieve(AMsgNum, False, False, True, LMsg) then begin
      LMsg.NoEncode := True;
      LMsg.SaveToFile(ADestFile);
      Result := True;
    end;
  finally
    FreeAndNil(LMsg);
  end;
end;

//Retrieves a whole message "raw" and saves it to file, while marking it read.
function  TIdIMAP4.RetrieveNoDecodeToStream(const AMsgNum: Integer; AStream: TStream): Boolean;
var
  LMsg: TIdMessage;
begin
  Result := False;
  IsNumberValid(AMsgNum);
  LMsg := TIdMessage.Create(nil);
  try
    if InternalRetrieve(AMsgNum, False, False, True, LMsg) then begin
      LMsg.NoEncode := True;
      LMsg.SaveToStream(AStream);
      Result := True;
    end;
  finally
    FreeAndNil(LMsg);
  end;
end;

function TIdIMAP4.RetrievePeek(const AMsgNum: Integer; AMsg: TIdMessage): Boolean;
begin
  IsNumberValid(AMsgNum);
  Result := InternalRetrieve(AMsgNum, False, True, False, AMsg);
end;

function TIdIMAP4.UIDRetrieve(const AMsgUID: String; AMsg: TIdMessage): Boolean;
begin
  IsUIDValid(AMsgUID);
  Result := InternalRetrieve(IndyStrToInt(AMsgUID), True, False, False, AMsg);
end;

//Retrieves a whole message "raw" and saves it to file, while marking it read.
function  TIdIMAP4.UIDRetrieveNoDecodeToFile(const AMsgUID: String; ADestFile: string): Boolean;
var
  LMsg: TIdMessage;
begin
  Result := False;
  IsUIDValid(AMsgUID);
  LMsg := TIdMessage.Create(nil);
  try
    if InternalRetrieve(IndyStrToInt(AMsgUID), True, False, True, LMsg) then begin
      LMsg.NoEncode := True;
      LMsg.SaveToFile(ADestFile);
      Result := True;
    end;
  finally
    FreeAndNil(LMsg);
  end;
end;

//Retrieves a whole message "raw" and saves it to file, while marking it read.
function  TIdIMAP4.UIDRetrieveNoDecodeToStream(const AMsgUID: String; AStream: TStream): Boolean;
var
  LMsg: TIdMessage;
begin
  Result := False;
  IsUIDValid(AMsgUID);
  LMsg := TIdMessage.Create(nil);
  try
    if InternalRetrieve(IndyStrToInt(AMsgUID), True, False, True, LMsg) then begin
      LMsg.NoEncode := True;
      LMsg.SaveToStream(AStream);
      Result := True;
    end;
  finally
    FreeAndNil(LMsg);
  end;
end;

function TIdIMAP4.UIDRetrievePeek(const AMsgUID: String; AMsg: TIdMessage): Boolean;
begin
  IsUIDValid(AMsgUID);
  Result := InternalRetrieve(IndyStrToInt(AMsgUID), True, True, False, AMsg);
end;

function TIdIMAP4.InternalRetrieve(const AMsgNum: Integer; AUseUID: Boolean; AUsePeek: Boolean; ANoDecode: Boolean; AMsg: TIdMessage): Boolean;
var
  LStr: String;
  LCmd: string;
  LDestStream: TStream;
  LHelper: TIdIMAP4WorkHelper;
begin
  Result := False;
  CheckConnectionState(csSelected);
  LCmd := NewCmdCounter + ' ';                        {Do not Localize}
  if AUseUID then begin
    LCmd := LCmd + IMAP4Commands[cmdUID] + ' ';               {Do not Localize}
  end;
  LCmd := LCmd + IMAP4Commands[cmdFetch] + ' ' + IntToStr ( AMsgNum ) + ' ('; {Do not Localize}
  if AUsePeek then begin
    LCmd := LCmd + IMAP4FetchDataItem[fdBodyPeek];              {Do not Localize}
  end else begin
    LCmd := LCmd + IMAP4FetchDataItem[fdRFC822];              {Do not Localize}
  end;
  LCmd := LCmd + ')';                             {Do not Localize}
  WriteLn(LCmd);
  if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]], True) = IMAP_OK then begin
    //Leave 3rd param as [] because ParseLastCmdResult can get a number of odd
    //replies ( variants on Body[] )...
    if (LastCmdResult.Text.Count < 1) or
      (not ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], [])) then begin
      Exit;
    end;
    {CC8: Retrieve via byte count instead of looking for terminator,
    which was impossible to get working with all the different IMAP
    servers because some left the terminator (LExpectedResponse) at
    the end of a message line, so you could not decide if it was
    part of the message or the terminator.}
    AMsg.Clear;
    if FLineStruct.ByteCount > 0 then begin
      {Use a temporary memory block to suck the message into...}
      LDestStream := TMemoryStream.Create;
      try
        LHelper := TIdIMAP4WorkHelper.Create(Self);
        try
          IOHandler.ReadStream(LDestStream, FLineStruct.ByteCount);  //ReadStream uses OnWork, most other methods dont
        finally
          FreeAndNil(LHelper);
        end;
        AMsg.NoDecode := ANoDecode;
        {Feed stream into the standard message parser...}
        LDestStream.Position := 0;
        AMsg.LoadFromStream(LDestStream);
      finally
        FreeAndNil(LDestStream);
      end;
    end;
    LStr := ReadLnWait;  {Remove trailing line after the message, probably a ')' }
    ParseLastCmdResultButAppendInfo(LStr);  //There may be a UID or FLAGS in this
    if GetInternalResponse(GetCmdCounter, [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]], False) = IMAP_OK then begin
      AMsg.UID := FLineStruct.UID;
      AMsg.Flags := FLineStruct.Flags;
      Result := True;
    end;
  end;
end;

function TIdIMAP4.RetrieveAllHeaders(AMsgList: TIdMessageCollection): Boolean;
var
  LMsgItem : TIdMessageItem;
  Ln : Integer;
begin
  {CC2: This may get a response of "OK completed" if there are no messages}
  CheckConnectionState(csSelected);
  Result := False;
  if AMsgList <> nil then begin
    for Ln := 1 to FMailBox.TotalMsgs do begin
      LMsgItem := AMsgList.Add;
      if not RetrieveHeader(Ln, LMsgItem.Msg) then begin
        Exit;
      end;
    end;
    Result := True;
  end;
end;

function TIdIMAP4.RetrieveAllMsgs(AMsgList: TIdMessageCollection): Boolean;
var LMsgItem : TIdMessageItem;
  Ln : Integer;
begin
  {CC2: This may get a response of "OK completed" if there are no messages}
  CheckConnectionState(csSelected);
  Result := False;
  if AMsgList <> nil then begin
    for Ln := 1 to FMailBox.TotalMsgs do begin
      LMsgItem := AMsgList.Add;
      if not Retrieve(Ln, LMsgItem.Msg) then begin
        Exit;
      end;
    end;
    Result := True;
  end;
end;

function TIdIMAP4.DeleteMsgs(const AMsgNumList: array of Integer): Boolean;
begin
  Result := StoreFlags(AMsgNumList, sdAdd, [mfDeleted]);
end;

function TIdIMAP4.UIDDeleteMsg(const AMsgUID: String): Boolean;
begin
  IsUIDValid(AMsgUID);
  Result := UIDStoreFlags(AMsgUID, sdAdd, [mfDeleted]);
end;

function TIdIMAP4.UIDDeleteMsgs(const AMsgUIDList: array of String): Boolean;
begin
  Result := UIDStoreFlags(AMsgUIDList, sdAdd, [mfDeleted]);
end;

function TIdIMAP4.RetrieveMailBoxSize: Integer;
var
  Ln : Integer;
begin
  CheckConnectionState(csSelected);
  Result := -1;
  {CC2: This should not be checking FMailBox.TotalMsgs because the server may
  have added messages to the mailbox unknown to us, and we are going to ask the
  server anyway (if it's empty, we will return 0 anyway}
  SendCmd(NewCmdCounter, ( IMAP4Commands[cmdFetch] + ' 1:*' +            {Do not Localize}
    ' (' + IMAP4FetchDataItem[fdRFC822Size] + ')' ), [IMAP4Commands[cmdFetch]]);   {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    Result := 0;
    for Ln := 0 to FMailBox.TotalMsgs - 1 do begin
      if ParseLastCmdResult(LastCmdResult.Text[Ln], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdRFC822Size]]) then begin
        Result := Result + IndyStrToInt( FLineStruct.IMAPValue );
      end else begin
        {CC2: Return -1, not 0, if we cannot parse the result...}
        Result := -1;
        Exit;
      end;
    end;
  end;
end;

function TIdIMAP4.UIDRetrieveMailBoxSize: Integer;
var
  Ln : Integer;
begin
  CheckConnectionState(csSelected);
  Result := -1;
  {CC2: This should not be checking FMailBox.TotalMsgs because the server may
  have added messages to the mailbox unknown to us, and we are going to ask the
  server anyway (if it's empty, we will return 0 anyway}
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdUID] + ' ' + IMAP4Commands[cmdFetch] + ' 1:*' +        {Do not Localize}
    ' (' + IMAP4FetchDataItem[fdRFC822Size] + ')' ), [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]]); {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    Result := 0;
    for Ln := 0 to FMailBox.TotalMsgs - 1 do begin
      if ParseLastCmdResult(LastCmdResult.Text[Ln], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdRFC822Size]]) then begin
        Result := Result + IndyStrToInt(FLineStruct.IMAPValue);
      end else begin
        {CC2: Return -1, not 0, if we cannot parse the result...}
        Result := -1;
        Break;
      end;
    end;
  end;
end;

function TIdIMAP4.RetrieveMsgSize(const AMsgNum: Integer): Integer;
begin
  Result := -1;
  IsNumberValid(AMsgNum);
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, ( IMAP4Commands[cmdFetch] + ' ' + IntToStr ( AMsgNum ) +     {Do not Localize}
    ' (' + IMAP4FetchDataItem[fdRFC822Size] + ')' ), [IMAP4Commands[cmdFetch]]);      {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    if (LastCmdResult.Text.Count > 0) and
      ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdRFC822Size]]) then begin
      Result := IndyStrToInt(FLineStruct.IMAPValue);
    end;
  end;
end;

function TIdIMAP4.UIDRetrieveMsgSize(const AMsgUID: String): Integer;
begin
  IsUIDValid(AMsgUID);
  Result := -1;
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdUID] + ' ' + IMAP4Commands[cmdFetch] +  {Do not Localize}
    ' ' + AMsgUID + ' (' + IMAP4FetchDataItem[fdRFC822Size] + ')' ), [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]]); {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    if (LastCmdResult.Text.Count > 0) and
      ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdRFC822Size]]) then begin
      Result := IndyStrToInt(FLineStruct.IMAPValue);
    end;
  end;
end;

function TIdIMAP4.CheckMsgSeen(const AMsgNum: Integer): Boolean;
var
  LFlags: TIdMessageFlagsSet;
begin
  IsNumberValid(AMsgNum);
  Result := False;
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdFetch] + ' ' + IntToStr(AMsgNum) + {Do not Localize}
    ' (' + IMAP4FetchDataItem[fdFlags] + ')' ), [IMAP4Commands[cmdFetch]]); {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    if (LastCmdResult.Text.Count > 0) and
      ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdFlags]]) then begin
      LFlags := FLineStruct.Flags;
      if mfSeen in LFlags then begin
        Result := True;
      end;
    end;
  end;
end;

function TIdIMAP4.UIDCheckMsgSeen(const AMsgUID: String): Boolean;
var
  LFlags: TIdMessageFlagsSet;
begin
  IsUIDValid(AMsgUID);
  {Default to unseen, so if get no flags back (i.e. no \Seen flag)
  we return False (i.e. we return it is unseen)
  Some servers return nothing at all if no flags set (the better ones return an empty set).}
  Result := False;
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdUID] + ' ' + IMAP4Commands[cmdFetch] + ' ' +  {Do not Localize}
    AMsgUID + ' (' + IMAP4FetchDataItem[fdFlags] + ')'), [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]]); {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    if (LastCmdResult.Text.Count > 0) and
      ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdFlags]]) then begin
      LFlags := FLineStruct.Flags;
      if mfSeen in LFlags then begin
        Result := True;
      end;
    end;
  end;
end;

function TIdIMAP4.RetrieveFlags(const AMsgNum: Integer; var AFlags: {Pointer}TIdMessageFlagsSet): Boolean;
begin
  IsNumberValid(AMsgNum);
  Result := False;
  {CC: Empty set to avoid returning resuts from a previous call if call fails}
  AFlags := [];
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdFetch] + ' ' + IntToStr (AMsgNum) + {Do not Localize}
    ' (' + IMAP4FetchDataItem[fdFlags] + ')'), [IMAP4Commands[cmdFetch]]); {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    if (LastCmdResult.Text.Count > 0) and
      ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdFlags]]) then begin
      AFlags := FLineStruct.Flags;
      Result := True;
    end;
  end;
end;

function TIdIMAP4.UIDRetrieveFlags(const AMsgUID: String; var AFlags: TIdMessageFlagsSet): Boolean;
begin
  IsUIDValid(AMsgUID);
  Result := False;
  {BUG FIX: Empty set to avoid returning resuts from a previous call if call fails}
  AFlags := [];
  CheckConnectionState(csSelected);
  SendCmd(NewCmdCounter, (IMAP4Commands[cmdUID] + ' ' + IMAP4Commands[cmdFetch] + ' ' +  {Do not Localize}
    AMsgUID + ' (' + IMAP4FetchDataItem[fdFlags] + ')' ), [IMAP4Commands[cmdFetch], IMAP4Commands[cmdUID]]);  {Do not Localize}
  if LastCmdResult.Code = IMAP_OK then begin
    if (LastCmdResult.Text.Count > 0) and
      ParseLastCmdResult(LastCmdResult.Text[0], IMAP4Commands[cmdFetch], [IMAP4FetchDataItem[fdFlags]]) then begin
      AFlags := FLineStruct.Flags;
      Result := True;
    end;
  end;
end;

function TIdIMAP4.GetConnectionStateName: String;
begin
  case FConnectionState of
    csAny : Result := RSIMAP4ConnectionStateAny;
    csNonAuthenticated : Result := RSIMAP4ConnectionStateNonAuthenticated;
    csAuthenticated : Result := RSIMAP4ConnectionStateAuthenticated;
    csSelected : Result := RSIMAP4ConnectionStateSelected;
  end;
end;

{ TIdIMAP4 Commands }

{ Parser Functions... }

{This recursively parses down.  It gets either a line like:

  "text" "plain" ("charset" "ISO-8859-1") NIL NIL "7bit" 40 1 NIL NIL NIL

  which it parses into AThisImapPart, and we are done (at the end of the
  recursive calls), or a line like:

  ("text" "plain"...NIL)("text" "html"...NIL) "alternative" ("boundary" "----bdry") NIL NIL

  when we need to add "alternative" and the boundary to this part, but recurse
  down for the 1st two parts. }

procedure TIdIMAP4.ParseImapPart(ABodyStructure: string;
  AImapParts: TIdImapMessageParts; AThisImapPart: TIdImapMessagePart; AParentImapPart: TIdImapMessagePart;  //ImapPart version
  APartNumber: integer);
var
  LNextImapPart: TIdImapMessagePart;
  LSubParts: TStringList;
  LPartNumber: integer;
begin
  ABodyStructure := Trim(ABodyStructure);
  AThisImapPart.FUnparsedEntry := ABodyStructure;
  if ABodyStructure[1] <> '(' then begin    {Do not Localize}
    //We are at the bottom.  Parse the low-level '"text" "plain"...' into this part.
    ParseBodyStructurePart(ABodyStructure, nil, AThisImapPart);
    if AParentImapPart = nil then begin
      //This is the top-level part, and it is "text" "plain" etc, so it is not MIME...
      AThisImapPart.Encoding := mePlainText;
      AThisImapPart.ImapPartNumber := '1';    {Do not Localize}
      AThisImapPart.ParentPart := -1;
    end else begin
      AThisImapPart.Encoding := meMIME;
      AThisImapPart.ImapPartNumber := AParentImapPart.ImapPartNumber+'.'+IntToStr(APartNumber);    {Do not Localize}
      //If we are the first level down in MIME, the parent part was '', so trim...
      if AThisImapPart.ImapPartNumber[1] = '.' then begin    {Do not Localize}
        AThisImapPart.ImapPartNumber := Copy(AThisImapPart.ImapPartNumber, 2, MaxInt);
      end;
      AThisImapPart.ParentPart := AParentImapPart.Index;
    end;
  end else begin
    AThisImapPart.Encoding := meMIME;
    if AParentImapPart = nil then begin
      AThisImapPart.ImapPartNumber := '';
      AThisImapPart.ParentPart := -1;
    end else begin
      AThisImapPart.ImapPartNumber := AParentImapPart.ImapPartNumber+'.'+IntToStr(APartNumber);    {Do not Localize}
      //If we are the first level down in MIME, the parent part was '', so trim...
      if AThisImapPart.ImapPartNumber[1] = '.' then begin    {Do not Localize}
        AThisImapPart.ImapPartNumber := Copy(AThisImapPart.ImapPartNumber, 2, MaxInt);
      end;
      AThisImapPart.ParentPart := AParentImapPart.Index;
    end;
    LSubParts := TStringList.Create;
    try
      ParseIntoBrackettedQuotedAndUnquotedParts(ABodyStructure, LSubParts, True);
      LPartNumber := 1;
      while (LSubParts.Count > 0) and (LSubParts[0] <> '') and (LSubParts[0][1] = '(') do begin    {Do not Localize}
        LNextImapPart := AImapParts.Add;
        ParseImapPart(Copy(LSubParts[0], 2, Length(LSubParts[0])-2), AImapParts, LNextImapPart, AThisImapPart, LPartNumber);
        LSubParts.Delete(0);
        Inc(LPartNumber);
      end;
      if LSubParts.Count > 0 then begin
        //LSubParts now (only) holds the params for this part...
        AThisImapPart.FBodyType := LowerCase(GetNextQuotedParam(LSubParts[0], True));  //mixed, alternative
      end else begin
        AThisImapPart.FBodyType := '';
      end;
    finally
      FreeAndNil(LSubParts);
    end;
  end;
end;

{ WARNING: Not used by writer, may have bugs.

  Version of ParseImapPart except using TIdMessageParts.
  Added for compatibility with TIdMessage.MessageParts,
  but does not have enough functionality for many IMAP functions. }

procedure TIdIMAP4.ParseMessagePart(ABodyStructure: string;
  AMessageParts: TIdMessageParts; AThisMessagePart: TIdMessagePart; AParentMessagePart: TIdMessagePart;     //MessageParts version
  APartNumber: integer);
var
  LNextMessagePart: TIdMessagePart;
  LSubParts: TStringList;
  LPartNumber: integer;
begin
  ABodyStructure := Trim(ABodyStructure);
  if ABodyStructure[1] <> '(' then begin    {Do not Localize}
    //We are at the bottom.  Parse this into this part.
    ParseBodyStructurePart(ABodyStructure, AThisMessagePart, nil);
    if AParentMessagePart = nil then begin
      //This is the top-level part, and it is "text" "plain" etc, so it is not MIME...
      AThisMessagePart.ParentPart := -1;
    end else begin
      AThisMessagePart.ParentPart := AParentMessagePart.Index;
    end;
  end else begin
    LSubParts := TStringList.Create;
    try
      ParseIntoBrackettedQuotedAndUnquotedParts(ABodyStructure, LSubParts, True);
      LPartNumber := 1;
      while (LSubParts.Count > 0) and (LSubParts[0] <> '') and (LSubParts[0][1] = '(') do begin    {Do not Localize}
        LNextMessagePart := TIdAttachmentMemory.Create(AMessageParts);
        ParseMessagePart(Copy(LSubParts[0], 2, Length(LSubParts[0])-2), AMessageParts, LNextMessagePart, AThisMessagePart, LPartNumber);
        LSubParts.Delete(0);
        Inc(LPartNumber);
      end;
      //LSubParts now (only) holds the params for this part...
      if AParentMessagePart = nil then begin
        AThisMessagePart.ParentPart := -1;
      end else begin
        AThisMessagePart.ParentPart := AParentMessagePart.Index;
      end;
    finally
      FreeAndNil(LSubParts);
    end;
  end;
end;

{CC2: Function added to support individual part retreival}
{
  If it's a single-part message, it won't be enclosed in brackets - it will be:
  "body type": "TEXT", "application", "image", "MESSAGE" (followed by subtype RFC822 for envelopes, ignore)
  "body subtype": "PLAIN", "octet-stream", "tiff", "html"
  "body parameter parenthesized list": bracketted list of pairs ("CHARSET" "US-ASCII" "NAME" "cc.tif" "format" "flowed"), ("charset" "ISO-8859-1")
  "body id": NIL, 986767766767887@fg.com
  "body description": NIL, "Compiler diff"
  "body encoding": "7bit" "8bit" "binary" (NO encoding used with these), "quoted-printable" "base64" "ietf-token" "x-token"
  "body size" 2279
  "body lines" 48 (only present for some types, only those with "body type=text" and "body subtype=plain" that I found, if not present it WONT be a NIL, it just won't be there!  However, it won't be needed)
  <don't know> NIL
  <don't know> ("inline" ("filename" "classbd.h")), ("attachment" ("filename" "DEGDAY.WB3"))
  <don't know> NIL
  Example:
  * 4 FETCH (BODYSTRUCTURE ("text" "plain" ("charset" "ISO-8859-1") NIL NIL "7bit" 40 1 NIL NIL NIL))
  ---------------------------------------------------------------------------
  For most multi-part messages, each part will be bracketted:
  ( (part 1 stuff) (part 2 stuff) "mixed" (boundary) NIL NIL )
  Example:
  * 1 FETCH (BODYSTRUCTURE (("text" "plain" ("charset" "us-ascii" "format" "flowed")
  NIL NIL "7bit" 52 3 NIL NIL NIL)("text" "plain" ("name" "tnkin.txt") NIL NIL
  "7bit" 28421 203 NIL ("inline" ("filename" "tnkin.txt")) NIL) "mixed"
  ("boundary" "------------070105030104060407030601") NIL NIL))
  ---------------------------------------------------------------------------
  Some multiparts are bracketted again.  This is the "alternative" encoding,
  part 1 has two parts, a plain-text part and a html part:
  ( ( (part 1a stuff) (part 1b stuff) "alternative"  (boundary) NIL NIL ) (part 2 stuff) "mixed" (boundary) NIL NIL )
  1 2                                   2                       1
  Example:
  * 50 FETCH (BODYSTRUCTURE ((("text" "plain" ("charset" "ISO-8859-1") NIL NIL
  "quoted-printable" 415 12 NIL NIL NIL)("text" "html" ("charset" "ISO-8859-1")
  NIL NIL "quoted-printable" 1034 25 NIL NIL NIL) "alternative" ("boundary"
  "----=_NextPart_001_0027_01C33A37.33CFE220") NIL NIL)("application" "x-zip-compressed"
  ("name" "IdIMAP4.zip") NIL NIL "base64" 20572 NIL ("attachment" ("filename"
  "IdIMAP4.zip")) NIL) "mixed" ("boundary" "----=_NextPart_000_0026_01C33A37.33CFE220")
  NIL NIL) UID 62)
}
procedure TIdIMAP4.ParseBodyStructureResult(ABodyStructure: string; ATheParts: TIdMessageParts;  AImapParts: TIdImapMessageParts);
begin
  {CC7: New code uses a different parsing method that allows for multisection parts.}
  if AImapParts <> nil then begin  //Just sort out the ImapParts version for now
    ParseImapPart(ABodyStructure, AImapParts, AImapParts.Add, nil, -1);
  end;
  if ATheParts <> nil then begin
    ParseMessagePart(ABodyStructure, ATheParts, TIdAttachmentMemory.Create(ATheParts), nil, -1);
  end;
end;

procedure TIdIMAP4.ParseTheLine(ALine: string; APartsList: TStrings);
var
  LTempList: TStringList;
  LN: integer;
  LStr, LWord: string;
begin
  {Parse it and see what we get...}
  LTempList := TStringList.Create;
  try
    ParseIntoParts(ALine, LTempList);
    {Copy any parts from LTempList into the list of parts LPartsList...}
    for LN := 0 to LTempList.Count-1 do begin
      LStr := LTempList.Strings[LN];
      LWord := LowerCase(GetNextWord(LStr));
      if CharEquals(LStr, 1, '(') or (PosInStrArray(LWord, ['"text"', '"image"', '"application"'], False) <> -1) then begin  {Do not Localize}
        APartsList.Add(LStr);
      end;
    end;
  finally
    FreeAndNil(LTempList);
  end;
end;

procedure TIdIMAP4.ParseBodyStructurePart(APartString: string; AThePart: TIdMessagePart;
  AImapPart: TIdImapMessagePart);
  {CC3: Function added to support individual part retreival}
var
  LParams: TStringList;
  LContentDispositionStuff: string;
  LFilename: string;
  LDescription: string;
  LTemp: string;
  LSize: integer;
begin
  {Individual parameters may be strings like "text", NIL, a number, or bracketted pairs like
  ("CHARSET" "US-ASCII" "NAME" "cc.tif" "format" "flowed")...}
  {There are three common line formats, with differing numbers of parameters:
  (a) "TEXT" "HTML" ("CHARSET" "iso-8859-1") NIL NIL "QUOTED-PRINTABLE" 2879 69 NIL NIL NIL
  (a) "TEXT" "HTML" ("CHARSET" "iso-8859-1") NIL NIL "QUOTED-PRINTABLE" 2879 69 NIL NIL
  (c) "TEXT" "HTML" ("CHARSET" "iso-8859-1") NIL NIL "QUOTED-PRINTABLE" 2879 69
  Note the last one only has 7 parameters, need to watch we don't index past the 7th!}
  LParams := TStringList.Create;
  try
    ParseIntoParts(APartString, LParams);
    {Build up strings into same format as used by message decoders...}
    {Content Disposition: If present, may be at index 8 or 9...}
    {CC8: Altered to allow for case where it may not be present at all (get "List
    index out of bounds" error if try to access non-existent LParams[9])...}
    LContentDispositionStuff := '';         {Do not Localize}
    if LParams.Count > 9 then begin  {Have an LParams[9]}
      if TextIsSame(LParams[9], 'NIL') then begin      {Do not Localize}
        {It's NIL at 9, must be at 8...}
        if TextIsSame(LParams[8], 'NIL') then begin    {Do not Localize}
          LContentDispositionStuff := LParams[8];
        end;
      end else begin
        {It's not NIL, must be valid...}
        LContentDispositionStuff := LParams[9];
      end;
    end else if LParams.Count > 8 then begin  {Have an LParams[8]}
      if TextIsSame(LParams[8], 'NIL') then begin      {Do not Localize}
        LContentDispositionStuff := LParams[8];
      end;
    end;

    {Find and clean up the filename, if present...}
    LFilename := ''; {Do not Localize}
    if IndyPos('"NAME"', UpperCase(APartString)) > 0 then begin {Do not Localize}
      LTemp := Copy(APartString, IndyPos('"NAME" ', UpperCase(APartString))+7, MaxInt); {Do not Localize}
      LFilename := GetNextQuotedParam(LTemp, False);
    end else if IndyPos('"FILENAME"', UpperCase(APartString)) > 0 then begin {Do not Localize}
      LTemp := Copy(APartString, IndyPos('"FILENAME" ', UpperCase(APartString))+11, MaxInt); {Do not Localize}
      LFilename := GetNextQuotedParam(LTemp, False);
    end;
    {If the filename starts and ends with double-quotes, remove them...}
    if Length(LFilename) > 1 then begin
      if TextStartsWith(LFilename, '"') and TextEndsWith(LFilename, '"') then begin  {Do not Localize}
        LFilename := Copy(LFilename, 2, Length(LFilename)-2);
      end;
    end;
    {CC7: The filename may be encoded, so decode it...}
    if Length(LFilename) > 1 then begin
      LFilename := DecodeHeader(LFilename);
    end;

    LSize := 0;
    if (not TextIsSame(LParams[6], 'NIL')) and (Length(LParams[6]) <> 0) then begin
      LSize := IndyStrToInt(LParams[6]); {Do not Localize}
    end;

    LDescription := '';  {Do not Localize}
    if (LParams.Count > 9) and (not TextIsSame(LParams[9], 'NIL')) then begin  {Do not Localize}
      LDescription := GetNextQuotedParam(LParams[9], False);
    end else if (LParams.Count > 8) and (not TextIsSame(LParams[8], 'NIL')) then begin  {Do not Localize}
      LDescription := GetNextQuotedParam(LParams[8], False);
    end;
    if AThePart <> nil then begin
      {Put into the same format as TIdMessage MessageParts...}
      AThePart.ContentType := LParams[0]+'/'+LParams[1]+ParseBodyStructureSectionAsEquates(LParams[2]);  {Do not Localize}
      AThePart.ContentTransfer := LParams[5];
      //Watch out for BinHex4.0, the encoding is inferred from the Content-Type...
      if TextStartsWith(AThePart.ContentType, 'application/mac-binhex40') then begin {do not localize}
        AThePart.ContentTransfer := 'binhex40';                         {do not localize}
      end;
      AThePart.DisplayName := LFilename;
    end;
    if AImapPart <> nil then begin
      AImapPart.FBodyType := LParams[0];
      AImapPart.FBodySubType := LParams[1];
      AImapPart.FFileName := LFilename;
      AImapPart.FDescription := LDescription;
      AImapPart.FContentTransferEncoding := LParams[5];
      AImapPart.FSize := LSize;
      //Watch out for BinHex4.0, the encoding is inferred from the Content-Type...
      if ( (TextIsSame(AImapPart.FBodyType, 'application'))  {do not localize}
        and (TextIsSame(AImapPart.FBodySubType, 'mac-binhex40')) ) then begin {do not localize}
        AImapPart.FContentTransferEncoding := 'binhex40';    {do not localize}
      end;
    end;
  finally
    FreeAndNil(LParams);
  end;
end;

procedure TIdIMAP4.ParseIntoParts(APartString: string; AParams: TStrings);
var
  LInPart: Integer;
  LStartPos: Integer;
  //don't rename this LParam.  That's the same asa windows identifier
  LParamater: string;
  LBracketLevel: Integer;
  Ln: Integer;
  LInQuotesInsideBrackets: Boolean;
begin
  LStartPos := 0; {Stop compiler whining}
  LBracketLevel := 0; {Stop compiler whining}
  LInQuotesInsideBrackets := False;  {Stop compiler whining}
  LInPart := 0;   {0 is not in a part, 1 is in a quote-delimited part, 2 is in a bracketted parameter-pair list}
  for Ln := 1 to Length(APartString) do begin
    if LInPart = 1 then begin
      if APartString[Ln] = '"' then begin {Do not Localize}
        LParamater := Copy(APartString, LStartPos+1, Ln-LStartPos-1);
        AParams.Add(LParamater);
        LInPart := 0;
      end;
    end else if LInPart = 2 then begin
      //We have to watch out that we don't close this entry on a closing bracket within
      //quotes, like ("Blah" "Blah)Blah"), so monitor if we are in quotes within brackets.
      if APartString[Ln] = '"' then begin {Do not Localize}
        LInQuotesInsideBrackets := not LInQuotesInsideBrackets;
      end else begin
        //Brackets don't count if they are within quoted strings...
        if not LInQuotesInsideBrackets then begin
          if APartString[Ln] = '(' then begin {Do not Localize}
            Inc(LBracketLevel);
          end else if APartString[Ln] = ')' then begin {Do not Localize}
            Dec(LBracketLevel);
            if LBracketLevel = 0 then begin
              LParamater := Copy(APartString, LStartPos+1, Ln-LStartPos-1);
              AParams.Add(LParamater);
              LInPart := 0;
            end;
          end;
        end;
      end;
    end else if LInPart = 3 then begin
      if APartString[Ln] = 'L' then begin {Do not Localize}
        LParamater := Copy(APartString, LStartPos, Ln-LStartPos+1);
        AParams.Add(LParamater);
        LInPart := 0;
      end;
    end else if LInPart = 4 then begin
      if not IsNumeric(APartString[Ln]) then begin
        LParamater := Copy(APartString, LStartPos, Ln-LStartPos);
        AParams.Add(LParamater);
        LInPart := 0;
      end;
    end else if APartString[Ln] = '"' then begin {Do not Localize}
      {Start of a quoted param like "text"}
      LStartPos := Ln;
      LInPart := 1;
    end else if APartString[Ln] = '(' then begin {Do not Localize}
      {Start of a set of paired parameter/value strings within brackets,
      such as ("charset" "us-ascii").  Note these can be nested (bracket pairs
      within bracket pairs) }
      LStartPos := Ln;
      LInPart := 2;
      LBracketLevel := 1;
      LInQuotesInsideBrackets := False;
    end else if TextIsSame(APartString[Ln], 'N') then begin {Do not Localize}
      {Start of a NIL entry}
      LStartPos := Ln;
      LInPart := 3;
    end else if IsNumeric(APartString[Ln]) then begin
      {Start of a numeric entry like 12345}
      LStartPos := Ln;
      LInPart := 4;
    end;
  end;
  {We could be in a numeric entry when we hit the end of the line...}
  if LInPart = 4 then begin
    LParamater := Copy(APartString, LStartPos, MaxInt);
    AParams.Add(LParamater);
  end;
end;

procedure TIdIMAP4.ParseIntoBrackettedQuotedAndUnquotedParts(APartString: string; AParams: TStrings; AKeepBrackets: Boolean);
var
  LInPart: Integer;
  LStartPos: Integer;
  //don't rename this back to LParam, that's a Windows identifier.
  LParamater: string;
  LBracketLevel: Integer;
  Ln: Integer;
  LInQuotesInsideBrackets: Boolean;
begin
  {Break:
    * LIST (\UnMarked \AnotherFlag) "/" "Mailbox name"
  into:
    *
    LIST
    (\UnMarked \AnotherFlag)
    "/"
    "Mailbox name"
  If AKeepBrackets is false, return '\UnMarked \AnotherFlag' instead of '(\UnMarked \AnotherFlag)'
  }
  AParams.Clear;
  LStartPos := 0; {Stop compiler whining}
  LBracketLevel := 0; {Stop compiler whining}
  LInQuotesInsideBrackets := False;  {Stop compiler whining}
  LInPart := 0;   {0 is not in a part, 1 is in a quote-delimited part, 2 is in a bracketted part, 3 is a word}
  APartString := Trim(APartString);
  for Ln := 1 to Length(APartString) do begin
    if LInPart = 1 then begin
      if APartString[Ln] = '"' then begin {Do not Localize}
        LParamater := Copy(APartString, LStartPos+1, Ln-LStartPos-1);
        AParams.Add(LParamater);
        LInPart := 0;
      end;
    end else if LInPart = 2 then begin
      //We have to watch out that we don't close this entry on a closing bracket within
      //quotes, like ("Blah" "Blah)Blah"), so monitor if we are in quotes within brackets.
      if APartString[Ln] = '"' then begin {Do not Localize}
        LInQuotesInsideBrackets := not LInQuotesInsideBrackets;
      end else begin
        //Brackets don't count if they are within quoted strings...
        if not LInQuotesInsideBrackets then begin
          if APartString[Ln] = '(' then begin {Do not Localize}
            Inc(LBracketLevel);
          end else if APartString[Ln] = ')' then begin {Do not Localize}
            Dec(LBracketLevel);
            if LBracketLevel = 0 then begin
              if AKeepBrackets then begin
                LParamater := Copy(APartString, LStartPos, Ln-LStartPos+1);
              end else begin
                LParamater := Copy(APartString, LStartPos+1, Ln-LStartPos-1);
              end;
              AParams.Add(LParamater);
              LInPart := 0;
            end;
          end;
        end;
      end;
    end else if LInPart = 3 then begin
      if APartString[Ln] = ' ' then begin {Do not Localize}
        LParamater := Copy(APartString, LStartPos, Ln-LStartPos);
        AParams.Add(LParamater);
        LInPart := 0;
      end;
    end else if APartString[Ln] = '"' then begin {Do not Localize}
      {Start of a quoted param like "text"}
      LStartPos := Ln;
      LInPart := 1;
    end else if APartString[Ln] = '(' then begin {Do not Localize}
      {Start of a set of paired parameter/value strings within brackets,
      such as ("charset" "us-ascii").  Note these can be nested (bracket pairs
      within bracket pairs) }
      LStartPos := Ln;
      LInPart := 2;
      LBracketLevel := 1;
      LInQuotesInsideBrackets := False;
    end else if APartString[Ln] <> ' ' then begin {Do not Localize}
      {Start of an entry like 12345}
      LStartPos := Ln;
      LInPart := 3;
    end;
  end;
  {We could be in an entry when we hit the end of the line...}
  if LInPart = 3 then begin
    LParamater := Copy(APartString, LStartPos, MaxInt);
    AParams.Add(LParamater);
  end else if LInPart = 2 then begin
    if AKeepBrackets then begin
      LParamater := Copy(APartString, LStartPos, MaxInt);
    end else begin
      LParamater := Copy(APartString, LStartPos+1, MaxInt);
    end;
    if (not AKeepBrackets) and TextEndsWith(LParamater, ')') then begin    {Do not Localize}
      LParamater := Copy(LParamater, 1, Length(LParamater)-1);
    end;
    AParams.Add(LParamater);
  end else if LInPart = 1 then begin
    LParamater := Copy(APartString, LStartPos+1, MaxInt);
    if TextEndsWith(LParamater, '"') then begin    {Do not Localize}
      LParamater := Copy(LParamater, 1, Length(LParamater)-1);
    end;
    AParams.Add(LParamater);
  end;
end;

function TIdIMAP4.ParseBodyStructureSectionAsEquates(AParam: string): string;
  {Convert:
   "Name1" "Value1" "Name2" "Value2"
   to:
   ; Name1="Value1"; Name2="Value2"
  }
var
  LParse: TStringList;
  LN: integer;
begin
  Result := '';  {Do not Localize}
  if (Length(AParam) = 0) or TextIsSame(AParam, 'NIL') then begin {Do not Localize}
    Exit;
  end;
  LParse := TStringList.Create;
  try
    BreakApartParamsInQuotes(AParam, LParse);
    if LParse.Count < 2 then begin
      Exit;
    end;
    if ((LParse.Count mod 2) <> 0) then begin
      Exit;
    end;
    for LN := 0 to ((LParse.Count div 2)-1) do begin
      Result := Result + '; ' + Copy(LParse[LN*2], 2, Length(LParse[LN*2])-2) + '=' + LParse[(LN*2)+1]; {Do not Localize}
    end;
  finally
    FreeAndNil(LParse);
  end;
end;

function TIdIMAP4.ParseBodyStructureSectionAsEquates2(AParam: string): string;
  {Convert:
   "Name1" ("Name2" "Value2")
   to:
   Name1; Name2="Value2"
  }
var
  LParse: TStringList;
  LParams: string;
begin
  Result := ''; {Do not Localize}
  if (Length(AParam) = 0) or TextIsSame(AParam, 'NIL') then begin {Do not Localize}
    Exit;
  end;
  LParse := TStringList.Create;
  try
    BreakApart(AParam, ' ', LParse); {Do not Localize}
    if LParse.Count < 3 then begin
      Exit;
    end;
    LParams := Copy(AParam, Pos('(', AParam)+1, MaxInt); {Do not Localize}
    LParams := Copy(LParams, 1, Length(LParams)-1);
    LParams := ParseBodyStructureSectionAsEquates(LParams);
    if Length(LParams) = 0 then begin {Do not Localize}
      Result := Copy(LParse[0], 2, Length(LParse[0])-2) + LParams;
    end;
  finally
    FreeAndNil(LParse);
  end;
end;

function TIdIMAP4.GetNextWord(AParam: string): string;
var
  LPos: integer;
begin
  Result := '';  {Do not Localize}
  AParam := Trim(AParam);
  LPos := Pos(' ', AParam);  {Do not Localize}
  if LPos = 0 then begin
    Exit;
  end;
  Result := Copy(AParam, 1, LPos-1);
end;

function TIdIMAP4.GetNextQuotedParam(AParam: string; ARemoveQuotes: Boolean): string;
{If AParam is:
"file name.ext" NIL NIL
then this returns:
"file name.ext"
Note it returns the quotes, UNLESS ARemoveQuotes is True.
Also note that if AParam does NOT start with a quote, it returns the next word.
}
var
  LN: integer;
  LPos: integer;
begin
  {CCB: Modified code so it did not access past the end of the string if
  AParam was not actually in quotes (e.g. the MIME boundary parameter
  is only optionally in quotes).}
  LN := 1;
  {Skip any preceding spaces...}
  while AParam[LN] = ' ' do begin  {Do not Localize}
    LN := LN + 1;
  end;
  if AParam[LN] <> '"' then begin {Do not Localize}
    {Not actually enclosed in quotes.  Must be a single word.}
    AParam := Copy(AParam, LN, MaxInt);
    LPos := Pos(' ', AParam);   {Do not Localize}
    if LPos > 0 then begin
      {Strip off this word...}
      Result := Copy(AParam, 1, LPos-1);
    end else begin
      {This is the last word on the line, return it all...}
      Result := AParam;
    end;
  end else begin
    {It starts with a quote...}
    AParam := Copy(AParam, LN, MaxInt);
    LN := 2;
    while AParam[LN] <> '"' do begin  {Do not Localize}
      LN := LN + 1;
    end;
    Result := Copy(AParam, 1, LN);
    if ARemoveQuotes then begin
      Result := Copy(Result, 2, Length(Result)-2);
    end;
  end;
end;

procedure TIdIMAP4.BreakApartParamsInQuotes(const AParam: string; AParsedList: TStrings);
var
  Ln : Integer;
  LStartPos: Integer;
begin
  LStartPos := -1;
  AParsedList.Clear;
  for Ln := 1 to Length(AParam) do begin
    if AParam[LN] = '"' then begin {Do not Localize}
      if LStartPos > -1 then begin
        {The end of a quoted parameter...}
        AParsedList.Add(Copy(AParam, LStartPos, LN-LStartPos+1));
        LStartPos := -1;
      end else begin
        {The start of a quoted parameter...}
        LStartPos := Ln;
      end;
    end;
  end;
end;

procedure TIdIMAP4.ParseExpungeResult(AMB: TIdMailBox; ACmdResultDetails: TStrings);
var
  Ln : Integer;
  LSlExpunge : TStringList;
begin
  SetLength ( AMB.DeletedMsgs, 0 );
  LSlExpunge := TStringList.Create;
  try
    if ACmdResultDetails.Count > 1 then begin
      for Ln := 0 to ACmdResultDetails.Count - 1 do begin
        BreakApart(ACmdResultDetails[Ln], ' ', LSlExpunge); {Do not Localize}
        if TextIsSame(LSlExpunge[1], IMAP4Commands[cmdExpunge]) then begin
           SetLength(AMB.DeletedMsgs, (Length(AMB.DeletedMsgs) + 1));
           AMB.DeletedMsgs[Length(AMB.DeletedMsgs) - 1] := IndyStrToInt(LSlExpunge[0]);
        end;
        LSlExpunge.Clear;
      end;
    end;
  finally
    FreeAndNil(LSlExpunge);
  end;
end;

procedure TIdIMAP4.ParseMessageFlagString(AFlagsList: String; var AFlags: TIdMessageFlagsSet);
  {CC5: Note this only supports the system flags defined in RFC 2060.}
var
  LSlFlags : TStringList;
  Ln, I : Integer;
begin
  AFlags := [];
  LSlFlags := TStringList.Create;
  try
    BreakApart(AFlagsList, ' ', LSlFlags); {Do not Localize}
    for Ln := 0 to LSlFlags.Count-1 do begin
      I := PosInStrArray(
        LSlFlags[Ln],
        [MessageFlags[mfAnswered], MessageFlags[mfFlagged], MessageFlags[mfDeleted], MessageFlags[mfDraft], MessageFlags[mfSeen], MessageFlags[mfRecent]],
        False);
      case I of
        0..5: Include(AFlags, TIdMessageFlags(I));
      end;
    end;
  finally
    FreeAndNil(LSlFlags);
  end;
end;

procedure TIdIMAP4.ParseMailBoxAttributeString(AAttributesList: String; var AAttributes: TIdMailBoxAttributesSet);
var
  LSlAttributes : TStringList;
  Ln : Integer;
  I: Integer;
begin
  AAttributes := [];
  LSlAttributes := TStringList.Create;
  try
    BreakApart(AAttributesList, ' ', LSlAttributes); {Do not Localize}
    for Ln := 0 to LSlAttributes.Count - 1 do begin
      I := PosInStrArray(
        LSlAttributes[Ln],
        [MailBoxAttributes[maNoinferiors], MailBoxAttributes[maNoselect], MailBoxAttributes[maMarked], MailBoxAttributes[maUnmarked]],
        False);
      case I of
        0..3: Include(AAttributes, TIdMailBoxAttributes(I));
      end;
    end;
  finally
    FreeAndNil(LSlAttributes);
  end;
end;

procedure TIdIMAP4.ParseSearchResult(AMB: TIdMailBox; ACmdResultDetails: TStrings);
var Ln: Integer;
  LSlSearch: TStringList;
begin
  LSlSearch := TStringList.Create;
  SetLength(AMB.SearchResult, 0);
  try
    if ACmdResultDetails.Count > 0 then begin
      if Pos(IMAP4Commands[cmdSearch], ACmdResultDetails[0]) > 0 then begin
        BreakApart(ACmdResultDetails[0], ' ', LSlSearch); {Do not Localize}
        for Ln := 1 to LSlSearch.Count - 1 do begin
           SetLength(AMB.SearchResult, (Length(AMB.SearchResult) + 1));
           AMB.SearchResult[Length(AMB.SearchResult) - 1] := IndyStrToInt(LSlSearch[Ln]);
        end;
      end;
    end;
  finally
    FreeAndNil(LSlSearch);
  end;
end;

procedure TIdIMAP4.ParseStatusResult(AMB: TIdMailBox; ACmdResultDetails: TStrings);
var
  Ln: Integer;
  LRespStr : String;
  LStatStr: String;
  LStatPos: Integer;
  LSlStatus : TStringList;
begin
  LSlStatus := TStringList.Create;
  try
    if ACmdResultDetails.Count > 0 then
    begin
      // TODO: convert server response to uppercase?
      LRespStr := Trim(ACmdResultDetails[0]);
      LStatPos := Pos(IMAP4Commands[cmdStatus], LRespStr);
      if (LStatPos > 0) then
      begin
        LStatStr := Trim(Copy(LRespStr,
        LStatPos+Length(IMAP4Commands[cmdStatus]), Length(LRespStr)));
        AMB.Name := Trim(Fetch(LStatStr, '(', True));   {do not localize}
        if TextEndsWith(LStatStr, ')') then begin   {do not localize}
          IdDelete(LStatStr, Length(LStatStr), 1);
        end;
        BreakApart(LStatStr, ' ', LSlStatus);       {do not localize}
        // find status data items by name, values are on following line
        Ln := LSlStatus.IndexOf(IMAP4StatusDataItem[mdMessages]);
        if Ln <> -1 then begin
          AMB.TotalMsgs := IndyStrToInt(LSlStatus[Ln + 1]);
        end;
        Ln := LSlStatus.IndexOf(IMAP4StatusDataItem[mdRecent]);
        if Ln <> -1 then begin
          AMB.RecentMsgs := IndyStrToInt(LSlStatus[Ln + 1]);
        end;
        Ln := LSlStatus.IndexOf(IMAP4StatusDataItem[mdUnseen]);
        if Ln <> -1 then begin
          AMB.UnseenMsgs := IndyStrToInt(LSlStatus[Ln + 1]);
        end;
        Ln := LSlStatus.IndexOf(IMAP4StatusDataItem[mdUIDNext]);
        if Ln <> -1 then begin
          AMB.UIDNext := LSlStatus[Ln + 1];
        end;
        Ln := LSlStatus.IndexOf(IMAP4StatusDataItem[mdUIDValidity]);
        if Ln <> -1 then begin
          AMB.UIDValidity := LSlStatus[Ln + 1];
        end;
      end;
    end;
  finally
    FreeAndNil(LSlStatus);
  end;
end;

procedure TIdIMAP4.ParseSelectResult(AMB : TIdMailBox; ACmdResultDetails: TStrings);
var Ln : Integer;
  LStr : String;
  LFlags: TIdMessageFlagsSet;
begin
  AMB.Clear;
  for Ln := 0 to ACmdResultDetails.Count - 1 do begin
    if Pos('EXISTS', ACmdResultDetails[Ln] ) > 0 then begin {Do not Localize}
      AMB.TotalMsgs := IndyStrToInt(Copy(ACmdResultDetails[Ln], 0,
       (Pos('EXISTS', ACmdResultDetails[Ln] ) - 1))); {Do not Localize}
    end;
    if Pos('RECENT', ACmdResultDetails[Ln] ) > 0 then begin {Do not Localize}
      AMB.RecentMsgs := IndyStrToInt(Copy(ACmdResultDetails[Ln], 0,
       (Pos('RECENT', ACmdResultDetails[Ln]) - 1))); {Do not Localize}
    end;
    if Pos('[UIDVALIDITY', ACmdResultDetails[Ln]) > 0 then begin {Do not Localize}
      AMB.UIDValidity := Trim(Copy(ACmdResultDetails[Ln],
       (Pos('[UIDVALIDITY', ACmdResultDetails[Ln]) + {Do not Localize}
       Length('[UIDVALIDITY')), {Do not Localize}
       (Pos(']', ACmdResultDetails[Ln]) -  {Do not Localize}
       (Pos('[UIDVALIDITY', ACmdResultDetails[Ln]) +  {Do not Localize}
       Length('[UIDVALIDITY'))))); {Do not Localize}
    end;
    if Pos('[UIDNEXT', ACmdResultDetails[Ln]) > 0 then begin {Do not Localize}
      AMB.UIDNext := Trim(Copy(ACmdResultDetails[Ln],
       (Pos('[UIDNEXT', ACmdResultDetails[Ln]) + {Do not Localize}
       Length('[UIDNEXT')), {Do not Localize}
       (Pos(']', ACmdResultDetails[Ln]) -  {Do not Localize}
       (Pos('[UIDNEXT', ACmdResultDetails[Ln]) +  {Do not Localize}
       Length('[UIDNEXT')) - 1))); {Do not Localize}
    end;
    if Pos('FLAGS', ACmdResultDetails[Ln]) > 0 then begin {Do not Localize}
      ParseMessageFlagString(Copy(ACmdResultDetails[Ln],
       (Pos('(', ACmdResultDetails[Ln]) + 1), {Do not Localize}
       (Pos(')', ACmdResultDetails[Ln]) -  {Do not Localize}
       Pos('(', ACmdResultDetails[Ln]) - 1)), LFlags); {Do not Localize}
      AMB.Flags := LFlags;
    end;
    if Pos('[PERMANENTFLAGS', ACmdResultDetails[Ln]) > 0 then begin {Do not Localize}
      ParseMessageFlagString(Copy(ACmdResultDetails[Ln],
       (Pos('(', ACmdResultDetails[Ln]) + 1), {Do not Localize}
       (Pos(')', ACmdResultDetails[Ln]) -  {Do not Localize}
       Pos('(', ACmdResultDetails[Ln]) - 1)), {Do not Localize}
       LFlags);
      AMB.ChangeableFlags := LFlags;
    end;
    if Pos('[UNSEEN', ACmdResultDetails[Ln]) > 0 then begin {Do not Localize}
      AMB.FirstUnseenMsg := IndyStrToInt(Copy(ACmdResultDetails[Ln],
       (Pos('[UNSEEN', ACmdResultDetails[Ln]) + {Do not Localize}
       Length('[UNSEEN')), {Do not Localize}
       (Pos(']', ACmdResultDetails[Ln]) -  {Do not Localize}
       (Pos('[UNSEEN', ACmdResultDetails[Ln]) +  {Do not Localize}
       Length('[UNSEEN'))))); {Do not Localize}
    end;
    if Pos('[READ-', ACmdResultDetails[Ln]) > 0 then begin {Do not Localize}
      LStr := Trim(Copy(ACmdResultDetails[Ln],
       (Pos('[', ACmdResultDetails[Ln])), {Do not Localize}
       (Pos(']', ACmdResultDetails[Ln]) - Pos ('[', ACmdResultDetails[Ln] ) + 1))); {Do not Localize}
      {CCB: AMB.State ambiguous unless coded response received - default to msReadOnly...}
      if TextIsSame(LStr, '[READ-WRITE]') then begin {Do not Localize}
        AMB.State := msReadWrite;
      end else {if SameText ( LStr, '[READ-ONLY]' ) then} begin {Do not Localize}
        AMB.State := msReadOnly;
      end;
    end;
    if Pos('[ALERT]', ACmdResultDetails[Ln]) > 0 then begin {Do not Localize}
      LStr := Trim(Copy(ACmdResultDetails[Ln],
       (Pos('[ALERT]', ACmdResultDetails[Ln]) + {Do not Localize}
       Length('[ALERT]')), MaxInt)); {Do not Localize}
      if Length(LStr) <> 0 then begin  {Do not Localize}
        DoAlert(LStr);
      end;
    end;
  end;
end;

procedure TIdIMAP4.ParseListResult(AMBList: TStrings; ACmdResultDetails: TStrings);
begin
  InternalParseListResult(IMAP4Commands[cmdList], AMBList, ACmdResultDetails);
end;

procedure TIdIMAP4.InternalParseListResult(ACmd: string; AMBList: TStrings; ACmdResultDetails: TStrings);
var Ln : Integer;
  LSlRetrieve : TStringList;
  LStr : String;
  LWord: string;
begin
  AMBList.Clear;
  LSlRetrieve := TStringList.Create;
  try
    for Ln := 0 to ACmdResultDetails.Count - 1 do begin
      LStr := ACmdResultDetails[Ln];
      //Todo: Get mail box attributes here
      {CC2: Could put mailbox attributes in AMBList's Objects property?}
      {The line is of the form:
      * LIST (\UnMarked \AnotherFlag) "/" "Mailbox name"
      }
      {CCA: code modified because some servers return NIL as the mailbox
      separator, i.e.:
      * LIST (\UnMarked \AnotherFlag) NIL "Mailbox name"
      }

      ParseIntoBrackettedQuotedAndUnquotedParts(LStr, LSlRetrieve, False);
      if LSlRetrieve.Count > 3 then begin
        //Make sure 1st word is LIST (may be an unsolicited response)...
        if TextIsSame(LSlRetrieve[0], {IMAP4Commands[cmdList]} ACmd) then begin
          {Get the mailbox separator...}
          LWord := Trim(LSlRetrieve[LSlRetrieve.Count-2]);
          if TextIsSame(LWord, 'NIL') or (LWord = '') then begin {Do not Localize}
            FMailBoxSeparator := #0;
          end else begin
            FMailBoxSeparator := LWord[1];
          end;
          {Now get the mailbox name...}
          LWord := Trim(LSlRetrieve[LSlRetrieve.Count-1]);
          AMBList.Add(DoMUTFDecode(LWord));
        end;
      end;
    end;
  finally
    FreeAndNil(LSlRetrieve);
  end;
end;

procedure TIdIMAP4.ParseLSubResult(AMBList: TStrings; ACmdResultDetails: TStrings);
begin
  InternalParseListResult(IMAP4Commands[cmdLSub], AMBList, ACmdResultDetails);
end;

procedure TIdIMAP4.ParseEnvelopeResult(AMsg: TIdMessage; ACmdResultStr: String);

  procedure DecodeEnvelopeAddress(const AAddressStr: String; AEmailAddressItem: TIdEmailAddressItem); overload;
  var
    LStr, LTemp: String;
    I: Integer;
    {$IFNDEF DOTNET}
    LPChar: PChar;
    {$ENDIF}
  begin
    if TextStartsWith(AAddressStr, '(') and TextEndsWith(AAddressStr, ')') and  {Do not Localize}
      Assigned(AEmailAddressItem) then begin
      LStr := Copy(AAddressStr, 2, Length (AAddressStr) - 2);
      //Gets the name part
      if TextStartsWith(LStr, 'NIL ') then begin  {Do not Localize}
        LStr := Copy(LStr, 5, MaxInt);  {Do not Localize}
      end
      else if TextStartsWith(LStr, '{') then begin  {Do not Localize}
        LStr := Copy(LStr, Pos('}', LStr) + 1, MaxInt);  {Do not Localize}
        I := Pos('" ', LStr);
        AEmailAddressItem.Name := Copy(LStr, 1, I-1);  {Do not Localize}
        LStr := Copy(LStr, I+2, MaxInt);  {Do not Localize}
      end else begin
        I := Pos('" ', LStr);
        LTemp := Copy(LStr, 1, I);  
        {$IFDEF DOTNET}
        AEmailAddressItem.Name := Copy(LTemp, 2, Length(LTemp)-2); {ExtractQuotedStr ( LTemp, '"' );  {Do not Localize}
        {$ELSE}
        LPChar := PChar(LTemp);
        AEmailAddressItem.Name := AnsiExtractQuotedStr(LPChar, '"');  {Do not Localize}
        {$ENDIF}
        LStr := Copy(LStr, I+2, MaxInt);  {Do not Localize}
      end;
      //Gets the source root part
      if TextStartsWith(LStr, 'NIL ') then begin  {Do not Localize}
        LStr := Copy(LStr, 5, MaxInt);  {Do not Localize}
      end else begin
        I := Pos('" ', LStr);
        LTemp := Copy(LStr, 1, I);
        {$IFDEF DOTNET}
        AEmailAddressItem.Name := Copy(LTemp, 2, Length(LTemp)-2); {AnsiExtractQuotedStr ( LTemp, '"' );  {Do not Localize}
        {$ELSE}
        LPChar := PChar(LTemp);
        AEmailAddressItem.Name := AnsiExtractQuotedStr(LPChar, '"');  {Do not Localize}
        {$ENDIF}
        LStr := Copy(LStr, I+2, MaxInt);  {Do not Localize}
      end;
      //Gets the mailbox name part
      if TextStartsWith(LStr, 'NIL ') then begin  {Do not Localize}
        LStr := Copy(LStr, 5, MaxInt);  {Do not Localize}
      end else begin
        I := Pos('" ', LStr);
        LTemp := Copy(LStr, 1, I);  {Do not Localize}
        {$IFDEF DOTNET}
        AEmailAddressItem.Address := Copy(LTemp, 2, Length(LTemp)-2); {AnsiExtractQuotedStr ( LTemp, '"' );  {Do not Localize}
        {$ELSE}
        LPChar := PChar(LTemp);
        AEmailAddressItem.Address := AnsiExtractQuotedStr(LPChar, '"');  {Do not Localize}
        {$ENDIF}
        LStr := Copy(LStr, I+2, MaxInt);  {Do not Localize}
      end;
      //Gets the host name part
      if not TextIsSame(LStr, 'NIL') then begin  {Do not Localize}
        LTemp := Copy(LStr, 1, MaxInt);
        {$IFDEF DOTNET}
        AEmailAddressItem.Address := AEmailAddressItem.Address + '@' +  {Do not Localize}
          Copy(LTemp, 2, Length(LTemp)-2); {AnsiExtractQuotedStr ( LTemp, '"' );  {Do not Localize}
        {$ELSE}
        LPChar := PChar(LTemp);
        AEmailAddressItem.Address := AEmailAddressItem.Address + '@' +  {Do not Localize}
          AnsiExtractQuotedStr(LPChar, '"');  {Do not Localize}
        {$ENDIF}
      end;
    end;
  end;

  procedure DecodeEnvelopeAddress(const AAddressStr: String; AEmailAddressList: TIdEmailAddressList); overload;
  var
    LStr: String;
    I: Integer;
  begin
    if TextStartsWith(AAddressStr, '(') and TextEndsWith(AAddressStr, ')') and  {Do not Localize}
      Assigned(AEmailAddressList) then begin
      LStr := Copy(AAddressStr, 2, Length (AAddressStr) - 2);
      repeat
        I := Pos(')', LStr);
        if I = 0 then begin
          Break;
        end;
        DecodeEnvelopeAddress(Copy(LStr, 1, I), AEmailAddressList.Add);  {Do not Localize}
        LStr := Trim(Copy(LStr, I+1, MaxInt));  {Do not Localize}
      until False;
    end;
  end;

var
  LStr, LTemp: String;
  I: Integer;
  {$IFNDEF DOTNET}
  LPChar: PChar;
  {$ENDIF}
begin
  //The fields of the envelope structure are in the
  //following order: date, subject, from, sender,
  //reply-to, to, cc, bcc, in-reply-to, and message-id.
  //The date, subject, in-reply-to, and message-id
  //fields are strings.  The from, sender, reply-to,
  //to, cc, and bcc fields are parenthesized lists of
  //address structures.

  //An address structure is a parenthesized list that
  //describes an electronic mail address.  The fields
  //of an address structure are in the following order:
  //personal name, [SMTP] at-domain-list (source
  //route), mailbox name, and host name.

  //* 4 FETCH (ENVELOPE ("Sun, 15 Jul 2001 02:56:45 -0700 (PDT)" "Your Borland Commu
  //nity Account Activation Code" (("Borland Community" NIL "mailbot" "borland.com")
  //) NIL NIL (("" NIL "name" "company.com")) NIL NIL NIL "<200107150956.CAA1
  //8152@borland.com>"))

  {CC5: Cleared out any existing fields to avoid mangling new entries with old/stale ones.}
  //Extract envelope date field
  AMsg.Date := 0;
  if TextStartsWith(ACmdResultStr, 'NIL ') then begin     {Do not Localize}
    ACmdResultStr := Copy(ACmdResultStr, 5, MaxInt);
  end else begin
    I := Pos('" ', ACmdResultStr);             {Do not Localize}
    LTemp := Copy(ACmdResultStr, 1, I);
    {$IFDEF DOTNET}
    LStr := Copy(LTemp, 2, Length(LTemp)-2);
    {$ELSE}
    LPChar := PChar(LTemp);
    LStr := AnsiExtractQuotedStr(LPChar, '"');                         {Do not Localize}
    {$ENDIF}
    AMsg.Date := GMTToLocalDateTime(LStr);
    ACmdResultStr := Copy(ACmdResultStr, I+2, MaxInt);
  end;
  //Extract envelope subject field
  AMsg.Subject := '';                                       {Do not Localize}
  if TextStartsWith(ACmdResultStr, 'NIL ') then begin     {Do not Localize}
    ACmdResultStr := Copy(ACmdResultStr, 4, MaxInt);
  end else begin
    if TextStartsWith(ACmdResultStr, '{') then begin                      {Do not Localize}
      ACmdResultStr := Copy(ACmdResultStr, Pos('}', ACmdResultStr) + 1, MaxInt);      {Do not Localize}
      I := Pos(' ', ACmdResultStr);              {Do not Localize}
      LStr := Copy(ACmdResultStr, 1, I-1);
      AMsg.Subject := LStr;
      ACmdResultStr := Copy(ACmdResultStr, I+1, MaxInt);      {Do not Localize}
    end else begin
      I := Pos('" ', ACmdResultStr);             {Do not Localize}
      LTemp := Copy(ACmdResultStr, 1, I);
{$IFDEF DOTNET}
      LStr := Copy(LTemp, 2, Length(LTemp)-2);
{$ELSE}
      LPChar := PChar(LTemp);
      LStr := AnsiExtractQuotedStr(LPChar, '"');                       {Do not Localize}
{$ENDIF}
      AMsg.Subject := LStr;
      ACmdResultStr := Copy(ACmdResultStr, I+2, MaxInt);       {Do not Localize}
    end;
  end;
  //Extract envelope from field
  AMsg.FromList.Clear;
  if TextStartsWith(ACmdResultStr, 'NIL ') then begin     {Do not Localize}
    ACmdResultStr := Copy(ACmdResultStr, 5, MaxInt);
  end else begin
    I := Pos(')) ', ACmdResultStr);              {Do not Localize}
    LStr := Copy(ACmdResultStr, 1, I+1);
    DecodeEnvelopeAddress(LStr, AMsg.FromList);
    ACmdResultStr := Copy(ACmdResultStr, I+3, MaxInt);
  end;
  //Extract envelope sender field
  AMsg.Sender.Name := '';                                     {Do not Localize}
  AMsg.Sender.Address := '';                                    {Do not Localize}
  if TextStartsWith(ACmdResultStr, 'NIL ') then begin     {Do not Localize}
    ACmdResultStr := Copy(ACmdResultStr, 5, MaxInt);
  end else begin
    {CC5: Fix parsing of sender...}
    I := Pos(')) ', ACmdResultStr);
    LStr := Copy(ACmdResultStr, 2, I-1);
    DecodeEnvelopeAddress(LStr, AMsg.Sender);
    ACmdResultStr := Copy(ACmdResultStr, I+3, MaxInt);
  end;
  //Extract envelope reply-to field
  AMsg.ReplyTo.Clear;
  if TextStartsWith(ACmdResultStr, 'NIL ') then begin     {Do not Localize}
    ACmdResultStr := Copy(ACmdResultStr, 5, MaxInt);
  end else begin
    I := Pos(')) ', ACmdResultStr);              {Do not Localize}
    LStr := Copy(ACmdResultStr, 1, I+1);
    DecodeEnvelopeAddress(LStr, AMsg.ReplyTo);
    ACmdResultStr := Copy(ACmdResultStr, I+3, MaxInt);
  end;
  //Extract envelope to field
  AMsg.Recipients.Clear;
  if TextStartsWith(ACmdResultStr, 'NIL ') then begin     {Do not Localize}
    ACmdResultStr := Copy(ACmdResultStr, 5, MaxInt);
  end else begin
    I := Pos(')) ', ACmdResultStr);              {Do not Localize}
    LStr := Copy(ACmdResultStr, 1, I+1);
    DecodeEnvelopeAddress(LStr, AMsg.Recipients);
    ACmdResultStr := Copy(ACmdResultStr, I+3, MaxInt);
  end;
  //Extract envelope cc field
  AMsg.CCList.Clear;
  if TextStartsWith(ACmdResultStr, 'NIL ') then begin     {Do not Localize}
    ACmdResultStr := Copy(ACmdResultStr, 5, MaxInt);
  end else begin
    I := Pos(')) ', ACmdResultStr);              {Do not Localize}
    LStr := Copy(ACmdResultStr, 1, I+1);
    DecodeEnvelopeAddress(LStr, AMsg.CCList);
    ACmdResultStr := Copy(ACmdResultStr, I+3, MaxInt);
  end;
  //Extract envelope bcc field
  AMsg.BccList.Clear;
  if TextStartsWith(ACmdResultStr, 'NIL ') then begin     {Do not Localize}
    ACmdResultStr := Copy(ACmdResultStr, 5, MaxInt);
  end else begin
    I := Pos(')) ', ACmdResultStr);              {Do not Localize}
    LStr := Copy(ACmdResultStr, 1, I+1);
    DecodeEnvelopeAddress(LStr, AMsg.BccList);
    ACmdResultStr := Copy(ACmdResultStr, I+3, MaxInt);
  end;
  //Extract envelope in-reply-to field
  if TextStartsWith(ACmdResultStr, 'NIL ') then begin     {Do not Localize}
    ACmdResultStr := Copy(ACmdResultStr, 5, MaxInt);
  end else begin
    I := Pos('" ', ACmdResultStr);             {Do not Localize}
    LTemp := Copy(ACmdResultStr, 1, I);
    {$IFDEF DOTNET}
    LStr := Copy(LTemp, 2, Length(LTemp)-2);
    {$ELSE}
    LPChar := PChar(LTemp);
    LStr := AnsiExtractQuotedStr(LPChar, '"');                         {Do not Localize}
    {$ENDIF}
    AMsg.InReplyTo := LStr;
    ACmdResultStr := Copy(ACmdResultStr, I+2, MaxInt);
  end;
  //Extract envelope message-id field
  AMsg.MsgId := '';  {Do not Localize}
  if TextStartsWith(ACmdResultStr, 'NIL ') then begin     {Do not Localize}
    ACmdResultStr := Copy(ACmdResultStr, 5, MaxInt);
  end else begin
    {$IFDEF DOTNET}
    LStr := Copy(ACmdResultStr, 2, Length(ACmdResultStr)-2);
    {$ELSE}
    LPChar := PChar(ACmdResultStr);
    LStr := AnsiExtractQuotedStr(LPChar, '"');                         {Do not Localize}
    {$ENDIF}
    AMsg.MsgId := Trim(LStr);
  end;
end;

function TIdIMAP4.ParseLastCmdResult(ALine: string; AExpectedCommand: string; AExpectedIMAPFunction: array of string): Boolean;
var
  LPos: integer;
  LWord: string;
  LWords: TStringList;
  LN: Integer;
  LWordInExpectedIMAPFunction: Boolean;
begin
  Result := False;
  LWordInExpectedIMAPFunction := False;
  FLineStruct.HasStar := False;
  FLineStruct.MessageNumber := '';
  FLineStruct.Command := '';
  FLineStruct.UID := '';
  FLineStruct.Complete := True;
  FLineStruct.IMAPFunction := '';
  FLineStruct.IMAPValue := '';
  FLineStruct.ByteCount := -1;
  ALine := Trim(ALine);  //Can get garbage like a spurious CR at start
  //Look for (optional) * at start...
  LPos := Pos(' ', ALine);            {Do not Localize}
  if LPos < 1 then begin
    Exit;  //Nothing on this line
  end;
  LWord := Copy(ALine, 1, LPos-1);
  if LWord = '*' then begin             {Do not Localize}
    FLineStruct.HasStar := True;
    ALine := Copy(ALine, LPos+1, MaxInt);
    LPos := Pos(' ', ALine);          {Do not Localize}
    if LPos < 1 then begin
      Exit;  //Line ONLY had a *
    end;
    LWord := Copy(ALine, 1, LPos-1);
  end;
  //Look for (optional) message number next...
  if TIdReplyIMAP4(FLastCmdResult).IsItANumber(LWord) then begin
    FLineStruct.MessageNumber := LWord;
    ALine := Copy(ALine, LPos+1, MaxInt);
    LPos := Pos(' ', ALine);          {Do not Localize}
    if LPos < 1 then begin
      Exit;  //Line ONLY had a * 67
    end;
    LWord := Copy(ALine, 1, LPos-1);
  end;
  //We should have a valid IMAP command word now, like FETCH, LIST or SEARCH...
  if PosInStrArray(LWord, IMAP4Commands) = -1 then begin
    Exit;  //Should have been a command, give up.
  end;
  FLineStruct.Command := LWord;
  if ((AExpectedCommand = '') or (FLineStruct.Command = AExpectedCommand)) then begin
    Result := True;
  end;
  ALine := Copy(ALine, Length(LWord)+2, MaxInt);
  if ALine[1] <> '(' then begin      {Do not Localize}
    //This is a line like '* SEARCH 34 56', the '34 56' is the value (result)...
    FLineStruct.IMAPValue := ALine;
    Exit;
  end;
  //This is a line like '* 9 FETCH (UID 47 RFC822.SIZE 3456)', i.e. with a bracketted response.
  //See is it complete (has a closing bracket) or does it continue on other lines...
  ALine := Copy(ALine, 2, MaxInt);
  if Copy(ALine, Length(ALine), 1) = ')' then begin    {Do not Localize}
    ALine := Copy(ALine, 1, Length(ALine) - 1);  //Strip trailing bracket
    FLineStruct.Complete := True;
  end else begin
    FLineStruct.Complete := False;
  end;
  //These words left may occur in different order.  Find & delete those we know.
  LWords := TStringList.Create;
  try
    ParseIntoBrackettedQuotedAndUnquotedParts(ALine, LWords, False);
    if LWords.Count > 0 then begin
      //See does it have a trailing byte count...
      LWord := LWords[LWords.Count-1];
      if TextStartsWith(LWord, '{') and TextEndsWith(LWord, '}') then begin
        //It ends in a byte count...
        LWord := Copy(LWord, 2, Length(LWord)-2);
        if TextIsSame(LWord, 'NIL') then begin   {do not localize}
          FLineStruct.ByteCount := 0;
        end else begin
          FLineStruct.ByteCount := IndyStrToInt(LWord);
        end;
        LWords.Delete(LWords.Count-1);
      end;
    end;
    if not FLineStruct.Complete then begin
      //The command in this case should be the last word...
      if LWords.Count > 0 then begin
        FLineStruct.IMAPFunction := LWords[LWords.Count-1];
        LWords.Delete(LWords.Count-1);
      end;
    end;
    //See is the UID present...
    LPos := LWords.IndexOf(IMAP4FetchDataItem[fdUID]);  {Do not Localize}
    if LPos <> -1 then begin
      //The UID is the word after 'UID'...
      if LPos < LWords.Count-1 then begin
        FLineStruct.UID := LWords[LPos+1];
        LWords.Delete(LPos+1);
        LWords.Delete(LPos);
      end;
      if PosInStrArray(IMAP4FetchDataItem[fdUID], AExpectedIMAPFunction) > -1 then begin
        LWordInExpectedIMAPFunction := True;
      end;
    end;
    //See are the FLAGS present...
    LPos := LWords.IndexOf(IMAP4FetchDataItem[fdFlags]);  {Do not Localize}
    if LPos <> -1 then begin
      //The FLAGS are in the "word" (really a string) after 'FLAGS'...
      if LPos < LWords.Count-1 then begin
        ParseMessageFlagString(LWords[LPos+1], FLineStruct.Flags);
        LWords.Delete(LPos+1);
        LWords.Delete(LPos);
      end;
      if PosInStrArray(IMAP4FetchDataItem[fdFlags], AExpectedIMAPFunction) > -1 then begin
        LWordInExpectedIMAPFunction := True;
      end;
    end;
    if Length(AExpectedIMAPFunction) > 0 then begin
      //See is what we want present.
      for LN := 0 to Length(AExpectedIMAPFunction)-1 do begin
        //First check if we got it already in IMAPFunction...
        if TextIsSame(FLineStruct.IMAPFunction, AExpectedIMAPFunction[LN]) then begin
          LWordInExpectedIMAPFunction := True;
          Break;
        end;
        //Now check if it is in any remaining words...
        LPos := LWords.IndexOf(AExpectedIMAPFunction[LN]);  {Do not Localize}
        if LPos <> -1 then begin
          FLineStruct.IMAPFunction := LWords[LPos];
          LWordInExpectedIMAPFunction := True;
          if LPos < LWords.Count-1 then begin
            //There is a parameter after our function...
            FLineStruct.IMAPValue := LWords[LPos+1];
          end;
          Break;
        end;
      end;
    end else begin
      //See is there function/value items left.  There may not be, such as
      //'* 9 FETCH (UID 45)' in response to a GetUID request.
      if FLineStruct.Complete then begin
        if LWords.Count > 1 then begin
          FLineStruct.IMAPFunction := LWords[LWords.Count-2];
          FLineStruct.IMAPValue := LWords[LWords.Count-1];
        end;
      end;
    end;
    Result := False;
    if (AExpectedCommand = '') or (FLineStruct.Command = AExpectedCommand) then begin
      //The AExpectedCommand is correct, now need to check the AExpectedIMAPFunction...
      if (Length(AExpectedIMAPFunction) = 0) or LWordInExpectedIMAPFunction then begin
        Result := True;
      end;
    end;
  finally
    FreeAndNil(LWords);
  end;
end;

{This ADDS any parseable info from ALine to FLineStruct (set up from a previous ParseLastCmdResult call)}
procedure TIdIMAP4.ParseLastCmdResultButAppendInfo(ALine: string);
var
  LPos: integer;
  LWords: TStringList;
begin
  ALine := Trim(ALine);  //Can get garbage like a spurious CR at start
  {We may have an initial or ending bracket, like ") UID 5" or "UID 5)"}
  if TextStartsWith(ALine, ')') then begin      {Do not Localize}
    ALine := Trim(Copy(ALine, 2, MaxInt));
  end;
  if TextEndsWith(ALine, ')') then begin      {Do not Localize}
    ALine := Trim(Copy(ALine, 1, Length(ALine)-1));
  end;
  //These words left may occur in different order.  Find & delete those we know.
  LWords := TStringList.Create;
  try
    ParseIntoBrackettedQuotedAndUnquotedParts(ALine, LWords, False);
    //See is the UID present...
    LPos := LWords.IndexOf('UID');  {Do not Localize}
    if LPos <> -1 then begin
      //The UID is the word after 'UID'...
      FLineStruct.UID := LWords[LPos+1];
      LWords.Delete(LPos+1);
      LWords.Delete(LPos);
    end;
    //See are the FLAGS present...
    LPos := LWords.IndexOf('FLAGS');  {Do not Localize}
    if LPos <> -1 then begin
      //The FLAGS are in the "word" (really a string) after 'FLAGS'...
      ParseMessageFlagString(LWords[LPos+1], FLineStruct.Flags);
      LWords.Delete(LPos+1);
      LWords.Delete(LPos);
    end;
  finally
    FreeAndNil(LWords);
  end;
end;

{ ...Parser Functions }

function TIdIMAP4.ArrayToNumberStr(const AMsgNumList: array of Integer): String;
var
  Ln : Integer;
begin
  for Ln := 0 to Length(AMsgNumList) - 1 do begin
    Result := Result + IntToStr(AMsgNumList[Ln]) + ',';                    {Do not Localize}
  end;
  SetLength(Result, (Length(Result) - 1 ));
end;

function TIdIMAP4.MessageFlagSetToStr(const AFlags: TIdMessageFlagsSet): String;
begin
  Result := '';                                           {Do not Localize}
  if mfAnswered in AFlags then begin
    Result := Result + MessageFlags[mfAnswered] + ' ';                      {Do not Localize}
  end;
  if mfFlagged in AFlags then begin
    Result := Result + MessageFlags[mfFlagged] + ' ';                       {Do not Localize}
  end;
  if mfDeleted in AFlags then begin
    Result := Result + MessageFlags[mfDeleted] + ' ';                       {Do not Localize}
  end;
  if mfDraft in AFlags then begin
    Result := Result + MessageFlags[mfDraft] + ' ';                       {Do not Localize}
  end;
  if mfSeen in AFlags then begin
    Result := Result + MessageFlags[mfSeen] + ' ';                        {Do not Localize}
  end;
end;

function TIdIMAP4.DateToIMAPDateStr(const ADate: TDateTime): String;
var
  LDay, LMonth, LYear : Word;
begin
  {Do not use the global settings from the system unit here because:
  1) It might not be thread safe
  2) Changing the settings could create problems for a user who's local date conventions
  are diffrent than dd-mm-yyyy.  Some people prefer mm-dd-yyy.  Don't mess with a user's display settings.
  3) Using the display settings for dates may not always work as expected if a user
  changes their settings at a time between whn you do it but before the date is formatted.
  }
  DecodeDate(ADate, LYear, LMonth, LDay);
  Result := IndyFormat('%2.d-%s-%4.d', [LDay, UpperCase(monthnames[LMonth]), LYear]);  {Do not Localize}
end;

procedure TIdIMAP4.StripCRLFs(ASourceStream, ADestStream: TStream);
var
  LByte: TIdBytes;
  LNumSourceBytes: int64;
  LBytesRead: int64;
begin
  SetLength(LByte, 1);
  ASourceStream.Position := 0;
  ADestStream.Size := 0;
  LNumSourceBytes := ASourceStream.Size;
  LBytesRead := 0;
  while LBytesRead < LNumSourceBytes do begin
    TIdStreamHelper.ReadBytes(ASourceStream, LByte, 1);
    if not ByteIsInEOL(LByte, 0) then begin
      TIdStreamHelper.Write(ADestStream, LByte, 1);
    end;
    Inc(LBytesRead);
  end;
end;

procedure TIdIMAP4.StripCRLFs(var AText: string);
var
  LPos: integer;
  LLen: integer;
  LTemp: string;
  LDestPos: integer;
begin
  //Optimised with the help of Guus Creuwels.
  LPos := 1;
  LLen := Length(AText);
  SetLength(LTemp, LLen);
  LDestPos := 1;
  while LPos <= LLen do begin
    if AText[LPos] = #13 then begin
      //Don't GPF if this is the last char in the string...
      if LPos < LLen then begin
        if AText[LPos+1] = #10 then begin
          Inc(LPos, 2);
        end else begin
          LTemp[LDestPos] := AText[LPos];
          Inc(LPos);
          Inc(LDestPos);
        end;
      end else begin
        LTemp[LDestPos] := AText[LPos];
        Inc(LPos);
        Inc(LDestPos);
      end;
    end else begin
      LTemp[LDestPos] := AText[LPos];
      Inc(LPos);
      Inc(LDestPos);
    end;
  end;
  SetLength(LTemp, LDestPos - 1);
  AText := LTemp;
end;

procedure TIdIMAP4.ReceiveBody(AMsg: TIdMessage; const ADelim: string = '.');  {Do not Localize}
var
  LMsgEnd: Boolean;
  LActiveDecoder: TIdMessageDecoder;
  LLine: string;
  LCheckForOptionalImapFlags: Boolean;
  LDelim: string;

  {CC7: The following define SContentType is from IdMessageClient.  It is defined here also
  (with only local scope) because the one in IdMessageClient is defined locally
  there also, so we cannot get at it.}
const
  SContentType = 'Content-Type'; {do not localize}

  function ProcessTextPart(ADecoder: TIdMessageDecoder): TIdMessageDecoder;
  var
    LDestStream: TStringStream;
    Li: integer;
  begin
    try
      LDestStream := TStringStream.Create('');  {Do not Localize}
      try
        Result := ADecoder.ReadBody(LDestStream, LMsgEnd);
        with TIdText.Create(AMsg.MessageParts) do begin
          ContentType := ADecoder.Headers.Values[SContentType];
          ContentID := ADecoder.Headers.Values['Content-ID'];  {Do not Localize}
          ContentLocation := ADecoder.Headers.Values['Content-Location'];  {Do not Localize}
          ContentDescription := ADecoder.Headers.Values['Content-Description']; {Do not Localize}
          ExtraHeaders.NameValueSeparator := '=';  {Do not Localize}
          for Li := 0 to ADecoder.Headers.Count-1 do begin
            if Headers.IndexOfName(ADecoder.Headers.Names[Li]) < 0 then begin
              ExtraHeaders.Add(ADecoder.Headers.Strings[Li]);
            end;
          end;
          ContentTransfer := ADecoder.Headers.Values['Content-Transfer-Encoding'];  {Do not Localize}
          Body.Text := LDestStream.DataString;
        end;
      finally
        FreeAndNil(LDestStream);
      end;
    finally
      FreeAndNil(ADecoder);
    end;
  end;

  function ProcessAttachment(ADecoder: TIdMessageDecoder): TIdMessageDecoder;
  var
    LDestStream: TStream;
    Li: integer;
    LAttachment: TIdAttachment;
  begin
    try
      Result := nil; // supress warnings
      AMsg.DoCreateAttachment(ADecoder.Headers, LAttachment);
      Assert(Assigned(LAttachment), 'Attachment must not be unassigned here!');    {Do not Localize}
      with LAttachment do begin
        try
          LDestStream := PrepareTempStream;
          try
            Result := ADecoder.ReadBody(LDestStream, LMsgEnd);
            ContentType := ADecoder.Headers.Values[SContentType];
            ContentTransfer := ADecoder.Headers.Values['Content-Transfer-Encoding'];  {Do not Localize}
            ContentDisposition := ADecoder.Headers.Values['Content-Disposition'];  {Do not Localize}
            ContentID := ADecoder.Headers.Values['Content-ID'];  {Do not Localize}
            ContentLocation := ADecoder.Headers.Values['Content-Location'];  {Do not Localize}
            ContentDescription := ADecoder.Headers.Values['Content-Description']; {Do not Localize}
            Filename := ADecoder.Filename;
            ExtraHeaders.NameValueSeparator := '=';  {Do not Localize}
            for Li := 0 to ADecoder.Headers.Count-1 do begin
              if Headers.IndexOfName(ADecoder.Headers.Names[Li]) < 0 then begin
                ExtraHeaders.Add(ADecoder.Headers.Strings[Li]);
              end;
            end;
          finally
            FinishTempStream;
          end;
        except
          //this should also remove the Item from the TCollection.
          //Note that Delete does not exist in the TCollection.
          AMsg.MessageParts[Index].Free;
          Free;
        end;
      end;
    finally
      FreeAndNil(ADecoder);
    end;
  end;

Begin
  {CC3: If IMAP calls this ReceiveBody, it prepends IMAP to delim, e.g. 'IMAP)',
  to flag that this routine should expect IMAP FLAGS entries.}
  LCheckForOptionalImapFlags := False;   {CC3: IMAP hack inserted lines start here...}
  LDelim := ADelim;
  if TextStartsWith(ADelim, 'IMAP') then begin {do not localize}
    LCheckForOptionalImapFlags := True;
    LDelim := Copy(ADelim, 5, MaxInt);
  end;                   {CC3: ...IMAP hack inserted lines end here}
  LMsgEnd := False;
  if AMsg.NoDecode then begin
    IOHandler.Capture(AMsg.Body, ADelim);
  end else begin
    BeginWork(wmRead);
    try
      LActiveDecoder := nil;
      repeat
        LLine := IOHandler.ReadLn;
        {CC3: Check for optional flags before delimiter in the case of IMAP...}
        if LLine = LDelim then begin  {CC3: IMAP hack ADelim -> LDelim}
          Break;
        end;              {CC3: IMAP hack inserted lines start here...}
        if LCheckForOptionalImapFlags and TextStartsWith(LLine, ' FLAGS (\')   {do not localize}
          and TextEndsWith(LLine, LDelim) then begin
          Break;
        end;
        if LActiveDecoder = nil then begin
          LActiveDecoder := TIdMessageDecoderList.CheckForStart(AMsg, LLine);
        end;
        if LActiveDecoder = nil then begin
          {CC9: Per RFC821, the sender is required to add a prefixed '.' to any
          line in an email that starts with '.' and the receiver is
          required to strip it off.  This ensures that the end-of-message
          line '.' cannot appear in the message body.}
          if TextStartsWith(LLine, '.') then begin   {Do not Localize}
            Delete(LLine,1,1);
          end;
          AMsg.Body.Add(LLine);
        end else begin
          while LActiveDecoder <> nil do begin
            LActiveDecoder.SourceStream := TIdTCPStream.Create(Self);
            LActiveDecoder.ReadHeader;
            case LActiveDecoder.PartType of
              mcptUnknown:
              begin
                raise EIdException.Create(RSMsgClientUnkownMessagePartType);
              end;
              mcptText:
              begin
                LActiveDecoder := ProcessTextPart(LActiveDecoder);
              end;
              mcptAttachment:
              begin
                LActiveDecoder := ProcessAttachment(LActiveDecoder);
              end;
            end;
          end;
        end;
      until LMsgEnd;
    finally
      EndWork(wmRead);
    end;
  end;
end;

{########### Following only used by CONNECT? ###############}
function TIdIMAP4.GetResponse: string;
{CC: The purpose of this is to keep reading & accumulating lines until we hit
a line that has a valid response (that terminates the reading).  We call
"FLastCmdResult.FormattedReply := LResponse;" to parse out the response we
received.

The response sequences we need to deal with are:

1) Many commands just give a simple result to the command issued:
  C41 OK Completed
2) Some commands give you data first, then the result:
  * LIST (\UnMarked) "/" INBOX
  * LIST (\UnMarked) "/" Junk
  * LIST (\UnMarked) "/" Junk/Subbox1
  C42 OK Completed
3) Some responses have a result but * instead of a command number (like C42):
  * OK CommuniGate Pro IMAP Server 3.5.7 ready
4) Some have neither a * nor command number, but start with a result:
  + Send the additional command text
or:
  BAD Bad parameter

Because you may get data first, which you need to skip, you need to
accept all the above possibilities.

We MUST stop when we find a valid response code, like OK.
}
var LLine: String;
  LResponse: TStringList;
  LWord: string;
  LPos: integer;
  LBuf: string;
begin
  LResponse := TStringList.Create;
  Result := ''; {Do not Localize}
  try
    repeat
    LLine := ReadLnWait;
    if LLine <> '' then begin  {Do not Localize}
      {It is not an empty line, add it to our list of stuff received (it is
      not our job to interpret it)}
      LResponse.Add(LLine);
      {See if the last LLine contained a response code like OK or BAD.}
      LPos := Pos(' ', LLine); {Do not Localize}
      if LPos <> 0 then begin
        {There are at least two words on this line...}
        LWord := Trim(Copy(LLine, 1, LPos-1));
        LBuf := Trim(Copy(LLine, LPos+1, MaxInt));  {The rest of the line, without the 1st word}
      end else begin
        {No space, so this line is a single word.  A bit weird, but it
        could be just an OK...}
        LWord := LLine;  {A bit pedantic, but emphasises we have a word, not a line}
        LBuf := '';  {Do not Localize}
      end;
      LPos := PosInStrArray(LWord, VALID_TAGGEDREPLIES); {Do not Localize}
      if LPos > -1 then begin
        {We got a valid response code as the first word...}
        Result := LWord;
        FLastCmdResult.FormattedReply := LResponse;
        Exit;
      end;
      if Length(LBuf) = 0 then begin  {Do not Localize}
        Continue;  {We hit a line with just one word which is not a valid IMAP response}
      end;
      {In all other cases, any valid response should be the second word...}
      LPos := Pos(' ', LBuf); {Do not Localize}
      if LPos <> 0 then begin
        {There are at least three words on this line...}
        LWord := Trim(Copy(LBuf, 1, LPos-1));
        LBuf := Trim(Copy(LBuf, LPos+1, MaxInt));  {The rest of the line, without the 1st word}
      end else begin
        {No space, so this line is two single words.}
        LWord := LLine;  {A bit pedantic, but emphasises we have a word, not a line}
        LBuf := '';  {Do not Localize}
      end;
      LPos := PosInStrArray(LWord, VALID_TAGGEDREPLIES); {Do not Localize}
      if LPos > -1 then begin
        {We got a valid response code as the second word...}
        Result := LWord;
        FLastCmdResult.FormattedReply := LResponse;
        Exit;
      end;
    end;
    until False;
  finally
    FreeAndNil(LResponse);
  end;
end;

end.

