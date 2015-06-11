#ZealPortable
A PortableApps Launcher for [Zeal](http://zealdocs.org/) (Windows-only)

Prebuilt launcher package is available in the [Releases]
(https://github.com/SammaySarkar/ZealPortable/releases) section.

#####BUILDING
+ Set correct path to [PortableApps Launcher Generator]
  (http://portableapps.com/apps/development/portableapps.com_launcher)
  executable in `%LAUNCHERGEN%` in [`build.bat`](./build.bat)
+ Execute `build.bat` . The PortableApps Launcher will be built in `.\ZealPortable\`
+ Extract Zeal for Windows program files to `.\ZealPortable\App\Zeal\`
+ Now move this `.\ZealPortable\` folder to desired install path.

#####NOTES
+ Docsets are stored in `ZealPortable\Doc\` . The path may be changed for one session,
  but it will revert back on next app start.