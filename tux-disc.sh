#!/bin/bash

#                                    
#   _____            ____  _         
#  |_   _|_ _ _ _   |    \|_|___ ___ 
#    | | | | |_'_|  |  |  | |_ -|  _|
#    |_| |___|_,_|  |____/|_|___|___|
#                                    
#                       Version 2.1-1
#  
#  ==================================
#  
#  Copyright (C) 2017 John Laufert <johnglaufert@pm.me>
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

# This shell script allows for easy downloading of
# ISO images for Ubuntu, it's various flavors, and KDE neon.
# All ISO images provided are x86_64. i386 downloads will not be made available.
# ISO images will be saved to $HOME/ISO.

# Sets date as YYYYmmdd.
DATE=$(date +%Y%m%d)

# Sets LTS versions
UBUNTU_1804="18.04.4"
UBUNTU_2004="20.04"

# Makes the ISO directory if not present.
if [ ! -d ${HOME}/ISO ]; then
	mkdir -p ${HOME}/ISO
fi


echo "
##########################################
##   _____            ____  _           ##
##  |_   _|_ _ _ _   |    \|_|___ ___   ##
##    | | | | |_'_|  |  |  | |_ -|  _|  ##
##    |_| |___|_,_|  |____/|_|___|___|  ##
##                                      ##
##                       Version 2.1-1  ##
##                                      ##
##########################################

Copyright (C) 2017  John Laufert

This program comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to redistribute it
under the terms of the GNU General Public License version 3.
"

# Asks user which flavor of Ubuntu they want to download.
echo 'Please choose your flavor of Ubuntu (or KDE neon)'
select FLAVOR in "KDE neon" "Kubuntu" "Lubuntu" "Ubuntu" "Ubuntu Budgie" "Ubuntu MATE" "Ubuntu Studio" "Xubuntu"
do
	case ${FLAVOR} in
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
if [[ ${FLAVOR} = "KDE neon" ]]; then
	echo 'Please pick a release channel for KDE neon'
	select RELEASE in "User Edition" "Testing Edition" "Unstable Edition" "Developer Edition"
	do
		case $RELEASE in
			"User Edition"|"Testing Edition"|"Unstable Edition"|"Developer Edition")
				break
				;;
			*)
				echo 'Please pick a release channel for KDE neon'
				;;
		esac
	done

	if [[ $RELEASE = "User Edition" ]]; then
		NEON="user"
	elif [[ ${RELEASE} = "Testing Edition" ]]; then
	    NEON="testing"
	elif [[ $RELEASE = "Unstable Edition" ]]; then
		NEON="unstable"
	elif [[ $RELEASE = "Developer Edition" ]]; then
		NEON="developer"
	fi
else
	# Otherwise, if they chose an Ubuntu flavor, they are now asked to
	# choose which release they would like to download.

	# Ubuntu Budgie does not have an official 16.04 release, so the user
	# will not be given that option when choosing Ubuntu Budgie.	
	if [[ ${FLAVOR} = "Ubuntu Budgie" ]]; then
		echo 'Please select an Ubuntu release to download'
		select RELEASE in "${UBUNTU_1804}" "19.10" "${UBUNTU_2004}"
		do
			case ${RELEASE} in
				"${UBUNTU_1804}"|"19.10"|"${UBUNTU_2004}")
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
		select RELEASE in "16.04.6" "${UBUNTU_1804}" "19.10" "${UBUNTU_2004}"
		do
			case ${RELEASE} in
				"16.04.6"|"${UBUNTU_1804}"|"19.10"|"${UBUNTU_2004}")
					break
					;;
				*)
					echo 'Please select an Ubuntu release to download'
					;;
			esac
		done
	fi
fi

echo "Are you sure you want to download ${FLAVOR} ${RELEASE}?"
select YN in 'Yes' 'No'
do
    case ${YN} in
        'Yes'|'No')
            break
            ;;
        *)
            echo 'Please select either Yes or No'
            ;;
    esac
done

if [[ ${YN} = "Yes" ]]; then
    if [[ ${FLAVOR} = "KDE neon" ]]; then
        wget -O ${HOME}/ISO/neon-${NEON}-current-${DATE}.iso https://files.kde.org/neon/images/${NEON}/current/neon-${NEON}-current.iso
    else
        # Ubuntu Studio uses 'dvd' instead of 'desktop' in their file name for
    	# whatever reason. This fixes that issue if downloading Ubuntu Studio.
	    if [[ ${FLAVOR} = "Ubuntu Studio" ]]; then
	        RELEASE="${RELEASE//${UBUNTU_1804}/18.04}"
	    	FLAVOR="${FLAVOR// /}"
	    	PLATFORM="dvd"
	
		    if [[ ${RELEASE} = 18.04 ]]; then
		        echo ''
		        echo '################################################################################'
		        echo 'NOTICE:  Ubuntu Studio 18.04 is not an LTS release. To recieve updates through'
		        echo '2021, please enable the Backports PPA'
		        echo '################################################################################'
		        echo ''
		    fi
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
	    	wget -P ${HOME}/ISO http://releases.ubuntu.com/${RELEASE}/${FLAVOR}-${RELEASE}-${PLATFORM}-amd64.iso
	    else
	    	wget -P ${HOME}/ISO http://cdimage.ubuntu.com/${FLAVOR}/releases/${RELEASE}/release/${FLAVOR}-${RELEASE}-${PLATFORM}-amd64.iso
	    fi
    fi
fi

# Flush all variables set during operation of Tux Disc.
DATE=""
FLAVOR=""
RELEASE=""
NEON=""
PLATFORM=""
YN=""