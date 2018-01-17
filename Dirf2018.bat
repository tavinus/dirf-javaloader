@ECHO OFF
:: https://github.com/tavinus/dirf-javaloader
:: Use o instalador em: https://raw.githubusercontent.com/tavinus/dirf-javaloader/master/dirf2018-javaloader-install.bat

set PATH=C:\Arquivos de Programas RFB\Dirf2018\clientfirebird;%PATH%
set FIREBIRD=C:\Arquivos de Programas RFB\Dirf2018\clientfirebird
start /d "C:\Arquivos de Programas RFB\Dirf2018" "" "javaw" -jar pgdDirf.jar -classpath "C:\Arquivos de Programas RFB\Dirf2018\lib"
