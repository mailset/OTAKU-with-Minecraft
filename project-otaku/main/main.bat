ECHO OFF
:STARTS
MODE con: COLS=114 LINES=80
TITLE OTAKU MINECRAFT 命令启动器
CLS
ECHO.
ECHO      welcome to otaku minecraft 启动器
ECHO      第一次使用？执行help命令来获取帮助！也可以找到help文件夹自行查看
ECHO.

:CHO
set choice=
set /p choice= OTAKU:
if /i "%choice%"=="help" goto helpa
if /i "%choice%"=="load" goto loada
if /i "%choice%"=="set" goto setb

ECHO.ERROR_command_not_found
timeout /t 3
GOTO STARTS

:helpa
ECHO running......
start C:\Users\Administrator\Desktop\project-otaku\help\help.txt
pause>nul
GOTO STARTS

:loada
set /p gamepath=<C:\Users\Administrator\Desktop\project-otaku\proflies\gamepath.txt
dir %gamepath%
ECHO 请输入特定版本名称
set /p ver=load:
if /i "%ver%"=="1.18.2-Fabric 0.14.9-OptiFine_HI_dev" goto loader
if /i "%ver%"=="cancel" goto STARTS

ECHO.ERROR_unknown
timeout /t 3
GOTO loada

:setb
set /p type=type:
if /i "%type%"=="game path" goto setgamepath
if /i "%type%"=="java path" goto setjavapath
if /i "%type%"=="custom color" goto setcolor

ECHO.ERROR_unknown
timeout /t 3
GOTO STARTS

:setgamepath
set /p gamepath=path:
dir %gamepath%
set /p root=root path:
dir %root%
ECHO are you sure you want to this path to gamepath and datapath?
set /p confirm=y or n:
if /i "%confirm%"=="y" goto savea
if /i "%confirm%"=="n" goto :setgamepath
pause>nul

:savea
ECHO %gamepath%>>tempa
move tempa C:\Users\Administrator\Desktop\project-otaku\proflies\gamepath.txt
timeout /t 1
ECHO %root%>>tempb
move tempb C:\Users\Administrator\Desktop\project-otaku\proflies\rootpath.txt
goto :STARTS

:setjavapath
set /p javapath=path:
dir %javapath%
ECHO are you sure you want to this path to java path?
set /p confirm=y or n:
if /i "%confirm%"=="y" goto saveb
if /i "%confirm%"=="n" goto :setjavapath
pause>nul

:saveb
ECHO %javapath%>>tempc
move tempc C:\Users\Administrator\Desktop\project-otaku\proflies\javapath.txt
goto STARTS

:loader
@echo off
title 启动 - 1.18.2-Fabric 0.14.9-OptiFine_HI_dev
set /p root=<C:\Users\Administrator\Desktop\project-otaku\proflies\rootpath.txt
set /p java=<C:\Users\Administrator\Desktop\project-otaku\proflies\javapath.txt
echo 游戏正在启动，请稍候。
set APPDATA="%root%"
cd /D "%root%"
"%java%\java.exe" -XX:+UseG1GC -XX:-UseAdaptiveSizePolicy -XX:-OmitStackTraceInFastThrow -Dfml.ignoreInvalidMinecraftCertificates=True -Dfml.ignorePatchDiscrepancies=True -Dlog4j2.formatMsgNoLookups=true -XX:HeapDumpPath=MojangTricksIntelDriversForPerformance_javaw.exe_minecraft.exe.heapdump -Djava.library.path="D:\.minecraft\versions\1.18.2-Fabric 0.14.9-OptiFine_HI_dev\1.18.2-Fabric 0.14.9-OptiFine_HI_dev-natives" -Dminecraft.launcher.brand=PCL2 -Dminecraft.launcher.version=268 -cp "D:\.minecraft\libraries\com\mojang\logging\1.0.0\logging-1.0.0.jar;D:\.minecraft\libraries\com\mojang\blocklist\1.0.10\blocklist-1.0.10.jar;D:\.minecraft\libraries\com\mojang\patchy\2.2.10\patchy-2.2.10.jar;D:\.minecraft\libraries\com\github\oshi\oshi-core\5.8.5\oshi-core-5.8.5.jar;D:\.minecraft\libraries\net\java\dev\jna\jna\5.10.0\jna-5.10.0.jar;D:\.minecraft\libraries\net\java\dev\jna\jna-platform\5.10.0\jna-platform-5.10.0.jar;D:\.minecraft\libraries\org\slf4j\slf4j-api\1.8.0-beta4\slf4j-api-1.8.0-beta4.jar;D:\.minecraft\libraries\org\apache\logging\log4j\log4j-slf4j18-impl\2.17.0\log4j-slf4j18-impl-2.17.0.jar;D:\.minecraft\libraries\com\ibm\icu\icu4j\70.1\icu4j-70.1.jar;D:\.minecraft\libraries\com\mojang\javabridge\1.2.24\javabridge-1.2.24.jar;D:\.minecraft\libraries\net\sf\jopt-simple\jopt-simple\5.0.4\jopt-simple-5.0.4.jar;D:\.minecraft\libraries\io\netty\netty-all\4.1.68.Final\netty-all-4.1.68.Final.jar;D:\.minecraft\libraries\com\google\guava\failureaccess\1.0.1\failureaccess-1.0.1.jar;D:\.minecraft\libraries\com\google\guava\guava\31.0.1-jre\guava-31.0.1-jre.jar;D:\.minecraft\libraries\org\apache\commons\commons-lang3\3.12.0\commons-lang3-3.12.0.jar;D:\.minecraft\libraries\commons-io\commons-io\2.11.0\commons-io-2.11.0.jar;D:\.minecraft\libraries\commons-codec\commons-codec\1.15\commons-codec-1.15.jar;D:\.minecraft\libraries\com\mojang\brigadier\1.0.18\brigadier-1.0.18.jar;D:\.minecraft\libraries\com\mojang\datafixerupper\4.1.27\datafixerupper-4.1.27.jar;D:\.minecraft\libraries\com\google\code\gson\gson\2.8.9\gson-2.8.9.jar;D:\.minecraft\libraries\com\mojang\authlib\3.3.39\authlib-3.3.39.jar;D:\.minecraft\libraries\org\apache\commons\commons-compress\1.21\commons-compress-1.21.jar;D:\.minecraft\libraries\org\apache\httpcomponents\httpclient\4.5.13\httpclient-4.5.13.jar;D:\.minecraft\libraries\commons-logging\commons-logging\1.2\commons-logging-1.2.jar;D:\.minecraft\libraries\org\apache\httpcomponents\httpcore\4.4.14\httpcore-4.4.14.jar;D:\.minecraft\libraries\it\unimi\dsi\fastutil\8.5.6\fastutil-8.5.6.jar;D:\.minecraft\libraries\org\apache\logging\log4j\log4j-api\2.17.0\log4j-api-2.17.0.jar;D:\.minecraft\libraries\org\apache\logging\log4j\log4j-core\2.17.0\log4j-core-2.17.0.jar;D:\.minecraft\libraries\org\lwjgl\lwjgl\3.2.2\lwjgl-3.2.2.jar;D:\.minecraft\libraries\org\lwjgl\lwjgl-jemalloc\3.2.2\lwjgl-jemalloc-3.2.2.jar;D:\.minecraft\libraries\org\lwjgl\lwjgl-openal\3.2.2\lwjgl-openal-3.2.2.jar;D:\.minecraft\libraries\org\lwjgl\lwjgl-opengl\3.2.2\lwjgl-opengl-3.2.2.jar;D:\.minecraft\libraries\org\lwjgl\lwjgl-glfw\3.2.2\lwjgl-glfw-3.2.2.jar;D:\.minecraft\libraries\org\lwjgl\lwjgl-stb\3.2.2\lwjgl-stb-3.2.2.jar;D:\.minecraft\libraries\org\lwjgl\lwjgl-tinyfd\3.2.2\lwjgl-tinyfd-3.2.2.jar;D:\.minecraft\libraries\com\mojang\text2speech\1.12.4\text2speech-1.12.4.jar;D:\.minecraft\libraries\net\fabricmc\tiny-mappings-parser\0.3.0+build.17\tiny-mappings-parser-0.3.0+build.17.jar;D:\.minecraft\libraries\net\fabricmc\sponge-mixin\0.11.4+mixin.0.8.5\sponge-mixin-0.11.4+mixin.0.8.5.jar;D:\.minecraft\libraries\net\fabricmc\tiny-remapper\0.8.2\tiny-remapper-0.8.2.jar;D:\.minecraft\libraries\net\fabricmc\access-widener\2.1.0\access-widener-2.1.0.jar;D:\.minecraft\libraries\org\ow2\asm\asm\9.3\asm-9.3.jar;D:\.minecraft\libraries\org\ow2\asm\asm-analysis\9.3\asm-analysis-9.3.jar;D:\.minecraft\libraries\org\ow2\asm\asm-commons\9.3\asm-commons-9.3.jar;D:\.minecraft\libraries\org\ow2\asm\asm-tree\9.3\asm-tree-9.3.jar;D:\.minecraft\libraries\org\ow2\asm\asm-util\9.3\asm-util-9.3.jar;D:\.minecraft\libraries\net\fabricmc\intermediary\1.18.2\intermediary-1.18.2.jar;D:\.minecraft\libraries\net\fabricmc\fabric-loader\0.14.9\fabric-loader-0.14.9.jar;D:\.minecraft\versions\1.18.2-Fabric 0.14.9-OptiFine_HI_dev\1.18.2-Fabric 0.14.9-OptiFine_HI_dev.jar" -DFabricMcEmu=net.minecraft.client.main.Main -Xmn256m -Xmx1638m -Dlog4j2.formatMsgNoLookups=true --add-exports cpw.mods.bootstraplauncher/cpw.mods.bootstraplauncher=ALL-UNNAMED -jar "C:\Users\Administrator\AppData\Roaming\PCL\JavaWrapper.jar" net.fabricmc.loader.impl.launch.knot.KnotClient --username I_love_Ei --version "1.18.2-Fabric 0.14.9-OptiFine_HI_dev" --gameDir "D:\.minecraft\versions\1.18.2-Fabric 0.14.9-OptiFine_HI_dev" --assetsDir "D:\.minecraft\assets" --assetIndex 1.18 --uuid 8cb33aa3d36943168b5df7cef1abfca8 --accessToken eyJhbGciOiJIUzI1NiJ9.eyJ4dWlkIjoiMjUzNTQ1MzYxMTAxNTIzMSIsImFnZyI6IkFkdWx0Iiwic3ViIjoiNzMyMzc3NjYtZmRlNC00OGY4LWFmZDYtYjNiYTUzMTM0OTY2IiwibmJmIjoxNjY4OTM0MjA2LCJhdXRoIjoiWEJPWCIsInJvbGVzIjpbXSwiaXNzIjoiYXV0aGVudGljYXRpb24iLCJleHAiOjE2NjkwMjA2MDYsImlhdCI6MTY2ODkzNDIwNiwicGxhdGZvcm0iOiJVTktOT1dOIiwieXVpZCI6ImQxNDc5NGNjNjEyYzNmNzEzMTQ5Mjk4ZmJjY2FmOTA4In0.Qignoa_0ft6ayEL4DepFhPtnVdZYaKGT5TC2a0mbibg --clientId ${clientid} --xuid ${auth_xuid} --userType Mojang --versionType OTAKU --width 854 --height 480 
echo 游戏已退出
CLS
goto STARTS