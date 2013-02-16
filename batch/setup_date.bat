echo on
@REM Seamonkey’s quick date batch (MMDDYYYY format)
@REM Setups %date variable
@REM First parses month, day, and year into mm , dd, yyyy formats and then combines to be MMDDYYYY

FOR /F "TOKENS=1* DELIMS= " %%A IN ('DATE/T') DO SET CDATE=%%A
FOR /F "TOKENS=1,2 eol=/ DELIMS=. " %%A IN ('echo %CDATE%') DO SET mm=%%B
FOR /F "TOKENS=1,2 DELIMS=. eol=/" %%A IN ('echo %CDATE%') DO SET dd=%%B
FOR /F "TOKENS=2,3 DELIMS=. " %%A IN ('echo %CDATE%') DO SET yyyy=%%B
SET date=%yyyy%%mm%%dd%