ECHO OFF
:STARTS
MODE con: COLS=80 LINES=50
TITLE OTAKU MINECRAFT ����������
CLS
ECHO.
ECHO      welcome to otaku minecraft ������
ECHO      ��һ��ʹ�ã�ִ��help��������ȡ������Ҳ�����ҵ�help�ļ������в鿴
ECHO.
:CHO
set choice=
set /p choice= OTAKU:
if /i "%choice%"=="help" goto helpa
if /i "%choice%"=="load" goto loada

ECHO.ERROR_command_not_found
timeout /t 3
GOTO STARTS

:helpa
ECHO running......
start C:\Users\Administrator\Desktop\project-otaku\help\help.txt
pause>nul
GOTO STARTS

:loada
dir D:\.minecraft\versions
ECHO �������ض��汾����
set /p ver=load:
if /i "%ver%"=="1.18.2-Fabric 0.14.9-OptiFine_HI_dev" goto seta

:seta
start C:\Users\Administrator\Desktop\project-otaku\boot\latestlaunch.bat