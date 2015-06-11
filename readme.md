#ZealPortable
A PortableApps Launcher for [Zeal](http://zealdocs.org/)

Pregenerated launcher package is available in the [Releases]
(https://github.com/SammaySarkar/ZealPortable/releases) section.
Place Zeal program files in the `.\App\Zeal\` folder of downloaded package.

#####BUILDING
+ Set correct path to [PortableApps Launcher Generator]
  (http://portableapps.com/apps/development/portableapps.com_launcher)
  executable in `%LAUNCHERGEN%` in [`build.bat`]
  (./build.bat)
+ Execute `build.bat` . The PortableApps package will be created in `.\ZealPortable\`
+ Extract Zeal for Windows program files to `.\ZealPortable\App\Zeal\`
+ Now move the `.\ZealPortable\` folder to desired install path.

Docsets shall be saved in `.\ZealPortable\Doc`. The path may be changed for one session,
but it will revert back on next app start.