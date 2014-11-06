#!/bin/bash
# import config file
source A3S.def
source user.preferences
mainmenu()
{
	clear
	#echo -ne "\e[8;100;350t" 
	printf '%s\n' ""
	printf '%s\n' ""
	printf '%s\n' "   ${b}----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	printf '%s\n' "   ${b}----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	printf '%s\n' ""	
	printf '%s\n' ""
	printf '%s\n' "   ${g}################################################################           ################################################################           ################################################################"
	printf '%s\n' "   ${c}####################                        ####################           ####################                        ####################           ####################                        ####################"
	printf '%s\n' "   ${c}####                                                        ####           ####                                                        ####           ####                                                        ####"
	printf '%s\n' "   ${n}##                       Fresh-To-Ready                       ##           ##                         RomBuilder                         ##           ##                       KernelBuilder                        ##"
	printf '%s\n' "   ${c}####                                                        ####           ####                                                        ####           ####                                                        ####"              
	printf '%s\n' "   ${c}####################                        ####################           ####################                        ####################           ####################                        ####################"
	printf '%s\n' "   ${g}################################################################           ################################################################           ################################################################"
	printf '%s\n' ""
	printf '%s\n' ""
	printf '%s\n' "   ${b}                    Setup Build Environment...                                          Compile Rom, Add Features & AROMA...                                      Compile Kernel, Add Features & AROMA..."
	printf '%s\n' "   ${b}                                                                                                                                                         "
	printf '%s\n' ""
	printf '%s\n' "   ${c}0${b})  Install ALL Dependencies (${r}<-Important!${b})"    
	printf '%s\n' "    -------------------------------------------------------------             ${c}r1${b})  Clean ROM Build Folder Structure                                       ${c}k1${b})  Edit Kernel 'defconfig' File"
	printf '%s\n' "    ${b}Linux Setup                                                               ${c}r2${b})  Sync ROM Repo's                                                        ${c}k2${b})  Clean Kernel Folder And Remove '.config' file"
	printf '%s\n' "   ${c}1${b})  Download,Compile & Install Latest SaberMod Linux Kernel                ${c}r3${b})  Compile ROM From Source                                                ${c}k3${b})  Compile Kernel & Modules" 
	printf '%s\n' "   ${c}2${b})  Download & Install Android Studio 0.8.6 & SDK Bundle                   ${c}r4${b})  Copy New 'system Folder' & 'boot.img' to working_folder                ${c}k4${b})  Create New boot.img file"
	printf '%s\n' "   ${c}3${b})  Install Sunflower-FM, SublimeText 3 & Ubuntu Tweak Apps                 -------------------------------------------------------------              ${c}k5${b})  Copy New Compiled boot.img & Modules To 'working_folder'"
	printf '%s\n' "    -------------------------------------------------------------             ${c}r5${b})  Pull Gapps From Device                                                  -------------------------------------------------------------"
	printf '%s\n' "    ${b}Android ROM Development Setup                                             ${c}r6${b})  Download Additional App's Using 'Additions.links' file                 ${c}k6${b})  Edit 'aroma-config' file in working_folder"
	printf '%s\n' "   ${c}4${b})  Setup Build Environment for ROM Development                            ${c}r7${b})  Download Xposed Framework/Modules Using 'Xposed.links' file            ${c}k7${b})  Edit 'updater-script' file in working_folder"
	printf '%s\n' "   ${c}5${b})  Download Personal ROM Development Repo's                               ${c}r8${b})  Copy Grabbed_Files structure to working_folder structure                -------------------------------------------------------------"
	printf '%s\n' "   ${c}6${b})  Download ROM Source Code (Current Source = ${g}${DesiredRomName}${b})               -------------------------------------------------------------              ${c}k8${b})  Zip working_folder Contents Ready For Flashing on Device"
	printf '%s\n' "    -------------------------------------------------------------             ${c}r9${b})  Edit 'aroma-config' file in working_folder"
	printf '%s\n' "    ${b}Android Kernel Development Setup                                          ${c}r10${b}) Edit 'updater-script' file in working_folder"
	printf '%s\n' "   ${c}7${b})  Setup Build Environment for Kernel Development                         ${c}r11${b}) Edit 'build.prop' file in working_folder"
	printf '%s\n' "   ${c}8${b})  Download Sabermod 4.9.2 Toolchain For Kernel Compile                    -------------------------------------------------------------"
	printf '%s\n' "   ${c}9${b})  Download Kernel Source Code (Current Source = ${g}${DesiredKernelName}${b})         ${c}r12${b}) Zip working_folder Contents Ready For Flashing on Device"
	printf '%s\n' ""
	printf '%s\n' ""
	printf '%s\n' ""
	printf '%s\n' ""
	printf '%s\n' ""
	printf '%s\n' ""
	printf '%s\n' "   ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	printf '%s\n' "   ${c}p${b} )  Edit Preferences (this has all the user configurable settings for ALL three main functions)                                                                                      'AndroidThreeScripts'"
	printf '%s\n' "   ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"	
	printf '%s\n' "   ${c}e${b} )  Exit Script    ${c}r${b} )  Restart PC    ${c}s${b} )  Shutdown PC                                                                                                                     Written by 'theFONZ' (v1.0 - 06/11/2014)"
	printf '%s\n' "   ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------${n}"
	printf '%s\n' ""	
	read mainmen
	if [ "$mainmen" == 0 ] ; then
		installDependencies
	elif [ "$mainmen" == 1 ] ; then
		saberinstall
	elif [ "$mainmen" == 2 ] ; then
		installstudio
	elif [ "$mainmen" == 3 ] ; then
		installapps
	elif [ "$mainmen" == 4 ] ; then
		setuprenv
	elif [ "$mainmen" == 5 ] ; then
		downloadpresonalrrepos
	elif [ "$mainmen" == 6 ] ; then
		downloadrsource
	elif [ "$mainmen" == 7 ] ; then
		setupkenv
	elif [ "$mainmen" == 8 ] ; then
		downloadktoolchain
	elif [ "$mainmen" == 9 ] ; then 
		downloadksource
	elif [ "$mainmen" == e ] ; then
		exitscript
	elif [ "$mainmen" == r ] ; then
		restartpc
	elif [ "$mainmen" == s ] ; then
		shutdownpc
	elif [ "$mainmen" != 0 ] && [ "$mainmen" != 1 ] && [ "$mainmen" != 2 ] && [ "$mainmen" != 3 ] &&
		 [ "$mainmen" != 4 ] && [ "$mainmen" != 5 ] && [ "$mainmen" != 6 ] && [ "$mainmen" != 7 ] &&
		 [ "$mainmen" != 8 ] && [ "$mainmen" != 9 ] && 
		 [ "$mainmen" != e ] && [ "$mainmen" != r ] && [ "$mainmen" != s ]; then
			mainmenu
	fi
}
show_stage_header() # menu ui : show_stage_header.
{	
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  " ${g}################################################################"
	printf '%s\n'  " ####                     ${n}   Stage-$Stagenumber                         ${g}####"
	printf '%s\n'  " ################################################################"
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
}
show_stage_completed() # menu ui : show_stage_completed.
{	
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  "      ${g}+++ Stage-$Stagenumber Complete !, Moving to MainMenu ... +++${n}       "
	printf '%s\n'  ""
	printf '%s\n'  ""
}
installDependencies() # Install ALL needed Dependencies before doing anything! 
{
	clear
	Stagenumber="0"
	show_stage_header
	printf " ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "   1) INSTALL Dependencies"
	printf '%s\n' "   2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read installDependenciesopt0
	if [ "$installDependenciesopt0" == 1 ] ; then
		clear
		Stagenumber="0"
		show_stage_header
		printf '%s\n'  "        ${b}-> Downloading Dependencies... <-${n}             "
			showPreProgress
			  sudo apt-get purge openjdk-\* icedtea-\* icedtea6-\* && sudo add-apt-repository ppa:webupd8team/java && sudo apt-get update && sudo apt-get install oracle-java6-installer && sudo apt-get install git gnupg ccache lzop flex bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 libc6-dev lib32bz2-1.0 lib32ncurses5-dev x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 lib32z1-dev libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils xsltproc libreadline6-dev lib32readline-gplv2-dev libncurses5-dev bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev lib32bz2-dev squashfs-tools pngcrush schedtool dpkg-dev && sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so && mkdir ~/bin && curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo && sudo apt-get install libcloog-isl-dev libcap-dev liblz4* &&
			  printf '%s\n'  ""
			  printf '%s\n'  "Adding Paths and Variables to .bashrc file..."
			  sleep 2
			  echo 'export PATH=~/bin:$PATH' >> ~/.bashrc && 
				source ~/.bashrc &&
			showPostProgress && sleep 2
		show_stage_completed
		sleep 4
		exec ${projectlocation}/Fresh-To-Ready.sh
		#mainmenu
	elif [ "$installDependenciesopt0" == 2 ] ; then
		mainmenu
	elif [ "$installDependenciesopt0" != 1 ] && [ "$installDependenciesopt0" != 2 ] ; then
		installDependencies
	fi
}
saberinstall() # Download, Compile & Install Latest SaberMod Linux Kernel
{
	clear
	Stagenumber="1"
	show_stage_header
	printf " ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "   1) Download Latest SaberMod Linux Kernel Source (home/'user'/Linux/)"
	printf '%s\n' "   2) Compile & Install Latest SaberMod Linux Kernel (If Already Downloaded)"
	printf '%s\n' "   3) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read saberinstallopt0
	if [ "$saberinstallopt0" == 1 ] ; then
		clear
		Stagenumber="1"
		show_stage_header
		printf '%s\n'  "        ${b}-> Downloading Newest SaberMod Linux Kernel Source... <-${n}             "
			cd && mkdir Linux && cd Linux && sleep 1
			  repo init -u ${SaberLinuxSource} && exec ${sync} & wait
			showPostProgress && sleep 2
		show_stage_completed
		sleep 4
		saberinstall
	elif [ "$saberinstallopt0" == 2 ] ; then
		clear
		Stagenumber="1"
		show_stage_header
		printf '%s\n'  "        ${b}-> Compiling & Installing Newest SaberMod Linux Kernel... <-${n}             "
			cd && cd Linux && . ubuntu & wait
			showPostProgress && sleep 2
		show_stage_completed
		sleep 4
		mainmenu
	elif [ "$saberinstallopt0" == 3 ] ; then
		mainmenu
	elif [ "$saberinstallopt0" != 1 ] && [ "$saberinstallopt0" != 2 ] && [ "$saberinstallopt0" != 3 ] ; then
		saberinstall
	fi
}
installstudio() # Remove Unused linux App Packages and Dependencies
{
	clear
	Stagenumber="2"
	show_stage_header
	printf " ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "   1) Install Android Studio 0.8.6 & SDK Bundle"
	printf '%s\n' "   2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read installstudioopt0
	if [ "$installstudioopt0" == 1 ] ; then
		clear
		Stagenumber="2"
		show_stage_header
		printf '%s\n'  "        ${b}-> Downloading Android Studio 0.8.6 & SDK Bundle ... <-${n}          "
		sleep 2
		cd &&
			wget https://dl.dropboxusercontent.com/u/18271886/Fresh-To-Ready/android-studio-bundle-135.1339820-linux.tgz &&
		sleep 2		
		clear
		Stagenumber="2"
		show_stage_header
		printf '%s\n'  "        ${b}-> Installing Android Studio 0.8.6 & SDK Bundle ... <-${n}          "
		sleep 2  
			tar -zxvf android-studio-bundle-135.1339820-linux.tgz && 
		sleep 2
		clear
		Stagenumber="2"
		show_stage_header
		printf '%s\n'  "        ${b}-> Cleaning Up ... <-${n}          "
		sleep 2 
			rm -f android-studio-bundle-135.1339820-linux.tgz &&
		show_stage_completed
		sleep 4
		mainmenu
	elif [ "$installstudioopt0" == 2 ] ; then
		mainmenu
	elif [ "$installstudioopt0" != 1 ] && [ "$installstudioopt0" != 2 ] ; then
		installstudio
	fi
}
installapps() # Install Sunflower FM, Sublime Text 3 & Ubuntu Tweak Apps
{       
	clear
	Stagenumber="3"
	show_stage_header
	printf " ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "   1) Download & Install Sunflower-FM, SublimeText 3 & Ubuntu Tweak Apps"
	printf '%s\n' "   2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read installappsopt0
	if [ "$installappsopt0" == 1 ] ; then
		clear
		Stagenumber="3"
		show_stage_header
		printf '%s\n'  "  ${b}-> Downloading 3rd Party Apps... <-${n}  " 
		sleep 1
		cd ${projectlocation} && mkdir ${TempDir} && cd ${TempDir} &&
		    wget ${SunflowerSource} && wget ${SublimeSource} && wget ${UtweakSource} & wait
			clear
			Stagenumber="3"
			show_stage_header
			printf '%s\n'  "  ${b}-> Installing 3rd Party Apps... <-${n}  " 
			sleep 2
			  cd ${TempDir} && sudo dpkg -i ${SunflowerFilename} && sudo dpkg -i ${SublimeFilename} && sudo gdebi ${UtweakFilename} && 
			show_stage_completed
			cd && cd ${projectlocation} && rm -rf ${TempDir} & wait
			sleep 4
			mainmenu
	elif [ "$installappsopt0" == 2 ] ; then
		mainmenu
	elif [ "$installappsopt0" != 1 ] && [ "$installappsopt0" != 2 ] ; then
		installappsopt0
	fi
}
setuprenv() # Setup ROM Build Environment
{
	clear
	Stagenumber="4"
	show_stage_header
	printf " ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "   1) SETUP ROM BUILD ENVIRONMENT"
	printf '%s\n' "   2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read setuprenvopt0
	if [ "$setuprenvopt0" == 1 ] ; then
		clear
		Stagenumber="4"
		show_stage_header
		printf '%s\n'  "        ${b}-> Setting Build Environment For - ROM Development... <-${n}             "
		printf '%s\n'  ""
		printf '%s\n'  "Adding Paths and Variables to .bashrc file..."
		showPreProgress
		sleep 2
		cd && 
		  echo '' >> ~/.bashrc &&
		  echo '# This is for Android ROM & Toolchain build environments' >> ~/.bashrc &&
		  echo 'export PATH=~/bin:$PATH' >> ~/.bashrc &&
		  echo 'export USE_CCACHE=1' >> ~/.bashrc &&
		  source ~/.bashrc
		cd && mkdir AndroidROMdev && cd AndroidROMdev && mkdir MyRepos & wait
		showPostProgress
		sleep 2
		show_stage_completed
		sleep 4
		mainmenu
	elif [ "$setuprenvopt0" == 2 ] ; then
		mainmenu
	elif [ "$setuprenvopt0" != 1 ] && [ "$setuprenvopt0" != 2 ] ; then
		setuprenv
	fi
}
downloadrbuilder() # Download RomBuilder From Github Repo
{
	clear
	Stagenumber="5"
	show_stage_header
	printf " ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "   1) DOWNLOAD ROMBUILDER FROM GITHUB REPO"
	printf '%s\n' "   2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read downloadrbuilderopt0
	if [ "$downloadrbuilderopt0" == 1 ] ; then
		clear
		Stagenumber="5"
		show_stage_header
		printf '%s\n'  "        ${b}-> Downloading RomBuilder... <-${n}             "
		cd && cd AndroidROMdev &&
			git clone ${RbuilderSource} & wait
		show_stage_completed
		sleep 4
		mainmenu
	elif [ "$downloadrbuilderopt0" == 2 ] ; then
		mainmenu
	elif [ "$downloadrbuilderopt0" != 1 ] && [ "$downloadrbuilderopt0" != 2 ] ; then
		downloadrbuilder
	fi
}
downloadpresonalrrepos() # Download Personal Repo's related to ROM Development
{
	clear
	Stagenumber="6"
	show_stage_header
	printf " ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "   1) DOWNLOAD PERSONAL ROM DEVEOLPMENT RELATED REPOS"
	printf '%s\n' "   2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read downloadpresonalrreposopt0
	if [ "$downloadpresonalrreposopt0" == 1 ] ; then
		clear
		Stagenumber="6"
		show_stage_header
		printf '%s\n'  "        ${b}-> Downloading Personal ROM-Related Repos... <-${n}             "
		cd && cd AndroidROMdev/MyRepos &&
			git clone ${PersonalRepo1} && git clone ${PersonalRepo2} && git clone ${PersonalRepo3} &&		
			git clone ${PersonalRepo4} && git clone ${PersonalRepo5} && 
		show_stage_completed
		sleep 4
		mainmenu
	elif [ "$downloadpresonalrreposopt0" == 2 ] ; then
		mainmenu
	elif [ "$downloadpresonalrreposopt0" != 1 ] && [ "$downloadpresonalrreposopt0" != 2 ] ; then
		downloadpresonalrrepos
	fi
}
downloadrsource()  # Download Desired ROM Source Code
{
	clear
	Stagenumber="7"
	show_stage_header
	printf " ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "   1) DOWNLOAD ${DesiredRomName} ROM SOURCE CODE"
	printf '%s\n' "   2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read downloadrsourceopt0
	if [ "$downloadrsourceopt0" == 1 ] ; then
		clear
		Stagenumber="7"
		show_stage_header
		printf '%s\n'  "     ${b}-> Downloading ${DesiredRomName} Source Code ... <-${n}       "
		cd && cd AndroidROMdev && mkdir ${DesiredRomName} && cd ${DesiredRomName} &&
		repo init -u ${DesiredRomSource} -b du44 && ${sync} & wait
		show_stage_completed
		sleep 4
		mainmenu
	elif [ "$downloadrsourceopt0" == 2 ] ; then
		mainmenu
	elif [ "$downloadrsourceopt0" != 1 ] && [ "$downloadrsourceopt0" !=2 ] ; then
		downloadrsource
	fi
}
setupkenv() # Setup Kernel Build Environment 
{
	clear
	Stagenumber="8"
	show_stage_header
	printf " ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "   1) SETUP KERNEL BUILD ENVIRONMENT"
	printf '%s\n' "   2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read setupkenvopt0
	if [ "$setupkenvopt0" == 1 ] ; then
		clear
		Stagenumber="8"
		show_stage_header
		printf '%s\n'  "        ${b}-> Setting Build Environment For - Kernel Development... <-${n}             "
		printf '%s\n'  ""
		printf '%s\n'  "Adding Paths and Variables to .bashrc file..."
		ShowPreProgress
		sleep 2
		cd && 
		  echo '' >> ~/.bashrc &&
		  echo '# This is for Android Kernel build environments' >> ~/.bashrc &&
		  echo 'export PATH=~/bin:$PATH' >> ~/.bashrc &&
		  echo 'export ARCH=arm' >> ~/.bashrc &&
		  echo 'export CCOMPILE=$CROSS_COMPILE' >> ~/.bashrc &&
		  echo 'export CROSS_COMPILE=arm-eabi-' >> ~/.bashrc &&
		  echo 'export PATH=$PATH:/home/thefonz/AndroidKERNELdev/Toolchain/sabermod-arm-eabi-4.9/bin' >> ~/.bashrc &&
		  source ~/.bashrc
		cd && mkdir AndroidKERNELdev && cd AndroidKERNELdev && mkdir MyRepos & wait
	ShowPostProgress
	sleep 2
	show_stage_completed
	sleep 4
	mainmenu
	elif [ "$setupkenvopt0" == 2 ] ; then
		mainmenu
	elif [ "$setupkenvopt0" != 1 ] && [ "$setupkenvopt0" !=2 ] ; then
		setupkenv
	fi
}
downloadkbuilder() # Download KernelBuilder From Github Repo
{
	clear
	Stagenumber="9"
	show_stage_header
	printf " ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "   1) DOWNLOAD KERNELBUILDER FROM GITHUB REPO"
	printf '%s\n' "   2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read downloadkbuilderopt0
	if [ "$downloadkbuilderopt0" == 1 ] ; then
		clear
		Stagenumber="9"
		show_stage_header
		printf '%s\n'  "        ${b}-> Downloading KernelBuilder... <-${n}             "
		cd && cd AndroidKERNELdev &&
			git clone ${KbuilderSource} & wait
		show_stage_completed
		sleep 4
		mainmenu
	elif [ "$downloadkbuilderopt0" == 2 ] ; then
		mainmenu
	elif [ "$downloadkbuilderopt0" != 1 ] && [ "$downloadkbuilderopt0" != 2 ] ; then
		downloadkbuilder
	fi
}
downloadktoolchain() # Download SaberMod 4.9.2 Kernel Toolchain
{
	clear
	Stagenumber="10"
	show_stage_header
	printf " ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "   1) DOWNLOAD LATEST SABERMOD KERNEL TOOLCHAIN"
	printf '%s\n' "   2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read downloadktoolchainopt0
	if [ "$downloadktoolchainopt0" == 1 ] ; then
		clear
		Stagenumber="10"
		show_stage_header
		printf '%s\n'  "        ${b}-> Downloading SaberMod 4.9.2 Toolchain... <-${n}             "
		cd && cd AndroidKERNELdev && mkdir Toolchain && cd Toolchain &&
			git clone ${ToolchainSource} & wait
		show_stage_completed
		sleep 4
		mainmenu
	elif [ "$downloadktoolchainopt0" == 2 ] ; then
		mainmenu
	elif [ "$downloadktoolchainopt0" != 1 ] && [ "$downloadktoolchainopt0" != 2 ] ; then
		downloadktoolchain
	fi
}	
downloadksource()   # Download Kernel Source Code (specified in .config)
{       
	clear
	Stagenumber="11"
	show_stage_header
	printf " ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "   1) DOWNLOAD ${DesiredKernelName} ROM SOURCE CODE"
	printf '%s\n' "   2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read downloadksourceopt0
	if [ "$downloadksourceopt0" == 1 ] ; then
		clear
		Stagenumber="11"
		show_stage_header
		printf '%s\n'  "     ${b}-> Downloading ${DesiredKernelName} Source Code ... <-${n}       "
		cd && cd AndroidKERNELdev && mkdir ${DesiredKernelName} && cd ${DesiredKernelName} &&
		git clone ${DesiredKernelSource} & wait
		show_stage_completed
		sleep 4
		mainmenu
	elif [ "$downloadksourceopt0" == 2 ] ; then
		mainmenu
	elif [ "$downloadksourceopt0" != 1 ] && [ "$downloadksourceopt0" !=2 ] ; then
		downloadksource
	fi
}

#### port RomBuilder and KernelBuildr source here >> #
#
#
#
#
#
#
#
#
#
#
#
#
# << port RomBuilder and KernelBuildr source here ###

exitscript() # Exit Script
{
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    - Exiting Fresh-To-Ready Script ...   "
	showPreProgress
	showPostProgress
	printf '%s\n'  ""
	printf '%s\n'  "                    ${g}GoodBye!!${n}                    "
	printf '%s\n'  ""
	sleep 2
	clear
	exit
}
restartpc()   # Restart PC
{       
	printf '%s\n'  ""
	printf '%s\n'  ""
	read -p "		Restart PC ?? (y/n)?" choice
	case "$choice" in 
 		 y|Y ) sudo reboot;;
 		 n|N ) mainmenu;;
 		 * ) restartpc;;
	esac
}
shutdownpc()   # Shutdown PC
{       
	printf '%s\n'  ""
	printf '%s\n'  ""
	read -p "		Shutdown PC ?? (y/n)?" choice
	case "$choice" in 
 		 y|Y ) sudo poweroff;;
 		 n|N ) mainmenu;;
 		 * )  shutdownpc;;
	esac
}
mainmenu
## END OF SCRIPT FILE ##
