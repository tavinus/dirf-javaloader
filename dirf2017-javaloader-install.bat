@echo off
:: Gustavo Arnosti Neves - Fev 2017
:: https://github.com/tavinus
:: https://gist.github.com/tavinus/812db2dbf9c22908ebc3c0a37f87e818


:: Se voce instalou o Dirf2017 em uma pasta diferente, mude aqui!
set DIRFFOLDER=C:\Arquivos de Programas RFB\Dirf2017


:: Se nao encontrou a instalacao do Dirf2017, aborte!
if not exist "%DIRFFOLDER%" goto NOTFOUND


:: Criar o loader Dirf.bat
set BATFILE="%DIRFFOLDER%\Dirf2017.bat"
if exist %BATFILE% del %BATFILE%

echo @ECHO OFF >> %BATFILE%
echo :: Dirf2017 Java Loader - https://gist.github.com/tavinus/3f2a485434b755d6569976215d3f4ea0 >> %BATFILE%
echo :: Use o instalador em: https://gist.github.com/tavinus/812db2dbf9c22908ebc3c0a37f87e818 >> %BATFILE%
echo set PATH=%DIRFFOLDER%\clientfirebird;%%PATH%% >> %BATFILE%
echo start /d "%DIRFFOLDER%" "" "javaw" -jar pgdDirf.jar -classpath "%DIRFFOLDER%\lib" >> %BATFILE%


:: Criar o Atalho Dirf2017-java no Desktop
set SHORTCUTFILE="%USERPROFILE%\Desktop\Dirf2017-java.lnk"
if exist %SHORTCUTFILE% del %SHORTCUTFILE%

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = %SHORTCUTFILE% >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.WindowStyle = 7 >> %SCRIPT%
echo oLink.IconLocation = "%DIRFFOLDER%\RFB.ico" >> %SCRIPT%
echo oLink.TargetPath = "%DIRFFOLDER%\Dirf2017.bat" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%

echo Tudo Feito!
echo Tente rodar o atalho Dirf-java no seu Desktop!
pause
exit 0


:NOTFOUND
echo A pasta do Dirf2017 nao existe!
echo "%DIRFFOLDER%"
pause
exit 2
