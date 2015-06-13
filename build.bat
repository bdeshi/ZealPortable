::set path to PortableAppsLauncher Generator executable as %LAUNCHERGEN%
::package will be built in repo\ZealPortable
SET LauncherGen=..\..\PortableApps\PALauncher\PortableApps.comLauncherGenerator.exe

echo off
SETLOCAL  ENABLEEXTENSIONS
cd %~dp0

DEL   /Q     .\ZealPortable\*.*
RMDIR /S /Q  .\ZealPortable\App\AppInfo
RMDIR /S /Q  .\ZealPortable\Data
RMDIR /S /Q  .\ZealPortable\Other

"%LAUNCHERGEN%" "%cd%"

MKDIR        .\ZealPortable
MKDIR        .\ZealPortable\App
MKDIR        .\ZealPortable\Data
MKDIR        .\ZealPortable\Doc
MKDIR        .\ZealPortable\Other

XCOPY     /Y /R /Q /C /I /E  .\App\*             .\ZealPortable\App\
XCOPY     /Y /R /Q /C /I /E  .\Doc\*             .\ZealPortable\Doc\
XCOPY     /Y /R /Q /C /I /E  .\Data\*            .\ZealPortable\Data\
XCOPY     /Y /R /Q /C /I     .\ZealPortable.exe  .\ZealPortable\

DEL /F /Q  .\ZealPortable.exe

echo -
echo - 
echo - 
echo - 
echo built ZealPortable launcher at .\ZealPortable\
echo   [%cd%\ZealPortable\]
echo ...
echo Extract Zeal program files to .\ZealPortable\App\Zeal\
echo Copy .\ZealPortable\ to desired install location.
echo ...
echo Docsets shall be installed at .\ZealPortable\Doc\
echo Happy portable doc-grokking!
