AndroidThreeScripts
===================

Complete Android Build Helper

============

<img src="https://dl.dropboxusercontent.com/u/18271886/AndroidThreeScripts/AndroidThreeScripts.png" alt="alt text" title="Title" />

 This script will give the following options upon executing it

0. Install ALL Dependencies
-- This will download ALL dependencies for the Linux System 

1. Download,Compile & Install Latest SaberMod Linux Kernel
-- This will download the Sabermod Linux Kernel, Compile and install the Kernel

2. Download & Install Android Studio 0.8.6 & SDK Bundle
-- This will download and install the Android Studio SDK bundle and set path variables for it

3. Install Sunflower-FM, SublimeText 3 & Ubuntu Tweak Linux Apps
-- This will download and install the above applications

4. Setup Build Environment for ROM Development
-- This will add the specific path variables to the bash.rc file

5. Download Personal ROM Development Repo's
-- This will download the personal repo's (defined in user.preferences)

6. Download ROM Source Code
-- This will download the desired ROM source code (defined in user.preferences)

7. Setup Build Environment for Kernel Development
-- This will add the specific path variables to the bash.rc file

8. Download Sabermod 4.9.3 Toolchain For Kernel Compile
-- This will download the Latest Sabermod Kernel Toolchain 

9. Download Kernel Source Code
-- This will download the desired Kernel source code (defined in user.preferences)

r1. Clean ROM Build Folder Structure
 -- This will invoke both 'make clean' & 'make Clobber' commands
 
r2. Sync ROM Repo's
 -- This will invoke the 'repo sync -j5' command
 
r3. Compile ROM From Source
 -- This will invoke the '. build/envsetup.sh && brunch du_m7gsm-userdebug' Commands to start the compiling job
 
r4. Copy New 'system folder' and 'boot.img' to working_folder
 -- This will check to see if a new Rom has been compiled, if it has then it will create a temp folder within the working_folder structure
 and then copy the new Rom to this temp folder, it will then unzip the new Rom and place 'system' folder and 'boot.img' into their relevant folders
 after this happens it will then remove the entire temp folder as cleanup
 
r5. Pull Gapps From Device
 -- This will start the adb server and begin pulling the relevant google play store apps from the device (providing the device is plugged in, visible and has allowed the adb request)

r6. Download Additional App's Using 'Additions.links' file
 -- Using the 'Additions.links' file, can specify any external apps to be downloaded

r7. Download Xposed Framework/Modules Using 'Xposed.links' file
 -- Using the 'Xposed.links' file, can specify any Xposed module to be downloaded from the repo

r8. Copy 'grabbed_files' to 'working_folder'
 -- This will copy all the relevant folders from current directory and place them into the working_folder
 
r9. Edit 'aroma-config' file in working_folder
 --  This will open the 'aroma-config' file within a user-defined text editor for editing (editor can be defined within AromaBuilderv2.sh script)

r10. Edit 'updater-script' file in working_folder
 --  This will open the 'updater-script' file within a user-defined text editor for editing (editor can be defined within AromaBuilderv2.sh script)
 
r11. Edit 'build.prop' file in working_folder
 --  This will open the 'build.prop' file within a user-defined text editor for editing (editor can be defined within AromaBuilderv2.sh script)
 
r12. Zip working_folder Contents Ready For Flashing on Device
 --  This will create a zip file from 'working_folder' contents, which if done correctly will be fully flashable

k1. Edit Kernel 'defconfig' File
 -- This will open the configured 'defconfig' file using the default text editor (both values are changable in KernelBuilder.config) 

k2. Clean Kernel Folder And Remove '.config' file
 -- This will invoke the 'make clean' command within the root dir of the configured kernel. and will also remove the generated '.config' file (kernel dir is changable in KernelBuilder.config)

k3. Compile Kernel & Modules
 -- This will invoke the make defconfig and 'make ARCH=arm CROSS_COMPILE=arm-eabi-' commands to begin compiling the Kernel and Modules (PATH default toolchain i have set up is Sabermod v4.10)

k4. Create New boot.img file
 -- This will open up the default filemanager within the configured directory, then ask to remove all files in this directory and place the stock boot.img (filemanager and directories are changable in KernelBuilder.config)
 -- It will then invoke the 'abootimg -x boot.img' command, followed by creating 'initrd' directory and set permissions before invoking the 'zcat ../initrd.img | cpio -i' command.
 -- Then it will open the 'default.prop' file for editing, after this it will remove unnessacery files and copy the newly compile zImage to this directory, followed by invoking the 'find . | cpio -o -H newc | gzip > ../initrd.img' command
 -- Followed by 'abootimg --create boot.img -k zImage -r initrd.img' and 'abootimg --create boot.img -f bootimg.cfg -k zImage -r initrd.img' commands to finalize the new 'boot.img' file.
 
k5. Copy New Compiled Kernel boot.img & Modules To 'working_folder' To Make Flashable Zip
-- This will copy the newly compiled fresh 'boot.img' file and kernel modules to the correct 'working_folder' directories, ready to be zipped up 
 
k6. Edit 'aroma-config' file in working_folder
 --  This will open the 'aroma-config' file using the system default app for editing (editor can be defined within KernelBuilder.config)

k7. Edit 'updater-script' file in working_folder
 --  This will open the 'updater-script' file using the system default app for editing (editor can be defined within KernelBuilder.config)
 
k8. Zip working_folder Contents Ready For Flashing on Device
 --  This will create a zip file from 'working_folder' contents, which if done correctly will be fully flashable

