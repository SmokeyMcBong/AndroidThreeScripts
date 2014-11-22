#!/bin/bash
source A3S-ui.cfg			# import Default Menu UI Settings
source A3S.cfg				# import Default Script Settings
source user.preferences		# import User Configurable Settings
mainmenu()
{
	startup_checks && clear
	printf '%s\n' ""
	printf '%s\n' ""
	printf '%s\n' "   ${b}----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	printf '%s\n' "   ${b}----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	printf '%s\n' ""	
	printf '%s\n' ""
	printf '%s\n' "     ${g}################################################################         ################################################################         ################################################################"
	printf '%s\n' "     ${c}####################                        ####################         ####################                        ####################         ####################                        ####################"
	printf '%s\n' "     ${c}####                                                        ####         ####                                                        ####         ####                                                        ####"
	printf '%s\n' "     ${n}##                       Fresh-To-Ready                       ##         ##                         RomBuilder                         ##         ##                       KernelBuilder                        ##"
	printf '%s\n' "     ${c}####                                                        ####         ####                                                        ####         ####                                                        ####"              
	printf '%s\n' "     ${c}####################                        ####################         ####################                        ####################         ####################                        ####################"
	printf '%s\n' "     ${g}################################################################         ################################################################         ################################################################"
	printf '%s\n' ""
	printf '%s\n' ""
	printf '%s\n' "     ${b}                    Setup Build Environment...                                        Compile Rom, Add Features & AROMA...                                     Compile Kernel, Add Features & AROMA..."
	printf '%s\n' ""
	printf '%s\n' ""
	printf '%s\n' "     ${c}0${b})  Install ALL Dependencies (${r}<-Important!${b})"    
	printf '%s\n' "      -------------------------------------------------------------           ${c}r1${b})  Clean ROM Build Folder Structure                                    ${c}k1${b})  Edit Kernel 'defconfig' File"
	printf '%s\n' "     ${b}Linux Setup                                                              ${c}r2${b})  Sync ROM Repo's                                                     ${c}k2${b})  Clean Kernel Folder And Remove '.config' file"
	printf '%s\n' "     ${c}1${b})  Download,Compile & Install Latest SaberMod Linux Kernel              ${c}r3${b})  Compile ROM From Source                                             ${c}k3${b})  Compile Kernel & Modules" 
	printf '%s\n' "     ${c}2${b})  Download & Install ${AstudioName}                 ${c}r4${b})  Copy New 'system Folder' & 'boot.img' to working_folder             ${c}k4${b})  Create New boot.img file"
	printf '%s\n' "     ${c}3${b})  Install Sunflower-FM, SublimeText 3 & Ubuntu Tweak Apps               -------------------------------------------------------------           ${c}k5${b})  Copy New Compiled boot.img & Modules To 'working_folder'"
	printf '%s\n' "      -------------------------------------------------------------           ${c}r5${b})  Pull Gapps From Device                                               -------------------------------------------------------------"
	printf '%s\n' "     ${b}Android ROM Development Setup                                            ${c}r6${b})  Download Additional App's Using 'Additions.links' file              ${c}k6${b})  Edit 'aroma-config' file in working_folder"
	printf '%s\n' "     ${c}4${b})  Setup Build Environment for ROM Development                          ${c}r7${b})  Download Xposed Framework/Modules Using 'Xposed.links' file         ${c}k7${b})  Edit 'updater-script' file in working_folder"
	printf '%s\n' "     ${c}5${b})  Download Personal ROM Development Repo's                             ${c}r8${b})  Copy Grabbed_Files structure to working_folder structure             -------------------------------------------------------------"
	printf '%s\n' "     ${c}6${b})  Download ROM Source Code (Current Source = ${g}${DesiredRomName}${b})             -------------------------------------------------------------"
	printf '%s\n' "      -------------------------------------------------------------           ${c}r9${b})  Edit 'aroma-config' file                                            ${c}k8${b})  Zip working_folder Contents Ready For Flashing on Device"
	printf '%s\n' "     ${b}Android Kernel Development Setup                                         ${c}r10${b}) Edit 'updater-script' file"
	printf '%s\n' "     ${c}7${b})  Setup Build Environment for Kernel Development                       ${c}r11${b}) Edit 'build.prop' file"
	printf '%s\n' "     ${c}8${b})  Download Sabermod ${ToolchainName} Toolchain For Kernel Compile                 -------------------------------------------------------------"
	printf '%s\n' "     ${c}9${b})  Download Kernel Source Code (Current Source = ${g}${DesiredKernelName}${b})          ${c}r12${b}) Edit 'Additions.links' file"
	printf '%s\n' "                                                                              ${c}r13${b}) Edit 'Xposed.links' file"
	printf '%s\n' "      -------------------------------------------------------------           -------------------------------------------------------------"
	printf '%s\n' "     ${c}Info>${b} Build Environment Currently Set To : ${g}${currentenvsetup}${b}"
	printf '%s\n' "         (Use Options ${c}4${b} and ${c}7${b} To Switch Build Environments)                   ${c}r14${b}) Zip working_folder Contents Ready For Flashing on Device"
	printf '%s\n' ""	
	printf '%s\n' ""
	printf '%s\n' ""
	printf '%s\n' ""
	printf '%s\n' "   ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
	printf '%s\n' "   ${c}p${b} )  Edit Preferences   ${c}d${b} )  Delete Logs [Current = ${g}${logsize}kb${b}]                                                                                                                             'AndroidThreeScripts'"
	printf '%s\n' "   ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"	
	printf '%s\n' "   ${c}e${b} )  Exit Script        ${c}r${b} )  Restart PC        ${c}s${b} )  Shutdown PC                                                                                                            Written by 'theFONZ' ${scriptbuild}"
	printf '%s\n' "   ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------${n}"
	printf '%s\n' ""	
	read mainmen
	# Fresh-To-Ready Menu
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

	# RomBuilder Menu
	elif [ "$mainmen" == r1 ] ; then
		rbcleanbuild
	elif [ "$mainmen" == r2 ] ; then
		rbsyncbuild	
	elif [ "$mainmen" == r3 ] ; then
		rbcompilebuild	
	elif [ "$mainmen" == r4 ] ; then
		rbcopy	
	elif [ "$mainmen" == r5 ] ; then
		rbgapps
	elif [ "$mainmen" == r6 ] ; then
		rbadditions
	elif [ "$mainmen" == r7 ] ; then
		rbxposed	
	elif [ "$mainmen" == r8 ] ; then
		rbcopy2	
	elif [ "$mainmen" == r9 ] ; then 
		rbeditaroma	
	elif [ "$mainmen" == r10 ] ; then
		rbeditupdaterscript
	elif [ "$mainmen" == r11 ] ; then
		rbeditbuildprop
	elif [ "$mainmen" == r12 ] ; then 
		rbeditadditions
	elif [ "$mainmen" == r13 ] ; then 
		rbeditxposed
	elif [ "$mainmen" == r14 ] ; then 
		rbzip

	# KernelBuilder Menu
	elif [ "$mainmen" == k1 ] ; then
		kbdefconfig
	elif [ "$mainmen" == k2 ] ; then
		kbcleanbuild
	elif [ "$mainmen" == k3 ] ; then
		kbcompilebuild
	elif [ "$mainmen" == k4 ] ; then
		kbcreateboot	
	elif [ "$mainmen" == k5 ] ; then
		kbcopy	
	elif [ "$mainmen" == k6 ] ; then
		kbeditaroma	
	elif [ "$mainmen" == k7 ] ; then
		kbeditupdaterscript
	elif [ "$mainmen" == k8 ] ; then
		kbzip
		
	# Main Menu Preferences/Exit/Reboot/Shutdown
	elif [ "$mainmen" == p ] ; then
		editprefs
	elif [ "$mainmen" == d ] ; then
		deletelogs
	elif [ "$mainmen" == e ] ; then
		exitscript
	elif [ "$mainmen" == r ] ; then
		restartpc
	elif [ "$mainmen" == s ] ; then
		shutdownpc
	elif 
		 # Fresh-To-Ready Menu
		 [ "$mainmen" != 0 ] && [ "$mainmen" != 1 ] && [ "$mainmen" != 2 ] && [ "$mainmen" != 3 ] &&
		 [ "$mainmen" != 4 ] && [ "$mainmen" != 5 ] && [ "$mainmen" != 6 ] && [ "$mainmen" != 7 ] &&
		 [ "$mainmen" != 8 ] && [ "$mainmen" != 9 ] && 
		 # RomBuilder Menu
		 [ "$mainmen" != r1 ] && [ "$mainmen" != r2 ] && [ "$mainmen" != r3 ] && [ "$mainmen" != r4 ] && 
		 [ "$mainmen" != r5 ] && [ "$mainmen" != r6 ] && [ "$mainmen" != r7 ] && [ "$mainmen" != r8 ] && 
		 [ "$mainmen" != r9 ] && [ "$mainmen" != r10 ] && [ "$mainmen" != r11 ] && [ "$mainmen" != r12 ] &&
		 [ "$mainmen" != r13 ] && [ "$mainmen" != r14 ] &&
		 # KernelBuilder Menu
		 [ "$mainmen" != k1 ] && [ "$mainmen" != k2 ] && [ "$mainmen" != k3 ] && [ "$mainmen" != k4 ] && 
		 [ "$mainmen" != k5 ] && [ "$mainmen" != k6 ] && [ "$mainmen" != k6 ] && [ "$mainmen" != k8 ] &&
		 # Main Menu Preferences/Exit/Reboot/Shutdown
		 [ "$mainmen" != p ] && [ "$mainmen" != d ] && [ "$mainmen" != e ] && [ "$mainmen" != r ] && [ "$mainmen" != s ]; then
			mainmenu
	fi
}
startup_checks() # make startup checks
{
	# check for log directory, create if not found
	if [ ! -d "$LogLocation" ]; then
 		mkdir logs
	fi
	# check for log directory size and show result
	DIRSIZE=`du -s $LogLocation | cut -f 1`
		logsize=$DIRSIZE
	# check for bash.rc entries and show result
	File=~/.bashrc
	if grep -q "$romdevheader" "$File"; then
  		 currentenvsetup="Rom Development"
	elif grep -q "$kerneldevheader" "$File"; then
		currentenvsetup="Kernel Development"
	fi
	# check which desktop environment is being used
    if [ $(pgrep -c cinnamon-panel) -gt 0 ]; then
    	logout=$cinnamon_logout
	elif [ $(pgrep -c gnome-panel) -gt 0 ]; then
    	logout=$gnome_logout
	elif [ $(pgrep -c kde-panel) -gt 0 ]; then
    	logout=$kde_logout
	elif [ $(pgrep -c mate-panel) -gt 0 ]; then
    	logout=$mate_logout
	elif [ $(pgrep -c xfce4-panel) -gt 0 ]; then
    	logout=$xfce4_logout
	fi
}
# Fresh-To-Ready Menu >>>
installDependencies() # Install ALL needed Dependencies before doing anything! 
{
	clear
	Function="InstallDependencies"
	Stagenumber="0"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) INSTALL Dependencies"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read installDependenciesopt0
	if [ "$installDependenciesopt0" == 1 ] ; then
		clear
		(
		Stagenumber="0"
		show_stage_header
		printf '%s\n'  "      ${b}-> Downloading Dependencies... <-${n}             "
			showPreProgress
			  sudo apt-get purge -y openjdk-\* icedtea-\* icedtea6-\* && sudo add-apt-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java6-installer && sudo apt-get install -y git gnupg ccache lzop flex bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 libc6-dev lib32bz2-1.0 lib32ncurses5-dev x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 lib32z1-dev libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils xsltproc libreadline6-dev lib32readline-gplv2-dev libncurses5-dev bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev lib32bz2-dev squashfs-tools pngcrush schedtool dpkg-dev libcloog-isl-dev libcap-dev liblz4* abootimg android-tools-adb android-tools-fastboot && sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so && mkdir ~/bin && curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo && 
			  printf '%s\n'  ""
			  printf '%s\n'  "Adding Paths and Variables to .bashrc file..."
			  if [ -f ~/.bashrc ]; then
 					cleanbash 
			  fi
			  sleep 2
			  echo ${pathheader} >> ~/.bashrc &&
			  echo ${path} "# A3S Path Settings" >> ~/.bashrc && 
			showPostProgress && sleep 2
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		printf '%s\n'  ""
		printf '%s\n'  "Please Logout and Log back in for PATH changes to take effect..."
		sleep 2
		$logout
	elif [ "$installDependenciesopt0" == 2 ] ; then
		mainmenu
	elif [ "$installDependenciesopt0" != 1 ] && [ "$installDependenciesopt0" != 2 ] ; then
		installDependencies
	fi 
}
saberinstall() # Download, Compile & Install Latest SaberMod Linux Kernel
{
	clear
	Function="saberinstall"
	Stagenumber="1"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) Download Latest SaberMod Linux Kernel Source (home/'user'/Linux/)"
	printf '%s\n' "    2) Compile & Install Latest SaberMod Linux Kernel (If Already Downloaded)"
	printf '%s\n' "    3) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read saberinstallopt0
	if [ "$saberinstallopt0" == 1 ] ; then
		Function="saberdownload"
		clear
		(
		Stagenumber="1"
		show_stage_header
		printf '%s\n'  "      ${b}-> Downloading Newest SaberMod Linux Kernel Source... <-${n}             "
			cd && 
				if [ ! -d Linux ]; then
 					mkdir Linux
				else 
					rm -rf Linux && mkdir Linux 
				fi		
			cd Linux && sleep 1
			  repo init -u ${SaberLinuxSource} && exec ${sync} & wait
			showPostProgress && sleep 2
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		saberinstall
	elif [ "$saberinstallopt0" == 2 ] ; then
		Function="sabercompileinstall"
		clear
		(
		Stagenumber="1"
		show_stage_header
		printf '%s\n'  "        ${b}-> Compiling & Installing Newest SaberMod Linux Kernel... <-${n}             "
			cd && cd Linux && 
				if [ -f ubuntu ]; then
					. ubuntu & wait
				else
					printf '%s\n'  "Sabermod 'ubuntu' script NOT found!"
				sleep 2.5
				mainmenu
				fi		
		showPostProgress && sleep 2
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$saberinstallopt0" == 3 ] ; then
		mainmenu
	elif [ "$saberinstallopt0" != 1 ] && [ "$saberinstallopt0" != 2 ] && [ "$saberinstallopt0" != 3 ] ; then
		saberinstall
	fi
}
installstudio() # install Android Studio 0.8.6 & SDK Bundle
{
	clear
	Function="AstudioInstall"
	Stagenumber="2"
	StudioAlias="android-studio-bundle"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) Install ${AstudioName} "
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read installstudioopt0
	if [ "$installstudioopt0" == 1 ] ; then
		clear
		(
		Stagenumber="2"
		show_stage_header
		printf '%s\n'  "      ${b}-> Downloading ${AstudioName} ... <-${n}          "
		sleep 2
		cd &&
			if [ ! -d Android ]; then
 					mkdir Android
				fi		
			cd Android &&
			if [ -d android-studio ]; then
 					rm -rf android-studio
				fi	
			for filename in *; do
				case "${filename}" in
					${StudioAlias}*) rm -f "$filename";;
				esac
			done &&	
		wget ${AstudioSource} &&
		sleep 2		
		clear
		Stagenumber="2"
		show_stage_header
		printf '%s\n'  "        ${b}-> Installing ${AstudioName} ... <-${n}          "
		sleep 2
			for filename in *; do
				case "${filename}" in
					${StudioAlias}*) tar -zxvf "$filename";;
				esac
			done &&	
		sleep 2
		clear
		Stagenumber="2"
		show_stage_header
		printf '%s\n'  "        ${b}-> Cleaning Up ... <-${n}          "
		sleep 2 
			for filename in *; do
				case "${filename}" in
					${StudioAlias}*) rm -f "$filename";;
				esac
			done &&	
		sleep 2
		clear
		Stagenumber="2"
		show_stage_header
		printf '%s\n'  "      ${b}-> Adding Android Studio Path Environment... <-${n}          "
		sleep 2 
		StudioPathHeader=$studiopathheader
			if grep -q "$StudioPathHeader" "$File"; then
  				sed -i '/'"$StudioPathHeader"'/d' $File	
			fi
		StudioPath="# A3S Android Studio Path Settings"
			if grep -q "$StudioPath" "$File"; then
				sed -i '/'"${StudioPath}"'/d' $File	
			fi
		echo ${studiopathheader} >> ~/.bashrc &&
		echo ${studiopath} "# A3S Android Studio Path Settings" >> ~/.bashrc && 
		sleep 2
		clear
		Stagenumber="2"
		show_stage_header
		printf '%s\n'  "${b}-> All done ! Type 'studio.sh' in terminal to start Android-Studio <-${n}          "
		sleep 2 
		showPostProgress && sleep 2
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		printf '%s\n'  ""
		printf '%s\n'  "Please Logout and Log back in for PATH changes to take effect..."
		sleep 2
		$logout
	elif [ "$installstudioopt0" == 2 ] ; then
		mainmenu
	elif [ "$installstudioopt0" != 1 ] && [ "$installstudioopt0" != 2 ] ; then
		installstudio
	fi
}
installapps() # Install Sunflower FM, Sublime Text 3 & Ubuntu Tweak Apps
{       
	clear
	Function="installapps"
	Stagenumber="3"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) Download & Install Sunflower-FM, SublimeText 3 & Ubuntu Tweak Apps"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read installappsopt0
	if [ "$installappsopt0" == 1 ] ; then
		clear
		(
		Stagenumber="3"
		show_stage_header
		printf '%s\n'  "  ${b}-> Downloading 3rd Party Apps... <-${n}  " 
		sleep 1
			cd ${projectlocation} && 
				if [ -d ${TempDir} ]; then
 					rm -rf ${TempDir}
				fi
			mkdir ${TempDir} && cd ${TempDir} &&
		    wget ${SunflowerSource} && wget ${SublimeSource} && wget ${UtweakSource} &&
			clear
			Stagenumber="3"
			show_stage_header
			printf '%s\n'  "  ${b}-> Installing 3rd Party Apps... <-${n}  " 
			sleep 2
			  sudo dpkg -i ${SunflowerFilename} && sudo dpkg -i ${SublimeFilename} && sudo gdebi ${UtweakFilename} && 
            show_stage_completed
			) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$installappsopt0" == 2 ] ; then
		mainmenu
	elif [ "$installappsopt0" != 1 ] && [ "$installappsopt0" != 2 ] ; then
		installapps
	fi
}
setuprenv() # Setup ROM Build Environment
{
	clear
	Function="setuprenv"
	Stagenumber="4"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) SETUP ROM BUILD ENVIRONMENT"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read setuprenvopt0
	if [ "$setuprenvopt0" == 1 ] ; then
		clear
		(
		Stagenumber="4"
		show_stage_header
		printf '%s\n'  "      ${b}-> Setting Build Environment For - ROM Development... <-${n}             "
		printf '%s\n'  ""
		printf '%s\n'  "Creating Folders, Adding Paths and Variables to .bashrc file..."
		showPreProgress
		if [ -f ~/.bashrc ]; then
 					cleanbash 
			  fi
		sleep 2
		cd && 
		  echo '' >> ~/.bashrc &&
		  echo ${romdevheader} >> ~/.bashrc &&
		  echo ${path} "# A3S Path Settings" >> ~/.bashrc &&
		  echo ${ccache} "# A3S Ccache Settings" >> ~/.bashrc &&
		cd && 
			if [ ! -d Android ]; then
 				mkdir Android
			fi		
		cd Android && 
			if [ ! -d MyRepositories ]; then
 				mkdir MyRepositories
			fi
			if [ ! -d RomDevelopment ]; then
 				mkdir RomDevelopment
			fi	
		showPostProgress
		sleep 2
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		printf '%s\n'  ""
		printf '%s\n'  "Please Logout and Log back in for PATH changes to take effect..."
		sleep 2
		$logout
	elif [ "$setuprenvopt0" == 2 ] ; then
		mainmenu
	elif [ "$setuprenvopt0" != 1 ] && [ "$setuprenvopt0" != 2 ] ; then
		setuprenv
	fi
}
downloadpresonalrrepos() # Download Personal Repo's related to ROM Development
{
	clear
	Function="downloadpresonalrrepos"
	Stagenumber="5"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) DOWNLOAD PERSONAL ROM DEVEOLPMENT RELATED REPOS"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read downloadpresonalrreposopt0
	if [ "$downloadpresonalrreposopt0" == 1 ] ; then
		clear
		(
		Stagenumber="5"
		show_stage_header
		printf '%s\n'  "      ${b}-> Downloading Personal ROM-Related Repos... <-${n}             "
		cd && 
			if [ ! -d Android ]; then
 				mkdir Android
			fi		
		cd Android && 
			if [ ! -d MyRepositories ]; then
 				mkdir MyRepositories
			fi
		cd MyRepositories &&
			git clone -v ${PersonalRepo1} && git clone -v ${PersonalRepo2} && git clone -v ${PersonalRepo3} &&		
			git clone -v ${PersonalRepo4} && git clone -v ${PersonalRepo5} && 
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$downloadpresonalrreposopt0" == 2 ] ; then
		mainmenu
	elif [ "$downloadpresonalrreposopt0" != 1 ] && [ "$downloadpresonalrreposopt0" != 2 ] ; then
		downloadpresonalrrepos
	fi
}
downloadrsource()  # Download Desired ROM Source Code
{
	clear
	Function="downloadrsource"
	Stagenumber="6"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) DOWNLOAD ${DesiredRomName} ROM SOURCE CODE"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read downloadrsourceopt0
	if [ "$downloadrsourceopt0" == 1 ] ; then
		clear
		(
		Stagenumber="6"
		show_stage_header
		printf '%s\n'  "   ${b}-> Downloading ${DesiredRomName} Source Code ... <-${n}       "
		cd && 
			if [ ! -d Android ]; then
 				mkdir Android
			fi		
		cd Android && 
			if [ ! -d RomDevelopment ]; then
 				mkdir RomDevelopment
			fi	
		cd RomDevelopment && 
			if [ -d ${DesiredRomName} ]; then
 				rm -rf ${DesiredRomName}
			fi
		mkdir ${DesiredRomName} && cd ${DesiredRomName} &&
			repo init -u ${DesiredRomSource} -b du44 && ${sync} & wait
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$downloadrsourceopt0" == 2 ] ; then
		mainmenu
	elif [ "$downloadrsourceopt0" != 1 ] && [ "$downloadrsourceopt0" !=2 ] ; then
		downloadrsource
	fi
}
setupkenv() # Setup Kernel Build Environment 
{
	clear
	Function="setupkenv"
	Stagenumber="7"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) SETUP KERNEL BUILD ENVIRONMENT"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read setupkenvopt0
	if [ "$setupkenvopt0" == 1 ] ; then
		clear
		(
		Stagenumber="7"
		show_stage_header
		printf '%s\n'  "      ${b}-> Setting Build Environment For - Kernel Development... <-${n}             "
		printf '%s\n'  ""
		printf '%s\n'  "Creating Folders, Adding Paths and Variables to .bashrc file..."
		showPreProgress
		if [ -f ~/.bashrc ]; then
 					cleanbash 
			  fi		
		sleep 2
		cd && 
		  echo '' >> ~/.bashrc &&
		  echo ${kerneldevheader} >> ~/.bashrc &&
		  echo ${path} "# A3S Path Settings" >> ~/.bashrc &&
		  echo ${kernelarch} "# A3S KernelArch Settings" >> ~/.bashrc &&
		  echo ${ccompile} "# A3S Ccompile Settings" >> ~/.bashrc &&
		  echo ${ccompilearm} "# A3S Ccompile Arm Settings" >> ~/.bashrc &&
		  echo ${toolchainpath} "# A3S ToolchainPath Settings" >> ~/.bashrc &&
		cd && 
			if [ ! -d Android ]; then
 				mkdir Android
			fi		
		cd Android && 
			if [ ! -d KernelDevelopment ]; then
 				mkdir KernelDevelopment
			fi
	showPostProgress
	sleep 2
	show_stage_completed
	) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		printf '%s\n'  ""
		printf '%s\n'  "Please Logout and Log back in for PATH changes to take effect..."
		sleep 2
		$logout
	elif [ "$setupkenvopt0" == 2 ] ; then
		mainmenu
	elif [ "$setupkenvopt0" != 1 ] && [ "$setupkenvopt0" !=2 ] ; then
		setupkenv
	fi
}
downloadktoolchain() # Download SaberMod 4.9.3 Kernel Toolchain
{
	clear
	Function="downloadktoolchain"
	Stagenumber="8"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) DOWNLOAD LATEST SABERMOD KERNEL TOOLCHAIN"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read downloadktoolchainopt0
	if [ "$downloadktoolchainopt0" == 1 ] ; then
		clear
		(
		Stagenumber="8"
		show_stage_header
		printf '%s\n'  "      ${b}-> Downloading ${ToolchainName} Toolchain... <-${n}             "
		cd && 
			if [ ! -d Android ]; then
 				mkdir Android
			fi		
		cd Android && 
			if [ ! -d KernelDevelopment ]; then
 				mkdir KernelDevelopment
			fi
		cd KernelDevelopment &&
			if [ -d Toolchain ]; then
 				rm -rf Toolchain
			fi
		 mkdir Toolchain &&  cd Toolchain &&
			git clone -v ${ToolchainSource} &&
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$downloadktoolchainopt0" == 2 ] ; then
		mainmenu
	elif [ "$downloadktoolchainopt0" != 1 ] && [ "$downloadktoolchainopt0" != 2 ] ; then
		downloadktoolchain
	fi
}	
downloadksource()   # Download Kernel Source Code (specified in .config)
{       
	clear
	Function="downloadksource"
	Stagenumber="9"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) DOWNLOAD ${DesiredKernelName} ROM SOURCE CODE"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read downloadksourceopt0
	if [ "$downloadksourceopt0" == 1 ] ; then
		clear
		(
		Stagenumber="9"
		show_stage_header
		printf '%s\n'  "   ${b}-> Downloading ${DesiredKernelName} Source Code ... <-${n}       "
		cd && 
			if [ ! -d Android ]; then
 				mkdir Android
			fi		
		cd Android && 
			if [ ! -d KernelDevelopment ]; then
 				mkdir KernelDevelopment
			fi	
		cd KernelDevelopment && 
			if [ -d ${DesiredKernelName} ]; then
 				rm -rf ${DesiredKernelName}
			fi
		#mkdir ${DesiredKernelName} && cd ${DesiredKernelName} &&
			git clone -v ${DesiredKernelSource} ${DesiredKernelName} &&
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$downloadksourceopt0" == 2 ] ; then
		mainmenu
	elif [ "$downloadksourceopt0" != 1 ] && [ "$downloadksourceopt0" !=2 ] ; then
		downloadksource
	fi
}
# RomBuilder Menu >>>
rbcleanbuild() # Invoke both 'make clean' & 'make clobber' Commands 
{
	clear
	Function="rbcleanbuild"
	Stagenumber="r1"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) CLEAN ROM BUILD FOLDERS"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read rbcleanbuildopt0
	if [ "$rbcleanbuildopt0" == 1 ] ; then
		clear
		(
		Stagenumber="r1"
		show_stage_header
		printf '%s\n'  "        ${b}-> Cleaning Previous Folder Structure... <-${n}             "
		cd && 
			if [ -d Android ]; then
 				cd Android
			else
				printf '%s\n'  " No Root 'Android' Folder Found !, Have You Downloaded The Source ??  "
				sleep 3 && mainmenu
			fi
			if [ -d RomDevelopment ]; then
 				cd RomDevelopment
			else
				printf '%s\n'  " No Root 'RomDevelopment' Folder Found !, Have You Downloaded The Source ??  "
				sleep 3 && mainmenu
			fi		
			if [ -d ${DesiredRomName} ]; then
 				cd ${DesiredRomName}
			else
				printf '%s\n'  " No Root '${DesiredRomName}' Folder Found !, Have You Downloaded The Source ?? "
				sleep 3 && mainmenu
			fi
		 	showPreProgress
				clean="make clean"
				clobber="make clobber"
					exec ${clean} & wait			
					exec ${clobber} & wait
			showPostProgress && sleep 2
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$rbcleanbuildopt0" == 2 ] ; then
		mainmenu
	elif [ "$rbcleanbuildopt0" != 1 ] && [ "$rbcleanbuildopt0" != 2 ] ; then
		rbcleanbuild
	fi
}
rbsyncbuild() # Invoke 'repo sync -j5' Command to sync repos
{
	clear
	Function="rbsyncbuild"
	Stagenumber="r2"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) SYNC REPO'S"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read rbsyncbuildopt0
	if [ "$rbsyncbuildopt0" == 1 ] ; then
		clear
		(
		Stagenumber="r2"
		show_stage_header
		printf '%s\n'  "        ${b}-> Syncing Rom Repo's... <-${n}             "
		cd && 
			if [ -d Android ]; then
 				cd Android
			else
				printf '%s\n'  " No Root 'Android' Folder Found !, Have You Downloaded The Source ??  "
				sleep 3 && mainmenu
			fi
			if [ -d RomDevelopment ]; then
 				cd RomDevelopment
			else
				printf '%s\n'  " No Root 'RomDevelopment' Folder Found !, Have You Downloaded The Source ??  "
				sleep 3 && mainmenu
			fi		
			if [ -d ${DesiredRomName} ]; then
 				cd ${DesiredRomName}
			else
				printf '%s\n'  " No Root '${DesiredRomName}' Folder Found !, Have You Downloaded The Source ?? "
				sleep 3 && mainmenu
			fi
			sync="repo sync -j5"
				exec ${sync} & wait
			showPostProgress && sleep 2
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$rbsyncbuildopt0" == 2 ] ; then
		mainmenu
	elif [ "$rbsyncbuildopt0" != 1 ] && [ "$rbsyncbuildopt0" != 2 ] ; then
		rbsyncbuild
	fi
}
rbcompilebuild() # Compile Rom From Source
{
	clear
	Function="rbcompilebuild"
	Stagenumber="r3"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) COMPILE ROM USING BRUNCH COMMAND"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read rbcompilebuildopt0
	if [ "$rbcompilebuildopt0" == 1 ] ; then
		clear
		(
		Stagenumber="r3"
		show_stage_header
		printf '%s\n'  "        ${b}-> Compiling New Complete Rom ... <-${n}          "
		sleep 2
		cd && 
			if [ -d Android ]; then
 				cd Android
			else
				printf '%s\n'  " No Root 'Android' Folder Found !, Have You Downloaded The Source ??  "
				sleep 3 && mainmenu
			fi
			if [ -d RomDevelopment ]; then
 				cd RomDevelopment
			else
				printf '%s\n'  " No Root 'RomDevelopment' Folder Found !, Have You Downloaded The Source ??  "
				sleep 3 && mainmenu
			fi		
			if [ -d ${DesiredRomName} ]; then
 				cd ${DesiredRomName}
			else
				printf '%s\n'  " No Root '${DesiredRomName}' Folder Found !, Have You Downloaded The Source ?? "
				sleep 3 && mainmenu
			fi
			${buildenv} && sleep 2 && ${compilerom} && sleep 4
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$rbcompilebuildopt0" == 2 ] ; then
		mainmenu
	elif [ "$rbcompilebuildopt0" != 1 ] && [ "$rbcompilebuildopt0" != 2 ] ; then
		rbcompilebuild
	fi
}
rbcopy() # Copy newly compiled system and boot.img to working_folder
{       
	clear
	Function="rbcopy"
	Stagenumber="r4"
	ComiledRomAlias="DU_m7gsm_"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) COPY NEWLY COMPILED ROM TO working_folder STRUCTURE"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read rbcopyopt0
	if [ "$rbcopyopt0" == 1 ] ; then
		clear
		Stagenumber="r4"
		show_stage_header
		printf '%s\n'  "  ${b}-> Checking if Newly Compiled Rom Exists... <-${n}  " 
		sleep 3
		cd &&
		if [ -d ${outdir} ]; then
			clear
			(
			Stagenumber="r4"
			show_stage_header
			printf '%s\n'  "  ${b}-> Cleaning Previous system Folder and boot.img... <-${n}  " 
			cd && cd ${projectlocation}
				if [ ! -d RomBuilder ]; then
					mkdir RomBuilder && cd RomBuilder
				fi
				if [ ! -d working_folder ]; then
					mkdir working_folder && cd working_folder
				fi
				systemdir=${projectlocation}/RomBuilder/working_folder/system
				if [ -d ${systemdir} ]; then
					printf '%s\n' " - Removing... ($systemdir)"
					showPreProgress
						rm -rf ${systemdir} &&
					showPostProgress
				fi
				img=boot.img
				if [ -f ${img} ] ; then
					printf '%s\n' " - Removing... (${img})"
					showPreProgress
						rm -f ${img} &&
					showPostProgress
				fi
			# Create Temp folder
			if [ -d ${projectlocation}/RomBuilder/working_folder/temp ]; then
				printf '%s\n' " - Removing... (${projectlocation}/working_folder/temp)"
				showPreProgress
					rm -rf ${projectlocation}/RomBuilder/working_folder/temp &&
				showPostProgress
				printf '%s\n' " - Creating Temp Folder..."
				showPreProgress
					mkdir ${projectlocation}/RomBuilder/working_folder/temp && 
				showPostProgress
			else 
				sleep 1 
				printf '%s\n' " - Creating Temp Folder..."
				showPreProgress
					mkdir ${projectlocation}/RomBuilder/working_folder/temp && 
				showPostProgress
			fi
			# Copy Compiled Rom to working_folder
			cd && cd ${outdir}
			printf '%s\n' " - Copying Compiled Rom to working_folder/temp..."
			showPreProgress
				for filename in *; do
					case "${filename}" in
						${ComiledRomAlias}*.zip) cp "$filename" "${projectlocation}/RomBuilder/working_folder/temp" ;;
					esac
				done &&
			showPostProgress
			# Unzip and place system and boot.img into working_folder
			cd && cd ${projectlocation}/RomBuilder/working_folder/temp
			printf '%s\n' " - Unzipping Compiled Rom..."
			showPreProgress
				for filename in *; do
					case "${filename}" in
						${ComiledRomAlias}*.zip) exec unzip "$filename" & wait ;;
					esac
				done &&
			showPostProgress
			printf '%s\n' ""
			printf '%s\n' " - Copying 'system' and 'boot.img to working_folder..."
			showPreProgress
				cp -ar system ${projectlocation}/RomBuilder/working_folder &&
				cp -ar boot.img ${projectlocation}/RomBuilder/working_folder &&
			showPostProgress
			# Delete temp Folder
			cd && cd ${projectlocation}/RomBuilder/working_folder
			printf '%s\n' " - Removing temp Folder..."
			showPreProgress
				rm -rf temp &&
			showPostProgress
			show_stage_completed
			) 2>&1 | tee ${logfile} 
				mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
			sleep 2.5
			cd && cd ${projectlocation} &&
				exec ${projectlocation}/AndroidThreeScripts.sh
		else 
			sleep 1 
			printf '%s\n' ""
			printf '%s\n' " - Doesnt Look Like New Rom Has Been Compiled Yet, Compile New ROM First !!    "
			sleep 2.5
			mainmenu
		fi
	elif [ "$rbcopyopt0" == 2 ] ; then
		mainmenu
	elif [ "$rbcopyopt0" != 1 ] && [ "$rbcopyopt0" != 2 ] ; then
		rbcopy
	fi
}
rbgapps() # Pull Gapps Files From Device 
{
	clear
	Function="rbgapps"
	Stagenumber="r5"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) PULL GAPPS FILES FROM THE DEVICE"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read rbgappsopt0
	if [ "$rbgappsopt0" == 1 ] ; then
		clear
		(
		Stagenumber="r5"
		show_stage_header
		printf '%s\n'  "        ${b}-> Cleaning Previous Folder Structure... <-${n}             "
		cd RomBuilder &&
		if [ ! -d grabbed_files ]; then
			mkdir grabbed_files 
		fi		
		if [ -d ${DIR1} ]; then
			printf '%s\n' " - Removing... ($DIR1)"
			showPreProgress
				rm -rf ${DIR1} &&
			showPostProgress
		else 
			sleep 1 
		fi
		mkdir ${DIR1} && mkdir ${DIR1}/priv-app && 
		printf '%s\n'  "" 
		printf '%s\n'  ""
		printf '%s\n'  "        ${b}-> Extracting Gapps File's From Device... <-${n}        "
		printf ""
		printf ""
		adb start-server &&
		printf ""
		printf " >>                                               (01%%)\r" 
		adb pull /system/priv-app/GoogleLoginService.apk ${DIR1}/priv-app &&
		printf "                                                  (25%%)\r" 
		adb pull /system/priv-app/GoogleServicesFramework.apk ${DIR1}/priv-app &&
		printf "                                                  (50%%)\r" 
		adb pull /system/priv-app/Phonesky.apk ${DIR1}/priv-app &&
		printf "                                                  (75%%)\r" 
		adb pull /system/priv-app/PrebuiltGmsCore.apk ${DIR1}/priv-app &&
		showPostProgress 
		adb kill-server
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$rbgappsopt0" == 2 ] ; then
		mainmenu
	elif [ "$rbgappsopt0" != 1 ] && [ "$rbgappsopt0" != 2 ] ; then
		rbgapps
	fi
}
rbadditions() # Download Additional Apps Using 'additions.links' File
{
	clear
	Function="rbadditions"
	Stagenumber="r6"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) DOWNLOAD ADDITIONAL APPS USING 'additions.links' FILE"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read rbadditionsopt0
	if [ "$rbadditionsopt0" == 1 ] ; then
		clear
		(
		Stagenumber="r6"
		show_stage_header
		printf '%s\n'  "        ${b}-> Cleaning Previous Folder Structure... <-${n}             "
		cd RomBuilder &&		
		if [ ! -d grabbed_files ]; then
			mkdir grabbed_files
		fi		
		# - removed, as tracking own vender_du repo for time being
		#if [ -d ${DIR2} ]; then
			#printf '%s\n' " - Removing... ($DIR2)"
			#showPreProgress
				#rm -rf ${DIR2} &&
			#showPostProgress
		#else 
			#sleep 1 
		#fi
		if [ -d ${DIR3} ]; then
			printf '%s\n' " - Removing... ($DIR3)"
			showPreProgress
				rm -rf ${DIR3} &&
			showPostProgress
		else 
			sleep 1 
		fi
		if [ -d ${DIR4} ]; then
			printf '%s\n' " - Removing... ($DIR4)"
			showPreProgress
				rm -rf ${DIR4} &&
			showPostProgress
		else 
			sleep 1 
		fi
		if [ -d ${DIR5} ]; then
			printf '%s\n' " - Removing... ($DIR5)"
			showPreProgress
				rm -rf ${DIR5} &&
			showPostProgress
		else 
			sleep 1 
		fi
		if [ -d ${DIR6} ]; then
			printf '%s\n' " - Removing... ($DIR6)"
			showPreProgress
				rm -rf ${DIR6} &&
			showPostProgress
		else 
			sleep 1 
		fi
		printf '%s\n'  "" 
		printf '%s\n'  ""
		printf '%s\n'  "    ${b}-> Downloading Additional Apps Using Additions.links... <-${n}   "
		printf ""
		printf ""
		cd && cd ${projectlocation}/RomBuilder/ &&
			while read url target; do 
				wget "$url" -P "$target";
			done < Additions.links
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$rbadditionsopt0" == 2 ] ; then
		mainmenu
	elif [ "$rbadditionsopt0" != 1 ] && [ "$rbadditionsopt0" != 2 ] ; then
		rbadditions
	fi
}
rbxposed() # Download Additional Apps Using 'additions.links' File
{
	clear
	Function="rbxposed"
	Stagenumber="r7"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) DOWNLOAD XPOSED FRAMEWORK/MODULES USING 'xposed.links' FILE"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read rbxposedopt0
	if [ "$rbxposedopt0" == 1 ] ; then
		clear
		(
		Stagenumber="r7"
		show_stage_header
		printf '%s\n'  "        ${b}-> Cleaning Previous Folder Structure... <-${n}             "
		cd RomBuilder &&		
		if [ ! -d grabbed_files ]; then
			mkdir grabbed_files
		fi		
		if [ -d ${DIR7} ]; then
			printf '%s\n' " - Removing... ($DIR7)"
			showPreProgress
				rm -rf ${DIR7} &&
			showPostProgress
		else 
			sleep 1 
		fi
		if [ -d ${DIR8} ]; then
			printf '%s\n' " - Removing... ($DIR8)"
			showPreProgress
				rm -rf ${DIR8} &&
			showPostProgress
		else 
			sleep 1 
		fi
		printf '%s\n'  "" 
		printf '%s\n'  ""
		printf '%s\n'  "    ${b}-> Downloading Additional Apps Using Additions.links... <-${n}   "
		printf ""
		printf ""
		cd && cd ${projectlocation}/RomBuilder &&
			while read url target; do 
				wget "$url" -P "$target";
			done < Xposed.links
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$rbxposedopt0" == 2 ] ; then
		mainmenu
	elif [ "$rbxposedopt0" != 1 ] && [ "$rbxposedopt0" != 2 ] ; then
		rbxposed
	fi
}
rbcopy2()  # Copy grabbed_files To working_folder, Ready To Be Zipped Up
{
	clear
	Function="rbcopy2"
	Stagenumber="r8"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) COPY GRABBED_FILES TO WORKING_FOLDER"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read rbcopy2opt0
	if [ "$rbcopy2opt0" == 1 ] ; then
		clear
		(
		Stagenumber="r8"
		show_stage_header
		printf '%s\n'  "     ${b}-> Cleaning Folder Structure & Copying Files ... <-${n}       "
		if [ -d ${TDIR1} ]; then
			printf '%s\n' " - Removing... ($TDIR1)"
			showPreProgress
				rm -rf ${TDIR1} && 
			showPostProgress
			printf '%s\n' " - Copying... ($DIR1) to ($TDIR1)"
			showPreProgress
				cp -ar ${DIR1} ${Additionsdir} &&
			showPostProgress
		else 
			sleep 1 
			printf '%s\n' " - Copying... ($DIR1) to ($TDIR1)"
			showPreProgress
				cp -ar ${DIR1} ${Additionsdir} &&
			showPostProgress
		fi
		# - removed, as tracking own vender_du repo for time being
		#if [ -d ${TDIR2} ]; then
			#printf '%s\n' " - Removing... ($TDIR2)"
			#showPreProgress
				#rm -rf ${TDIR2} && 
			#showPostProgress
			#printf '%s\n' " - Copying... ($DIR2) to ($TDIR2)"
			#showPreProgress
				#cp -ar ${DIR2} ${Additionsdir} &&
			#showPostProgress
		#else 
			#sleep 1 
			#printf '%s\n' " - Copying... ($DIR2) to ($TDIR2)"
			#showPreProgress
				#cp -ar ${DIR2} ${Additionsdir} &&
			#showPostProgress
		#fi
		if [ -d ${TDIR3} ]; then
			printf '%s\n' " - Removing... ($TDIR3)"
			showPreProgress
				rm -rf ${TDIR3} && 
			showPostProgress
			printf '%s\n' " - Copying... ($DIR3) to ($TDIR3)"
			showPreProgress
				cp -ar ${DIR3} ${Additionsdir} &&
			showPostProgress
		else 
			sleep 1 
			printf '%s\n' " - Copying... ($DIR3) to ($TDIR3)"
			showPreProgress
				cp -ar ${DIR3} ${Additionsdir} &&
			showPostProgress
		fi
		if [ -d ${TDIR4} ]; then
			printf '%s\n' " - Removing... ($TDIR4)"
			showPreProgress
				rm -rf ${TDIR4} && 
			showPostProgress
			printf '%s\n' " - Copying... ($DIR4) to ($TDIR4)"
			showPreProgress
				cp -ar ${DIR4} ${Additionsdir} &&
			showPostProgress
		else 
			sleep 1 
			printf '%s\n' " - Copying... ($DIR4) to ($TDIR4)"
			showPreProgress
				cp -ar ${DIR4} ${Additionsdir} &&
			showPostProgress
		fi
		if [ -d ${TDIR5} ]; then
			printf '%s\n' " - Removing... ($TDIR5)"
			showPreProgress
				rm -rf ${TDIR5} && 
			showPostProgress
			printf '%s\n' " - Copying... ($DIR5) to ($TDIR5)"
			showPreProgress
				cp -ar ${DIR5} ${Additionsdir} &&
			showPostProgress
		else 
			sleep 1 
			printf '%s\n' " - Copying... ($DIR5) to ($TDIR5)"
			showPreProgress
				cp -ar ${DIR5} ${Additionsdir} &&
			showPostProgress
		fi
		if [ -d ${TDIR6} ]; then
			printf '%s\n' " - Removing... ($TDIR6)"
			showPreProgress
				rm -rf ${TDIR6} && 
			showPostProgress
			printf '%s\n' " - Copying... ($DIR6) to ($TDIR6)"
			showPreProgress
				cp -ar ${DIR6} ${Additionsdir} &&
			showPostProgress
		else 
			sleep 1 
			printf '%s\n' " - Copying... ($DIR6) to ($TDIR6)"
			showPreProgress
				cp -ar ${DIR6} ${Additionsdir} &&
			showPostProgress
		fi
		if [ -d ${TDIR7} ]; then
			printf '%s\n' " - Removing... ($TDIR7)"
			showPreProgress
				rm -rf ${TDIR7} && 
			showPostProgress
			printf '%s\n' " - Copying... ($DIR7) to ($TDIR7)"
			showPreProgress
				cp -ar ${DIR7} ${Additionsdir} &&
			showPostProgress
		else 
			sleep 1 
			printf '%s\n' " - Copying... ($DIR7) to ($TDIR7)"
			showPreProgress
				cp -ar ${DIR7} ${Additionsdir} &&
			showPostProgress
		fi
		if [ -d ${TDIR8} ]; then
			printf '%s\n' " - Removing... ($TDIR8)"
			showPreProgress
				rm -rf ${TDIR8} && 
			showPostProgress
			printf '%s\n' " - Copying... ($DIR8) to ($TDIR8)"
			showPreProgress
				cp -ar ${DIR8} ${Additionsdir} &&
			showPostProgress
		else 
			sleep 1 
			printf '%s\n' " - Copying... ($DIR8) to ($TDIR8)"
			showPreProgress
				cp -ar ${DIR8} ${Additionsdir} &&
			showPostProgress
		fi
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$rbcopy2opt0" == 2 ] ; then
		mainmenu
	elif [ "$rbcopy2opt0" != 1 ] && [ "$rbcopy2opt0" !=2 ] ; then
		rbcopy2
	fi
}
rbeditaroma() # Edit 'aroma-config' File
{
	${sysdefapp} ${rbaromadir}/aroma-config &&
	printf '%s\n'  ""
	printf '%s\n'  "    HAVE YOU FINISHED EDITING AND SAVED 'aroma-config' ??"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read -p "		Load New Changes Now ?? (y/n)?" choice
	case "$choice" in 
 		 y|Y ) showPreProgress 
				showPostProgress
				sleep 1
				exec ${projectlocation}/AndroidThreeScripts.sh;;
 		 n|N ) mainmenu;;
		 * ) rbeditaroma;;
	esac	
}
rbeditupdaterscript() # Edit 'updater-script' File
{
	${sysdefapp} ${rbaromadir}/updater-script &&
	printf '%s\n'  ""
	printf '%s\n'  "    HAVE YOU FINISHED EDITING AND SAVED 'updater-script' ??"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read -p "		Load New Changes Now ?? (y/n)?" choice
	case "$choice" in 
 		 y|Y ) showPreProgress 
				showPostProgress
				sleep 1
				exec ${projectlocation}/AndroidThreeScripts.sh;;
 		 n|N ) mainmenu;;
		 * ) rbeditupdaterscript;;
	esac	
}
rbeditbuildprop() # Edit 'build.prop' File
{
	if [ -f ${buildprop} ]; then
		${sysdefapp} ${buildprop} &&
		printf '%s\n'  ""
		printf '%s\n'  "    HAVE YOU FINISHED EDITING AND SAVED 'build.prop' ??"
		printf '%s\n'  ""
		printf '%s\n'  ""
		read -p "		Load New Changes Now ?? (y/n)?" choice
		case "$choice" in 
 			 y|Y ) showPreProgress 
					showPostProgress
					sleep 1
					exec ${projectlocation}/AndroidThreeScripts.sh;;
 			 n|N ) mainmenu;;
			 * ) rbeditbuildprop;;
		esac
	else
		printf '%s\n'  " No 'build.prop' File Found !, Have You Copied The Compiled Rom Yet ??  "
		sleep 3 && mainmenu	
	fi
}
rbeditadditions() # Edit 'Additions.links' File
{
	${sysdefapp} ${projectlocation}/RomBuilder/Additions.links  &&
	printf '%s\n'  ""
	printf '%s\n'  "    HAVE YOU FINISHED EDITING AND SAVED 'Additions.links' ??"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read -p "		Load New Changes Now ?? (y/n)?" choice
	case "$choice" in 
 		 y|Y ) showPreProgress 
				showPostProgress
				sleep 1
				exec ${projectlocation}/AndroidThreeScripts.sh;;
 		 n|N ) mainmenu;;
		 * ) rbeditadditions;;
	esac	
}
rbeditxposed() # Edit 'Xposed.links' File
{
	${sysdefapp} ${projectlocation}/RomBuilder/Xposed.links  &&
	printf '%s\n'  ""
	printf '%s\n'  "    HAVE YOU FINISHED EDITING AND SAVED 'Additions.links' ??"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read -p "		Load New Changes Now ?? (y/n)?" choice
	case "$choice" in 
 		 y|Y ) showPreProgress 
				showPostProgress
				sleep 1
				exec ${projectlocation}/AndroidThreeScripts.sh;;
 		 n|N ) mainmenu;;
		 * ) rbeditxposed;;
	esac	
}
rbzip()   # Zip working_folder Contents To Make Flashable Zip File
{       
	clear
	Function="rbzip"
	Stagenumber="r14"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) ZIP WORKING_FOLDER CONTENTS READY TO FLASH ON DEVICE"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read rbzipopt0
	if [ "$rbzipopt0" == 1 ] ; then
		clear
		(
		Stagenumber="r14"
		show_stage_header
		printf '%s\n'  "  ${b}-> Cleaning Previous Zip Structure & Zipping New Files... <-${n}  " 
		printf '%s\n'  ""
		showPreProgress
		sleep 2 
		printf "" 
		if [ ! -d ${finalout} ]; then
			mkdir ${finalout}
		fi
		# Search build.prop file for string begining with 'ro.du.version', Then strip 'ro.du.version=' From String And Use Outcome To Name Zip File
		results=$(grep ro.du.version ${buildprop} | sed -r 's/^.{14}//')
		name=${results}
		cd ${projectlocation}/RomBuilder/working_folder &&
			exec zip -r ${finalout}/${name}.zip * & wait
		showPostProgress
		printf ""
		sleep 2
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$rbzipopt0" == 2 ] ; then
		mainmenu
	elif [ "$rbzipopt0" != 1 ] && [ "$rbzipopt0" != 2 ] ; then
		rbzip
	fi
}
# KernelBuilder Menu >>>
kbdefconfig() # Edit '${dconfig}' File
{
	cd && ${sysdefapp} ${dconfigdir}/${dconfig} &&
	printf '%s\n'  ""
	printf '%s\n'  "    HAVE YOU FINISHED EDITING AND SAVED '${dconfig}' ??"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read -p "		Load New Changes Now ?? (y/n)?" choice
	case "$choice" in 
 		 y|Y ) showPreProgress 
				showPostProgress
				sleep 1 && cd ${projectlocation}
				exec ${projectlocation}/AndroidThreeScripts.sh;;
 		 n|N ) mainmenu;;
		 * ) kbdefconfig;;
	esac	
}
kbcleanbuild() # Invoke the 'make clean' Command and remove '.config' file
{
	clear
	Function="kbcleanbuild"
	Stagenumber="k2"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) CLEAN KERNEL BUILD FOLDERS"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read kbcleanbuildopt0
	if [ "$kbcleanbuildopt0" == 1 ] ; then
		clear
		(
		Stagenumber="k2"
		show_stage_header
		printf '%s\n'  "      ${b}-> Cleaning Previous Folder Structure... <-${n}             "
		cd && 
			if [ -d Android ]; then
 				cd Android
			else
				printf '%s\n'  " No Root 'Android' Folder Found !, Have You Downloaded The Source ??  "
				sleep 3 && mainmenu
			fi
			if [ -d KernelDevelopment ]; then
 				cd KernelDevelopment
			else
				printf '%s\n'  " No Root 'KernelDevelopment' Folder Found !, Have You Downloaded The Source ??  "
				sleep 3 && mainmenu
			fi		
			if [ -d ${DesiredKernelName} ]; then
 				cd ${DesiredKernelName}
			else
				printf '%s\n'  " No Root '${DesiredKernelName}' Folder Found !, Have You Downloaded The Source ?? "
				sleep 3 && mainmenu
			fi
		 	showPreProgress
				clean="make clean"
					exec ${clean} & wait
					rm -f .config &&
			showPostProgress && sleep 2
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$kbcleanbuildopt0" == 2 ] ; then
		mainmenu
	elif [ "$kbcleanbuildopt0" != 1 ] && [ "$kbcleanbuildopt0" != 2 ] ; then
		kbcleanbuild
	fi
}
kbcompilebuild() # Compile Kernel
{
	clear
	Function="kbcompilebuild"
	Stagenumber="k3"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) COMPILE KERNEL & MODULES"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read kbcompilebuildopt0
	if [ "$kbcompilebuildopt0" == 1 ] ; then
		clear
		(
		Stagenumber="k3"
		show_stage_header
		printf '%s\n'  "      ${b}-> Compiling New Kernel & Modules... <-${n}             "
		sleep 2
		if [ ! -d ${projectlocation}/KernelBuilder/compiled_files ]; then
			mkdir ${projectlocation}/KernelBuilder/compiled_files
		fi
		if [ -d ${kdir3} ]; then	
			printf '%s\n' " - Cleaning... ($kdir3)"
			showPreProgress
				rm -rf ${kdir3} && 
			showPostProgress
		else 
			sleep 1 
		fi
		if [ -d ${kdir2} ]; then
			printf '%s\n' " - Cleaning... ($kdir2)"
			showPreProgress
				rm -rf ${kdir2} && 
			showPostProgress
		else 
			sleep 1 
		fi
		cd && cd Android/KernelDevelopment/${DesiredKernelName} &&
			make ${dconfig} && sleep 2 && ${compilekernel} && sleep 4
		# Copy zImage To 'compiled_files' folder
		printf '%s\n'  ""
		printf '%s\n'  "      ${b}-> Copying New zImage to 'compiled_files'... <-${n}         "
		cd
			if [ -d ${kdir3} ]; then	
				printf '%s\n' " - Cleaning... ($kdir3)"
				showPreProgress
					rm -rf ${kdir3} && 
					mkdir ${kdir3} && 
				showPostProgress
				printf '%s\n' " - Copying... (zImage) to ($kdir3)"
				showPreProgress
					cp -ar Android/KernelDevelopment/${DesiredKernelName}/arch/arm/boot/zImage ${kdir3} &&
				showPostProgress
			else 
				sleep 1 
				printf '%s\n' " - Copying... (zImage) to ($kdir3)"
				showPreProgress
					mkdir ${kdir3} &&
					cp -ar Android/KernelDevelopment/${DesiredKernelName}/arch/arm/boot/zImage ${kdir3} &&
				showPostProgress
			fi
		printf '%s\n'  ""
		printf '%s\n'  ""
		read -p "Copy kernel Modules to compiled_files too? .. Continue?? (y/n)" choice
		case "$choice" in 
			y|Y ) printf '%s\n'  "      ${b}-> Copying New Modules to 'compiled_files'... <-${n}         "
				# Copy Modules To 'compiled_files' folder
				cd && cd Android/KernelDevelopment/${DesiredKernelName} &&
					if [ -d ${kdir2} ]; then
						printf '%s\n' " - Cleaning... ($kdir2)"
						showPreProgress
							rm -rf ${kdir2} && 
							mkdir ${kdir2} && 
						showPostProgress
						printf '%s\n' " - Copying... (Modules) to ($kdir2)"
						showPreProgress
							cp `find ./ | grep .ko$` modules.order ${kdir2}/ &&
							cd ${kdir2}
							rm -f modules.order &&
						showPostProgress
					else 
						sleep 1 
						printf '%s\n' " - Copying... (Modules) to ($kdir2)"
						showPreProgress
							mkdir ${kdir2} && 
							cp `find ./ | grep .ko$` modules.order ${kdir2}/ &&
							cd ${kdir2}
							rm -f modules.order &&
						showPostProgress
					fi

		;;
			n|N ) 
				sleep 2
				show_stage_completed
				sleep 2.5
				cd ${projectlocation} &
					exec ${projectlocation}/AndroidThreeScripts.sh
		esac
	sleep 2
	show_stage_completed
	) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$kbcompilebuildopt0" == 2 ] ; then
		mainmenu
	elif [ "$kbcompilebuildopt0" != 1 ] && [ "$kbcompilebuildopt0" != 2 ] ; then
		kbcompilebuild
	fi
}
kbcreateboot()  # Create New boot.img file
{
	clear
	Function="kbcreateboot"
	Stagenumber="k4"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) CREATE NEW 'boot.img' FILE"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read kbcreatebootopt0
	if [ "$kbcreatebootopt0" == 1 ] ; then
		clear
		(
		Stagenumber="k4"
		show_stage_header
		printf '%s\n'  "   ${b}-> Cleaning Previous Folder Structure ... <-${n}       "
		cd
			if [ -d ${bootdir} ]; then
				printf '%s\n' " - Cleaning... ($bootdir)"
				showPreProgress
					rm -rf ${bootdir} && 
					mkdir ${bootdir} &&
				showPostProgress
				sleep 2
			else 
				sleep 1 
				printf '%s\n' " - Creating... ($bootdir)"
				showPreProgress
					mkdir ${bootdir} &&
				showPostProgress
				sleep 2
			fi
		clear
		Stagenumber="k4"
		show_stage_header
		printf '%s\n'  "       ${b} (Openning 'original_bootimg' folder,"
		printf '%s\n'  "    place stock 'boot.img' from compiled ROM in the folder)${n} "
		printf '%s\n'  ""
		printf '%s\n'  ""
		printf '%s\n'  ""
		cd
		${sysdefapp} ${bootdir}
		sleep 4
		printf '%s\n'  ""
		printf '%s\n'  ""
		read -p "${b}Placed stock 'boot.img' file in directory? .. Continue?? (y/n)${n} " choice
		case "$choice" in 
			y|Y ) printf '%s\n'  "Extracting 'boot.img'..."
				cd && cd ${bootdir}
					abootimg -x boot.img 
						sleep 4
					mkdir initrd &&
						sleep 4
					cd initrd 
						zcat ../initrd.img | cpio -i &&
				showPostProgress
				sleep 4
				clear
				Stagenumber="k4"
				show_stage_header
				printf '%s\n'  ""
				printf '%s\n'  ""
				printf '%s\n'  ""
				printf '%s\n'  "        ${b}Editing 'bootimg.cfg' & 'default.prop' files...\r          "
				printf '%s\n'  ""
				printf '%s\n'  ""
				printf '%s\n'  ""
				showPreProgress
				cd && cd ${bootdir}
					TargetFileA=bootimg.cfg
					TargetStringA=bootsize
					if grep -q "$TargetStringA" "$TargetFileA"; then
  						sed -i '/'"$TargetStringA"'/d' $TargetFileA	
					fi
				cd initrd &&
					TargetFileB=default.prop
					TargetStringB="ro.secure=1"
					if grep -q "$TargetStringB" "$TargetFileB"; then
  						sed -i 's|'"$TargetStringB"'|'"ro.secure=0"'|g' $TargetFileB	
					fi
					TargetStringC="ro.debuggable=0"
					if grep -q "$TargetStringC" "$TargetFileB"; then
  						sed -i 's|'"$TargetStringC"'|'"ro.debuggable=1"'|g' $TargetFileB	
					fi
				showPostProgress
				sleep 2.5
				clear
				Stagenumber="k4"
				show_stage_header
				printf '%s\n'  "        ${b}-> Cleaning Folder Structure... <-${n}         "
				printf '%s\n'  ""
				printf '%s\n' " - Removing Files..."
				showPreProgress
				cd && cd ${bootdir}
					rm -f boot.img && 
					rm -f initrd.img && 
					rm -f zImage && 
				showPostProgress
				printf '%s\n'  ""
				printf '%s\n' " - Copying... (zImage) to (${bootdir})"
				showPreProgress
				cd &&
				cp ${kdir3}/zImage ${bootdir}
				showPostProgress
				printf '%s\n'  ""
				printf '%s\n'  ""
				printf '%s\n' " - Creating 'initrd.img'..."
				cd && cd ${bootdir}/initrd
					find . | cpio -o -H newc | gzip > ../initrd.img &&
				sleep 2
				showPostProgress
				printf "\n"
				printf '%s\n'  ""
				printf '%s\n'  ""
				printf '%s\n' " - Creating New 'boot.img'..."
				cd && cd ${bootdir}
					abootimg --create boot.img -k zImage -r initrd.img &&
					sleep 0.5
					abootimg --create boot.img -f bootimg.cfg -k zImage -r initrd.img &&
					sleep 2
				showPostProgress
				printf "\n"
				printf '%s\n'  ""
				printf '%s\n'  ""
				if [ -d ${dir1} ]; then
					printf '%s\n' " - Cleaning... ($kdir1)"
					showPreProgress
						cd
						rm -rf ${kdir1} && 
						mkdir ${kdir1} &&
					showPostProgress
					printf '%s\n' " - Copying New 'boot.img' to $kdir1..."
					showPreProgress
						cd && cd ${bootdir}
						cp boot.img ${kdir1}
					showPostProgress
				else 
					sleep 1 
					printf '%s\n' " - Cannot Remove ($dir1), Does Not Exist"
					printf '%s\n' " - Copying New 'boot.img' to $kdir1..."
					showPreProgress
						cd
						mkdir ${kdir1} && 
						cd && cd ${bootdir}
						cp boot.img ${kdir1}
					showPostProgress
				fi				
		;;
			n|N ) 
				mainmenu;;
			* ) printf '%s\n'  "invalid response"
				kbcreateboot;;
		esac
	show_stage_completed
	) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$kbcreatebootopt0" == 2 ] ; then
		mainmenu
	elif [ "$kbcreatebootopt0" != 1 ] && [ "$kbcreatebootopt0" !=2 ] ; then
		kbcreateboot
	fi
}
kbcopy()  # Copy compiled_files To working_folder, Ready To Be Zipped Up
{
	clear
	Function="kbcopy"
	Stagenumber="k5"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) COPY 'COMPILED_FILES' TO WORKING_FOLDER"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read kbcopyopt0
	if [ "$kbcopyopt0" == 1 ] ; then
		clear
		(
		Stagenumber="k5"
		show_stage_header
		printf '%s\n'  "     ${b}-> Cleaning Folder Structure & Copying Files ... <-${n}       "
		cd
		if [ -d ${tkdir1} ]; then
			printf '%s\n' " - Removing... ($tkdir1)"
			showPreProgress
				rm -rf ${tkdir1} && 
			showPostProgress
			printf '%s\n' " - Copying... ($kdir1) to ($tkdir1)"
			showPreProgress
				cp -ar ${kdir1} ${projectlocation}/KernelBuilder/working_folder/AROMA &&
			showPostProgress
		else 
			sleep 1 
			printf '%s\n' " - Copying... ($kdir1) to ($tdir1)"
			showPreProgress
				cp -ar ${kdir1} ${projectlocation}/KernelBuilder/working_folder/AROMA &&
			showPostProgress
		fi
		printf '%s\n'  ""
		printf '%s\n'  ""
		read -p "Copy kernel Modules to 'working_folder' too? .. Continue?? (y/n)" choice
		case "$choice" in 
			y|Y ) printf '%s\n'  "        ${b}-> Copying New Modules to 'working_folder'... <-${n}         "
				# Copy Modules To 'working_folder' 
				if [ -d ${tkdir2} ]; then
					printf '%s\n' " - Removing... ($tkdir2)"
					showPreProgress
						rm -rf ${tkdir2} && 
					showPostProgress
					printf '%s\n' " - Copying... ($kdir2) to ($tkdir2)"
					showPreProgress
						cp -ar ${kdir2} ${projectlocation}/KernelBuilder/working_folder/AROMA/system/lib &&
					showPostProgress
				else 
					sleep 1 
					printf '%s\n' " - Copying... ($kdir2) to ($tkdir2)"
					showPreProgress
						cp -ar ${kdir2} ${projectlocation}/KernelBuilder/working_folder/AROMA/system/lib &&
					showPostProgress
				fi
		;;
			n|N ) 
			show_stage_completed
			sleep 4
			mainmenu
		esac
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$kbcopyopt0" == 2 ] ; then
		mainmenu
	elif [ "$kbcopyopt0" != 1 ] && [ "$kbcopyopt0" !=2 ] ; then
		kbcopy
	fi
}
kbeditaroma() # Edit 'aroma-config' File
{
	${sysdefapp} ${kbaromadir}/aroma-config &&
	printf '%s\n'  ""
	printf '%s\n'  "    HAVE YOU FINISHED EDITING AND SAVED 'aroma-config' ??"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read -p "		Load New Changes Now ?? (y/n)?" choice
	case "$choice" in 
 		 y|Y ) showPreProgress 
				showPostProgress
				sleep 1
				cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh;;
 		 n|N ) mainmenu;;
		 * ) kbeditaroma;;
	esac	
}
kbeditupdaterscript() # Edit 'aroma-config' File
{
	${sysdefapp} ${kbaromadir}/updater-script &&
	printf '%s\n'  ""
	printf '%s\n'  "    HAVE YOU FINISHED EDITING AND SAVED 'aroma-config' ??"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read -p "		Load New Changes Now ?? (y/n)?" choice
	case "$choice" in 
 		 y|Y ) showPreProgress 
				showPostProgress
				sleep 1
				cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh;;
 		 n|N ) mainmenu;;
		 * ) kbeditupdaterscript;;
	esac	
}
kbzip() # Zip working_folder Contents To Make Flashable Zip File
{       
	clear
	Function="kbzip"
	Stagenumber="k8"
	show_stage_header
	printf "    ${b}Make Your Selection, And Let Me Do The Work :) ..."
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    1) ZIP WORKING_FOLDER CONTENTS READY TO FLASH ON DEVICE"
	printf '%s\n' "    2) return to main menu${n}"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read kbzipopt0
	if [ "$kbzipopt0" == 1 ] ; then
		clear
		(
		Stagenumber="k8"
		show_stage_header
		printf '%s\n'  "  ${b}-> Cleaning Previous Zip Structure & Zipping New Files... <-${n}  " 
		printf '%s\n'  ""
		printf '%s\n' " - Zipping Working_Folder Structure Ready For Flash" 
		showPreProgress
		sleep 2 
		if [ ! -d ${finalout} ]; then
			mkdir ${finalout}
		fi
		printf "" 
		cd && source ${dconfigdir}/${dconfig} &&
		cd && cd ${projectlocation}/KernelBuilder/working_folder
			exec zip -r ${finalout}/${CONFIG_LOCALVERSION}_${today}.zip * & wait
		showPostProgress
		printf ""
		sleep 2
		show_stage_completed
		) 2>&1 | tee ${logfile} 
			mv ${logfile} ${projectlocation}/${LogLocation}/${today}_${Function}.log
		sleep 2.5
		cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh
	elif [ "$kbzipopt0" == 2 ] ; then
		mainmenu
	elif [ "$kbzipopt0" != 1 ] && [ "$kbzipopt0" != 2 ] ; then
		kbzip
	fi
}
# A3S mainmenu / Preferences/ Shutdown/ Restart etc
cleanbash() # check 'bash.rc' for conflicting entries before adding new ones
{
	PathHeader=$pathheader
	if grep -q "$PathHeader" "$File"; then
  		sed -i '/'"$PathHeader"'/d' $File	
	fi
	Path="# A3S Path Settings"
	if grep -q "$Path" "$File"; then
		sed -i '/'"${Path}"'/d' $File	
	fi
	RomDevHeader=$romdevheader
	if grep -q "$RomDevHeader" "$File"; then
  		sed -i '/'"$RomDevHeader"'/d' $File
	fi
	Ccache="# A3S Ccache Settings"
	if grep -q "$Ccache" "$File"; then
		sed -i '/'"$Ccache"'/d' $File
	fi
	KernelDevHeader=$kerneldevheader
	if grep -q "$KernelDevHeader" "$File"; then
  		sed -i '/'"$KernelDevHeader"'/d' $File
	fi
	KernelArch="# A3S KernelArch Settings"
	if grep -q "$KernelArch" "$File"; then
		sed -i '/'"$KernelArch"'/d' $File
	fi
	Ccompile="# A3S Ccompile Settings"
	if grep -q "$Ccompile" "$File"; then
  		sed -i '/'"$Ccompile"'/d' $File
	fi
	CcompileArm="# A3S Ccompile Arm Settings"
	if grep -q "$CcompileArm" "$File"; then
		sed -i '/'"$CcompileArm"'/d' $File
	fi
	ToolchainPath="# A3S ToolchainPath Settings"
	if grep -q "$ToolchainPath" "$File"; then
		sed -i '/'"$ToolchainPath"'/d' $File
	fi
}
editprefs() # open 'user.preferences'  
{
	#${sysdefapp} ${projectlocation}/user.preferences  &&
	printf '%s\n'  ""
	printf '%s\n'  "    HAVE YOU FINISHED EDITING AND $user 'user.preferences' ??"
	printf '%s\n'  ""
	printf '%s\n'  ""
	read -p "		Load New Changes Now ?? (y/n)?" choice
	case "$choice" in 
 		 y|Y ) showPreProgress 
				showPostProgress
				sleep 1
				exec ${projectlocation}/AndroidThreeScripts.sh;;
 		 n|N ) mainmenu;;
		 * ) editprefs;;
	esac
}
deletelogs() # Delete logs if they exist
{
	printf '%s\n'  ""
	printf '%s\n'  ""
	read -p "		Delete All Logs ?? (y/n)?" choice
	case "$choice" in 
 		 y|Y ) if [ -d ${projectlocation}/${LogLocation} ]; then
				showPreProgress 
					rm -rf ${projectlocation}/${LogLocation}
				showPostProgress
				sleep 1
			   fi
			exec ${projectlocation}/AndroidThreeScripts.sh;;
 		 n|N ) cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh;;
 		 * ) deletelogs;;
	esac
}
exitscript() # Exit Script
{
	printf '%s\n'  ""
	printf '%s\n'  ""
	printf '%s\n' "    - Exiting 'AndroidThreeScripts' ...   "
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
 		 n|N ) cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh;;
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
 		 n|N ) cd ${projectlocation} &
			exec ${projectlocation}/AndroidThreeScripts.sh;;
 		 * )  shutdownpc;;
	esac
}
mainmenu
## END OF SCRIPT FILE ##
