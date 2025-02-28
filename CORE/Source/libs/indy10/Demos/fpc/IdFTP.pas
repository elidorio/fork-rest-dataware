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
  Rev 1.126    4/28/2005 BTaylor
  Changed .Size to use Int64

  Rev 1.125    4/15/2005 9:10:10 AM  JPMugaas
  Changed the default timeout in TIdFTP to one minute and made a comment about
  this.

  Some firewalls don't handle control connections properly during long data
  transfers.  They will timeout the control connection because it's idle and
  making it worse is that they will chop off a connection instead of closing it
  causing TIdFTP to wait forever for nothing.

  Rev 1.124    3/20/2005 10:42:44 PM  JPMugaas
  Marked TIdFTP.Quit as deprecated.  We need to keep it only for compatibility.

  Rev 1.123    3/20/2005 2:44:08 PM  JPMugaas
  Should now send quit.  Verified here.

  Rev 1.122    3/12/2005 6:57:12 PM  JPMugaas
  Attempt to add ACCT support for firewalls.  I also used some logic from some
  WS-FTP Pro about ACCT to be more consistant with those Firescripts.

  Rev 1.121    3/10/2005 2:41:12 PM  JPMugaas
  Removed the UseTelnetAbort property.  It turns out that sending the sequence
  is causing problems on a few servers.  I have made a comment about this in
  the source-code so someone later on will know  why I decided not to send
  those.

  Rev 1.120    3/9/2005 10:05:54 PM  JPMugaas
  Minor changes for Indy conventions.

  Rev 1.119    3/9/2005 9:15:46 PM  JPMugaas
  Changes submitted by Craig Peterson, Scooter Software  He noted this:

  "We had a user who's FTP server prompted for account info after a
  regular login, so I had to add an explicit Account string property and
  an OnNeedAccount event that we could use for a prompt."  This does break any
  code using TIdFTP.Account.

  TODO:  See about integrating Account Info into the proxy login sequences.

  Rev 1.118    3/9/2005 10:40:16 AM  JPMugaas
  Made comment explaining why I had made a workaround in a procedure.

  Rev 1.117    3/9/2005 10:28:32 AM  JPMugaas
  Fix for Abort problem when uploading.  A workaround I made for WS-FTP Pro
  Server was not done correctly.

  Rev 1.116    3/9/2005 1:21:38 AM  JPMugaas
  Made refinement to Abort and the data transfers to follow what Kudzu had
  originally done in Indy 8.  I also fixed a problem with ABOR at
  ftp.ipswitch.com and I fixed a regression at ftp.marist.edu that occured when
  getting a directory.

  Rev 1.115    3/8/2005 12:14:50 PM  JPMugaas
  Renamed UseOOBAbort to UseTelnetAbort because that's more accurate.  We still
  don't support Out of Band Data (hopefully, we'll never have to do that).

  Rev 1.114    3/7/2005 10:40:10 PM  JPMugaas
  Improvements:

  1) Removed some duplicate code.
  2) ABOR should now be properly handled outside of a data operation.
  3) I added a UseOOBAbort read-write public property for controlling how the
  ABOR command is sent.  If true, the Telnet sequences are sent or if false,
  the ABOR without sequences is sent.  This is set to false by default because
  one FTP client (SmartFTP recently removed the Telnet sequences from their
  program).

  This code is expiriemental.

  Rev 1.113    3/7/2005 5:46:34 PM  JPMugaas
  Reworked FTP Abort code to make it more threadsafe and make abort work.  This
  is PRELIMINARY.

  Rev 1.112    3/5/2005 3:33:56 PM  JPMugaas
  Fix for some compiler warnings having to do with TStream.Read being platform
  specific.  This was fixed by changing the Compressor API to use TIdStreamVCL
  instead of TStream.  I also made appropriate adjustments to other units for
  this.

  Rev 1.111    2/24/2005 6:46:36 AM  JPMugaas
  Clarrified remarks I made and added a few more comments about syntax in
  particular cases in the set modified file date procedures.

  That's really been a ball....NOT!!!!

  Rev 1.110    2/24/2005 6:25:08 AM  JPMugaas
  Attempt to fix problem setting Date with Titan FTP Server.  I had made an
  incorrect assumption about MDTM on that system.  It uses Syntax 3 (see my
  earlier note above the File Date Set problem.

  Rev 1.109    2/23/2005 6:32:54 PM  JPMugaas
  Made note about MDTM syntax inconsistancy.  There's a discussion about it.

  Rev 1.108    2/12/2005 8:08:04 AM  JPMugaas
  Attempt to fix MDTM bug where msec was being sent.

  Rev 1.107    1/12/2005 11:26:44 AM  JPMugaas
  Memory Leak fix when processing MLSD output and some minor tweeks Remy had
  E-Mailed me last night.

  Rev 1.106    11/18/2004 2:39:32 PM  JPMugaas
  Support for another FTP Proxy type.

  Rev 1.105    11/18/2004 12:18:50 AM  JPMugaas
  Fixed compile error.

  Rev 1.104    11/17/2004 3:59:22 PM  JPMugaas
  Fixed a TODO item about FTP Proxy support with a "Transparent" proxy.  I
  think you connect to the regular host and the firewall will intercept its
  login information.

  Rev 1.103    11/16/2004 7:31:52 AM  JPMugaas
  Made a comment noting that UserSite is the same as USER after login for later
  reference.

  Rev 1.102    11/5/2004 1:54:42 AM  JPMugaas
  Minor adjustment - should not detect TitanFTPD better (tested at:
  ftp.southrivertech.com).

  If MLSD is being used, SITE ZONE will not be issued.  It's not needed because
  the MLSD spec indicates the time is based on GMT.

  Rev 1.101    10/27/2004 12:58:08 AM  JPMugaas
  Improvement from Tobias Giesen http://www.superflexible.com
  His notation is below:

  "here's a fix for TIdFTP.IndexOfFeatLine. It does not work the
  way it is used in TIdFTP.SetModTime, because it only
  compares the first word of the FeatLine."

  Rev 1.100    10/26/2004 9:19:10 PM  JPMugaas
  Fixed references.

  Rev 1.99    9/16/2004 3:24:04 AM  JPMugaas
  TIdFTP now compresses to the IOHandler and decompresses from the IOHandler.

  Noted some that the ZLib code is based was taken from ZLibEx.

  Rev 1.98    9/13/2004 12:15:42 AM  JPMugaas
  Now should be able to handle some values better as suggested by Michael J.
  Leave.

  Rev 1.97    9/11/2004 10:58:06 AM  JPMugaas
  FTP now decompresses output directly to the IOHandler.

  Rev 1.96    9/10/2004 7:37:42 PM  JPMugaas
  Fixed a bug.  We needed to set Passthrough instead of calling StartSSL.  This
  was causing a SSL problem with upload.

  Rev 1.95    8/2/04 5:56:16 PM  RLebeau
  Tweaks to TIdFTP.InitDataChannel()

    Rev 1.94    7/30/2004 1:55:04 AM  DSiders
  Corrected DoOnRetrievedDir naming.

    Rev 1.93    7/30/2004 12:36:32 AM  DSiders
  Corrected spelling in OnRetrievedDir, DoOnRetrievedDir declarations.

  Rev 1.92    7/29/2004 2:15:28 AM  JPMugaas
  New property for controlling what AUTH command is sent.  Fixed some minor
  issues with FTP properties.  Some were not set to defaults causing
  unpredictable results -- OOPS!!!

  Rev 1.91    7/29/2004 12:04:40 AM  JPMugaas
  New events for Get and Put as suggested by Don Sides and to complement an
  event done by APR.

  Rev 1.90    7/28/2004 10:16:14 AM  JPMugaas
  New events for determining when a listing is finished and when the dir
  parsing begins and ends.  Dir parsing is done sometimes when DirectoryListing
  is referenced.

  Rev 1.89    7/27/2004 2:03:54 AM  JPMugaas
  New property:

  ExternalIP - used to specify an IP address for the PORT and EPRT commands.
  This should be blank unless you are behind a NAT and you need to use PORT
  transfers with SSL.  You would set ExternalIP to the NAT's IP address on the
  Internet.

  The idea is this:

  1) You set up your NAT to forward a range ports ports to your computer behind
  the NAT.
  2) You specify that a port range with the DataPortMin and DataPortMin
  properties.
  3) You set ExternalIP to the NAT's Internet IP address.

  I have verified this with Indy and WS FTP Pro behind a NAT router.

  Rev 1.88    7/23/04 7:09:50 PM  RLebeau
  Bug fix for TFileStream access rights in Get()

    Rev 1.87    7/18/2004 3:00:12 PM  DSiders
  Added localization comments.

  Rev 1.86    7/16/2004 4:28:40 AM  JPMugaas
  CCC Support in TIdFTP to complement that capability in TIdFTPServer.

  Rev 1.85    7/13/04 6:48:14 PM  RLebeau
  Added support for new DataPort and DataPortMin/Max properties

    Rev 1.84    7/6/2004 4:51:46 PM  DSiders
  Corrected spelling of Challenge in properties, methods, types.

  Rev 1.83    7/3/2004 3:15:50 AM  JPMugaas
  Checked in so everyone else can work on stuff while I'm away.

  Rev 1.82    6/27/2004 1:45:38 AM  JPMugaas
  Can now optionally support LastAccessTime like Smartftp's FTP Server could.
  I also made the MLST listing object and parser support this as well.

  Rev 1.81    6/20/2004 8:31:58 PM  JPMugaas
  New events for reporting greeting and after login banners during the login
  sequence.

  Rev 1.80    6/20/2004 6:56:42 PM  JPMugaas
  Start oin attempt to support FXP with Deflate compression.  More work will
  need to be done.

  Rev 1.79    6/17/2004 3:42:32 PM  JPMugaas
  Adjusted code for removal of dmBlock and dmCompressed.  Made TransferMode a
  property.  Note that the Set method is odd because I am trying to keep
  compatibility with older Indy versions.

  Rev 1.78    6/14/2004 6:19:02 PM  JPMugaas
  This now refers to TIdStreamVCL when downloading isntead of directly to a
  memory stream when compressing data.

  Rev 1.77    6/14/2004 8:34:52 AM  JPMugaas
  Fix for AV on Put with Passive := True.

    Rev 1.76    6/11/2004 9:34:12 AM  DSiders
  Added "Do not Localize" comments.

  Rev 1.75    2004.05.20 11:37:16 AM  czhower
  IdStreamVCL

  Rev 1.74    5/6/2004 6:54:26 PM  JPMugaas
  FTP Port transfers with TransparentProxies is enabled.  This only works if
  the TransparentProxy supports a "bind" request.

  Rev 1.73    5/4/2004 11:16:28 AM  JPMugaas
  TransferTimeout property added and enabled (Bug 96).

  Rev 1.72    5/4/2004 11:07:12 AM  JPMugaas
  Timeouts should now be reenabled in TIdFTP.

  Rev 1.71    4/19/2004 5:05:02 PM  JPMugaas
  Class rework Kudzu wanted.

  Rev 1.70    2004.04.16 9:31:42 PM  czhower
  Remove unnecessary duplicate string parsing and replaced with .assign.

  Rev 1.69    2004.04.15 7:09:04 PM  czhower
  .NET overloads

  Rev 1.68    4/15/2004 9:46:48 AM  JPMugaas
  List  no longer requires a TStrings.  It turns out that it was an optional
  parameter.

  Rev 1.67    2004.04.15 2:03:28 PM  czhower
  Removed login param from connect and made it a prop like POP3.

  Rev 1.66    3/3/2004 5:57:40 AM  JPMugaas
  Some IFDEF excluses were removed because the functionality is now in DotNET.

  Rev 1.65    2004.03.03 11:54:26 AM  czhower
  IdStream change

  Rev 1.64    2/20/2004 1:01:06 PM  JPMugaas
  Preliminary FTP PRET command support for using PASV with a distributed FTP
  server (Distributed PASV -
  http://drftpd.org/wiki/wiki.phtml?title=Distributed_PASV).

  Rev 1.63    2/17/2004 12:25:52 PM  JPMugaas
  The client now supports MODE Z (deflate) uploads and downloads as specified
  by http://www.ietf.org/internet-drafts/draft-preston-ftpext-deflate-00.txt

  Rev 1.62    2004.02.03 5:45:10 PM  czhower
  Name changes

  Rev 1.61    2004.02.03 2:12:06 PM  czhower
  $I path change

  Rev 1.60    1/27/2004 10:17:10 PM  JPMugaas
  Fix from Steve Loft for a server that sends something like this:
  "227 Passive mode OK (195,92,195,164,4,99 )"

  Rev 1.59    1/27/2004 3:59:28 PM  SPerry
  StringStream ->IdStringStream

  Rev 1.58    24/01/2004 19:13:58  CCostelloe
  Cleaned up warnings

  Rev 1.57    1/21/2004 2:27:50 PM  JPMugaas
  Bullete Proof FTPD and Titan FTP support SITE ZONE.  Saw this in a command
  database in StaffFTP.
  InitComponent.

  Rev 1.56    1/19/2004 9:05:38 PM  JPMugaas
  Fixes to FTP Set Date functionality.
  Introduced properties for Time Zone information from the server.  The way it
  works is this, if TIdFTP detects you are using "Serv-U" or SITE ZONE is
  listed in the FEAT reply, Indy obtains the time zone information with the
  SITE ZONE command and makes the appropriate calculation.  Indy then uses this
  information to calculate a timestamp to send to the server with the MDTM
  command.  You can also use the Time Zone information yourself to convert the
  FTP directory listing item timestamps into GMT and than convert that to your
  local time.
  FTP Voyager uses SITE ZONE as I've described.

  Rev 1.55    1/19/2004 4:39:08 AM  JPMugaas
  You can now set the time for a file on the server.  Note that these methods
  try to treat the time as relative to GMT.

  Rev 1.54    1/17/2004 9:09:30 PM  JPMugaas
  Should now compile.

  Rev 1.53    1/17/2004 7:48:02 PM  JPMugaas
  FXP site to site transfer code was redone for improvements with FXP with TLS.
  It actually works and I verified with RaidenFTPD
  (http://www.raidenftpd.com/) and the Indy FTP server components.   I also
  lowered the requirements for TLS FXP transfers.  The requirements now are:
  1) Only server (either the recipient or the sendor) has to support SSCN

  or

  2) The server receiving a PASV must support CPSV and the transfer is done
  with IPv4.

  Rev 1.52    1/9/2004 2:51:26 PM  JPMugaas
  Started IPv6 support.

  Rev 1.51    11/27/2003 4:55:28 AM  JPMugaas
  Made STOU functionality separate from PUT functionality.  Put now requires a
  destination filename except where a source-file name is given.  In that case,
  the default is the filename from the source string.

  Rev 1.50    10/26/2003 04:28:50 PM  JPMugaas
  Reworked Status.

  The old one was problematic because it assumed that STAT was a request to
  send a directory listing through the control channel.  This assumption is not
  correct.  It provides a way to get a freeform status report from a server.
  With a Path parameter, it should work like a LIST command  except that the
  control connection is used.  We don't support that feature and you should use
  our LIst method to get the directory listing anyway, IMAO.

  Rev 1.49    10/26/2003 9:17:46 PM  BGooijen
  Compiles in DotNet, and partially works there

  Rev 1.48    10/24/2003 12:43:48 PM  JPMugaas
  Should work again.

  Rev 1.47    2003.10.24 10:43:04 AM  czhower
  TIdSTream to dos

  Rev 1.46    10/20/2003 03:06:10 PM  JPMugaas
  SHould now work.

  Rev 1.45    10/20/2003 01:00:38 PM  JPMugaas
  EIdException no longer raised.  Some things were being gutted needlessly.

    Rev 1.44    10/19/2003 12:58:20 PM  DSiders
  Added localization comments.

  Rev 1.43    2003.10.14 9:56:50 PM  czhower
  Compile todos

  Rev 1.42    2003.10.12 3:50:40 PM  czhower
  Compile todos

  Rev 1.41    10/10/2003 11:32:26 PM  SPerry
  -

  Rev 1.40    10/9/2003 10:17:02 AM  JPMugaas
  Added overload for GetLoginPassword for providing a challanage string which
  doesn't have to the last command reply.
  Added CLNT support.

  Rev 1.39    10/7/2003 05:46:20 AM  JPMugaas
  SSCN Support added.

  Rev 1.38    10/6/2003 08:56:44 PM  JPMugaas
  Reworked the FTP list parsing framework so that the user can obtain the list
  of capabilities from a parser class with TIdFTP.  This should permit the user
  to present a directory listing differently for each parser (some FTP list
  parsers do have different capabilities).

  Rev 1.37    10/1/2003 12:51:18 AM  JPMugaas
  SSL with active (PORT) transfers now should work again.

  Rev 1.36    9/30/2003 09:50:38 PM  JPMugaas
  FTP with TLS should work better.  It turned out that we were negotiating it
  several times causing a hang.  I also made sure that we send PBSZ 0 and PROT
  P for both implicit and explicit TLS.  Data ports should work in PASV again.

  Rev 1.35    9/28/2003 11:41:06 PM  JPMugaas
  Reworked Eldos's proposed FTP fix as suggested by Henrick Hellstr�m by moving
  all of the IOHandler creation code to InitDataChannel.  This should reduce
  the likelihood of error.

  Rev 1.33    9/18/2003 11:22:40 AM  JPMugaas
  Removed a temporary workaround for an OnWork bug that was in the Indy Core.
  That bug was fixed so there's no sense in keeping a workaround here.

  Rev 1.32    9/12/2003 08:05:30 PM  JPMugaas
  A temporary fix for OnWork events not firing.  The bug is that OnWork events
  aren't used in IOHandler where ReadStream really is located.

  Rev 1.31    9/8/2003 02:33:00 AM  JPMugaas
  OnCustomFTPProxy added to allow Indy to support custom FTP proxies.  When
  using this event, you are responsible for programming the FTP Proxy and FTP
  Server login sequence.
  GetLoginPassword method function for returning the password used when logging
  into a FTP server which handles OTP calculation.  This way, custom firewall
  support can handle One-Time-Password system transparently.  You do have to
  send the User ID before calling this function because the OTP challenge is
  part of the reply.

  Rev 1.30    6/10/2003 11:10:00 PM  JPMugaas
  Made comments about our loop that tries several AUTH command variations.
  Some servers may only accept AUTH SSL while other servers only accept AUTH
  TLS.

  Rev 1.29    5/26/2003 12:21:54 PM  JPMugaas

  Rev 1.28    5/25/2003 03:54:20 AM  JPMugaas

  Rev 1.27    5/19/2003 08:11:32 PM  JPMugaas
  Now should compile properly with new code in Core.

  Rev 1.26    5/8/2003 11:27:42 AM  JPMugaas
  Moved feature negoation properties down to the ExplicitTLSClient level as
  feature negotiation goes hand in hand with explicit TLS support.

  Rev 1.25    4/5/2003 02:06:34 PM  JPMugaas
  TLS handshake itself can now be handled.

    Rev 1.24    4/4/2003 8:01:32 PM  BGooijen
  now creates iohandler for dataconnection

  Rev 1.23    3/31/2003 08:40:18 AM  JPMugaas
  Fixed problem with QUIT command.

    Rev 1.22    3/27/2003 3:41:28 PM  BGooijen
  Changed because some properties are moved to IOHandler

  Rev 1.21    3/27/2003 05:46:24 AM  JPMugaas
  Updated framework with an event if the TLS negotiation command fails.
  Cleaned up some duplicate code in the clients.

  Rev 1.20    3/26/2003 04:19:20 PM  JPMugaas
  Cleaned-up some code and illiminated some duplicate things.

  Rev 1.19    3/24/2003 04:56:10 AM  JPMugaas
  A typecast was incorrect and could cause a potential source of instability if
  a TIdIOHandlerStack was not used.

  Rev 1.18    3/16/2003 06:09:58 PM  JPMugaas
  Fixed port setting bug.

  Rev 1.17    3/16/2003 02:40:16 PM  JPMugaas
  FTP client with new design.

    Rev 1.16    3/16/2003 1:02:44 AM  BGooijen
  Added 2 events to give the user more control to the dataconnection, moved
  SendTransferType, enabled ssl

  Rev 1.15    3/13/2003 09:48:58 AM  JPMugaas
  Now uses an abstract SSL base class instead of OpenSSL so 3rd-party vendors
  can plug-in their products.

  Rev 1.14    3/7/2003 11:51:52 AM  JPMugaas
  Fixed a writeln bug and an IOError issue.

  Rev 1.13    3/3/2003 07:06:26 PM  JPMugaas
  FFreeIOHandlerOnDisconnect to FreeIOHandlerOnDisconnect at Bas's instruction

  Rev 1.12    2/21/2003 06:54:36 PM  JPMugaas
  The FTP list processing has been restructured so that Directory output is not
  done by IdFTPList.  This now also uses the IdFTPListParserBase for parsing so
  that the code is more scalable.

  Rev 1.11    2/17/2003 04:45:36 PM  JPMugaas
  Now temporarily change the transfer mode to ASCII when requesting a DIR.
  TOPS20 does not like transfering dirs in binary mode and it might be a good
  idea to do it anyway.

  Rev 1.10    2/16/2003 03:22:20 PM  JPMugaas
  Removed the Data Connection assurance stuff.  We figure things out from the
  draft specificaiton, the only servers we found would not send any data after
  the new commands were sent, and there were only 2 server types that supported
  it anyway.

  Rev 1.9    2/16/2003 10:51:08 AM  JPMugaas
  Attempt to implement:

  http://www.ietf.org/internet-drafts/draft-ietf-ftpext-data-connection-assuranc
  e-00.txt

  Currently commented out because it does not work.

  Rev 1.8    2/14/2003 11:40:16 AM  JPMugaas
  Fixed compile error.

  Rev 1.7    2/14/2003 10:38:32 AM  JPMugaas
  Removed a problematic override for GetInternelResponse.  It was messing up
  processing of the FEAT.

  Rev 1.6    12-16-2002 20:48:10  BGooijen
  now uses TIdIOHandler.ConstructIOHandler to construct iohandlers
  IPv6 works again
  Independant of TIdIOHandlerStack again

  Rev 1.5    12-15-2002 23:27:26  BGooijen
  now compiles on Indy 10, but some things like IPVersion still need to be
  changed

  Rev 1.4    12/15/2002 04:07:02 PM  JPMugaas
  Started port to Indy 10.  Still can not complete it though.

  Rev 1.3    12/6/2002 05:29:38 PM  JPMugaas
  Now decend from TIdTCPClientCustom instead of TIdTCPClient.

  Rev 1.2    12/1/2002 04:18:02 PM  JPMugaas
  Moved all dir parsing code to one place.  Reworked to use more than one line
  for determining dir format type along with flfNextLine dir format type.

  Rev 1.1    11/14/2002 04:02:58 PM  JPMugaas
  Removed cludgy code that was a workaround for the RFC Reply limitation.  That
  is no longer limited.

  Rev 1.0    11/14/2002 02:20:00 PM  JPMugaas

2002-10-25 - J. Peter Mugaas
  - added XCRC support - specified by "GlobalSCAPE Secure FTP Server User�s Guide"
    which is available at http://www.globalscape.com
    and also explained at http://www.southrivertech.com/support/titanftp/webhelp/titanftp.htm
  - added COMB support - specified by "GlobalSCAPE Secure FTP Server User�s Guide"
    which is available at http://www.globalscape.com
    and also explained at http://www.southrivertech.com/support/titanftp/webhelp/titanftp.htm

2002-10-24 - J. Peter Mugaas
  - now supports RFC 2640 - FTP Internalization

2002-09-18
  _ added AFromBeginning parameter to InternalPut to correctly honor the AAppend parameter of Put

2002-09-05 - J. Peter Mugaas
  - now complies with RFC 2389 - Feature negotiation mechanism for the File Transfer Protocol
  - now complies with RFC 2428 - FTP Extensions for IPv6 and NATs

2002-08-27 - Andrew P.Rybin
  - proxy support fix (non-standard ftp port's)

2002-01-xx - Andrew P.Rybin
  - Proxy support, OnAfterGet (ex:decrypt, set srv timestamp)
  - J.Peter Mugaas: not readonly ProxySettings

  A Neillans - 10/17/2001
    Merged changes submitted by Andrew P.Rybin
    Correct command case problems - some servers expect commands in Uppercase only.

  SP - 06/08/2001
    Added a few more functions

  Doychin - 02/18/2001
    OnAfterLogin event handler and Login method
    OnAfterLogin is executed after successfull login  but before setting up the
      connection properties. This event can be used to provide FTP proxy support
      from the user application. Look at the FTP demo program for more information
      on how to provide such support.

  Doychin - 02/17/2001
    New onFTPStatus event
    New Quote method for executing commands not implemented by the compoent

-CleanDir contributed by Amedeo Lanza
}

unit IdFTP;

{
  TODO: Change the FTP demo to demonstrate the use of the new events and add proxy support
}

interface

{$i IdCompilerDefines.inc}

uses
  Classes,
  IdAssignedNumbers, IdGlobal, IdCustomTransparentProxy, IdExceptionCore,
  IdExplicitTLSClientServerBase, IdFTPCommon, IdFTPList, IdFTPListParseBase,
  IdException, IdIOHandler, IdIOHandlerSocket, IdReplyFTP, IdBaseComponent,
  IdReplyRFC, IdReply, IdSocketHandle, IdTCPConnection, IdTCPClient,
  IdThreadSafe, IdZLibCompressorBase;

type
  //APR 011216:
  TIdFtpProxyType = (
    fpcmNone,//Connect method:
    fpcmUserSite, //Send command USER user@hostname - USER after login (see: http://isservices.tcd.ie/internet/command_config.php)
    fpcmSite, //Send command SITE (with logon)
    fpcmOpen, //Send command OPEN
    fpcmUserPass,//USER user@firewalluser@hostname / PASS pass@firewallpass
    fpcmTransparent, //First use the USER and PASS command with the firewall username and password, and then with the target host username and password.
    fpcmUserHostFireWallID,  //USER hostuserId@hostname firewallUsername
    fpcmNovellBorder, //Novell BorderManager Proxy
    fpcmHttpProxyWithFtp, //HTTP Proxy with FTP support. Will be supported in Indy 10
    fpcmCustomProxy // use OnCustomFTPProxy to customize the proxy login
  ); //TIdFtpProxyType

  //This has to be in the same order as TLS_AUTH_NAMES
  TAuthCmd = (tAuto, tAuthTLS, tAuthSSL, tAuthTLSC, tAuthTLSP);

const
  Id_TIdFTP_TransferType = ftBinary;
  Id_TIdFTP_Passive = False;
  Id_TIdFTP_UseNATFastTrack = False;
  Id_TIdFTP_HostPortDelimiter = ':';
  Id_TIdFTP_DataConAssurance = False;
  Id_TIdFTP_DataPortProtection = ftpdpsClear;
  //
  DEF_Id_TIdFTP_Implicit = False;
  DEF_Id_FTP_UseExtendedDataPort = False;
  DEF_Id_TIdFTP_UseExtendedData = False;
  DEF_Id_TIdFTP_UseMIS = False;
  DEF_Id_FTP_UseCCC = False;
  DEF_Id_FTP_AUTH_CMD = tAuto;
  DEF_Id_FTP_ListenTimeout = 10000; // ten seconds
  {
Soem firewalls don't handle control connections properly during long data transfers.
They will timeout the control connection because it's idle and making it worse is that they
will chop off a connection instead of closing it causing TIdFTP to wait forever for nothing.

  }
  DEF_Id_FTP_READTIMEOUT = 60000; //one minute
  DEF_Id_FTP_PassiveUseControlHost = False;
  DEF_Id_FTP_AutoIssueFEAT = True;
  
type
  //Added by SP
  TIdCreateFTPList = procedure(ASender: TObject; var VFTPList: TIdFTPListItems) of object;
  //TIdCheckListFormat = procedure(ASender: TObject; const ALine: String; var VListFormat: TIdFTPListFormat) of object;
  TOnAfterClientLogin = TNotifyEvent;
  TIdFtpAfterGet = procedure(ASender: TObject; AStream: TStream) of object; //APR
  TIdOnDataChannelCreate = procedure(ASender: TObject; ADataChannel: TIdTCPConnection) of object;
  TIdOnDataChannelDestroy = procedure(ASender: TObject; ADataChannel: TIdTCPConnection) of object;
  TIdNeedAccountEvent = procedure(ASender: TObject; var VAcct: string) of object;

  TIdFTPBannerEvent = procedure (ASender: TObject; const AMsg : String) of object;

  TIdFTPClientIdentifier = class (TPersistent)
  protected
    FClientName : String;
    FClientVersion : String;
    FPlatformDescription : String;
    procedure SetClientName(const AValue: String);
    procedure SetClientVersion(const AValue: String);
    procedure SetPlatformDescription(const AValue: String);
    function GetClntOutput: String;
  public
    procedure Assign(Source: TPersistent); override;
    property ClntOutput : String read GetClntOutput;
  published
    property ClientName : String read FClientName write SetClientName;
    property ClientVersion : String read FClientVersion write SetClientVersion;
    property PlatformDescription : String read FPlatformDescription write SetPlatformDescription;
  end;

  TIdFtpProxySettings = class (TPersistent)
  protected
    FHost, FUserName, FPassword: String;
    FProxyType: TIdFtpProxyType;
    FPort: TIdPort;
  public
    procedure Assign(Source: TPersistent); override;
  published
    property  ProxyType: TIdFtpProxyType read FProxyType write FProxyType;
    property  Host: String read FHost write FHost;
    property  UserName: String read FUserName write FUserName;
    property  Password: String read FPassword write FPassword;
    property  Port: TIdPort read FPort write FPort;
  end;

  TIdFTPTZInfo = class(TPersistent)
  protected
    FGMTOffset : TDateTime;
    FGMTOffsetAvailable : Boolean;
  public
    procedure Assign(Source: TPersistent); override;
  published
    property GMTOffset : TDateTime read FGMTOffset write FGMTOffset;
    property GMTOffsetAvailable : Boolean read FGMTOffsetAvailable write FGMTOffsetAvailable;
  end;

  TIdFTP = class(TIdExplicitTLSClient)
  protected
    FAutoLogin: Boolean;
    FAutoIssueFEAT : Boolean;
    FCurrentTransferMode : TIdFTPTransferMode;
    FClientInfo : TIdFTPClientIdentifier;

    FUsingSFTP : Boolean; //enable SFTP internel flag
    FUsingCCC : Boolean; //are we using FTP with SSL on a clear control channel?
    FCanUseMLS : Boolean; //can we use MLISx instead of LIST
    FUsingExtDataPort : Boolean; //are NAT Extensions (RFC 2428 available) flag
    FUsingNATFastTrack : Boolean;//are we using NAT fastrack feature
    FCanResume: Boolean;
    FListResult: TStrings;
    FLoginMsg: TIdReplyFTP;

    FPassive: Boolean;
    FPassiveUseControlHost: Boolean;

    FDataPortProtection : TIdFTPDataPortSecurity;
    FAUTHCmd : TAuthCmd;
    FDataPort: TIdPort;
    FDataPortMin: TIdPort;
    FDataPortMax: TIdPort;
    FExternalIP : String;
    FResumeTested: Boolean;
    FSystemDesc: string;
    FTransferType: TIdFTPTransferType;
    FTransferTimeout : Integer;
    FListenTimeout : Integer;
    FDataChannel: TIdTCPConnection;
    FDirectoryListing: TIdFTPListItems;
    FDirFormat : String;
    FListParserClass : TIdFTPListParseClass;
    FOnAfterClientLogin: TNotifyEvent;
    FOnCreateFTPList: TIdCreateFTPList;
    FOnBeforeGet: TNotifyEvent;
    FOnBeforePut: TIdFtpAfterGet;
    //in case someone needs to do something special with the data being uploaded
    FOnAfterGet: TIdFtpAfterGet; //APR
    FOnAfterPut: TNotifyEvent; //JPM at Don Sider's suggestion
    FOnNeedAccount: TIdNeedAccountEvent;
    FOnCustomFTPProxy : TNotifyEvent;
    FOnDataChannelCreate: TIdOnDataChannelCreate;
    FOnDataChannelDestroy: TIdOnDataChannelDestroy;
    FProxySettings: TIdFtpProxySettings;

    FUseExtensionDataPort : Boolean;
    FTryNATFastTrack : Boolean;
    FUseMLIS : Boolean;
    FLangsSupported : TStrings;
    FUseCCC: Boolean;
    //is the SSCN Client method on for this connection?
    FSSCNOn : Boolean;

    FOnBannerBeforeLogin : TIdFTPBannerEvent;
    FOnBannerAfterLogin : TIdFTPBannerEvent;
    FOnBannerWarning : TIdFTPBannerEvent;

    FTZInfo : TIdFTPTZInfo;

    FCompressor : TIdZLibCompressorBase;
    //ZLib settings
    FZLibCompressionLevel : Integer; //7
    FZLibWindowBits : Integer; //-15
    FZLibMemLevel : Integer; //8
    FZLibStratagy : Integer; //0 - default

    //dir events for some GUI programs.
    //The directory was Retrieved from the FTP server.
    FOnRetrievedDir : TNotifyEvent;
    //parsing is done only when DirectoryListing is referenced
    FOnDirParseStart : TNotifyEvent;
    FOnDirParseEnd : TNotifyEvent;

    //we probably need an Abort flag so we know when an abort is sent.
    //It turns out that one server will send a 550 or 451 error followed by an
    //ABOR successfull 
    FAbortFlag : TIdThreadSafeBoolean;

    FAccount: string;
    //
    procedure DoOnRetrievedDir;
    procedure DoOnDirParseStart;
    procedure DoOnDirParseEnd;

    procedure FinalizeDataOperation;
    procedure SetTZInfo(const Value: TIdFTPTZInfo);
    function IsSiteZONESupported : Boolean;
    function IndexOfFeatLine(const AFeatLine : String):Integer;
    procedure ClearSSCN;
    function SetSSCNToOn : Boolean;
    procedure SendInternalPassive(const ACmd : String; var VIP: string; var VPort: TIdPort);
    procedure SendCPassive(var VIP: string; var VPort: TIdPort);
    function FindAuthCmd : String;
    function GetReplyClass:TIdReplyClass; override;
    //
    procedure ParseFTPList;
    procedure SetPassive(const AValue : Boolean);
    procedure SetTryNATFastTrack(const AValue: Boolean);
    procedure DoTryNATFastTrack;
    procedure SetUseExtensionDataPort(const AValue: Boolean);

    procedure SetIPVersion(const AValue: TIdIPVersion); override;
    procedure SetIOHandler(AValue: TIdIOHandler); override;
    function GetSupportsTLS: Boolean; override;

    procedure ConstructDirListing;
    procedure DoAfterLogin;
    procedure DoFTPList;
    procedure DoCustomFTPProxy;
    procedure DoOnBannerAfterLogin(AText : TStrings);
    procedure DoOnBannerBeforeLogin(AText : TStrings);
    procedure DoOnBannerWarning(AText : TStrings);
    procedure SendPBSZ; //protection buffer size
    procedure SendPROT; //data port protection
    procedure SendDataSettings; //this is for the extensions only;
//    procedure DoCheckListFormat(const ALine: String);
    function GetDirectoryListing: TIdFTPListItems;
//    function GetOnParseCustomListFormat: TIdOnParseCustomListFormat;
    procedure InitDataChannel;
    //PRET is to help distributed FTP systems by letting them know what you will do
    //before issuing a PASV.  See: http://drftpd.mog.se/wiki/wiki.phtml?title=Distributed_PASV#PRE_Transfer_Command_for_Distributed_PASV_Transfers
    //for a discussion.
    procedure SendPret(const ACommand : String);
    procedure InternalGet(const ACommand: string; ADest: TStream; AResume: Boolean = false);
    procedure InternalPut(const ACommand: string; ASource: TStream; AFromBeginning: Boolean = true);
//    procedure SetOnParseCustomListFormat(const AValue: TIdOnParseCustomListFormat);
    procedure SendPassive(var VIP: string; var VPort: TIdPort);
    procedure SendPort(AHandle: TIdSocketHandle); overload;
    procedure SendPort(const AIP : String; const APort : TIdPort); overload;
    procedure ParseEPSV(const AReply : String; var VIP : String; var VPort : TIdPort);
    //These two are for RFC 2428.txt
    procedure SendEPort(AHandle: TIdSocketHandle); overload;
    procedure SendEPort(const AIP : String; const APort : TIdPort; const AIPVersion : TIdIPVersion); overload;
    procedure SendEPassive(var VIP: string; var VPort: TIdPort);
    procedure SetProxySettings(const Value: TIdFtpProxySettings);
    procedure SetClientInfo(const AValue: TIdFTPClientIdentifier);
    procedure SendTransferType;
    procedure SetTransferType(AValue: TIdFTPTransferType);
    procedure DoBeforeGet; virtual;
    procedure DoBeforePut(AStream: TStream); virtual;
    procedure DoAfterGet(AStream: TStream); virtual; //APR
    procedure DoAfterPut; virtual;
    procedure FXPSetTransferPorts(AFromSite, AToSite: TIdFTP; const ATargetUsesPasv : Boolean);
    procedure FXPSendFile(AFromSite, AToSite: TIdFTP; const ASourceFile, ADestFile: String);
    function InternalEncryptedTLSFXP(AFromSite, AToSite: TIdFTP; const ASourceFile, ADestFile: String; const ATargetUsesPasv : Boolean) : Boolean;
    function InternalUnencryptedFXP(AFromSite, AToSite: TIdFTP; const ASourceFile, ADestFile: String; const ATargetUsesPasv : Boolean): Boolean;
    function ValidateInternalIsTLSFXP(AFromSite, AToSite: TIdFTP; const ATargetUsesPasv : Boolean): Boolean;
    procedure InitComponent; override;
    procedure SetUseTLS(AValue : TIdUseTLS); override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure SetDataPortProtection(AValue : TIdFTPDataPortSecurity);
    procedure SetAUTHCmd(const AValue : TAuthCmd);
    procedure SetUseCCC(const AValue: Boolean);
    procedure IssueFEAT;
    //specific server detection
    function IsOldServU: Boolean;
    function IsBPFTP : Boolean;
    function IsTitan : Boolean;
    function CheckAccount: Boolean;
    function IsAccountNeeded : Boolean;
    function GetSupportsVerification : Boolean;
    {$IFDEF DOTNET1_1}
    //
    // holger: .NET compatibility change
    //
    //ifdefed workaround for an old problem.
    property IPVersion;
    //
    {$ENDIF}
  public
    function IsExtSupported(const ACmd : String):Boolean;
    procedure ExtractFeatFacts(const ACmd : String; AResults : TStrings);
    //this function transparantly handles OTP based on the Last command response
    //so it needs to be called only after the USER command or equivilent.

    function GetLoginPassword : String; overload;
    function GetLoginPassword(const APrompt : String) : String; overload;
    procedure Abort; virtual;

    procedure Allocate(AAllocateBytes: Integer);
    procedure ChangeDir(const ADirName: string);
    procedure ChangeDirUp;
    procedure Connect; override;
    destructor Destroy; override;
    procedure Delete(const AFilename: string);
    procedure FileStructure(AStructure: TIdFTPDataStructure);
    procedure Get(const ASourceFile: string; ADest: TStream; AResume: Boolean = false); overload;
    procedure Get(const ASourceFile, ADestFile: string; const ACanOverwrite: boolean = false; AResume: Boolean = false); overload;
    procedure Help(AHelpContents: TStrings; ACommand: String = '');
    procedure KillDataChannel; virtual;
    //.NET Overload
    procedure List; overload;
    //.NET Overload
    procedure List(const ASpecifier: string; ADetails: Boolean = True); overload;
    procedure List(ADest: TStrings; const ASpecifier: string = ''; ADetails: Boolean = True); overload;
    procedure ExtListDir(ADest: TStrings = nil; const ADirectory: string = '');
    procedure ExtListItem(ADest: TStrings; AFList : TIdFTPListItems; const AItem: string='');  overload;
    procedure ExtListItem(ADest: TStrings; const AItem: string = ''); overload;
    procedure ExtListItem(AFList : TIdFTPListItems; const AItem : String= ''); overload;
    function  FileDate(const AFileName : String; const AsGMT : Boolean = False): TDateTime;

    procedure Login;
    procedure MakeDir(const ADirName: string);
    procedure Noop;
    procedure SetCmdOpt(const ACMD, AOptions : String);
    procedure Put(const ASource: TStream; const ADestFile: string; const AAppend: boolean = False); overload;
    procedure Put(const ASourceFile: string; const ADestFile: string = ''; const AAppend: boolean = false); overload;

    procedure StoreUnique(const ASource: TStream); overload;
    procedure StoreUnique(const ASourceFile: string); overload;

    procedure SiteToSiteUpload(const AToSite : TIdFTP; const ASourceFile : String; const ADestFile : String = '');
    procedure SiteToSiteDownload(const AFromSite: TIdFTP; const ASourceFile : String; const ADestFile : String = '');
    procedure DisconnectNotifyPeer; override;
    procedure Quit; //deprecated;
    function  Quote(const ACommand: String): SmallInt;
    procedure RemoveDir(const ADirName: string);
    procedure Rename(const ASourceFile, ADestFile: string);
    function  ResumeSupported: Boolean;
    function  RetrieveCurrentDir: string;
    procedure Site(const ACommand: string);
    function  Size(const AFileName: String): Int64;
    procedure Status(AStatusList: TStrings);
    procedure StructureMount(APath: String);
    procedure TransferMode(ATransferMode: TIdFTPTransferMode);
    procedure ReInitialize(ADelay: Cardinal = 10);
    procedure SetLang(const ALangTag : String);
    function CRC(const AFIleName : String; const AStartPoint : Int64 = 0; const AEndPoint : Int64=0) : Int64;
    //verify file was uploaded, this is more comprehensive than the above
    function VerifyFile(ALocalFile : TStream; const ARemoteFile : String;
      const AStartPoint : Int64 = 0; const AByteCount : Int64=0) : Boolean; overload;
    function VerifyFile(const ALocalFile, ARemoteFile : String;
      const AStartPoint : Int64 = 0; const AByteCount : Int64=0) : Boolean; overload;
    //file parts must be in order in TStrings parameter
    //GlobalScape FTP Pro uses this for multipart simultanious file uploading
    procedure CombineFiles(const ATargetFile : String; AFileParts : TStrings);
    //Set modified file time.
    procedure SetModTime(const AFileName: String; const ALocalTime: TDateTime);
    procedure SetModTimeGMT(const AFileName : String; const AGMTTime: TDateTime);
    // servers that support MDTM yyyymmddhhmmss[+-xxx] and also support LIST -T
    //This is true for servers that are known to support these even if they aren't
    //listed in the FEAT reply.
    function IsServerMDTZAndListTForm : Boolean;
    //
    property AutoIssueFEAT : Boolean read FAutoIssueFEAT write FAutoIssueFEAT default DEF_Id_FTP_AutoIssueFEAT;
    property SupportsVerification : Boolean read GetSupportsVerification;
    property CanResume: Boolean read ResumeSupported;
    property DirectoryListing: TIdFTPListItems read GetDirectoryListing;
    property DirFormat : String read FDirFormat;
    property LangsSupported : TStrings read FLangsSupported;
    property ListParserClass : TIdFTPListParseClass read FListParserClass write FListParserClass;
    property LoginMsg: TIdReplyFTP read FLoginMsg;
    property ListResult: TStrings read FListResult;
    property SystemDesc: string read FSystemDesc;
    property TZInfo : TIdFTPTZInfo read FTZInfo write SetTZInfo;
    property UsingExtDataPort : Boolean read FUsingExtDataPort;
    property UsingNATFastTrack : Boolean read FUsingNATFastTrack;
    property UsingSFTP : Boolean read FUsingSFTP;
    property CurrentTransferMode : TIdFTPTransferMode read FCurrentTransferMode write TransferMode;
  published
    {$IFNDEF DOTNET1_1}
    property IPVersion;
    {$ENDIF}
    property AutoLogin: Boolean read FAutoLogin write FAutoLogin;
    // This is an object that can compress and decompress HTTP Deflate encoding
    property Compressor : TIdZLibCompressorBase read FCompressor write FCompressor;
    property Host;
    property UseCCC : Boolean read FUseCCC write SetUseCCC default DEF_Id_FTP_UseCCC;
    property Passive: boolean read FPassive write SetPassive default Id_TIdFTP_Passive;
    property PassiveUseControlHost: Boolean read FPassiveUseControlHost write FPassiveUseControlHost default DEF_Id_FTP_PassiveUseControlHost;
    property DataPortProtection : TIdFTPDataPortSecurity read FDataPortProtection write SetDataPortProtection default Id_TIdFTP_DataPortProtection;
    property AUTHCmd : TAuthCmd read FAUTHCmd write SetAUTHCmd default DEF_Id_FTP_AUTH_CMD;
    property DataPort: TIdPort read FDataPort write FDataPort default 0;
    property DataPortMin: TIdPort read FDataPortMin write FDataPortMin default 0;
    property DataPortMax: TIdPort read FDataPortMax write FDataPortMax default 0;
    property ExternalIP : String read FExternalIP write FExternalIP;
    property Password;
    property TransferType: TIdFTPTransferType read FTransferType write SetTransferType default Id_TIdFTP_TransferType;
    property TransferTimeout: Integer read FTransferTimeout write FTransferTimeout default IdDefTimeout;
    property ListenTimeout : Integer read FListenTimeout write FListenTimeout default DEF_Id_FTP_ListenTimeout;
    property Username;
    property Port default IDPORT_FTP;
    property UseExtensionDataPort : Boolean read FUseExtensionDataPort write SetUseExtensionDataPort default DEF_Id_TIdFTP_UseExtendedData;
    property UseMLIS : Boolean read FUseMLIS write FUseMLIS default DEF_Id_TIdFTP_UseMIS;
    property TryNATFastTrack : Boolean read FTryNATFastTrack write SetTryNATFastTrack default Id_TIdFTP_UseNATFastTrack;
    property ProxySettings: TIdFtpProxySettings read FProxySettings write SetProxySettings;
    property Account: string read FAccount write FAccount;
    property ClientInfo : TIdFTPClientIdentifier read FClientInfo write SetClientInfo;
    property UseTLS;
    property OnTLSNotAvailable;

    property OnBannerBeforeLogin : TIdFTPBannerEvent read FOnBannerBeforeLogin write FOnBannerBeforeLogin;
    property OnBannerAfterLogin : TIdFTPBannerEvent read FOnBannerAfterLogin write FOnBannerAfterLogin;
    property OnBannerWarning : TIdFTPBannerEvent read FOnBannerWarning write FOnBannerWarning;

    property OnAfterClientLogin: TOnAfterClientLogin read FOnAfterClientLogin write FOnAfterClientLogin;
    property OnCreateFTPList: TIdCreateFTPList read FOnCreateFTPList write FOnCreateFTPList;
    property OnAfterGet: TIdFtpAfterGet read FOnAfterGet write FOnAfterGet; //APR
    property OnAfterPut: TNotifyEvent read FOnAfterPut write FOnAfterPut;
    property OnNeedAccount: TIdNeedAccountEvent read FOnNeedAccount write FOnNeedAccount;
    property OnCustomFTPProxy : TNotifyEvent read FOnCustomFTPProxy write FOnCustomFTPProxy;
    property OnDataChannelCreate: TIdOnDataChannelCreate read FOnDataChannelCreate write FOnDataChannelCreate;
    property OnDataChannelDestroy: TIdOnDataChannelDestroy read FOnDataChannelDestroy write FOnDataChannelDestroy;
    //The directory was Retrieved from the FTP server.
    property OnRetrievedDir : TNotifyEvent read FOnRetrievedDir write FOnRetrievedDir;
    //parsing is done only when DirectoryLiusting is referenced
    property OnDirParseStart : TNotifyEvent read FOnDirParseStart write FOnDirParseStart;
    property OnDirParseEnd : TNotifyEvent read FOnDirParseEnd write FOnDirParseEnd;
    property ReadTimeout default DEF_Id_FTP_READTIMEOUT;
  end;

  EIdFTPException = class(EIdException);
  EIdFTPFileAlreadyExists = class(EIdFTPException);
  EIdFTPMustUseExtWithIPv6 = class(EIdFTPException);
  EIdFTPMustUseExtWithNATFastTrack = class(EIdFTPException);
  EIdFTPPassiveMustBeTrueWithNATFT = class(EIdFTPException);
  EIdFTPServerSentInvalidPort = class(EIdFTPException);
  EIdFTPSiteToSiteTransfer = class(EIdFTPException);
  EIdFTPSToSNATFastTrack = class(EIdFTPSiteToSiteTransfer);
  EIdFTPSToSNoDataProtection = class(EIdFTPSiteToSiteTransfer);
  EIdFTPSToSIPProtoMustBeSame = class(EIdFTPSiteToSiteTransfer);
  EIdFTPSToSBothMostSupportSSCN = class(EIdFTPSiteToSiteTransfer);
  EIdFTPSToSTransModesMustBeSame = class(EIdFTPSiteToSiteTransfer);
  EIdFTPOnCustomFTPProxyRequired = class(EIdFTPException);
  EIdFTPConnAssuranceFailure = class(EIdFTPException);
  EIdFTPWrongIOHandler = class(EIdFTPException);
  EIdFTPUploadFileNameCanNotBeEmpty = class(EIdFTPException);

  EIdFTPDataPortProtection = class(EIdFTPException);
  EIdFTPNoDataPortProtectionAfterCCC = class(EIdFTPDataPortProtection);
  EIdFTPNoDataPortProtectionWOEncryption = class(EIdFTPDataPortProtection);
  EIdFTPNoCCCWOEncryption = class(EIdFTPException);
  EIdFTPAUTHException = class(EIdFTPException);
  EIdFTPNoAUTHWOSSL = class(EIdFTPAUTHException);
  EIdFTPCanNotSetAUTHCon = class(EIdFTPAUTHException);

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
  System.Threading,
    {$ENDIF}
  {$ENDIF}  
  IdComponent, IdResourceStringsCore, IdIOHandlerStack, IdResourceStringsProtocols,
  IdSSL, IdGlobalProtocols, IdHash, IdHashCRC, IdHashSHA1, IdHashMessageDigest,
  IdStack, IdSimpleServer, IdOTPCalculator, SysUtils;

const
  cIPVersions: array[TIdIPVersion] of String = ('1', '2'); {do not localize}

type
  TIdFTPListResult = class(TStringList)
  private
    FDetails: Boolean; //Did the developer use the NLST command for the last list command
    FUsedMLS : Boolean; //Did the developer use MLSx commands for the last list command
  public
    property Details: Boolean read FDetails;
    property UsedMLS: Boolean read FUsedMLS;
  end;

procedure TIdFTP.InitComponent;
begin
  inherited InitComponent;
  //
  FAutoLogin := True;
  FRegularProtPort := IdPORT_FTP;
  FImplicitTLSProtPort := IdPORT_ftps;
  //
  Port := IDPORT_FTP;
  Passive := Id_TIdFTP_Passive;
  FPassiveUseControlHost := DEF_Id_FTP_PassiveUseControlHost;

  FDataPortProtection := Id_TIdFTP_DataPortProtection;
  FUseCCC := DEF_Id_FTP_UseCCC;
  FAUTHCmd := DEF_Id_FTP_AUTH_CMD;

  FDataPort := 0;
  FDataPortMin := 0;
  FDataPortMax := 0;
  FUseExtensionDataPort := DEF_Id_TIdFTP_UseExtendedData;
  FTryNATFastTrack := Id_TIdFTP_UseNATFastTrack;
  FTransferType := Id_TIdFTP_TransferType;
  FTransferTimeout := IdDefTimeout;
  FListenTimeout := DEF_Id_FTP_ListenTimeout;
  FLoginMsg := TIdReplyFTP.Create(nil);
  FListResult := TIdFTPListResult.Create;
  FLangsSupported := TStringList.Create;
  FCanResume := False;
  FResumeTested := False;
  FProxySettings:= TIdFtpProxySettings.Create; //APR
  FClientInfo := TIdFTPClientIdentifier.Create;
  FTZInfo := TIdFTPTZInfo.Create;
  FTZInfo.FGMTOffsetAvailable := False;
  FUseMLIS := DEF_Id_TIdFTP_UseMIS;
  FCanUseMLS := False; //initialize MLIS flags
  //Settings specified by
  // http://www.ietf.org/internet-drafts/draft-preston-ftpext-deflate-00.txt
  FZLibCompressionLevel :=  DEF_ZLIB_COMP_LEVEL;
  FZLibWindowBits := DEF_ZLIB_WINDOW_BITS; //-15 - no extra headers
  FZLibMemLevel := DEF_ZLIB_MEM_LEVEL;
  FZLibStratagy := DEF_ZLIB_STRATAGY; // - default
  //
  FAbortFlag := TIdThreadSafeBoolean.Create;
  FAbortFlag.Value := False;
  {
Soem firewalls don't handle control connections properly during long data transfers.
They will timeout the control connection because it's idle and making it worse is that they
will chop off a connection instead of closing it causing TIdFTP to wait forever for nothing.

  }
  ReadTimeout := DEF_Id_FTP_READTIMEOUT;
  FAutoIssueFEAT := DEF_Id_FTP_AutoIssueFEAT;
end;

procedure TIdFTP.Connect;
var
  LHost: String;
  LPort: TIdPort;
  LBuf : String;
  LCode: SmallInt;
  LSendQuitOnError: Boolean;
begin
  LSendQuitOnError := False;

  FCurrentTransferMode := dmStream;
  FTZInfo.FGMTOffsetAvailable := False;
   //FSSCNOn should be set to false to prevent problems.
  FSSCNOn := False;
  FUsingSFTP := False;
  FUsingCCC := False;
  if FUseExtensionDataPort then begin
    FUsingExtDataPort := True;
  end;
  FUsingNATFastTrack := False;
  FCapabilities.Clear;

  try
    //APR 011216: proxy support
    LHost := FHost;
    LPort := FPort;
    try
      //I think  fpcmTransparent means to connect to the regular host and the firewalll
      //intercepts the login information.
      if (ProxySettings.ProxyType <> fpcmNone) and (ProxySettings.ProxyType <> fpcmTransparent) and
        (Length(ProxySettings.Host) > 0) then
      begin
        FHost := ProxySettings.Host;
        FPort := ProxySettings.Port;
      end;
      if FUseTLS = utUseImplicitTLS then
      begin
        //at this point, we treat implicit FTP as if it were explicit FTP with TLS
        FUsingSFTP := True;
      end;
      inherited Connect;
    finally
      FHost := LHost;
      FPort := LPort;
    end;
    // RLebeau: RFC 959 says that the greeting can be preceeded by a 1xx
    // reply and that the client should wait for the 220 reply when this 
    // happens.  Also, the RFC says that 120 should be used, but some
    // servers use other 1xx codes, such as 130, so handle 1xx generically
    LCode := GetResponse;
    if (LCode div 100) = 1 then
    begin
      DoOnBannerWarning(LastCmdResult.FormattedReply);
      LCode := GetResponse;
    end;
    CheckResponse(LCode, [220]);

    LSendQuitOnError := True;

    FGreeting.Assign(LastCmdResult);
    DoOnBannerBeforeLogin (FGreeting.FormattedReply);
    if AutoLogin then begin
      Login;
      DoAfterLogin;

      if FClientInfo.GetClntOutput <> '' then begin
        if IsExtSupported('CLNT') then begin {do not localize}
          SendCmd('CLNT '+ FClientInfo.GetClntOutput);  {do not localize}
        end;
      end;
      //Fast track is set only one time per connection and no more, even
      //with REINIT
      if TryNATFastTrack then begin
        DoTryNATFastTrack;
      end;

      if FUseTLS = utUseImplicitTLS then begin
       //at this point, we treat implicit FTP as if it were explicit FTP with TLS
       FUsingSFTP := True;
     end;
      // OpenVMS 7.1 replies with 200 instead of 215 - What does the RFC say about this?
      // if SendCmd('SYST', [200, 215, 500]) = 500 then begin  {do not localize}
      //Do not fault if SYST was not understood by the server.  Novel Netware FTP
      //may not understand SYST.
      if SendCmd('SYST') = 500 then begin  {do not localize}
        FSystemDesc := RSFTPUnknownHost;
      end else begin
        FSystemDesc := LastCmdResult.Text[0];
      end;
      if IsSiteZONESupported then
      begin
        if not FCanUseMLS then begin
          if SendCmd('SITE ZONE') = 210 then begin {do not localize}
            if LastCmdResult.Text.Count > 0 then begin
              LBuf := LastCmdResult.Text[0];
              //remove UTC from reply string "UTC-300"
              IdDelete(LBuf, 1, 3);
              FTZInfo.GMTOffset := MDTMOffset(LBuf);
              FTZInfo.FGMTOffsetAvailable := True;
            end;
          end;
        end;
      end;
      SendTransferType;
      DoStatus(ftpReady, [RSFTPStatusReady]);
    end
    else
    begin
      // OpenVMS 7.1 replies with 200 instead of 215 - What does the RFC say about this?
      // if SendCmd('SYST', [200, 215, 500]) = 500 then begin  {do not localize}
      //Do not fault if SYST was not understood by the server.  Novel Netware FTP
      //may not understand SYST.
      if SendCmd('SYST') = 500 then begin  {do not localize}
        FSystemDesc := RSFTPUnknownHost;
      end else begin
        FSystemDesc := LastCmdResult.Text[0];
      end;    
      if FAutoIssueFEAT then
      begin
        IssueFEAT;
      end;
    end;
  except
    Disconnect(LSendQuitOnError); // RLebeau: do not send the QUIT command if the greeting was not received
    raise;
  end;
end;

procedure TIdFTP.SetTransferType(AValue: TIdFTPTransferType);
begin
  if AValue <> FTransferType then begin
    if not Assigned(FDataChannel) then begin
      FTransferType := AValue;
      if Connected then begin
        SendTransferType;
      end;
    end
  end;
end;

procedure TIdFTP.SendTransferType;
var
  s: string;
begin
  case TransferType of
    ftAscii: s := 'A';      {do not localize}
    ftBinary: s := 'I';     {do not localize}
  end;
  SendCmd('TYPE ' + s, 200); {do not localize}
end;

function TIdFTP.ResumeSupported: Boolean;
begin
  if not FResumeTested then
  begin
    FResumeTested := True;
    FCanResume := Quote('REST 1') = 350;   {do not localize}
    Quote('REST 0');  {do not localize}
  end;
  Result := FCanResume;
end;

procedure TIdFTP.Get(const ASourceFile: string; ADest: TStream; AResume: Boolean = False);
begin
  //for SSL FXP, we have to do it here because InternalGet is used by the LIST command
  //where SSCN is ignored.
  ClearSSCN;
  AResume := AResume and CanResume;
  DoBeforeGet;
  // RLebeau 7/26/06: do not do this! It breaks the ability to resume files
  // ADest.Position := 0;
  InternalGet('RETR ' + ASourceFile, ADest, AResume);
  DoAfterGet(ADest);
end;

procedure TIdFTP.Get(const ASourceFile, ADestFile: string; const ACanOverwrite: Boolean = False;
  AResume: Boolean = False);
var
  LDestStream: TStream;
begin
  AResume := AResume and CanResume;
  if ACanOverwrite and (not AResume) then begin
    DeleteFile(ADestFile);
    LDestStream := TIdFileCreateStream.Create(ADestFile);
  end
  else if (not ACanOverwrite) and AResume then begin
    LDestStream := TIdAppendFileStream.Create(ADestFile);
  end
  else if not FileExists(ADestFile) then begin
    LDestStream := TIdFileCreateStream.Create(ADestFile);
  end
  else begin
    raise EIdFTPFileAlreadyExists.Create(RSDestinationFileAlreadyExists);
  end;
  try
    Get(ASourceFile, LDestStream, AResume);
  finally
    FreeAndNil(LDestStream);
  end;
end;

procedure TIdFTP.DoBeforeGet;
begin
  if Assigned(FOnBeforeGet) then begin
    FOnBeforeGet(Self);
  end;
end;

procedure TIdFTP.DoBeforePut(AStream: TStream);
begin
  if Assigned(FOnBeforePut) then begin
    FOnBeforePut(Self, AStream);
  end;
end;

procedure TIdFTP.DoAfterGet(AStream: TStream);//APR
begin
  if Assigned(FOnAfterGet) then begin
    FOnAfterGet(Self, AStream);
  end;
end;

procedure TIdFTP.DoAfterPut;
begin
  if Assigned(FOnAfterPut) then begin
    FOnAfterPut(Self);
  end;
end;

procedure TIdFTP.ConstructDirListing;
begin
  if not Assigned(FDirectoryListing) then begin
    if not IsDesignTime then begin
      DoFTPList;
    end;
    if not Assigned(FDirectoryListing) then begin
      FDirectoryListing := TIdFTPListItems.Create;
    end;
  end else begin
    FDirectoryListing.Clear;
  end;
end;

procedure TIdFTP.List(ADest: TStrings; const ASpecifier: string = ''; ADetails: Boolean = True);      {do not localize}
var
  LDest: TStringStream;
  LTrans : TIdFTPTransferType;
begin
  if FCanUseMLS then begin
    ExtListDir(ADest);
    Exit;
  end;
  //Note that for LIST, it might be best to put the connection in ASCII
  //mode because some old servers such as TOPS20 might require this.  We restore it
  //if the original mode was not ASCII.  It's a good idea to do this anyway
  //because some clients still do this such as WS_FTP Pro and Microsoft's FTP Client.
  LTrans := TransferType;
  if LTrans <> ftASCII then begin
    Self.TransferType := ftASCII;
  end;
  try
    LDest := TStringStream.Create('');
    try
      InternalGet(Trim(iif(ADetails, 'LIST', 'NLST') + ' ' + ASpecifier), LDest); {do not localize}
      FreeAndNil(FDirectoryListing);
      LDest.Position := 0;
      FListResult.Text := LDest.DataString;
      with TIdFTPListResult(FListResult) do begin
        FDetails := ADetails;
        FUsedMLS := False;
      end;
    finally
      FreeAndNil(LDest);
    end;
    if ADest <> nil then begin
      ADest.Assign(FListResult);
    end;
    DoOnRetrievedDir;
  finally
    if LTrans <> ftASCII then begin
      TransferType := LTrans;
    end;
  end;
end;

const
  AbortedReplies : array [0..5] of smallint =
                   (226,426, 450,451,425,550);
  //226 was added because one server will return that twice if you aborted
  //during an upload.
  AcceptableAbortReplies : array [0..8] of smallint =
    (225, 226, 250, 426, 450,451,425,550,552);
  //GlobalScape Secure FTP Server returns a 552 for an aborted file
  
procedure TIdFTP.FinalizeDataOperation;
var
  LResponse : SmallInt;
begin
  if Assigned(FOnDataChannelDestroy) then begin
    OnDataChannelDestroy(Self, FDataChannel);
  end;
  FDataChannel.IOHandler.Free;
  FDataChannel.IOHandler := nil;
  FreeAndNil(FDataChannel);
  {
This is a bug fix for servers will do something like this:

[2] Mon 06Jun05 13:33:28 - (000007) PASV
[6] Mon 06Jun05 13:33:28 - (000007) 227 Entering Passive Mode (192,168,1,107,4,22)
[2] Mon 06Jun05 13:33:28 - (000007) RETR test.txt.txt
[6] Mon 06Jun05 13:33:28 - (000007) 550 /test.txt.txt: No such file or directory.
[2] Mon 06Jun05 13:34:28 - (000007) QUIT
[6] Mon 06Jun05 13:34:28 - (000007) 221 Goodbye!
[5] Mon 06Jun05 13:34:28 - (000007) Closing connection for user TEST (00:01:08 connected)
  }
  if (LastCmdResult.NumericCode div 100) > 2 then
  begin
    DoStatus(ftpAborted, [RSFTPStatusAbortTransfer]);
    Exit;
  end;
  DoStatus(ftpReady, [RSFTPStatusDoneTransfer]);
  // 226 = download successful, 225 = Abort successful}
  if FAbortFlag.Value then
  begin
    LResponse := GetResponse(AcceptableAbortReplies);
//Expiremental -
    if PosInSmallIntArray(LResponse,AbortedReplies)>-1 then begin
      GetResponse([226, 225]);
    end;
//IMPORTANT!!!  KEEP THIS COMMENT!!!
//
//This is a workaround for a problem.  When uploading a file on
//one FTP server and aborting that upload, I got this:
//
//Sent 3/9/2005 10:34:58 AM: STOR --------
//Recv 3/9/2005 10:34:58 AM: 150 Opening BINARY mode data connection for [3513]Red_Glas.zip
//Sent 3/9/2005 10:34:59 AM: ABOR
//Recv 3/9/2005 10:35:00 AM: 226 Transfer complete.
//Recv 3/9/2005 10:35:00 AM: 226 Abort successful
//
//but at ftp.ipswitch.com (a WS_FTP Server 5.0.4 (2555009845) server ),
//I was getting this when aborting a download
//
//Sent 3/9/2005 12:43:41 AM: RETR imail6.pdf
//Recv 3/9/2005 12:43:41 AM: 150 Opening BINARY data connection for imail6.pdf (2150082 bytes)
//Sent 3/9/2005 12:43:42 AM: ABOR
//Recv 3/9/2005 12:43:42 AM: 226 abort successful
//Recv 3/9/2005 12:43:43 AM: 425 transfer canceled
//
    if LResponse = 226 then
    begin
      if IOHandler.Readable(10) then begin
        GetResponse(AbortedReplies);
      end;
    end;
    DoStatus(ftpAborted, [RSFTPStatusAbortTransfer]);
//end expiriemental section
  end else begin
    //ftp.marist.edu returns 250
    GetResponse([226, 225,250]);
  end;
end;

procedure TIdFTP.InternalPut(const ACommand: string; ASource: TStream; AFromBeginning: Boolean = True);
var
  LIP: string;
  LPort: TIdPort;
  LPasvCl : TIdTCPClient;
  LPortSv : TIdSimpleServer;
begin
  FAbortFlag.Value := False;
  //for SSL FXP, we have to do it here because there is no command were a client
  //submits data through a data port where the SSCN setting is ignored.
  ClearSSCN;
  DoStatus(ftpTransfer, [RSFTPStatusStartTransfer]);
  try
    if FPassive then begin
      SendPret(ACommand);
      if FUsingExtDataPort then begin
        SendEPassive(LIP, LPort);
      end else begin
        SendPassive(LIP, LPort);
      end;
      IOHandler.WriteLn(ACommand);
      FDataChannel := TIdTCPClient.Create(nil);
      LPasvCl := TIdTCPClient(FDataChannel);
      try
        InitDataChannel;

        if PassiveUseControlHost then begin
          //Do not use an assignment from Self.Host
          //because a DNS name may not resolve to the same
          //IP address every time.  This is the case where
          //the workload is distributed around several servers.
          //Besides, we already know the Peer's IP address so
          //why waste time querying it.     
          LIP := Self.Socket.Binding.PeerIP;
        end;

        LPasvCl.Host := LIP;
        LPasvCl.Port := LPort;

        if Assigned(FOnDataChannelCreate) then begin
          OnDataChannelCreate(Self, FDataChannel);
        end;

        LPasvCl.Connect;
        try
          Self.GetResponse([110, 125, 150]);
          try
            if FUsingSFTP and (FDataPortProtection = ftpdpsPrivate) then begin
              TIdSSLIOHandlerSocketBase(FDataChannel.IOHandler).Passthrough := False;
            end;
            if (FCurrentTransferMode = dmDeflate) and FCompressor.IsReady then
            begin
              FCompressor.CompressFTPToIO(ASource, FDataChannel.IOHandler,
                FZLibCompressionLevel, FZLibWindowBits, FZLibMemLevel, FZLibStratagy);
            end else
            begin
              if AFromBeginning then begin
                FDataChannel.IOHandler.Write(ASource, 0, False);  // from beginning
              end else begin
                FDataChannel.IOHandler.Write(ASource, -1, False); // from current position
              end;
            end;
          except
            on E: EIdSocketError do
            begin
              // If 10038 - abort was called. Server will return 225
              if E.LastError <> 10038 then begin
                raise;
              end;
            end;
          end;
        finally
          LPasvCl.Disconnect;
        end;
      finally
        FinalizeDataOperation;
      end;
    end else begin
      FDataChannel := TIdSimpleServer.Create(nil);
      LPortSv := TIdSimpleServer(FDataChannel);
      try
        InitDataChannel;

        LPortSv.BoundIP := (Self.IOHandler as TIdIOHandlerSocket).Binding.IP;
        LPortSv.BoundPort := FDataPort;
        LPortSv.BoundPortMin := FDataPortMin;
        LPortSv.BoundPortMax := FDataPortMax;

        if Assigned(FOnDataChannelCreate) then begin
          OnDataChannelCreate(Self, FDataChannel);
        end;

        LPortSv.BeginListen;
        if FUsingExtDataPort then begin
          SendEPort(LPortSv.Binding);
        end else begin
          SendPort(LPortSv.Binding);
        end;
        Self.SendCmd(ACommand, [125, 150]);

        LPortSv.Listen(ListenTimeout);
        if FUsingSFTP and (FDataPortProtection = ftpdpsPrivate) then begin
          TIdSSLIOHandlerSocketBase(FDataChannel.IOHandler).PassThrough := False;
        end;
        if (FCurrentTransferMode = dmDeflate) and FCompressor.IsReady then
        begin
          FCompressor.CompressFTPToIO(ASource, FDataChannel.IOHandler, FZLibCompressionLevel, FZLibWindowBits, FZLibMemLevel, FZLibStratagy);
        end else
        begin
          if AFromBeginning then begin
            FDataChannel.IOHandler.Write(ASource, 0, False);  // from beginning
          end else begin
            FDataChannel.IOHandler.Write(ASource, -1, False); // from current position
          end;
        end;
      finally
        FinalizeDataOperation;
      end;
    end;
  except
    //Note that you are likely to get an exception you abort a transfer
    //hopefully, this will make things work better.
    on E: EIdConnClosedGracefully do begin
    end;
  end;

{ commented out because we might need to revert back to this
  if new code fails.
  if (LResponse = 426) or (LResponse = 450) then
  begin
    // some servers respond with 226 on ABOR
    GetResponse([226, 225]);
    DoStatus(ftpAborted, [RSFTPStatusAbortTransfer]);
  end;
  }
end;


procedure TIdFTP.InternalGet(const ACommand: string; ADest: TStream; AResume: Boolean = false);
var
  LIP: string;
  LPort: TIdPort;
  LPasvCl : TIdTCPClient;
  LPortSv : TIdSimpleServer;
begin
  FAbortFlag.Value := False;
  DoStatus(ftpTransfer, [RSFTPStatusStartTransfer]);
  if FPassive then begin
    SendPret(ACommand);
    //PASV or EPSV
    if FUsingExtDataPort then begin
      SendEPassive(LIP, LPort);
    end else begin
      SendPassive(LIP, LPort);
    end;
    FDataChannel := TIdTCPClient.Create(nil);
    LPasvCl := TIdTCPClient(FDataChannel);
    try
      InitDataChannel;

      if PassiveUseControlHost then begin
        //Do not use an assignment from Self.Host
        //because a DNS name may not resolve to the same
        //IP address every time.  This is the case where
        //the workload is distributed around several servers.
        //Besides, we already know the Peer's IP address so
        //why waste time querying it.
        LIP := Self.Socket.Binding.PeerIP;
      end;

      LPasvCl.Host := LIP;
      LPasvCl.Port := LPort;

      if Assigned(FOnDataChannelCreate) then begin
        OnDataChannelCreate(Self, FDataChannel);
      end;

      LPasvCl.Connect;
      try
        if AResume then begin
          Self.SendCmd('REST ' + IntToStr(ADest.Position), [350]);   {do not localize}
        end;
        Self.IOHandler.WriteLn(ACommand);
        // APR: Ericsson Switch FTP
        //
        // RLebeau: some servers send 450 when no files are
        // present, so do not read the stream in that case
        if Self.GetResponse([125, 150, 154, 450]) <> 450 then
        begin
          if (FDataPortProtection = ftpdpsPrivate) then begin
            TIdSSLIOHandlerSocketBase(FDataChannel.IOHandler).Passthrough := False;
          end;
          if (FCurrentTransferMode = dmDeflate) and FCompressor.IsReady then begin
            FCompressor.DecompressFTPFromIO(LPasvCl.IOHandler, ADest, FZLibWindowBits);
          end else begin
            LPasvCl.IOHandler.ReadStream(ADest, -1, True);
          end;
        end;
      finally
        LPasvCl.Disconnect;
      end;
    finally
      FinalizeDataOperation;
    end;
  end else begin
    // PORT or EPRT
    FDataChannel := TIdSimpleServer.Create(nil);
    LPortSv := TIdSimpleServer(FDataChannel);
    try
      InitDataChannel;

      LPortSv.BoundIP := (Self.IOHandler as TIdIOHandlerSocket).Binding.IP;
      LPortSv.BoundPort := FDataPort;
      LPortSv.BoundPortMin := FDataPortMin;
      LPortSv.BoundPortMax := FDataPortMax;

      if Assigned(FOnDataChannelCreate) then begin
        OnDataChannelCreate(Self, FDataChannel);
      end;

      LPortSv.BeginListen;
      if FUsingExtDataPort then begin
        SendEPort(LPortSv.Binding);
      end else begin
        SendPort(LPortSv.Binding);
      end;
      if AResume then begin
        SendCmd('REST ' + IntToStr(ADest.Position), [350]);  {do not localize}
      end;
      SendCmd(ACommand, [125, 150, 154]); //APR: Ericsson Switch FTP);

      LPortSv.Listen(ListenTimeout);
      if FUsingSFTP and (FDataPortProtection = ftpdpsPrivate) then begin
        TIdSSLIOHandlerSocketBase(FDataChannel.IOHandler).PassThrough := False;
      end;
      if (FCurrentTransferMode = dmDeflate) and FCompressor.IsReady then begin
        FCompressor.DecompressFTPFromIO(LPortSv.IOHandler, ADest, FZLibWindowBits);
      end else begin
        FDataChannel.IOHandler.ReadStream(ADest, -1, True);
      end;
    finally
      FinalizeDataOperation;
    end;
  end;

  // ToDo: Change that to properly handle response code (not just success or except)
  // 226 = download successful, 225 = Abort successful}
  //commented out in case we need to revert back to this.
{  LResponse := GetResponse([225, 226, 250, 426, 450]);
  if (LResponse = 426) or (LResponse = 450) then begin
    GetResponse([226, 225]);
    DoStatus(ftpAborted, [RSFTPStatusAbortTransfer]);
  end; }
end;

procedure TIdFTP.DisconnectNotifyPeer;
begin
  if IOHandler.Connected then begin
    IOHandler.WriteLn('QUIT');      {do not localize}
  end;
  if IOHandler.Connected then begin
    if IOHandler.Readable(10) then begin
      GetInternalResponse;
    end;
  end;
end;

procedure TIdFTP.Quit;
begin
  Disconnect;
end;

procedure TIdFTP.KillDataChannel;
begin
  // Had kill the data channel ()
  if Assigned(FDataChannel) then begin
    FDataChannel.Disconnect; //FDataChannel.IOHandler.DisconnectSocket;  {//BGO}
  end;
end;

// IMPORTANT!!! THis is for later reference.
//
// Note that we do not send the Telnet IP and Sync as suggestedc by RFC 959.
// We do not do so because some servers will mistakenly assume that the sequences
// are part of the command and than give a syntax error.
// I noticed this with FTPSERVE IBM VM Level 510, Microsoft FTP Service (Version 5.0),
// GlobalSCAPE Secure FTP Server (v. 2.0), and Pure-FTPd [privsep] [TLS].
//
// Thus, I feel that sending sequences is just going to aggravate this situation.
// It is probably the reason why some FTP clients no longer are sending Telnet IP
// and Sync with the ABOR command.
procedure TIdFTP.Abort;
begin
  // only send the abort command. The Data channel is supposed to disconnect
  if Connected then begin
    IOHandler.WriteLn('ABOR');                   {do not localize}
  end;
  // Kill the data channel: usually, the server doesn't close it by itself
  KillDataChannel;
  if Assigned(FDataChannel) then begin
    FAbortFlag.Value := True;
  end else begin
    GetResponse([]);
  end;
end;

procedure TIdFTP.SendPort(AHandle: TIdSocketHandle);
begin
  if FExternalIP <> '' then begin
    SendPort(FExternalIP, AHandle.Port);
  end else begin
    SendPort(AHandle.IP, AHandle.Port);
  end;
end;

procedure TIdFTP.SendPort(const AIP: String; const APort: TIdPort);
begin
  SendDataSettings;
  SendCmd('PORT ' + StringReplace(AIP, '.', ',', [rfReplaceAll])   {do not localize}
    + ',' + IntToStr(APort div 256) + ',' + IntToStr(APort mod 256), [200]); {do not localize}
end;

procedure TIdFTP.InitDataChannel;
var
  LSSL : TIdSSLIOHandlerSocketBase;
begin
  if FDataPortProtection = ftpdpsPrivate then begin
    LSSL := TIdSSLIOHandlerSocketBase(IOHandler);
    FDataChannel.IOHandler := LSSL.Clone;
    //we have to delay the actual negotiation until we get the reply and
    //and just before the readString
    TIdSSLIOHandlerSocketBase(FDataChannel.IOHandler).Passthrough := True;
  end else begin
    FDataChannel.IOHandler := TIdIOHandler.MakeDefaultIOHandler(Self);
  end;
  if FDataChannel is TIdTCPClient then
  begin
    //Now SocksInfo are multi-thread safe
    FDataChannel.IOHandler.ConnectTimeout := IOHandler.ConnectTimeout;
  end;
  if Assigned(FDataChannel.Socket) and Assigned(Socket) then
  begin
    FDataChannel.Socket.TransparentProxy := Socket.TransparentProxy;
    FDataChannel.Socket.IPVersion := Socket.IPVersion;
  end;
  FDataChannel.IOHandler.ReadTimeout := FTransferTimeout;
  FDataChannel.IOHandler.SendBufferSize := IOHandler.SendBufferSize;
  FDataChannel.IOHandler.RecvBufferSize := IOHandler.RecvBufferSize;
  FDataChannel.IOHandler.LargeStream := True;
  FDataChannel.WorkTarget := Self;
end;

procedure TIdFTP.Put(const ASource: TStream; const ADestFile: string; const AAppend: Boolean = False);
begin
  EIdFTPUploadFileNameCanNotBeEmpty.IfTrue(ADestFile = '', RSFTPFileNameCanNotBeEmpty);
  DoBeforePut(ASource); //APR);
  if AAppend then begin
    InternalPut('APPE ' + ADestFile, ASource, false);  {Do not localize}
  end else begin
    InternalPut('STOR ' + ADestFile, ASource);  {Do not localize}
  end;
  DoAfterPut;
end;

procedure TIdFTP.Put(const ASourceFile: string; const ADestFile: string = ''; const AAppend: Boolean = False);
var
  LSourceStream: TStream;
  LDestFileName : String;
begin
  LDestFileName := ADestFile;
  if LDestFileName = '' then begin
   LDestFileName := ExtractFileName(ASourceFile);
  end;
  LSourceStream := TIdReadFileNonExclusiveStream.Create(ASourceFile);
  try
    Put(LSourceStream, LDestFileName, AAppend);
  finally
    FreeAndNil(LSourceStream);
  end;
end;

procedure TIdFTP.StoreUnique(const ASource: TStream);
begin
  DoBeforePut(ASource);
  InternalPut('STOU', ASource);  {Do not localize}
  DoAfterPut;
end;

procedure TIdFTP.StoreUnique(const ASourceFile: string);
var
  LSourceStream: TStream;
begin
  LSourceStream := TIdReadFileExclusiveStream.Create(ASourceFile);
  try
    StoreUnique(LSourceStream);
  finally
    FreeAndNil(LSourceStream);
  end;
end;

procedure TIdFTP.SendInternalPassive(const ACmd: String; var VIP: string;
  var VPort: TIdPort);
var
  i, bLeft, bRight: integer;
  s: string;
begin
  SendDataSettings;
  SendCmd(ACmd, 227);      {do not localize}
  s := Trim(LastCmdResult.Text[0]);
  // Case 1 (Normal)
  // 227 Entering passive mode(100,1,1,1,23,45)
  bLeft := IndyPos('(', s);   {do not localize}
  bRight := IndyPos(')', s);  {do not localize}
  if (bLeft = 0) or (bRight = 0) then begin
    // Case 2
    // 227 Entering passive mode on 100,1,1,1,23,45
    bLeft := RPos(#32, s);
    s := Copy(s, bLeft + 1, Length(s) - bLeft);
  end else begin
    s := Copy(s, bLeft + 1, bRight - bLeft - 1);
  end;
  VIP := '';                 {do not localize}
  for i := 1 to 4 do begin
    VIP := VIP + '.' + Fetch(s, ','); {do not localize}
  end;
  IdDelete(VIP, 1, 1);
  // Determine port
  VPort := TIdPort(IndyStrToInt(Fetch(s, ',')) and $FF) shl 8;   {do not localize}
  //use trim as one server sends something like this:
  //"227 Passive mode OK (195,92,195,164,4,99 )"
  VPort := VPort + TIdPort(IndyStrToInt(Fetch(s, ',')) and $FF); {Do not translate}
end;

procedure TIdFTP.SendPassive(var VIP: string; var VPort: TIdPort);
begin
  SendInternalPassive('PASV', VIP, VPort); {do not localize}
end;

procedure TIdFTP.SendCPassive(var VIP: string; var VPort: TIdPort);
begin
  SendInternalPassive('CPSV', VIP, VPort); {do not localize}
end;

procedure TIdFTP.Noop;
begin
  SendCmd('NOOP', 200); {do not localize}
end;

procedure TIdFTP.MakeDir(const ADirName: string);
begin
  SendCmd('MKD ' + ADirName, 257); {do not localize}
end;

function TIdFTP.RetrieveCurrentDir: string;
begin
  SendCmd('PWD', 257); {do not localize}
  Result := LastCmdResult.Text[0];
  IdDelete(Result, 1, IndyPos('"', Result)); // Remove first doublequote                             {do not localize}
  Result := Copy(Result, 1, IndyPos('"', Result) - 1); // Remove anything from second doublequote  {do not localize}                               // to end of line
  // TODO: handle embedded quotation marks.  RFC 959 allows them to be present
end;

procedure TIdFTP.RemoveDir(const ADirName: string);
begin
  SendCmd('RMD ' + ADirName, 250); {do not localize}
end;

procedure TIdFTP.Delete(const AFilename: string);
begin
  SendCmd('DELE ' + AFilename, 250); {do not localize}
end;

(*
CHANGE WORKING DIRECTORY (CWD)

  This command allows the user to work with a different
  directory or dataset for file storage or retrieval without
  altering his login or accounting information.  Transfer
  parameters are similarly unchanged.  The argument is a
  pathname specifying a directory or other system dependent
  file group designator.

CWD
  250
  500, 501, 502, 421, 530, 550
*)
procedure TIdFTP.ChangeDir(const ADirName: string);
begin
  SendCmd('CWD ' + ADirName, [200, 250]); //APR: Ericsson Switch FTP     {do not localize}
end;

(*
CHANGE TO PARENT DIRECTORY (CDUP)

  This command is a special case of CWD, and is included to
  simplify the implementation of programs for transferring
  directory trees between operating systems having different
  syntaxes for naming the parent directory.  The reply codes
  shall be identical to the reply codes of CWD.  See
  Appendix II for further details.

CDUP
  200
  500, 501, 502, 421, 530, 550
*)
procedure TIdFTP.ChangeDirUp;
begin
  // RFC lists 200 as the proper response, but in another section says that it can return the
  // same as CWD, which expects 250. That is it contradicts itself.
  // MS in their infinite wisdom chnaged IIS 5 FTP to return 250.
  SendCmd('CDUP', [200, 250]);   {do not localize}
end;

procedure TIdFTP.Site(const ACommand: string);
begin
  SendCmd('SITE ' + ACommand, 200);   {do not localize}
end;

procedure TIdFTP.Rename(const ASourceFile, ADestFile: string);
begin
  SendCmd('RNFR ' + ASourceFile, 350);  {do not localize}
  SendCmd('RNTO ' + ADestFile, 250);    {do not localize}
end;

function TIdFTP.Size(const AFileName: String): Int64;
var
  SizeStr: String;
begin
  Result := -1;
  if SendCmd('SIZE ' + AFileName) = 213 then begin  {do not localize}
    SizeStr := Trim(LastCmdResult.Text.Text);
    IdDelete(SizeStr, 1, IndyPos(' ', SizeStr)); // delete the response   {do not localize}
    Result := IndyStrToInt64(SizeStr, -1);
  end;
end;

//Added by SP
procedure TIdFTP.ReInitialize(ADelay: Cardinal = 10);
begin
  IndySleep(ADelay); //Added
  if SendCmd('REIN', [120, 220, 500]) <> 500 then begin  {do not localize}
    FLoginMsg.Clear;
    FCanResume := False;
    if Assigned(FDirectoryListing) then begin
      FDirectoryListing.Clear;
    end;
    FUsername := '';                 {do not localize}
    FPassword := '';                 {do not localize}
    FPassive := Id_TIdFTP_Passive;
    FCanResume := False;
    FResumeTested := False;
    FSystemDesc := '';
    FTransferType := Id_TIdFTP_TransferType;
    if FUsingSFTP and (FUseTLS <> utUseImplicitTLS) then begin
      (IOHandler as TIdSSLIOHandlerSocketBase).PassThrough := True;
      FUsingSFTP := False;
      FUseCCC := False;
    end;
  end;
end;

procedure TIdFTP.Allocate(AAllocateBytes: Integer);
begin
  SendCmd('ALLO ' + IntToStr(AAllocateBytes), [200]); {do not localize}
end;

procedure TIdFTP.Status(AStatusList: TStrings);
begin
  if SendCmd('STAT', [211, 212, 213, 500]) <> 500 then begin  {do not localize}
    AStatusList.Text := LastCmdResult.Text.Text;
  end;
end;

procedure TIdFTP.Help(AHelpContents: TStrings; ACommand: String = ''); {do not localize}
begin
  if SendCmd(Trim('HELP ' + ACommand), [211, 214, 500]) <> 500 then begin      {do not localize}
    AHelpContents.Text := LastCmdResult.Text.Text;
  end;
end;

function TIdFTP.CheckAccount: Boolean;
begin
  if (FAccount = '') and Assigned(FOnNeedAccount) then begin
    FOnNeedAccount(Self, FAccount);
  end;
  Result := FAccount <> '';
end;

procedure TIdFTP.StructureMount(APath: String);
begin
  SendCmd('SMNT ' + APath, [202, 250, 500]);  {do not localize}
end;

procedure TIdFTP.FileStructure(AStructure: TIdFTPDataStructure);
const
  StructureTypes: array[TIdFTPDataStructure] of String = ('F', 'R', 'P'); {do not localize}
begin
  SendCmd('STRU ' + StructureTypes[AStructure], [200, 500]);  {do not localize}
  { TODO: Needs to be finished }
end;

procedure TIdFTP.TransferMode(ATransferMode: TIdFTPTransferMode);
var
  s: String;
  i : Integer;
  LBuf : String;
begin
  if (ATransferMode = dmStream) or (ATransferMode = dmDeflate) then begin
    case ATransferMode of
//      dmBlock: begin
//        s := 'B';                {do not localize}
//      end;
//      dmCompressed: begin
//        s := 'C';                {do not localize}
//      end;
      dmStream: begin
        s := 'S';                {do not localize}
      end;
      dmDeflate: begin
        if Assigned(FCompressor) then begin
          //we parse this way because IxExtensionSupported can only work
          //with one word.
          for i := 0 to FCapabilities.Count-1 do begin
            LBuf := Trim(FCapabilities[i]);
            if LBuf = 'MODE Z' then begin {do not localize}
              s := 'Z'; {do not localize}
              Break;
            end;
          end;
          if s <> 'Z' then begin
            Exit;
          end;
        end else begin
          Exit;
        end;
      end;
    end;
    if SendCmd('MODE ' + s) = 200 then begin {do not localize}
      FCurrentTransferMode := ATransferMode;
    end;
  end;
end;

destructor TIdFTP.Destroy;
begin
  FreeAndNil(FClientInfo);
  FreeAndNil(FListResult);
  FreeAndNil(FLoginMsg);
  FreeAndNil(FDirectoryListing);
  FreeAndNil(FLangsSupported);
  FreeAndNil(FProxySettings); //APR
  FreeAndNil(FTZInfo);
  FreeAndNil(FAbortFlag);
  inherited Destroy;
end;

function TIdFTP.Quote(const ACommand: String): SmallInt;
begin
  Result := SendCmd(ACommand);
end;

procedure TIdFTP.IssueFEAT;
begin
  //Feat data

  SendCmd('FEAT');  {do not localize}

  FCapabilities.Clear;
  FCapabilities.AddStrings(LastCmdResult.Text);

  //we remove the first and last lines because we only want the list
  if FCapabilities.Count > 0 then begin
    FCapabilities.Delete(0);
  end;
  if FCapabilities.Count > 0 then begin
    FCapabilities.Delete(FCapabilities.Count-1);
  end;
  if FUsingExtDataPort then begin
    FUsingExtDataPort := IsExtSupported('EPRT') and IsExtSupported('EPSV');  {do not localize}
  end;

  FCanUseMLS := UseMLIS and (IsExtSupported('MLSD') or IsExtSupported('MLST')); {do not localize}
  ExtractFeatFacts('LANG', FLangsSupported); {do not localize}
end;

procedure TIdFTP.Login;
var
  i : Integer;
  LResp : Word;

  function FtpHost: String;
  begin
    if FPort = IDPORT_FTP then begin
      Result := FHost;
    end else begin
      Result := FHost + Id_TIdFTP_HostPortDelimiter + IntToStr(FPort);
    end;
  end;

begin
//This has to be here because the Rein command clears encryption.
//RFC 4217
  //TLS part
  FUsingSFTP := False;
  if UseTLS in ExplicitTLSVals then begin
    if FAUTHCmd = tAuto then begin
      {Note that we can not call SupportsTLS at all.  That depends upon the FEAT response
      and unfortunately, some servers such as WS_FTP Server 4.0.0 (78162662)
      will not accept a FEAT command until you login.  In other words, you have to do
      this by trial and error.
      }

      //334 has to be accepted because of a broekn implementation
      //see: http://www.ford-hutchinson.com/~fh-1-pfh/ftps-ext.html#bad

      {Note that we have to try several commands because some servers use AUTH TLS while others use
      AUTH SSL.  GlobalScape's FTP Server only uses AUTH SSL while IpSwitch's uses AUTH TLS (the correct behavior).
      We try two other commands for historical reasons.
      }
      for i := 0 to 3 do begin
        LResp := SendCmd('AUTH ' + TLS_AUTH_NAMES[i]);  {do not localize}
        if (LResp = 234) or (LResp = 334) then begin
          //okay.  do the handshake
          TLSHandshake;
          FUsingSFTP := True;
          //we are done with the negotiation, let's close this.
          Break;
        end;
        //see if the error was not any type of syntax error code
        //if it wasn't, we fail the command.
        if (LResp div 500) <> 1 then begin
          ProcessTLSNegCmdFailed;
          Break;
        end;
      end;
    end else begin
      LResp := SendCmd('AUTH ' + TLS_AUTH_NAMES[Ord(FAUTHCmd)-1]);  {do not localize}
      if (LResp = 234) or (LResp = 334) then begin
        //okay.  do the handshake
        TLSHandshake;
        FUsingSFTP := True;
      end else begin
        ProcessTLSNegCmdFailed;
      end;
    end;
  end;
  if not FUsingSFTP then begin
    ProcessTLSNotAvail;
  end;
  //login
  case ProxySettings.ProxyType of
  fpcmNone:
    begin
      if SendCmd('USER ' + FUserName, [230, 232, 331]) = 331 then begin {do not localize}
        SendCmd('PASS ' + GetLoginPassword, [230, 332]);  {do not localize}
        if IsAccountNeeded then begin
          if CheckAccount then begin
            SendCmd('ACCT ' + FAccount, [202, 230, 500]);  {do not localize}
          end else begin
            RaiseExceptionForLastCmdResult
          end;
      	end;
      end;
    end;
  fpcmUserSite:
    begin
      //This also supports WinProxy
      if Length(ProxySettings.UserName) > 0 then begin
        if SendCmd('USER ' + ProxySettings.UserName, [230, 331]) = 331 then begin {do not localize}
          SendCmd('PASS ' + ProxySettings.Password, 230); {do not localize}
          if IsAccountNeeded then begin
            if CheckAccount then begin
              SendCmd('ACCT ' + FAccount, [202, 230, 500]);  {do not localize}
            end else begin
              RaiseExceptionForLastCmdResult
            end;
          end;
        end;
      end;
      if SendCmd('USER ' + FUserName + '@' + FtpHost, [230, 232, 331]) = 331 then begin {do not localize}
        SendCmd('PASS ' + GetLoginPassword, [230, 331]);  {do not localize}
        if IsAccountNeeded then
        begin
    	  if CheckAccount then begin
            SendCmd('ACCT ' + FAccount, [202, 230, 500]);  {do not localize}
          end else begin
            RaiseExceptionForLastCmdResult
          end;
        end;
      end;
    end;
  fpcmSite:
    begin
      if Length(ProxySettings.UserName) > 0 then begin
        if SendCmd('USER ' + ProxySettings.UserName, [230, 331]) = 331 then begin {do not localize}
          SendCmd('PASS ' + ProxySettings.Password, 230); {do not localize}
        end;
      end;
      SendCmd('SITE ' + FtpHost); // ? Server Reply? 220?   {do not localize}
      if SendCmd('USER ' + FUserName, [230, 232, 331]) = 331 then begin {do not localize}
        SendCmd('PASS ' + GetLoginPassword, [230, 332]); {do not localize}
        if IsAccountNeeded then
        begin
     	  if CheckAccount then begin
            SendCmd('ACCT ' + FAccount, [202, 230, 500]);  {do not localize}
          end else begin
            RaiseExceptionForLastCmdResult
          end;
        end;
      end;
    end;
  fpcmOpen:
    begin
      if Length(ProxySettings.UserName) > 0 then begin
        if SendCmd('USER ' + ProxySettings.UserName, [230, 331]) = 331 then begin   {do not localize}
          SendCmd('PASS ' + GetLoginPassword, [230, 332]); {do not localize}
          if IsAccountNeeded then begin
            if CheckAccount then begin
              SendCmd('ACCT ' + FAccount, [202, 230, 500]);  {do not localize}
            end else begin
              RaiseExceptionForLastCmdResult
            end;
          end;
        end;
      end;
      SendCmd('OPEN ' + FtpHost);//? Server Reply? 220?     {do not localize}
      if SendCmd('USER ' + FUserName, [230, 232, 331]) = 331 then begin  {do not localize}
        SendCmd('PASS ' + GetLoginPassword, [230, 332]); {do not localize}
        if IsAccountNeeded then begin
     	  if CheckAccount then begin
            SendCmd('ACCT ' + FAccount, [202, 230, 500]);  {do not localize}
          end else begin
            RaiseExceptionForLastCmdResult
          end;
        end;
      end;
    end;
  fpcmUserPass: //USER user@firewalluser@hostname / PASS pass@firewallpass
    begin
      if SendCmd(IndyFormat('USER %s@%s@%s', [FUserName, ProxySettings.UserName, FtpHost]), [230, 232, 331]) = 331 then begin    {do not localize}
        if Length(ProxySettings.Password) > 0 then begin
          SendCmd('PASS ' + GetLoginPassword + '@' + ProxySettings.Password, [230, 332]); {do not localize}
        end
        else begin
	  //// needs otp ////
          SendCmd('PASS ' + GetLoginPassword, [230,332]);  {do not localize}
        end;
        if IsAccountNeeded then begin
          if CheckAccount then begin
            SendCmd('ACCT ' + FAccount, [202, 230, 500]);  {do not localize}
          end else begin
            RaiseExceptionForLastCmdResult
          end;
        end;
      end;
    end;
  fpcmTransparent:
    begin
      //I think  fpcmTransparent means to connect to the regular host and the firewalll
      //intercepts the login information.
      if Length(ProxySettings.UserName) > 0 then begin
        if SendCmd('USER ' + ProxySettings.UserName, [230, 331]) = 331 then begin    {do not localize}
          SendCmd('PASS ' + ProxySettings.Password, [230,332]);     {do not localize}
        end;
      end;
      if SendCmd('USER ' + FUserName, [230, 232, 331]) = 331 then begin   {do not localize}
        SendCmd('PASS ' + GetLoginPassword, [230,332]); {do not localize}
        if IsAccountNeeded then begin
          if CheckAccount then begin
            SendCmd('ACCT ' + FAccount, [202, 230, 500]);
          end else begin
            RaiseExceptionForLastCmdResult
          end;
        end;
      end;
    end;
  fpcmUserHostFireWallID :  //USER hostuserId@hostname firewallUsername
    begin
       if SendCmd(Trim('USER ' + Username + '@' + FtpHost + ' ' + ProxySettings.UserName), [230, 331]) = 331 then begin   {do not localize}
         if SendCmd('PASS ' + GetLoginPassword, [230,232,202,332]) = 332 then begin
           SendCmd('ACCT ' + ProxySettings.Password, [230,232,332]);
           if IsAccountNeeded then begin
             if CheckAccount then begin
               SendCmd('ACCT ' + FAccount, [202, 230, 500]);  {do not localize}
             end else begin
               RaiseExceptionForLastCmdResult
             end;
           end;
         end;
       end;
    end;
  fpcmNovellBorder : //Novell Border PRoxy
    begin
{Done like this:

USER ProxyUserName$ DestFTPUserName$DestFTPHostName

PASS UsereDirectoryPassword$ DestFTPPassword

Novell BorderManager 3.8 Proxy and Firewall Overview and Planning Guide
Copyright � 1997-1998, 2001, 2002-2003, 2004 Novell, Inc. All rights reserved.
===
From a WS-FTP Pro firescript at:

http://support.ipswitch.com/kb/WS-20050315-DM01.htm

send ("USER %FwUserId$%HostUserId$%HostAddress") 

//send ("PASS %FwPassword$%HostPassword")

}
      if SendCmd(Trim('USER ' + ProxySettings.UserName + '$' + Username + '$' + FtpHost), [230, 331]) = 331 then begin   {do not localize}
        if SendCmd('PASS ' + ProxySettings.UserName + '$' + GetLoginPassword, [230,232,202,332]) = 332 then begin
          if IsAccountNeeded then begin
            if CheckAccount then begin
	      SendCmd('ACCT ' + FAccount, [202, 230, 500]);  {do not localize}
            end else begin
              RaiseExceptionForLastCmdResult
            end;
          end;
        end;
      end;
    end;
  fpcmHttpProxyWithFtp :
    begin
{GET ftp://XXX:YYY@indy.nevrona.com/ HTTP/1.0
Host: indy.nevrona.com
User-Agent: Mozilla/4.0 (compatible; Wincmd; Windows NT)
Proxy-Authorization: Basic B64EncodedUserPass==
Connection: close}
      raise EIdSocksServerCommandError.Create(RSSocksServerCommandError);
    end;//fpcmHttpProxyWithFtp
  fpcmCustomProxy :
    begin
      DoCustomFTPProxy;
    end;
  end;//case

  FLoginMsg.Assign(LastCmdResult);
  DoOnBannerAfterLogin(FLoginMsg.FormattedReply);
  //should be here because this can be issued more than once per connection.

  if FAutoIssueFEAT then
  begin
    IssueFEAT;
  end;
end;

procedure TIdFTP.DoAfterLogin;
begin
  if Assigned(FOnAfterClientLogin) then begin
    OnAfterClientLogin(Self);
  end;
end;

procedure TIdFTP.DoFTPList;
begin
  if Assigned(FOnCreateFTPList) then begin
    FOnCreateFTPList(Self, FDirectoryListing);
  end;
end;

function TIdFTP.GetDirectoryListing: TIdFTPListItems;
begin
  if FDirectoryListing = nil then begin
    if Assigned(FOnDirParseStart) then begin
      FOnDirParseStart(Self);
    end;
    ConstructDirListing;
    ParseFTPList;
  end;
  Result := FDirectoryListing;
end;

procedure TIdFTP.SetProxySettings(const Value: TIdFtpProxySettings);
begin
  FProxySettings.Assign(Value);
end;

{ TIdFtpProxySettings }

procedure TIdFtpProxySettings.Assign(Source: TPersistent);
begin
  if Source is TIdFtpProxySettings then begin
    with Source as TIdFtpProxySettings do begin
      Self.FProxyType := ProxyType;
      Self.FHost := Host;
      Self.FUserName := UserName;
      Self.FPassword := Password;
      Self.FPort := Port;
    end;
  end else begin
    inherited Assign(Source);
  end;
end;

procedure TIdFTP.SendPBSZ;
begin
  {NOte that PBSZ - protection buffer size must always be zero for FTP TLS}
  if FUsingSFTP or (FUseTLS = utUseImplicitTLS) then begin
    //protection buffer size
    SendCmd('PBSZ 0');  {do not localize}
  end;
end;

procedure TIdFTP.SendPROT;
begin
  case FDataPortProtection of
    ftpdpsClear : SendCmd('PROT C', 200);  //'C' - Clear - neither Integrity nor Privacy   {do not localize}
    // NOT USED - 'S' - Safe - Integrity without Privacy
    // NOT USED - 'E' - Confidential - Privacy without Integrity
    // 'P' - Private - Integrity and Privacy
    ftpdpsPrivate : SendCmd('PROT P', 200); {do not localize}
  end;
end;

procedure TIdFTP.SendDataSettings;
begin
  if FUsingSFTP then begin
    if not FUsingCCC then begin
      SendPBSZ;
      SendPROT;
      if FUseCCC then begin
        FUsingCCC := (SendCmd('CCC') div 100) = 2; {do not localize}
        if FUsingCCC then begin
         (IOHandler as TIdSSLIOHandlerSocketBase).PassThrough := True;
        end;
      end;
    end;
  end;
end;

procedure TIdFTP.SetIOHandler(AValue: TIdIOHandler);
begin
  inherited SetIOHandler(AValue);
  EIdFTPWrongIOHandler.IfTrue((AValue <> nil) and (not (AValue is TIdIOHandlerSocket)), RSFTPIOHandlerWrong); // RS + EXCEPTION {do not localize}
  if AValue <> nil then begin
    // UseExtensionDataPort must be true for IPv6 connections.
    // PORT and PASV can not communicate IPv6 Addresses
    if TIdIOHandlerSocket(AValue).IPVersion = Id_IPv6 then begin
      FUseExtensionDataPort := True;
    end;
  end;
end;

procedure TIdFTP.SetUseExtensionDataPort(const AValue: Boolean);
begin
  EIdFTPMustUseExtWithIPv6.IfTrue((not AValue) and (IPVersion = Id_IPv6), RSFTPMustUseExtWithIPv6);
  EIdFTPMustUseExtWithNATFastTrack.IfTrue(TryNATFastTrack, RSFTPMustUseExtWithNATFastTrack);
  FUseExtensionDataPort := AValue;
end;

procedure TIdFTP.ParseEPSV(const AReply : String; var VIP : String; var VPort : TIdPort);
var
  bLeft, bRight, LPort: Integer;
  delim : Char;
  s : String;
begin
  s := Trim(AReply);
  // "229 Entering Extended Passive Mode (|||59028|)"
  bLeft := IndyPos('(', s);   {do not localize}
  bRight := IndyPos(')', s);  {do not localize}
  s := Copy(s, bLeft + 1, bRight - bLeft - 1);
  delim := s[1]; // normally is | but the RFC say it may be different
  Fetch(S, delim);
  Fetch(S, delim);
  VIP := Fetch(S, delim);
  if VIP = '' then begin
    VIP := Host;
  end;
  s := Trim(Fetch(S, delim));
  LPort := IndyStrToInt(s, 0);
  if (LPort < 1) or (LPort > 65535) then begin
    raise EIdFTPServerSentInvalidPort.CreateFmt(RSFTPServerSentInvalidPort, [s]);
  end;
  VPort := TIdPort(LPort and $FFFF);
end;

procedure TIdFTP.SendEPassive(var VIP: string; var VPort: TIdPort);
begin
  SendDataSettings;
  //Note that for FTP Proxies, it is not desirable for the server to choose
  //the EPSV data port IP connection type.  We try to if we can.
  if FProxySettings.ProxyType <> fpcmNone then begin
    if SendCMD('EPSV ' + cIPVersions[IPVersion]) <> 229 then begin  {do not localize}
      //Raidon and maybe a few others may honor EPSV but not with the proto numbers
      SendCMD('EPSV');  {do not localize}
    end;
  end else begin
    SendCMD('EPSV');  {do not localize}
  end;
  if LastCmdResult.NumericCode <> 229 then begin
    SendPassive(VIP, VPort);
    FUsingExtDataPort := False;
    Exit;
  end;
  try
    ParseEPSV(LastCmdResult.Text[0], VIP, VPort);
  except
    SendCmd('ABOR');  {do not localize}
    raise;
  end;
end;

procedure TIdFTP.SendEPort(AHandle: TIdSocketHandle);
begin
  SendDataSettings;
  if FExternalIP <> '' then begin
    SendEPort(FExternalIP, AHandle.Port, AHandle.IPVersion);
  end else begin
    SendEPort(AHandle.IP, AHandle.Port, AHandle.IPVersion);
  end;
end;

procedure TIdFTP.SendEPort(const AIP: String; const APort: TIdPort; const AIPVersion: TIdIPVersion);
begin
  if SendCmd('EPRT |' + cIPVersions[AIPVersion] + '|' + AIP + '|' + IntToStr(APort) + '|') <> 200 then begin  {do not localize}
    SendPort(AIP, APort);
    FUsingExtDataPort := False;
  end;
end;

procedure TIdFTP.SetPassive(const AValue: Boolean);
begin
  EIdFTPPassiveMustBeTrueWithNATFT.IfTrue((not AValue) and (TryNATFastTrack), RSFTPFTPPassiveMustBeTrueWithNATFT);
  FPassive := AValue;
end;

procedure TIdFTP.SetTryNATFastTrack(const AValue: Boolean);
begin
  FTryNATFastTrack := AValue;
  if FTryNATFastTrack then begin
    FPassive := True;
    FUseExtensionDataPort := True;
  end;
end;

procedure TIdFTP.DoTryNATFastTrack;
begin
  if IsExtSupported('EPSV') then begin {do not localize}
    if SendCmd('EPSV ALL') = 229 then begin  {do not localize}
      //Surge FTP treats EPSV ALL as if it were a standard EPSV
      //We send ABOR in that case so it can close the data connection it created
      SendCmd('ABOR');   {do not localize}
    end;
    FUsingNATFastTrack := True;
  end;
end;

procedure TIdFTP.SetCmdOpt(const ACmd, AOptions: String);
begin
  SendCmd('OPTS ' + ACmd + ' ' + AOptions, 200); {do not localize}
end;

procedure TIdFTP.ExtListDir(ADest: TStrings = nil; const ADirectory: string = '');
var
  LDest: TStringStream;
begin
  LDest := TStringStream.Create('');
  try
    InternalGet(Trim('MLSD ' + ADirectory), LDest);  {do not localize}
    FreeAndNil(FDirectoryListing);
    DoOnRetrievedDir;
    FListResult.Text := LDest.DataString;
    with TIdFTPListResult(FListResult) do begin
      FDetails := True;
      FUsedMLS := True;
    end;
  finally
    FreeAndNil(LDest);
  end;
  if Assigned(ADest) then begin //APR: User can use ListResult and DirectoryListing
    ADest.Assign(FListResult);
  end;
end;

procedure TIdFTP.ExtListItem(ADest: TStrings; AFList : TIdFTPListItems; const AItem: string);
var
  i : Integer;
begin
  ADest.Clear;
  SendCmd(Trim('MLST ' + AItem), 250);  {do not localize}
  for i := 0 to LastCmdResult.Text.Count -1 do begin
    if IndyPos(';', LastCmdResult.Text[i]) > 0 then begin
      ADest.Add(LastCmdResult.Text[i]);
    end;
  end;
  if Assigned(AFList) then begin
    IdFTPListParseBase.ParseListing(ADest, AFList, 'MLST'); {do not localize}
  end;
end;

procedure TIdFTP.ExtListItem(ADest: TStrings; const AItem: string);
begin
  ExtListItem(ADest, nil, AItem);
end;

procedure TIdFTP.ExtListItem(AFList: TIdFTPListItems; const AItem: String);
var
  LBuf : TStrings;
begin
  LBuf := TStringList.Create;
  try
    ExtListItem(LBuf, AFList, AItem);
  finally
    FreeAndNil(LBuf);
  end;
end;

function TIdFTP.IsExtSupported(const ACmd: String): Boolean;
var
  i : Integer;
  LBuf : String;
begin
  Result := False;
  for i := 0 to FCapabilities.Count -1 do
  begin
    LBuf := TrimLeft(FCapabilities[i]);
    if TextIsSame(Fetch(LBuf), ACmd) then begin
      Result := True;
      Exit;
    end;
  end;
end;

function TIdFTP.FileDate(const AFileName: String; const AsGMT: Boolean): TDateTime;
var
  LBuf : String;
begin
  //Do not use the FEAT list because some servers
  //may support it even if FEAT isn't supported
  if SendCmd('MDTM ' + AFileName) = 213 then begin {do not localize}
    LBuf := LastCmdResult.Text[0];
    LBuf := Trim(LBuf);
    if AsGMT then begin
      Result := FTPMLSToGMTDateTime(LBuf);
    end else begin
      Result := FTPMLSToLocalDateTime(LBuf);
    end;
  end else begin
    Result := 0;
  end;
end;

procedure TIdFTP.SiteToSiteUpload(const AToSite: TIdFTP; const ASourceFile, ADestFile: String);
{
SiteToSiteUpload

  From:  PASV   To: PORT   - ATargetUsesPasv = False
  From:  RETR   To: STOR

SiteToSiteDownload

  From: PORT    To: PASV   - ATargetUsesPasv = True
  From: RETR    To: STOR
}
begin
  if ValidateInternalIsTLSFXP(Self, AToSite, True) then begin
    InternalEncryptedTLSFXP(Self, AToSite, ASourceFile, ADestFile, True);
  end else begin
    InternalUnencryptedFXP(Self, AToSite, ASourceFile, ADestFile, True);
  end;
end;

procedure TIdFTP.SiteToSiteDownload(const AFromSite: TIdFTP; const ASourceFile, ADestFile: String);
{
 The only use of this function is to get the passive mode on the other connection.
 Because not all hosts allow it. This way you get a second chance.
 If uploading from host A doesn't work, try downloading from host B
}
begin
  if ValidateInternalIsTLSFXP(AFromSite, Self, True) then begin
    InternalEncryptedTLSFXP(AFromSite, Self, ASourceFile, ADestFile, False);
  end else begin
    InternalUnencryptedFXP(AFromSite, Self, ASourceFile, ADestFile, False);
  end;
end;

procedure TIdFTP.ExtractFeatFacts(const ACmd: String; AResults: TStrings);
var
  i : Integer;
  LBuf, LFact : String;
begin
  AResults.Clear;
  for i := 0 to FCapabilities.Count -1 do begin
    LBuf := FCapabilities[i];
    if TextIsSame(Fetch(LBuf), ACmd) then begin
      LBuf := Trim(LBuf);
      while LBuf <> '' do begin
        LFact := Trim(Fetch(LBuf, ';'));
        if LFact <> '' then begin
          AResults.Add(LFact);
        end;
      end;
      Exit;
    end;
  end;
end;

procedure TIdFTP.SetLang(const ALangTag: String);
begin
  if IsExtSupported('LANG') then begin {do not localize}
    SendCMD('LANG ' + ALangTag, 200);  {do not localize}
  end;
end;

function TIdFTP.CRC(const AFIleName : String; const AStartPoint : Int64 = 0;
  const AEndPoint : Int64 = 0) : Int64;
var
  LCmd : String;
  LCRC : String;
begin
  Result := -1;
  if IsExtSupported('XCRC') then begin {do not localize}
    LCmd := 'XCRC "' + AFileName + '"'; {do not localize}
    if AStartPoint <> 0 then begin
      LCmd := LCmd + ' ' + IntToStr(AStartPoint);
      if AEndPoint <> 0 then begin
        LCmd := LCmd + ' ' + IntToStr(AEndPoint);
      end;
    end;
    if SendCMD(LCMD) = 250 then begin
      LCRC := Trim(LastCmdResult.Text.Text);
      IdDelete(LCRC, 1, IndyPos(' ', LCRC)); // delete the response
      Result := IndyStrToInt64('$' + LCRC, -1);
    end;
  end;
end;

procedure TIdFTP.CombineFiles(const ATargetFile: String; AFileParts: TStrings);
var
  i : Integer;
  LCmd : String;
begin
  if IsExtSupported('COMB') and (AFileParts.Count > 0) then begin {do not localize}
    LCmd := 'COMB "' + ATargetFile + '"'; {do not localize}
    for i := 0 to AFileParts.Count -1 do begin
      LCmd := LCmd + ' ' + AFileParts[i];
    end;
    SendCmd(LCmd, 250);
  end;
end;

procedure TIdFTP.ParseFTPList;
begin
  DoOnDirParseStart;
  try
    // Parse directory listing
    if FListResult.Count > 0 then begin
      if TIdFTPListResult(FListResult).UsedMLS then begin
        IdFTPListParseBase.ParseListing(FListResult, FDirectoryListing, MLST);
      end else begin
        CheckListParseCapa(FListResult, FDirectoryListing, FDirFormat,
	  FListParserClass, SystemDesc, TIdFTPListResult(FListResult).Details);
      end;
    end;
  finally
    DoOnDirParseEnd;
  end;
end;

function TIdFTP.GetSupportsTLS: Boolean;
begin
  Result := (FindAuthCmd <> '');
end;

function TIdFTP.FindAuthCmd: String;
var
  i : Integer;
  LBuf : String;
  LWord : String;
begin
  Result := '';
  for i := 0 to FCapabilities.Count -1 do begin
    LBuf := TrimLeft(FCapabilities[i]);
    if TextIsSame(Fetch(LBuf), 'AUTH') then begin {do not localize}
      repeat
        LWord := Trim(Fetch(LBuf, ';'));
        if PosInStrArray(LWord, TLS_AUTH_NAMES, False) > -1 then begin
          Result := 'AUTH ' + LWord;  {do not localize}
          Exit;
        end;
      until LBuf = '';
      Break;
    end;
  end;
end;

procedure TIdFTP.DoCustomFTPProxy;
begin
  if Assigned(FOnCustomFTPProxy) then begin
    FOnCustomFTPProxy(Self);
  end else begin
    raise EIdFTPOnCustomFTPProxyRequired.Create(RSFTPOnCustomFTPProxyReq);
  end;
end;

function TIdFTP.GetLoginPassword: String;
begin
  Result := GetLoginPassword(LastCmdResult.Text.Text);
end;

function TIdFTP.GetLoginPassword(const APrompt: String): String;
begin
  if TIdOTPCalculator.IsValidOTPString(APrompt) then begin
    TIdOTPCalculator.GenerateSixWordKey(APrompt, FPassword, Result);
  end else begin
    Result := FPassword;
  end;
end;

function TIdFTP.SetSSCNToOn : Boolean;
begin
  Result := FUsingSFTP;
  if not Result then begin
    Exit;
  end;
  Result := (DataPortProtection = ftpdpsPrivate);
  if not Result then begin
    Exit;
  end;
  Result := not IsExtSupported(SCCN_FEAT);
  if not Result then begin
    Exit;
  end;
  if not FSSCNOn then begin
    SendCmd(SSCN_ON, SSCN_OK_REPLY);
    FSSCNOn := True;
  end;
end;

procedure TIdFTP.ClearSSCN;
begin
  if FSSCNOn then begin
    SendCmd(SSCN_OFF, SSCN_OK_REPLY);
  end;
end;

procedure TIdFTP.SetClientInfo(const AValue: TIdFTPClientIdentifier);
begin
  FClientInfo.Assign(AValue);
end;

function TIdFTP.GetReplyClass: TIdReplyClass;
begin
  Result := TIdReplyFTP;
end;

procedure TIdFTP.SetIPVersion(const AValue: TIdIPVersion);
begin
  if AValue <> FIPVersion then begin
    inherited SetIPVersion(AValue);
    if AValue = Id_IPv6 then begin
      UseExtensionDataPort := True;
    end;
  end;
end;

function TIdFTP.InternalEncryptedTLSFXP(AFromSite, AToSite: TIdFTP;
  const ASourceFile, ADestFile: String; const ATargetUsesPasv : Boolean): Boolean;
{

SiteToSiteUpload

  From:  PASV   To: PORT   - ATargetUsesPasv = False
  From:  RETR   To: STOR

SiteToSiteDownload

  From: PORT    To: PASV   - ATargetUsesPasv = True
  From: RETR    To: STOR


To do FXP transfers with TLS FTP, you have to have one computer do the
TLS handshake as a client (ssl_connect).  Thus, one of the following conditions must be meet.

1) SSCN must be supported on one of the FTP servers

or

2) If IPv4 is used, the computer receiving a "PASV" command must support
  CPSV.  CPSV will NOT work with IPv6.

IMAO, when doing FXP transfers, you should use SSCN whenever possible as
SSCN will support IPv6 and SSCN may be in wider use than CPSV.  CPSV should
only be used as a fallback if SSCN isn't supported by both servers and IPv4
is being used.
}
var
  LIP : String;
  LPort : TIdPort;
begin
  Result := True;
  if AFromSite.SetSSCNToOn then begin
    AToSite.ClearSSCN;
  end
  else if AToSite.SetSSCNToOn then begin
    AFromSite.ClearSSCN;
  end
  else if AToSite.IPVersion = Id_IPv4 then begin
    if ATargetUsesPasv then begin
      AToSite.SendCPassive(LIP, LPort);
      AFromSite.SendPort(LIP, LPort);
    end else begin
      AFromSite.SendCPassive(LIP, LPort);
      AToSite.SendPort(LIP, LPort);
    end;
  end;
  FXPSendFile(AFromSite, AToSite, ASourceFile, ADestFile);
end;

function TIdFTP.InternalUnencryptedFXP(AFromSite, AToSite: TIdFTP;
  const ASourceFile, ADestFile: String; const ATargetUsesPasv : Boolean): Boolean;
{
SiteToSiteUpload

  From:  PASV   To: PORT   - ATargetUsesPasv = False
  From:  RETR   To: STOR

SiteToSiteDownload

  From: PORT    To: PASV   - ATargetUsesPasv = True
  From: RETR    To: STOR
}
begin
  FXPSetTransferPorts(AFromSite, AToSite, ATargetUsesPasv);
  FXPSendFile(AFromSite, AToSite, ASourceFile, ADestFile);
  Result := True;
end;

function TIdFTP.ValidateInternalIsTLSFXP(AFromSite, AToSite: TIdFTP;
  const ATargetUsesPasv : Boolean): Boolean;
{
SiteToSiteUpload

  From:  PASV   To: PORT   - ATargetUsesPasv = False
  From:  RETR   To: STOR

SiteToSiteDownload

  From: PORT    To: PASV   - ATargetUsesPasv = True
  From: RETR    To: STOR

This will raise an exception if FXP can not be done.  Result = True for encrypted
or False for unencrypted.

Note:

The following is required:
   SiteToSiteUpload
     Source must do P
}
begin
  if ATargetUsesPasv then begin
    EIdFTPSToSNATFastTrack.IfTrue(AToSite.UsingNATFastTrack, RSFTPNoSToSWithNATFastTrack);
  end else begin
    EIdFTPSToSNATFastTrack.IfTrue(AFromSite.UsingNATFastTrack, RSFTPNoSToSWithNATFastTrack);
  end;

  EIdFTPStoSIPProtoMustBeSame.IfTrue(AFromSite.IPVersion <> AToSite.IPVersion, RSFTPSToSProtosMustBeSame);
  EIdFTPSToSTransModesMustBeSame.IfTrue(AFromSite.CurrentTransferMode <> AToSite.CurrentTransferMode, RSFTPSToSTransferModesMusbtSame);
  EIdFTPSToSNoDataProtection.IfTrue(AFromSite.FUsingSFTP <> AToSite.FUsingSFTP, RSFTPSToSNoDataProtection);

  Result := AFromSite.FUsingSFTP and AToSite.FUsingSFTP;
  if Result then begin
    if not (AFromSite.IsExtSupported('SSCN') or AToSite.IsExtSupported('SSCN')) then begin {do not localize}
      //Second chance fallback, is CPSV supported on the server where PASV would
      // be sent
      if AToSite.IPVersion = Id_IPv4 then begin
        if ATargetUsesPasv then begin
          EIdFTPSToSNATFastTrack.IfFalse(AToSite.IsExtSupported('CPSV'), RSFTPSToSSSCNNotSupported); {do not localize}
        end else begin
          EIdFTPSToSNATFastTrack.IfFalse(AFromSite.IsExtSupported('CPSV'), RSFTPSToSSSCNNotSupported); {do not localize}
        end;
      end;
    end;
  end;
end;

procedure TIdFTP.FXPSendFile(AFromSite, AToSite: TIdFTP; const ASourceFile, ADestFile: String);
var
  LDestFile : String;
begin
  LDestFile := ADestFile;
  if LDestFile = '' then begin
    LDestFile := ASourceFile;
  end;
  AToSite.IOHandler.WriteLn('STOR ' + LDestFile); {do not localize}
  AFromSite.IOHandler.WriteLn('RETR ' + ASourceFile); {do not localize}
  AToSite.GetResponse([110, 125, 150]);
  AFromSite.GetResponse([110, 125, 150]);
  //AToSite.SendCmd( 'STOR ' + LDestFile,[110, 125, 150] ); {do not localize}
  //AFromSite.SendCmd( 'RETR ' + ASourceFile,[110, 125, 150] ); {do not localize}
  AToSite.GetResponse([225, 226, 250]);
  AFromSite.GetResponse([225, 226, 250]);
end;

procedure TIdFTP.FXPSetTransferPorts(AFromSite, AToSite: TIdFTP; const ATargetUsesPasv: Boolean);
var
  LIP : String;
  LPort : TIdPort;
{
{
SiteToSiteUpload

  From:  PASV   To: PORT   - ATargetUsesPasv = False
  From:  RETR   To: STOR

SiteToSiteDownload

  From: PORT    To: PASV   - ATargetUsesPasv = True
  From: RETR    To: STOR
}
begin
  if ATargetUsesPasv then begin
    if AToSite.UsingExtDataPort then begin
      AToSite.SendEPassive(LIP, LPort);
    end else begin
      AToSite.SendPassive(LIP,LPort);
    end;
    if AFromSite.UsingExtDataPort then begin
      AFromSite.SendEPort(LIP, LPort, IPVersion);
    end else begin
      AFromSite.SendPort(LIP, LPort);
    end;
  end else begin
    if AFromSite.UsingExtDataPort then begin
      AFromSite.SendEPassive(LIP, LPort);
    end else begin
      AFromSite.SendPassive(LIP, LPort);
    end;
    if AToSite.UsingExtDataPort then begin
      AToSite.SendEPort(LIP, LPort, IPVersion);
    end else begin
      AToSite.SendPort(LIP, LPort);
    end;
  end;
end;

{ TIdFTPClientIdentifier }

procedure TIdFTPClientIdentifier.Assign(Source: TPersistent);
begin
  if Source is TIdFTPClientIdentifier then begin
    with Source as TIdFTPClientIdentifier do begin
      Self.ClientName  := ClientName;
      Self.ClientVersion := ClientVersion;
      Self.PlatformDescription := PlatformDescription;
    end;
  end else begin
    inherited Assign(Source);
  end;
end;

//assume syntax such as this:
//214 Syntax: CLNT <sp> <client-name> <sp> <client-version> [<sp> <optional platform info>] (Set client name)
function TIdFTPClientIdentifier.GetClntOutput: String;
begin
  if FClientName <> '' then begin
    Result := FClientName;
    if FClientVersion <> '' then begin
      Result := Result + ' ' + FClientVersion;
      if FPlatformDescription <> '' then begin
        Result := Result + ' ' + FPlatformDescription;
      end;
    end;
  end else begin
    Result := '';
  end;
end;

procedure TIdFTPClientIdentifier.SetClientName(const AValue: String);
begin
  FClientName := Trim(AValue);
  FClientName := Fetch(FClientName);
end;

procedure TIdFTPClientIdentifier.SetClientVersion(const AValue: String);
begin
  FClientVersion := Trim(AValue);
  FClientVersion := Fetch(FClientVersion);
end;

procedure TIdFTPClientIdentifier.SetPlatformDescription(const AValue: String);
begin
  FPlatformDescription := AValue;
end;

{Note about SetTime procedures:

The first syntax is one used by current Serv-U versions and servers that report "MDTM YYYYMMDDHHMMSS[+-TZ];filename " in their FEAT replies is:

1) MDTM [Time in GMT format] Filename

some Bullete Proof FTPD versions, Indy's FTP Server component, and servers reporting "MDTM YYYYMMDDHHMMSS[+-TZ] filename" in their FEAT replies uses an older Syntax which is:

2) MDTM yyyymmddhhmmss[+-minutes from Universal Time] Filename

and then there is the classic

3) MDTM [local timestamp] Filename

So for example, if I was a file dated Jan 3, 5:00:00 pm from my computer in the Eastern Standard Time (-5 hours from Universal Time), the 3 syntaxes
Indy would use are:

Syntax 1:

1) MDTM 0103220000 MyFile.exe �(notice the 22 hour)

Syntax 2:

2) MDTM 0103170000-300 MyFile.exe (notice the 17 hour and the -300 offset)

Syntax 3;

3) MDTM 0103170000 MyFile.exe  (notice the 17 hour)

Note from:
http://www.ftpvoyager.com/releasenotes10x.asp
====
Added support for RFC change and the MDTM. MDTM requires sending the server
GMT (UTC) instead of a "fixed" date and time. FTP Voyager supports this with
Serv-U automatically by checking the Serv-U version number and by checking the
response to the FEAT command for MDTM. Servers returning "MDTM" or
"MDTM YYYYMMDDHHMMSS[+-TZ] filename" will use the old method. Servers
returning "MDTM YYYYMMDDHHMMSS" only will use the new method where the date a
and time is GMT (UTC).
===
}
procedure TIdFTP.SetModTime(const AFileName: String; const ALocalTime: TDateTime);
begin
  //use MFMT instead of MDTM because that always takes the time as Universal
  //time (the most accurate).
  if IsExtSupported('MFMT') then begin {do not localize}
    SendCmd('MFMT ' + FTPLocalDateTimeToMLS(ALocalTime) + ' ' + AFileName, 213); {do not localize}
  end
  
  //Syntax 1 - MDTM [Time in GMT format] Filename
  else if IndexOfFeatLine('MDTM YYYYMMDDHHMMSS[+-TZ];filename') > 0 then begin {do not localize}
    //we use the new method
    SendCmd('MDTM ' + FTPLocalDateTimeToMLS(ALocalTime, False) + ' ' + AFileName, 253); {do not localize}
  end
  
  //Syntax 2 -  MDTM yyyymmddhhmmss[+-minutes from Universal Time] Filename
  //use old method for old versions of Serv-U and BPFTP Server
  else if (IndexOfFeatLine('MDTM YYYYMMDDHHMMSS[+-TZ] filename') > 0) or IsOldServU or IsBPFTP then begin {do not localize}
    SendCmd('MDTM '+ FTPDateTimeToMDTMD(ALocalTime, False, True) + ' ' + AFileName, 253); {do not localize}
  end

  //syntax 3 - MDTM [local timestamp] Filename
  else if FTZInfo.FGMTOffsetAvailable then begin
    //send it relative to the server's time-zone
    SendCmd('MDTM '+ FTPDateTimeToMDTMD(ALocalTime - OffSetFromUTC + FTZInfo.FGMTOffset, False, False) + ' ' + AFileName, 253); {do not localize}
  end
  
  else begin
    SendCmd('MDTM '+ FTPDateTimeToMDTMD(ALocalTime, False, False) + ' ' + AFileName, 253); {do not localize}
  end;
end;

{
Note from:
http://www.ftpvoyager.com/releasenotes10x.asp
====
Added support for RFC change and the MDTM. MDTM requires sending the server
GMT (UTC) instead of a "fixed" date and time. FTP Voyager supports this with
Serv-U automatically by checking the Serv-U version number and by checking the
response to the FEAT command for MDTM. Servers returning "MDTM" or
"MDTM YYYYMMDDHHMMSS[+-TZ] filename" will use the old method. Servers
returning "MDTM YYYYMMDDHHMMSS" only will use the new method where the date a
and time is GMT (UTC).
===
}
procedure TIdFTP.SetModTimeGMT(const AFileName: String; const AGMTTime: TDateTime);
begin
  //use MFMT instead of MDTM because that always takes the time as Universal
  //time (the most accurate).
  if IsExtSupported('MFMT') then begin {do not localize}
    SendCmd('MFMT ' + FTPGMTDateTimeToMLS(AGMTTime) + ' ' + AFileName, 213); {do not localize}
  end
  
  //Syntax 1 - MDTM [Time in GMT format] Filename
  else if (IndexOfFeatLine('MDTM YYYYMMDDHHMMSS[+-TZ];filename') > 0) then begin {do not localize}
    //we use the new method
    SendCmd('MDTM ' + FTPGMTDateTimeToMLS(AGMTTime, False) + ' ' + AFileName, 253); {do not localize}
  end
  
  //Syntax 2 -  MDTM yyyymmddhhmmss[+-minutes from Universal Time] Filename
  //use old method for old versions of Serv-U and BPFTP Server
  else if (IndexOfFeatLine('MDTM YYYYMMDDHHMMSS[+-TZ] filename') > 0) or IsOldServU or IsBPFTP then begin {do not localize}
    SendCmd('MDTM '+ FTPDateTimeToMDTMD(AGMTTime + OffSetFromUTC, False, True) + ' ' + AFileName, 253); {do not localize}
  end
  
  //syntax 3 - MDTM [local timestamp] Filename
  else if FTZInfo.FGMTOffsetAvailable then begin
    //send it relative to the server's time-zone
    SendCmd('MDTM '+ FTPDateTimeToMDTMD(AGMTTime + FTZInfo.FGMTOffset, False, False) + ' ' + AFileName, 253); {do not localize}
  end
  
  else begin
    SendCmd('MDTM '+ FTPDateTimeToMDTMD(AGMTTime + OffSetFromUTC, False, False) + ' ' + AFileName, 253); {do not localize}
  end;
end;

{Improvement from Tobias Giesen http://www.superflexible.com
His notation is below:

"here's a fix for TIdFTP.IndexOfFeatLine. It does not work the
way it is used in TIdFTP.SetModTime, because it only
compares the first word of the FeatLine." }
function TIdFTP.IndexOfFeatLine(const AFeatLine: String): Integer;
var
  LBuf : String;
  LNoSpaces: Boolean;
begin
  LNoSpaces := IndyPos(' ', AFeatLine) = 0;
  for Result := 0 to FCapabilities.Count -1 do begin
    LBuf := TrimLeft(FCapabilities[Result]);
    // RLebeau: why Fetch() if no spaces are present?
    if LNoSpaces then begin
      LBuf := Fetch(LBuf);
    end;
    if TextIsSame(AFeatLine, LBuf) then begin
      Exit;
    end;
  end;
  Result := -1;
end;

{ TIdFTPTZInfo }

procedure TIdFTPTZInfo.Assign(Source: TPersistent);
begin
  if Source is TIdFTPTZInfo then begin
    with Source as TIdFTPTZInfo do begin
      Self.FGMTOffset := GMTOffset;
      Self.FGMTOffsetAvailable := GMTOffsetAvailable;
    end;
  end else begin
    inherited Assign(Source);
  end;
end;

function TIdFTP.IsSiteZONESupported: Boolean;
var
  LFacts : TStrings;
  i : Integer;
begin
  Result := False;
  if IsServerMDTZAndListTForm then begin
    Result := True;
    Exit;
  end;
  LFacts := TStringList.Create;
  try
    ExtractFeatFacts('SITE', LFacts);
    for i := 0 to LFacts.Count-1 do begin
      if TextIsSame(LFacts[i], 'ZONE') then begin {do not localize}
        Result := True;
        Exit;
      end;
    end;
  finally
    FreeAndNil(LFacts);
  end;
end;

procedure TIdFTP.SetTZInfo(const Value: TIdFTPTZInfo);
begin
  FTZInfo.Assign(Value);
end;

function TIdFTP.IsOldServU: Boolean;
begin
  Result := TextStartsWith(FGreeting.Text[0], 'Serv-U ');  {do not localize}
end;

function TIdFTP.IsBPFTP : Boolean;
begin
  Result := TextStartsWith(FGreeting.Text[0], 'BPFTP Server ');  {do not localize}
end;

function TIdFTP.IsTitan : Boolean;
begin
  Result := TextStartsWith(FGreeting.Text[0], 'TitanFTP server ') or {do not localize}
            TextStartsWith(FGreeting.Text[0], 'Titan FTP Server '); {do not localize}
end;

function TIdFTP.IsServerMDTZAndListTForm: Boolean;
begin
  Result := IsOldServU or IsBPFTP or IsTitan;
end;

procedure TIdFTP.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (AComponent = FCompressor) then begin
    FCompressor := nil;
    if Connected then begin
      TransferMode(dmStream);
    end;
  end;
end;

procedure TIdFTP.SendPret(const ACommand: String);
begin
  if IsExtSupported('PRET') then begin {do not localize}
    //note that we don't check for success or failure here
    //as some servers might fail and then succede with the transfer.
    //Pret might not work for some commands.
    SendCmd('PRET ' + ACommand); {do not localize}
  end;
end;

procedure TIdFTP.List;
begin
  List(nil);
end;

procedure TIdFTP.List(const ASpecifier: string; ADetails: Boolean);
begin
  List(nil, ASpecifier, ADetails);
end;

procedure TIdFTP.DoOnBannerAfterLogin(AText: TStrings);
begin
  if Assigned(OnBannerAfterLogin) then begin
    OnBannerAfterLogin(Self, AText.Text);
  end;
end;

procedure TIdFTP.DoOnBannerBeforeLogin(AText: TStrings);
begin
  if Assigned(OnBannerBeforeLogin) then begin
    OnBannerBeforeLogin(Self, AText.Text);
  end;
end;

procedure TIdFTP.DoOnBannerWarning(AText: TStrings);
begin
  if Assigned(OnBannerWarning) then begin
    OnBannerWarning(Self, AText.Text);
  end;
end;

procedure TIdFTP.SetDataPortProtection(AValue: TIdFTPDataPortSecurity);
begin
  if IsLoading then begin
    FDataPortProtection := AValue;
    Exit;
  end;
  if FDataPortProtection <> AValue then begin
    EIdFTPNoDataPortProtectionWOEncryption.IfTrue(FUseTLS=utNoTLSSupport, RSFTPNoDataPortProtectionWOEncryption);
    EIdFTPNoDataPortProtectionAfterCCC.IfTrue(FUsingCCC, RSFTPNoDataPortProtectionAfterCCC);
    FDataPortProtection := AValue;
  end;
end;

procedure TIdFTP.SetAUTHCmd(const AValue : TAuthCmd);
begin
  if IsLoading then begin
    FAUTHCmd := AValue;
    Exit;
  end;
  if FAUTHCmd <> AValue then begin
    EIdFTPNoAUTHWOSSL.IfTrue(FUseTLS = utNoTLSSupport, RSFTPNoAUTHWOSSL);
    EIdFTPCanNotSetAUTHCon.IfTrue(FUsingSFTP, RSFTPNoAUTHCon);
    FAUTHCmd := AValue;
  end;
end;

procedure TIdFTP.SetUseTLS(AValue: TIdUseTLS);
begin
  inherited SetUseTLS(AValue);
  if IsLoading then begin
    Exit;
  end;
  if AValue = utNoTLSSupport then begin
    FDataPortProtection := Id_TIdFTP_DataPortProtection;
    FUseCCC := DEF_Id_FTP_UseCCC;
    FAUTHCmd := DEF_Id_FTP_AUTH_CMD;
  end;
end;

procedure TIdFTP.SetUseCCC(const AValue: Boolean);
begin
  if not IsLoading then begin
    EIdFTPNoCCCWOEncryption.IfTrue(FUseTLS = utNoTLSSupport, RSFTPNoCCCWOEncryption);
  end;
  FUseCCC := AValue;
end;

procedure TIdFTP.DoOnRetrievedDir;
begin
  if Assigned(OnRetrievedDir) then begin
    OnRetrievedDir(Self);
  end;
end;

procedure TIdFTP.DoOnDirParseEnd;
begin
  if Assigned(FOnDirParseStart) then begin
    FOnDirParseStart(Self);
  end;
end;

procedure TIdFTP.DoOnDirParseStart;
begin
  if Assigned(FOnDirParseEnd) then begin
    FOnDirParseEnd(Self);
  end;
end;

//we do this to match some WS-FTP Pro firescripts I saw
function TIdFTP.IsAccountNeeded: Boolean;
begin
  Result := LastCmdResult.NumericCode = 332;
  if not Result then begin
    if IndyPos('ACCOUNT', LastCmdResult.Text.Text) > 0 then begin  {do not localize}
      Result := FAccount <> '';
    end;
  end;
end;

//we can use one of three commands for verifying a file or stream
function TIdFTP.GetSupportsVerification: Boolean;
begin
  Result := Connected;
  if Result then begin
    Result := IsExtSupported('XSHA1') or IsExtSupported('XMD5') or IsExtSupported('XCRC');
  end;
end;

function TIdFTP.VerifyFile(const ALocalFile, ARemoteFile: String; const AStartPoint, AByteCount: Int64): Boolean;
var
  LLocalStream: TStream;
  LRemoteFileName : String;
begin
  LRemoteFileName := ARemoteFile;
  if LRemoteFileName = '' then begin
    LRemoteFileName := ExtractFileName(ALocalFile);
  end;
  LLocalStream := TIdReadFileExclusiveStream.Create(ALocalFile);
  try
    Result := VerifyFile(LLocalStream, LRemoteFileName, AStartPoint, AByteCount);
  finally
    FreeAndNil(LLocalStream);
  end;
end;

{
This procedure can use three possible commands to verify file integriety and the
syntax does very amoung these.  The commands are:

XSHA1 - get SHA1 checksum for a file or file part
XMD5 - get MD5 checksum for a file or file part
XCRC - get CRC32 checksum

The command preference is from first to last (going from longest length to shortest).
}
function TIdFTP.VerifyFile(ALocalFile: TStream; const ARemoteFile: String;
  const AStartPoint, AByteCount: Int64): Boolean;
var
  LRemoteCRC : String;
  LLocalCRC : String;
  LCmd : String;
  LStartPoint : Int64;
  LByteCount : Int64;  //used instead of AByteCount so you we don't exceed the file size
  LHashClass: TIdHashClass;
begin
  LLocalCRC := '';
  LRemoteCRC := '';

  if AStartPoint > -1 then begin
    ALocalFile.Position := AStartPoint;
  end;

  LStartPoint := ALocalFile.Position;
  LByteCount := ALocalFile.Size - LStartPoint;

  if (LByteCount > AByteCount) and (AByteCount > 0) then begin
    LByteCount := AByteCount;
  end;

  if IsExtSupported('XSHA1') then begin
    //XMD5 "filename" startpos endpos
    //I think there's two syntaxes to this:
    //
    //Raiden Syntax if FEAT line contains " XMD5 filename;start;end"
    //
    //or what's used by some other servers if "FEAT line contains XMD5"
    //
    //XCRC "filename" [startpos] [number of bytes to calc]

    if IndexOfFeatLine('XSHA1 filename;start;end') > -1 then begin
      LCmd := 'XSHA1 "' + ARemoteFile + '" ' + IntToStr(LStartPoint) + ' ' + IntToStr(LStartPoint + LByteCount-1);
    end else
    begin
      //BlackMoon FTP Server uses this one.
      LCmd := 'XSHA1 "' + ARemoteFile + '"' + ' ' + IntToStr(LStartPoint);
      if AByteCount > 0 then begin
        LCmd := LCmd + ' ' + IntToStr(LByteCount);
      end;
    end;
    LHashClass := TIdHashSHA1;
  end
  else if IsExtSupported('XMD5') then begin
    //XMD5 "filename" startpos endpos
    //I think there's two syntaxes to this:
    //
    //Raiden Syntax if FEAT line contains " XMD5 filename;start;end"
    //
    //or what's used by some other servers if "FEAT line contains XMD5"
    //
    //XCRC "filename" [startpos] [number of bytes to calc]

    if IndexOfFeatLine('XMD5 filename;start;end') > -1 then begin
      LCmd := 'XMD5 "' + ARemoteFile + '" ' + IntToStr(LStartPoint) + ' ' + IntToStr(LStartPoint + LByteCount-1);
    end else
    begin
      //BlackMoon FTP Server uses this one.
      LCmd := 'XMD5 "' + ARemoteFile + '"';
      if AByteCount > 0 then begin
        LCmd := LCmd + ' ' + IntToStr(LStartPoint) + ' ' + IntToStr(LByteCount);
      end
      else if AStartPoint > 0 then begin
        LCmd := LCmd + ' ' + IntToStr(LStartPoint);
      end;
    end;
    LHashClass := TIdHashMessageDigest5;
  end else
  begin
    LCmd := 'XCRC "' + ARemoteFile + '"';
    if AByteCount > 0 then begin
      LCmd := LCmd + ' ' + IntToStr(LStartPoint) + ' ' + IntToStr(LByteCount);
    end
    else if AStartPoint > 0 then begin
      LCmd := LCmd + ' ' + IntToStr(LStartPoint);
    end;
    LHashClass := TIdHashCRC32;
  end;

  with LHashClass.Create do
  try
    LLocalCRC := HashStreamAsHex(ALocalFile, LStartPoint, LByteCount);
  finally
    Free;
  end;

  if SendCMD(LCMD) = 250 then begin
    LRemoteCRC := Trim(LastCmdResult.Text.Text);
    IdDelete(LRemoteCRC, 1, IndyPos(' ', LRemoteCRC)); // delete the response
  end;

  Result := TextIsSame(LLocalCRC, LRemoteCRC);
end;

end.


