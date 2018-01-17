@ECHO OFF
:: Dirf2017 Java Loader - https://gist.github.com/tavinus/3f2a485434b755d6569976215d3f4ea0
:: Use o instalador em: https://gist.github.com/tavinus/812db2dbf9c22908ebc3c0a37f87e818
set PATH=C:\Arquivos de Programas RFB\Dirf2017\clientfirebird;%PATH%
start /d "C:\Arquivos de Programas RFB\Dirf2017" "" "javaw" -jar pgdDirf.jar -classpath "C:\Arquivos de Programas RFB\Dirf2017\lib"
