@echo off
:: Gustavo Arnosti Neves - Jan 2018
:: https://github.com/tavinus/dirf-javaloader
:: Use o instalador em: https://raw.githubusercontent.com/tavinus/dirf-javaloader/master/dirf2018-javaloader-install.bat

:: Se voce instalou o Dirf2018 em uma pasta diferente, mude aqui!
set DIRFFOLDER=C:\Arquivos de Programas RFB\Dirf2018


:: Se nao encontrou a instalacao do Dirf2018, aborte!
if not exist "%DIRFFOLDER%" goto NOTFOUND


:: Criar o loader Dirf.bat
set BATFILE="%DIRFFOLDER%\Dirf2018.bat"
if exist %BATFILE% del %BATFILE%

echo @ECHO OFF >> %BATFILE%
echo :: Dirf2018 Java Loader - https://github.com/tavinus/dirf-javaloader >> %BATFILE%
echo :: Use o instalador em: https://raw.githubusercontent.com/tavinus/dirf-javaloader/master/dirf2018-javaloader-install.bat  >> %BATFILE%
echo set PATH=%DIRFFOLDER%\clientfirebird;%%PATH%% >> %BATFILE%
echo set FIREBIRD=%DIRFFOLDER%\clientfirebird >> %BATFILE%
echo start /d "%DIRFFOLDER%" "" "javaw" -jar pgdDirf.jar -classpath "%DIRFFOLDER%\lib" >> %BATFILE%


:: Criar o Atalho Dirf2018-java no Desktop
set SHORTCUTFILE="%USERPROFILE%\Desktop\Dirf2018-java.lnk"
if exist %SHORTCUTFILE% del %SHORTCUTFILE%

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = %SHORTCUTFILE% >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.WindowStyle = 7 >> %SCRIPT%
echo oLink.IconLocation = "%DIRFFOLDER%\RFB.ico" >> %SCRIPT%
echo oLink.TargetPath = "%DIRFFOLDER%\Dirf2018.bat" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%

echo Tudo Feito!
echo Tente rodar o atalho Dirf-java no seu Desktop!
pause
exit 0


:NOTFOUND
echo A pasta do Dirf2018 nao existe!
echo "%DIRFFOLDER%"
pause
exit 2
