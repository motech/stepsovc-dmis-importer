:BEGIN
CLS
@Echo off
echo *** Backing up production database ***

sqlcmd -b -d STEPS_OVC_CHONGWE -C -U steps_user -P !ABCD1234 -S ISNODE02\SQLExpress -Q " BACKUP DATABASE STEPS_OVC_CHONGWE TO DISK='E:\Steps_ovc\bkup\steps_ovc_chongwe.bak'WITH FORMAT"
IF %ERRORLEVEL% NEQ 0 goto :ERROR1
echo ***Backup Complete***


echo *** Generating referral insert scripts from csv ***

java -jar e:\Steps_ovc\stepsovc-dmis-importer-1.0.jar e:\Steps_ovc\referral.csv e:\Steps_ovc\insertscripts.sql

IF %ERRORLEVEL% NEQ 0 goto :ERROR2
echo ***Insert scripts generated at e:\Steps_ovc\insertscripts.sql***

echo *** Inserting referrals to sqlserver ***

sqlcmd -S ISNODE02\SQLEXPRESS -d STEPS_OVC_CHONGWE -U steps_user -P !ABCD1234 -i e:\Steps_ovc\insertscripts.sql
IF %ERRORLEVEL% NEQ 0 goto :ERROR3

echo *** Process completed ***
EXIT /B 1
:END

:ERROR1
ECHO --Error  occured while  backing up  Production database--
EXIT /B 1


:ERROR2
ECHO --Error  occured while  generating sql scripts--
EXIT /B 1


:ERROR3
ECHO --Error  occured while  inserting referral data to Production database--
EXIT /B 1
