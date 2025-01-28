       ================================================================
       The Motorola -- MaxTracùLS LTR Trunking -- Radio Service Software,
       RVN-4139, has been updated as follows;

       Part #......................... RVN-4139-B
            includes 3.5" installation diskette
            RSS User's Manual #....... 68P8-1078C79    

       Software Version............... R02.03.00
       Software Date.................. 27-MAR-96

       ================================================================

       INSTALLATION:
       Motorola -- MaxTracùLS LTRrunking -- Mobile
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
  1. - !! IMPORTANT !!  Please READ -PRIOR- to installing/using this RSS.
       ==================================================================

       DIFFERENCE FROM R01.00.00 !!!
       -----------------------------

       The SITE FILE Mechanism within the RSS has had the following changes,
       from Release R01.00.00;

       a) The FILE FORMAT has changed.  Your current SITE FILES need to be
       converted to the NEW format via the SITETOOL.EXE utility, included in
       this installation package.  Please see SITETOOL.DOC.

       b) The Site File DataBase file, MAXT_LSI.DBF, is NO LONGER USED to
       store information about your Site Files.  Information such as NUMBER,
       VERSION, DATE and DESCRIPTION are now stored within each Site File.

       c) The removal of REFRESH ARCHIVE / BACKUP Site Files, on the
       (F6)/(F3)/(F3) Site File Maintainance Menu.  Now can be done
       under DOS.  May be restored in future release, if utilities needed.

       d) The SITE FILE EDIT/VIEW Screen now shows the FCC CHANNEL NUMBERS
       and OFFSETS per each frequency with the Radio's range/band.

   You are STRONGLY ADVISED to perform the following steps PRIOR TO
   installation of this RSS Version;

       a) With your CURRENT RSS, use the (F6)/(F3)/(F3) Site File
       Maintainance function (F3) GET Site Files, to view/list SITE #, SITE
       NAME, DATE and DOS FILE-NAME information, for your use during the
       Site File Conversion process.  Using (F5) Print Screen to
       record each Site File is advised.

       b) Perform COMPLETE DOS BACKUP of ALL FILES in the -SITE- and -BACKUP-
       Directories, including the MAXT_LSI.DBF files.

       c) Read SITETOOL.DOC; Copy SITETOOL.EXE to your SITE Directory;
       Use SITETOOL to convert all current Site Files to the new format.

       FILES MUST BE RENAMED;  They CANNOT be copied onto themselves.
       The NEW format includes both Site File NUMBER and VERSION fields
       that can be incorporated into a DOS file-name convention of your
       choice, to aid in Site data management.  The default convention for
       newly-created files is "SITE_num.ver", where "num" and "ver"
       can be numeric values between 1 and 255.  The "ver" field is
       intended for subsets of a SITE's data to be selectively distributed
       or programmed, such as telephone-interconnect repeaters.

  2. - The SITE Sub-Directory is now the DEFAULT storage for SITE FILES.

  3. - !! IMPORTANT !!  The STACK size of this RSS has been increased,
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
       the amount of conventional memory available by approximately 4 Kb. The
       number of stacks (9) can be increased to max. 64, if problems persist.

  4. - The RSS CodePlug ARCHIVE and SITE File -BACKUP- default is now
       [path] Sub-Directory        [C:\MRSS\MAXLS\] BACKUP.
       For FLOPPY diskette backup, Please see Item 5-(B) below.

  5. - The A:\INSTALL.EXE now installs RSS as follows;

       (A) Defaults installation to Hard Drive C:\MRSS\MAXTRAC; you can
       change default drive and/or the sub-directory.

       (B) Creates sub-directory "C:\MRSS\MAXLS\BACKUP".  To backup
       on floppy diskettes, use MAIN MENU "F9 - SETUP" and "F3 - PC CONFIG"
       and enter "drive_letter:" (e.g. "A:") in the Backup field.  If
       you wish this to be the default setup, use "F8 - SAVE" to save the
       Configuration File.  Also, temporary setting can be done via the
       "F2 - CHANGE ARCHIVE" function on LOAD/SAVE sub-menus.

  6. - If you are replacing RSS HVN-9645 (Radius/M500 LTR Trunking)
       with this RSS, Please Read Appendix (-A-), below.

  7. - The INSTALLATION DISKETTE for this RSS has all files marked "Read Only"
       via the DOS command "attrib +r *.*".  It is recommended that the user
       never execute the RSS from this original diskette.  If a DOS "diskcopy"
       of the original is made, the attribute bits are also copied.  On the
       COPY, the following files should be unlocked via the DOS command
       "attrib -r <file>", before execution;
                           MAXT_LS.CFG

  8. - Corrected RSS handling of CTRL-BRK and CTRL-C; Execution of RSS is no
       longer stopped by these keystrokes.

  9. - Communications Port (COM1 - COM2) IC (UART) now completely
       initialized upon startup.  Prevents interference from prior
       applications when communicating with Radio via the RIB.

 10. - Update to interface more reliably with the Radio on faster 386/486
       machines.  This version has Radio Bus Timing controlled by PC Timer IC,
       and Relaxed Bus Timing parameters.

 11. - This RSS now has no EXTERNAL OVERLAY (*.OVL) files.  This allows
       slightly faster loading and execution, and reduces execution memory
       requirements.  The RSS executable file (*.EXE) MUST be run from the
       working directory/disk, so that INTERNAL OVERLAYS can be found.
       
       To minimize hard disk space usage, use DOS command "DEL *.OVL" to delete
       the old overlay files in the installation Directory.

 12. - Warning message text now contained in new file ERRORS.DAT.

 13. - Corrected problems with HELP screen printing; 1st line of
       successive screens (after 1st) no longer blanked.

 14. - Corrected problem with entry of QCII-ID on CALL LIST.  Also,
       changed RANGE of QCII ID to 288.5 - 3100 Hz.

 15. - Changed Conventional MODE screen field (and HELP) "BUSY CHANNEL LOCKOUT"
       -to- "TX INHIBIT ON WRONG PL".  Label only change, all logic same.

 16. - This RSS executes under DOS, in CONVENTIONAL memory (1st 640 KB memory).
       After INITIAL execution, conventional memory is dynamically allocated
       for data/file functions ( e.g. more files = more memory required ),
       and if the RSS cannot allocate enough conventional memory, an error
       message is given. Make more CONVENTIONAL memory available by using DOS
       "HIMEM.SYS" and "DOS=HIGH", and using DOS 5x/6x "MEM /C" to list memory
       allocations from CONFIG.SYS and AUTOEXEC.BAT, removing any unnecessary
       items from those files.

 17. - Certain OTHER Motorola RSS Products have recommended inserting
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
       exact amount will differ from RSS to RSS, please consult the RSS
       Users Guide.  Please consult DOS 'help emm386.exe' for information".

 18. - The "noems" argument to EMM386 can prevent THIS RSS from executing
       properly.

       EMM386 can be used to free some CONVENTIONAL memory by allowing other
       drivers to be loaded into UPPER memory.  You can use the "ram" -or-
       "noems" switch to access UPPER memory.  Using the EMM386 "ram" switch
       to allocate the smallest-possible amount of EXPANDED memory (instead
       of using "noems") will allow THIS RSS to execute, when EMM386 is used
       only to load other drivers into UPPER memory.  Please consult DOS
       'help emm386.exe' for information.

 19. - ADDED Function "(F5/F8) PRINT Codeplug IMAGE Alignment Summary". 
       Allows printing alignment data from RSS Codeplug IMAGE after the
       READ RADIO -or- GET CODEPLUG FILE operations.

 20. - Changed PRINT SITE BLOCK SUMMARY (F5/F3/F3) to include FCC
       Channel Numbers and Offsets.

 21. - CAUTION !! Attempting to use an un-formatted FLOPPY DISKETTE
       for archiving codeplugs will result in a fatal (RSS) error #31.
       See file DOS_INFO.DOC for using floppy diskettes for archiving.

 NOTE: This RSS is NO LONGER PACKAGED on 5.25" floppy diskettes.
       (C) Copyright MOTOROLA Inc. 1986, 1996.  All Rights Reserved.

   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
   Appendix (-A-);  -  Converting From RSS HVN-9645 (Radius/M500 LTR Trunking)

   You are strongly advised to perform a complete PC-DOS backup (via DOS "COPY"
   or "XCOPY" command) of ALL files in the following sub-directories, to a
   floppy diskette, BEFORE performing the below installation;

       (Drive:)\MRSS\RADMTRNK
       (Drive:)\MRSS\RADMTRNK\ARCHIVE
       (Drive:)\MRSS\RADMTRNK\BACKUP

   One major difference between HVN-9645 and this RSS package is the
   SITE FILE data format (please see item (1) above).

   Another major difference between HVN-9645 and this RSS package is the
   default PATH and FILE names under the PC-DOS Operating System.  This RSS
   creates the following DEFAULT paths for normal installation:

       (Drive:)\MRSS\MAXLS         -   Main Executable/Utility Files
       (Drive:)\MRSS\MAXLS\ARCHIVE -   CODEPLUG and ARCHIVE DATABASE Files.
       (Drive:)\MRSS\MAXLS\SITE    -   SITE and ARCHIVE DATABASE Files.
       (Drive:)\MRSS\MAXLS\BACKUP  -   Default Backup Sub-Directory For -Both-
                                       CODEPLUG and SITE Files/DataBases.

   Normal installation will create all four sub-directories, and copy the Main
   Executable and Utility files from the Installation diskette.  You will need
   to copy your existing CODEPLUG, SITE and ARCHIVE DATABASE files to the new
   sub-directories, and RE-NAME the ARCHIVE DATABASE FILES.

   STEP                        ACTION / DOS COMMANDS
   ----                        ---------------------
   1) Install this RSS;        Insert Diskette in Floppy Drive (A: or B:).
                               Type "(A: or B:)", Then "HDINSTAL (C: or D:)".

   2) Go To CODEPLUG Archive;  Type "(C: or D:)", Then "CD \MRSS\MAXLS\ARCHIVE".

   3) Copy CODEPLUG FILES;     "COPY  \MRSS\RADMTRNK\ARCHIVE\A*.*".
                               "COPY  \MRSS\RADMTRNK\ARCHIVE\B*.*".

   4) Copy ARCHIVE DATABASE    "COPY  \MRSS\RADMTRNK\ARCHIVE\RADMTRNK.DBF".

   5) ReName ARCHIVE DATABASE  "REN  *.DBF  MAXT_LS.DBF".

   6) Go To SITE FILE Archive  "CD  ..\SITE".        

   7) Copy SITE FILES;         "COPY  \MRSS\RADMTRNK\ARCHIVE\SITE*.*"

   8) Copy ARCHIVE DATABASE    "COPY  \MRSS\RADMTRNK\ARCHIVE\RADMSITE.DBF".

   9) ReName ARCHIVE DATABASE  "REN  *.DBF  MAXT_LSI.DBF".


   At this point, if you wish to restore backup codeplug/site/database files
   from a floppy diskette, you can;

   10) Go To BACKUP Sub-Dir.;  "CD  ..\BACKUP".

   11) Copy backup files;      "COPY  (A: or B:)*.*".

   12) ReName ARCHIVE DATABASE  "REN  RADMTRNK.DBF  MAXT_LS.DBF".

   You now must use the SITETOOL.EXE utility to convert Old-format
   Site Files to a NEW Format (See -above- and SITETOOL.DOC).
