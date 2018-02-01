#!/usr/bin/env python3

# Establishes the base directory that the script is in.
import os
BASEDIR = os.path.dirname(os.path.abspath(__file__))

# Provides todays date in YYYYmmdd format. Will be most commonly used when downloading daily ISO images
import datetime
DATE = f"{datetime.datetime.now():%Y%m%d}"

# Defines the binary version of Tux Disc as is stated by the binaryver file
BINARYVER = open(BASEDIR+'/binaryver', 'r').readline().strip()

# Defines the patch version of Tux Disc as is stated by the patchver file
PATCHVER = open(BASEDIR+'/patchver', 'r').readline().strip()

# Gets the current version of Debian from debver, which is updated at build time
DEBVER = open(BASEDIR+'/debver', 'r').readline().strip()

# Gets the current version of Linux mint from mintver, which is updated at build time
MINTVER = open(BASEDIR+'/mintver', 'r').readline().strip()

# Gets the current version of Kali Linux from kaliver, which is updated at build time
KALIVER = open(BASEDIR+'/kaliver', 'r').readline().strip()

# Splash message
print("""
                        ##############################
                        ##                          ##
                        ##           Tux            ##
                        ##                          ##
                        ##           Disc           ##
                        ##                          ##
                        ##      Version """+BINARYVER+'-'+PATCHVER+"""       ##
                        ##                          ##
                        ##############################
""")

# Asks the user which Linux Distribution they would like to download
print("""1) Debian """+DEBVER+"""	        6) Linux Mint """+MINTVER+"""    11) Ubuntu GNOME
2) Fedora	        7) Lubuntu	      12) Ubuntu MATE
3) Kali Linux """+KALIVER+"""    8) Qubes	      13) Ubuntu Studio
4) KDE Neon	        9) Ubuntu	      14) Xubuntu
5) Kubuntu	       10) Ubuntu Budgie""")
DISTRO = {'1':'Debian '+DEBVER,'2':'Fedora'}
Choose_Distro = input("Please select a distro to download: ")
try:
    print( DISTRO[Choose_Distro] )
except KeyError:
    print ('Distro #%s not found' % Choose_Distro )