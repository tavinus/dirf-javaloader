@ECHO OFF
:: https://github.com/tavinus/dirf-javaloader
:: Use o instalador em: https://github.com/tavinus/dirf-javaloader/dirf2018-javaloader-install.bat

set PATH=C:\Arquivos de Programas RFB\Dirf2018\clientfirebird;%PATH%
start /d "C:\Arquivos de Programas RFB\Dirf2018" "" "javaw" -jar pgdDirf.jar -classpath "C:\Arquivos de Programas RFB\Dirf2018\lib"
