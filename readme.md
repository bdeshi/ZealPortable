### Zeal now has a [native portable package for Windows](https://zealdocs.org/download.html#windows). This project is obsolete.
<hr><br><br>

#ZealPortable
A PortableApps Launcher for [Zeal](http://zealdocs.org/) *(for Windows platform)*

**| [SETUP](#setup) | [BUILD](#setup) | [NOTES](#notes) |**


#####SETUP
1. Prebuilt launcher package is available in the [Releases]
   (https://github.com/SammaySarkar/ZealPortable/releases) section. <br>
   Download a launcher release from there *(preferebly the latest one)*.
2. Extract the downloaded archive to get a `ZealPortable` folder.
3. Extract Zeal Windows program files into `ZealPortable\App\Zeal\`
  -  Zipped archives of cutting-edge Zeal versions are available as
     [CI builds](https://bintray.com/zealdocs/windows-ci)
  -  The official MSI installer can also be extracted without installing:
     1. Open a command prompt and run this command: <br>
        `%WINDIR%\system32\msiexec.exe /a "p:\ath\to\Zeal.msi" TARGETDIR="P:ath\to\Extract\"`
     2. Zeal program files will be extracted to `TARGETDIR\PFiles\Zeal\`
  - You can also compile from [source](https://github.com/zealdocs/zeal).
4. Now the `ZealPortable` folder contains a portable Zeal installation.
   Move this folder to desired location.
5. See [Notes](#notes) section below for important info on docset installation.

The latest version of the launcher usually supports the latest public release
and the latest stable CI build of Zeal.


#####BUILDING
1. Set correct path to [PortableApps Launcher Generator]
   (http://portableapps.com/apps/development/portableapps.com_launcher)
   executable in `%LAUNCHERGEN%` in [`build.bat`](./build.bat)
2. Execute `build.bat` . The PortableApps Launcher will be built in `.\ZealPortable\`
3. Now follow [SETUP](#setup) procedures described above.


#####NOTES
+  Docsets are stored in `ZealPortable\Doc\` . The path may be changed for one session,
   but it will revert back on next app start.
+  While ZealPortable is running, `dash:` and `dash-plugin:` URL protocols are associated
   with the portable instance. After quitting, regular local system associations (if any)
   are restored.

*Happy [portable] doc-grokking!*
