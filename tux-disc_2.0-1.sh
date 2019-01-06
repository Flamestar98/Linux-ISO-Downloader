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

DATE=$(date +%Y%m%d)

echo 'Please choose you flavor of Ubuntu (or KDE neon)'
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

