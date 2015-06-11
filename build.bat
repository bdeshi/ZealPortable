::set path to PortableAppsLauncher Generator executable as %LAUNCHERGEN%
::package will be built in repo\build
SETLOCAL  ENABLEEXTENSIONS
cd %~dp0
SET LauncherGen=E:\Projects\PortableAppsPackage\PortableAppsLauncher\PortableApps.comLauncherGenerator.exe
@echo off 


::DEL     /F /Q  .\ZealPortable.exe
"%LAUNCHERGEN%" "%cd%"

DEL   /F /Q  .\build
RMDIR /S /Q  .\build

MKDIR     .\build
MKDIR     .\build\Data
MKDIR     .\build\Other

XCOPY     /Y /Q /C        .\Zealportable.exe  .\build\
XCOPY     /Y /Q /C /E /I  .\App\*             .\build\App\
XCOPY     /Y /Q /C /E /I  .\Doc\*             .\build\Doc\
XCOPY     /Y /Q /C /E /I  .\Data\*            .\build\Data\

echo ---- ---- ---- 
echo ---- ---- ---- 
echo ---- ---- ---- 
echo ---- ---- ---- 
echo built ZealPortable launcher at .\build\
echo   [%cd%\build\]
echo  Copy .\build\ to desired install location.
echo ...
echo Extract Zeal program files to .\build\App\Zeal\
echo Docsets shall be installed at .\build\Doc\
