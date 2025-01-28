       ================================================================

       The Motorola - MaxTrac CONVENTIONAL - Radio Service Software
       (RSS) product, RVN-4019, has been updated as follows;

       Part #......................... RVN-4019-J
            includes 3.5" installation diskette
            RSS User's Manual #....... 68P8-0900Z03-H

       Software Version............... R06.01.00
       Software Date.................. 21-DEC-95

       ================================================================
       INSTALLATION:
       Motorola MaxTrac Conventional Mobile
       Radio Service Software (RSS):

       Insert the Installation Diskette into the A: -or- B: diskette
       drive, then Enter A: -or- B: at the DOS command prompt, to change
       to that drive as the "current working" drive.  Then Enter "INSTALL".
       Select the proper Disk Drive and SubDirectory for installation.

       Because the new installation process allows a much wider choice of
       install "PATHS" (including other floppy diskette drives), the
       installation no longer installs a "batch" file in the drive's "root"
       directory with the same base name as the RSS, which contains the DOS
       command(s) to "CD" to the RSS WORKING SubDirectory, and execute the
       RSS program.

       You cannot place the RSS SubDirectory in your DOS "PATH".  YOU MUST
       BE IN the RSS WORKING SubDirectory to properly execute the RSS.  The
       "CD" command can be put into a batch file with the same BASE name as
       the RSS executable, and the file placed in a SubDir. which is already
       within your DOS "PATH" parameter.  There may be such a file, already
       existing, in your C:\ "root" directory, if you have previously
       installed this RSS.
       ================================================================

  1. - The RSS CodePlug Archive -BACKUP- default is now changed to path
       [C:\MRSS\MAXTRAC\]BACKUP.  This default can be changed:  For FLOPPY
       backup, Please see Item 4-(B) below.

  2. - !! IMPORTANT !!  The STACK size of this RSS has been increased,
       to enhance stability in a normal DOS environment (this does NOT affect
       execution memory requirements).

       If your environment includes elements which create abnormal
       quantities of hardware/software interrupts, then we STRONGLY
       recommend the following statement be inserted into your CONFIG.SYS
       file (DOS 3.2, 3.3, 4.x, 5.x, 6.x):

                          STACKS=9,512

       This tells DOS to furnish stack space to hardware interrupts which
       occur during RSS execution, thereby reducing the RSS stack loading, and
       avoiding errant DOS/application behaviours.  This statement MAY reduce
       the amount of CONVENTIONAL memory available by approximately 4 Kb. The
       number of stacks (9) can be increased to max. 64, if problems persist.

  3. - This RSS now has no EXTERNAL OVERLAY (*.OVL) files.  This allows
       slightly faster loading and execution, and reduces execution memory
       requirements.  The RSS executable file (*.EXE) MUST be run from the
       working Directory/Disk, so that INTERNAL OVERLAYS can be found.
       
       To minimize hard disk space usage, use DOS command "DEL *.OVL" to delete
       the old overlay files in the installation Directory.

  4. - The Install batch file, A:HDINSTAL.BAT;

       (A) Defaults installation to Hard Drive C:\MRSS\MAXTRAC; you can
       edit HDINSTAL.BAT to change default drive and/or the sub-directory.

       (B) now creates sub-directory "C:\MRSS\MAXTRAC\BACKUP".  To backup
       on floppy diskettes, use MAIN MENU "F9 - SETUP" and "F3 - PC CONFIG"
       and enter "drive_letter:" (e.g. "A:") in the Backup field.  If
       you wish this to be the default setup, use "F8 - SAVE" to save the
       Configuration File.  Also, temporary setting can be done via the
       "F2 - CHANGE ARCHIVE" function on LOAD/SAVE sub-menus. Please see
       Manual APPENDIX G for more information and examples.

  5. - This RSS executes under DOS, in CONVENTIONAL memory (1st 640 KB memory).
       After INITIAL execution, CONVENTIONAL memory is dynamically allocated
       for data/file functions ( e.g. more files = more memory required ),
       and if the RSS cannot allocate enough conventional memory, an error
       message is given. Make more CONVENTIONAL memory available by using DOS
       "HIMEM.SYS" and "DOS=HIGH", and using DOS 5x/6x "MEM /C" to list memory
       allocations from CONFIG.SYS and AUTOEXEC.BAT, removing any unnecessary
       items from those files.

  6. - Certain OTHER Motorola RSS Products have recommended inserting
       a statement into your DOS CONFIG.SYS file, loading EMM386.EXE via a
       "DEVICE=" statement, implying that the RSS requires EXPANDED memory.

       Motorola RSS programs that require EXTENDED memory (as well as
       Windows and Windows applications) require as much -free- EXTENDED
       memory as possible, and DO NOT REQUIRE the EMM386 driver to be loaded
       at all.  Only certain (older) applications require EXPANDED memory.
       EMM386 can also be used to free some CONVENTIONAL memory by allowing
       other drivers to be loaded into UPPER memory.

       The instructions for RSS requiring EXTENDED memory should be modified
       to read:

       "This RSS does NOT require EMM386.exe.  IF you NEED to use EXPANDED
       memory, via EMM386, please ensure that enough EXTENDED memory is left
       -free- for any RSS requiring EXTENDED memory to properly execute. The
       exact amount will differ from RSS to RSS, please consult the RSS Users
       Guide. Please consult DOS 'help emm386.exe' for further information. 

  7. - The "noems" argument to EMM386 can prevent THIS RSS from executing
       properly.

       EMM386 can be used to free some CONVENTIONAL memory by allowing other
       drivers to be loaded into UPPER memory.  You can use the "ram" -or-
       "noems" switch to access UPPER memory.  Using the EMM386 "ram" switch
       to allocate the smallest-possible amount of EXPANDED memory (instead
       of using "noems") will allow THIS RSS to execute, when EMM386 is used
       only to load other drivers into UPPER memory.  For example;

                   DEVICE=C:\DOS\EMM386.EXE   RAM   64

       Please consult DOS 'help emm386.exe' for further information. 

  8. - This Version now has a NEW FUNCTION on the "FILE MAINTAINANCE"
       (F6) MENU; The "(RE)FORM ARCHIVE FILE" (F3) Screen allows you to
       (re)form an Archive DataBase File ('MAXTRACM.DBF') in ANY directory
       containing valid CodePlug files which have the proto-name 'Aserial.num'.
       Up to 500 CodePlug files will be cataloged and made accessable.  This
       allows CodePlug files to be sorted / organized into several different
       Working Directories, and enables recovery from corrupted / lost DataBase
       Files.

         !!! WARNING !!!  Any prior version of MAXTRACM.DBF in that Directory
       is NOT read during this process, and will be overwritten by the new
       catalog.  If a prior MAXTRACM.DBF exists and has valid entries, you
       are -STRONGLY ADVISED- to do a COMPLETE -DOS- BACKUP of ALL files in
       that Directory before reforming the Archive DataBase, because all
       prior catalog entries will be LOST.  Listing the prior Archive (see
       below) BEFORE reforming is also advisable.

       This function correctly (re-)catalogs only those CodePlug files which
       are valid, and conform to the proto-name 'Aserial.num', where
       'serial.num' MATCHES the CodePlug serial number.  If a CodePlug file
       is re-named to 'Asumthin.els', an entry was made in the Archive File
       with the file-name 'Aserial.num'; attempting to read this serial
       number from the Archive will result in a "file not found" message.

       Information from prior Archive entries which cannot be recovered
       include the "Date" field (Date of last Archiving, left blank), and
       the "Customer" field (re-cataloged as "Archive Reform").  These
       fields can be filled upon subsequent examination of each CodePlug
       file.  An aid to this process would be the listing(s) from prior
       Archive(s) produced via the "(F5) Print Archive" function on the
       "GET/SAVE : GET FILE" screen.

  9. - Warning message text now contained in new file ERRORS.DAT.

 10. - Communications Port (COM1 - COM2) IC (UART) now completely
       initialized upon startup.  Prevents interference from prior
       applications when communicating with Radio via the RIB.

 11. - Update to interface more reliably with the Radio on faster 386/486
       machines.  This version has Radio Bus Timing controlled by PC Timer IC,
       and Relaxed Bus Timing parameters.

 12. - MAIN Menu PRINT (F5) functions (Codeplug data) now print
       -NO- footer, and use FormFeed to next page, to save paper.

 13. - Print Screen (F5) library function (data and help screens) now prints
       -NO- footer, and uses FormFeed to next page, to save paper.

 14. - Corrected problem with MODE UTILITY; field / option "Copy
       Scan List" now editable; also, Mode Name now copied correctly.

 15. - Corrected Problem with GEStar ID when Emergency Signalling
       enabled; some IDs gave ERROR 92 when saving CodePlug.

 16. - Corrected problems with HELP screen printing; 1st line of
       successive screens (after 1st) no longer blanked.

 17. - Corrected problems with "F1 - MORE Help"; Now displays menu-level
       help screen, if available, when requested from field-level help.

 18. - Corrected problems with Call List delete/display entry functions.

 19. - RSS now opens file MAXTRAC.MDF as READ-ONLY, to prevent file loss.
       Function "(F4) - UPDATE Model Def. File" removed from SERVICE menu.

 20. - Corrected RSS handling of CTRL-BRK and CTRL-C; Execution of RSS is no
       longer stopped by these keystrokes.

 21. - The Main Menu EXIT TO DOS changed from (F10) to (F2).

 22. - CAUTION !! Attempting to use an un-formatted FLOPPY DISKETTE
       for archiving codeplugs will result in a fatal (RSS) error #31.

 NOTE: This RSS is NO LONGER PACKAGED on 5.25" floppy diskettes.
       (C) Copyright MOTOROLA Inc. 1986, 1995.  All Rights Reserved.
