//DDS0001L JOB ,
// MSGCLASS=H,MSGLEVEL=(1,1),TIME=(1,1),REGION=0M,COND=(16,LT)
//TRTMNT EXEC PGM=IKJEFT01,DYNAMNBR=20
//STEPLIB    DD DSN=DBB.USER.LOAD,DISP=SHR
//         DD   DISP=SHR,DSN=EQAE10.V14R1M5.SEQAMOD
//         DD   DISP=SHR,DSN=CEE.SCEERUN
//         DD   DISP=SHR,DSN=CEE.SCEERUN2
//****************************************************************
//* DEBUG AND CODE COVERAGE USING DBMDT%lOGON_ID
//****************************************************************
//*CEEOPTS  DD *
//*  TEST(,,,DBMDT%IBMUSER:*)
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//********** Input/Output files
//*AQEV4LST  DD DSN=DDS0001.TEST.LISTING,DISP=SHR
//TRMTDATA  DD DSN=DDS0001.TRMTDATA,DISP=SHR
//TRMTEDIT  DD DSN=DDS0001.TRMTEDIT,DISP=SHR
//TRMTERR   DD DSN=DDS0001.TRMEDERR,DISP=SHR
//SYSTSPRT  DD SYSOUT=*
//PATMSTR   DD DSN=IBMUSER.PATMASTR,DISP=SHR
//*SYSDEBUG   DD DSN=DDS0001.TEST.SYSDEBUG,DISP=SHR
//*   -----------------------------------------
//IDIOPTS  DD *
 INCLUDE,MAXMINIDUMPPAGES(1000)
 NODUP(NORMAL(0))
/*
//IDILCOB  DD DSN=DDS0001.TEST.LISTOUT,DISP=SHR
//IDISYSDB DD DSN=DDS0001.TEST.SYSDEBUG,DISP=SHR
//IDITRACE DD SYSOUT=*
//SYSTSIN   DD *
  TSOLIB ACTIVATE DA('DSNB10.SDSNLOAD')
  DSN SYSTEM(DBBG)
  RUN PROGRAM(TRTMNTR) PLAN(TRTMNTR) -
  LIB('DBB.USER.LOAD')
END
/*
//
