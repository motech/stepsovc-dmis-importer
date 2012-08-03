:BEGIN

CLS

@Echo off


echo *** Backing up production database ***




sqlcmd -b -d STEPS_OVC -C -E -S JEANKACHAKA-PC\FGG  -Q "BACKUP DATABASE STEPS_OVC TO DISK='C:\MHealth-STEPSOVC\Backup\STEPS_OVC.bak'WITH FORMAT"

IF %ERRORLEVEL% NEQ 0 goto :ERROR1

echo ***Backup Complete***







echo *** Generating referral insert scripts from csv ***




java -jar C:\MHealth-STEPSOVC\stepsovc-dmis-importer.jar C:\MHealth-STEPSOVC\Referrals\referrals.csv C:\MHealth-STEPSOVC\insertscripts.sql

IF %ERRORLEVEL% NEQ 0 goto :ERROR2

echo ***Insert scripts generated at C:\MHealth-STEPSOVC\insertscripts.sql***




echo *** Inserting referrals to sqlserver ***




sqlcmd -S JEANKACHAKA-PC\FGG -d STEPS_OVC -E  -i C:\MHealth-STEPSOVC\insertscripts.sql

IF %ERRORLEVEL% NEQ 0 goto :ERROR3

IF Exist "C:\MHealth-STEPSOVC\insertscripts.sql" del "C:\MHealth-STEPSOVC\insertscripts.sql"

echo *** Process completed  Successfully***
PAUSE
EXIT /B 1

:END




:ERROR1
ECHO --Error  occured while  backing up  Production database--
PAUSE
EXIT /B %ERRORLEVEL%

:ERROR2
ECHO --Error  occured while  generating sql scripts--
PAUSE
EXIT /B %ERRORLEVEL%


:ERROR3
ECHO --Error  occured while  inserting referral data to Production database--
PAUSE
EXIT /B %ERRORLEVEL%