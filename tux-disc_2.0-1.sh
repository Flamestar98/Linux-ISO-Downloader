#!/bin/bash

#                                    
#   _____            ____  _         
#  |_   _|_ _ _ _   |    \|_|___ ___ 
#    | | | | |_'_|  |  |  | |_ -|  _|
#    |_| |___|_,_|  |____/|_|___|___|
#                                    
#                       Version 2.0-1
#  
#  ==================================
#  
#  Copyright (C) 2017-2019 John Laufert <johnglaufert@pm.me>
#  
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.
#  
#  ==================================
#  

# This shell script allows for easy downloading (and with bootiso, flashing) of
# ISO images for Ubuntu, it's various flavors, and KDE neon.
# All ISO images provided are x86_64. i386 downloads will not be made available.
# ISO images will be saved to $HOME/ISO.

# Prints date as YYYYmmdd.
DATE=$(date +%Y%m%d)

# Makes the ISO directory if not present.
if [ ! -d $HOME/ISO ]; then
	mkdir $HOME/ISO
fi

clear

echo "
##########################################
##   _____            ____  _           ##
##  |_   _|_ _ _ _   |    \|_|___ ___   ##
##    | | | | |_'_|  |  |  | |_ -|  _|  ##
##    |_| |___|_,_|  |____/|_|___|___|  ##
##                                      ##
##                       Version 2.0-1  ##
##                                      ##
##########################################
"

# Asks user which flavor of Ubuntu they want to download.
echo 'Please choose your flavor of Ubuntu (or KDE neon)'
select FLAVOR in "KDE neon" "Kubuntu" "Lubuntu" "Ubuntu" "Ubuntu Budgie" "Ubuntu MATE" "Ubuntu Studio" "Xubuntu"
do
	case $FLAVOR in
		"KDE neon"|"Kubuntu"|"Lubuntu"|"Ubuntu"|"Ubuntu Budgie"|"Ubuntu MATE"|"Ubuntu Studio"|"Xubuntu")
			break
			;;
		*)
			echo 'Please select one of the available flavors of Ubuntu (or KDE neon)'
			;;
	esac
done

# If the user chose KDE neon, asks them what release channel they want to
# download.
if [[ $FLAVOR = "KDE neon" ]]; then
	echo 'Please pick a release channel for KDE neon'
	select RELEASE in "User Edition" "Developer Edition Git-Stable" "Developer Edition Git-Unstable"
	do
		case $RELEASE in
			"User Edition"|"Developer Edition Git-Stable"|"Developer Edition Git-Unstable")
				break
				;;
			*)
				echo 'Please pick a release channel for KDE neon'
				;;
		esac
	done

	if [[ $RELEASE = "User Edition" ]]; then
		wget -O $HOME/ISO/neon-useredition-current-$DATE\.iso https://files.kde.org/neon/images/neon-useredition/current/neon-useredition-current.iso

		NEON="useredition"
	fi

	if [[ $RELEASE = "Developer Edition Git-Stable" ]]; then
		wget -O $HOME/ISO/neon-devedition-gitstable-current-$DATE\.iso https://files.kde.org/neon/images/neon-devedition-gitstable/current/neon-devedition-gitstable-current.iso

		NEON="devedition-gitstable"
	fi

	if [[ $RELEASE = "Developer Edition Git-Unstable" ]]; then
		wget -O $HOME/ISO/neon-devedition-gitunstable-current-$DATE\.iso https://files.kde.org/neon/images/neon-devedition-gitunstable/current/neon-devedition-gitunstable-current.iso

		NEON="devedition-gitunstable"
	fi
else
	# Otherwise, if they chose an Ubuntu flavor, they are now asked to
	# choose which release they would like to download.

	# Ubuntu Budgie does not have an official 16.04 release, so the user
	# will not be given that option when choosing Ubuntu Budgie.
	if [[ $FLAVOR = "Ubuntu Budgie" ]]; then
		echo 'Please select an Ubuntu release to download'
		select RELEASE in "18.04.1" "18.10"
		do
			case $RELEASE in
				"18.04.1"|"18.10")
					break
					;;
				*)
					echo 'Please select an Ubuntu release to download'
					;;
			esac
		done
	else
		# If the flavor they want to download isn't Ubuntu Budgie, then
		# they get to pick from all of the currently suportded releases.
		echo 'Please select an Ubuntu release to download'
		select RELEASE in "16.04.5" "18.04.1" "18.10"
		do
			case $RELEASE in
				"16.04.5"|"18.04.1"|"18.10")
					break
					;;
				*)
					echo 'Please select an Ubuntu release to download'
					;;
			esac
		done
	fi

	# Ubuntu Studio didn't release 18.04 as an LTS. Also, they use 'dvd'
	# instead of 'desktop' in their file name for whatever reason. This
	# fixes those issues if Ubuntu Studio is being downloaded.
	if [[ $FLAVOR = "Ubuntu Studio" ]]; then
		if [[ $RELEASE = "18.04.1" ]]; then
			RELEASE="18.04"
		fi

		FLAVOR="${FLAVOR// /}"
		PLATFORM="dvd"
	else
		# This bit changes out spaces with dashes, and sets 'desktop' in
		# the file name (thanks Ubuntu Studio...)
		FLAVOR="${FLAVOR// /-}"
		PLATFORM="desktop"
	fi

	# This will make all letters lowercase. This is the final thing that
	# needs to be done before the ISO can be downloaded.
	FLAVOR=$(echo $FLAVOR | tr '[A-Z]' '[a-z]')

	# Ubuntu proper has a special download link that's different from the
	# others. This uses that for Ubuntu, and the 'cdimage' one for the
	# rest.
	if [[ $FLAVOR = "ubuntu" ]]; then
		wget -P $HOME/ISO http://releases.ubuntu.com/$RELEASE/$FLAVOR-$RELEASE-$PLATFORM-amd64.iso
	else
		wget -P $HOME/ISO http://cdimage.ubuntu.com/$FLAVOR/releases/$RELEASE/release/$FLAVOR-$RELEASE-$PLATFORM-amd64.iso
	fi
fi

# This last part will ask the user if they want to flash the ISO they just
# downloaded to a USB stick using 'bootiso'.
echo -en 'Would you like to flash the ISO you just downloaded to a USB stick? (yes/no):  '
read BOOTISO
case $BOOTISO in
	y|yes|Yes|YES)	YN='Yes'		;;
	n|no|No|NO)		echo 'Okay'		;;
	*)				echo 'Invalid input. Assuming no'	;;
esac

if [[ $YN = "Yes" ]]; then
	if [[ $FLAVOR = "KDE neon" ]]; then
		bootiso $HOME/ISO/$NEON-current-$DATE\.iso
	else
		bootiso $HOME/ISO/$FLAVOR-$RELEASE-$PLATFORM-amd64.iso
	fi
fi

# Flush all variables set during operation of Tux Disc.
DATE=""
FLAVOR=""
RELEASE=""
NEON=""
PLATFORM=""
YN=""

clear