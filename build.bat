::set path to PortableAppsLauncher Generator executable as %LAUNCHERGEN%
::launcher package will be built in .\%APP%
@echo off
SET LauncherGen=..\..\PortableApps\PALauncher\PortableApps.comLauncherGenerator.exe
SET         APP=ZealPortable

SETLOCAL  ENABLEEXTENSIONS
cd        %~dp0

DEL   /Q     .\%App%\*.*
RMDIR /S /Q  .\%APP%\App\AppInfo
RMDIR /S /Q  .\%APP%\Data
RMDIR /S /Q  .\%APP%\Other

"%LAUNCHERGEN%" "%cd%"

MKDIR      ".\%APP%"
MKDIR      ".\%APP%\App"
MKDIR      ".\%APP%\Data"
MKDIR      ".\%APP%\Other"

MKDIR      ".\%APP%\Doc"
XCOPY      /Y /R /Q /C /I /E  ".\Doc\*"      ".\%APP%\Doc\"

XCOPY      /Y /R /Q /C /I /E  ".\App\*"      ".\%APP%\App\"
XCOPY      /Y /R /Q /C /I /E  ".\Data\*"     ".\%APP%\Data\"
XCOPY      /Y /R /Q /C /I     ".\%APP%.exe"  ".\%APP%\"

DEL /F /Q  ".\%APP%.exe"

echo .
echo ..
echo ...
echo built %APP% launcher at .\%APP%\
echo [%cd%\%APP%\]
echo ------ SETUP ------
echo Extract Zeal program files to .\%APP%\App\Zeal\
echo Copy .\%APP%\ to desired install location.
echo ------ NOTE -------
echo Docsets shall be installed portably at .\%APP%\Doc\
echo ----------------------------
echo Happy portable doc-grokking!
