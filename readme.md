-------
| BRAND NEW :  AndroidThreeScripts Auto-Installer |
| :------------: |
| Download Latest Version : [ AndroidThreeScripts_2.0_all.deb ](https://github.com/SmokeyMcBong/AndroidThreeScripts/releases/download/2.0/AndroidThreeScripts_2.0_all.deb) |
| Show all Releases : [ View all Releases ](https://github.com/SmokeyMcBong/AndroidThreeScripts/releases) |

-------
<br />
<center>![Screenshot](https://dl.dropboxusercontent.com/u/18271886/AndroidThreeScripts/cropped-LOGO-A3S-alpha.png)</center>
<br />  

<center>"***Complete Android Build Helper. With 'Fresh-to-Ready', 'RomBuilder' and 'KernelBuilder'  !***"</center>

<br />
<center>
![Screenshot](https://dl.dropboxusercontent.com/u/18271886/AndroidThreeScripts/A3S.png)
</center>

<br />
<br />

Brief..
------------

This Project was started as a means to simplify the process of setting up a freshly installed Ubuntu (or Debian based) OS for an Android Development OS.  
After a little time, I had three working scripts to aid with the process of Setting up the Fresh Ubuntu (or Debian based) OS for Rom/Kernel Development.  
BUT it wasnt long before I thought it would be a great idea to write a 'three column/three script' menu for incorporating my previous  
'Fresh-to-Ready', 'RomBuilder' and 'KernelBuilder' scripts into one handy menu...

This continued growing and being fixed/enhanced to the stage it is today...
This Project is a continuous work-in-progress, with possibilities of more features to be added etc

(credits - <br />
'AROMA INSTALLER' ... A BIG thanks to 'amarullz' @ XDA for creating such a great, powerful Touch Customizable ROM Installer package creator ! )

<br />

Current Features..
------------

(**NOTE**: >> <u>Almost all options below are editable wthin the '**user.preferences**' file for easy access !</u> )
<br />
<br />

Fresh-to-Ready...

* Install all necessary Dependencies and Paths.
* Download, Compile and install Newest SaberMod Linux Kernel from source.
* Download and install Android Studio & SDK bundle.
* Install Github's ATOM Text Editor.
* Setup Build Environment and Switch between the two with ease.
* Creates required folder structures
* Download personal repo's.
* Download Desired Android ROM and/or Kernel source code.
* Download latest SaberMod android Kernel Toolchain.

RomBuilder...

* Clean ROM Buiild folder structure.
* Sync ROM repos.
* Compile ROM from source.
* Copy newly compiled System folder and boot.img to working folder.
* Pull G-Apps from device.
* Download additional apps.
* Download Xposed Framework/Modules.
* Copy all grabbed files to working folder.
* Edit the aroma.config file.
* Edit the updater-script file.
* Edit the build.prop file.
* Edit the additions.links file.
* Edit the xposed.links file.
* Zip all working folder contents and move zip to a common output folder ready for flashing.

KernelBuilder...

* Edit Kernel defconfig file.
* Clean Kernel Folder and remove unneeded files.
* Compile Kernel & Modules
* Create new boot.img
* Copy new boot.img & modules to working folder
* Edit the aroma.config file.
* Edit the updater-script file.
* Zip all working folder contents and move zip to a common output folder ready for flashing.


<br />

Planned Feature's..
------------

ToDo ....


- [ ] Add Sabermod toolchain download, compile and install options for..
  - [ ] a) Android Rom
  - [ ] b) Android Kernel
- [ ] Remove aroma installer from both core's and..
  - [ ] a) Create dynamic updater-script generator
  - [ ] b) Change hardcoded directories to a more robust dynamic way to handle additional user folders
- [ ] Create a user selectable list for downloading different android rom source code for..
 - [ ] a) DirtyUnicorns
 - [ ] b) OMNIrom
 - [ ] c) CyanogenMOD
 - [ ] d) Pacman
- [ ] Create a user selectable list for choosing which android device to build for and..
 - [ ] a) Generate a device list using build config folder contents (ie all available devices to build out of the box)


<br />

Change log's..
------------
### 9/1/2015 ...

* Version 2.0 Released !!
* Merged Development branch into master

### 8/1/2015 ...

* Reformatted base code, completed first stage console output
* updated todo list

### 12/12/2014 ...

* Removed .deb download from development branch readme
* Part 3 + 4 of new logical structure

### 11/12/2014 ...

* Removed dektop environment checks from START.ME
* Removed overall cpu % in favor of 'ps -e' call
* Colorized output
* Updated Github's ATOM text editor .deb link
* Added temporary TODO list
* Started logical file project restructuring

### 08/12/2014 ...

* Made startup easier and more robust
* Added NEW Auto-installer .deb release link
* Re-formatted Readme

### 07/12/2014 ...

* Updated Github's ATOM Text Editor to 0.153.0
* Updated Readme, target was too broad scope, changed to "Ubuntu (or Debian based)" for clarity
* Fixed Readme derp

### 06/12/2014 ...

* Added running procceses to system load monitor
* Changed the way system uptime is displayed, now dynamically changes views
* Small formatting changes

### 05/12/2014 ...

* Removed SunflowerfM, SublimeText3 and UbuntuTweak apps
* Added Github's ATOM Text Editor
* Added CPU model name to the system load monitor
* Added CPU Core count to the system load monitor
* Added Current Linux version and codename to the system load monitor
* Added Current Linux Kernel version to the system load monitor
* Added Number of current processes to the system load monitor
* Added Total system uptime to the system load monitor
* Small layout change to the system load monitor
* Made system load monitor its own function,then call by function name
* Made START.ME its own function,then call by function name
* Renamed all config file extensions to .conf to allow simple syntax highlighting


### 03/12/2014 ...

* Added seperate simple system load monitor to run alongside AndroidThreeScripts
* Added proper script loader to start the system load monitor and main script together
* Added PATH conflict checks before attempting to compile SaberMod Linux Kernel
* Colorized system load monitor
* Added kill system load monitor when exiting AndroidThreeScripts
* Added 'notify-send' ubuntu desktop notifications upon completion of some functions
* Formatting and syntax changes
* Changed filenames for accessability
* Bumped to v1.6 - 03/12/2014

### 22/11/2014 ...

* Renamed config files to .cfg extension
* Removed duplicate logout command
* Changed the way boot.img is created
* Added quick 'whoami' check to pass username to the set build environment functions
* Added Auto-resize terminal to fit script perfectly on startup
* Progress bar update
* Added creation of file after all dependencies have been satisfied
* Added a startup check for the dependency satisfied file.
This will now show if dependencies have been installed

### 21/11/2014 ...

* Added more desktop env commands to logout function
* Updated UI/Stageheaders

### 11/11/2014 ...

* Added auto-logout prompt after any PATH changes
* Fixed more location errors
* Fixed more syntax problems


### 10/11/2014 ...

* More syntax fix's
* Updated links
* Fixed outdir location
* Added logout function (MATE Destop env)


### 09/11/2014 ...

* Fixed directory checks
* Added check to see if bash.rc exists before editing
* Changed the way bash.rc is reloaded


### 08/11/2014 ...

* Ported RomBuilder code to new codebase
* Ported KernelBuilder code to new codebase
* Various syntax fix's and improvements
* Changed more config variables
* Fixed bash.rc entries (moar checks!)
* Added options to edit 'Additions.links' & 'Xposed.links' files
* Added 'abootimg', adb and fastboot tools to dependency list
* Swaped some variables from user config to def config
* Fixed broken dependency order
* Bumped to v1.3


### 07/11/2014 ...

* Added Switchable Environment option
* Added Delete logs option, show current size on disk for log folder
* Added Startup check to look at bash.rc entries and show which is currently selected
* Added Edit preferences and reload new changes when asked
* Fixed bash.rc echo commands
* Fixed broken logging for some functions
* Added checks for files/directories before acting
* Externalised more variables to both 'A3S.def' & 'user.preferences'
* Added mainmenu and function placholders ready for porting RomBuilder & KernelBuilder
* Added Fix errors/clean broken downloads/copies/directories etc before proceding
* properly install Android Studio (add path to environment)
* bump to v1.1


### 06/11/2014 ... [Initial Git commit]

* Added Logging Ability
* Fixed missing Links
* Created new Triple menu layout
* Ported Fresh-to-Ready code over to new codebase
* Added Placeholders
* Added License and Readme.

<br />

###.
-------
###.
<br />
'AndroidThreeScripts'  
Copyright (C) 2014  'theFONZ'

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
any later version.

This program is distributed in the hope that it will be useful,  
but WITHOUT ANY WARRANTY; without even the implied warranty of  
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
See the GNU General Public License for more details.  

You should have received a copy of the GNU General Public License
along with this program. See COPYING.txt in project root
