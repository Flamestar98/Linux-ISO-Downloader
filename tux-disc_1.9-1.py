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
distrolist = ('''1) Debian '''+DEBVER+'''
2) Fedora
3) Kali Linux '''+KALIVER+'''
4) KDE Neon
5) Kubuntu
6) Linux Mint '''+MINTVER+'''
7) Lubuntu
8) Qubes
9) Ubuntu
10) Ubuntu Budgie
11) Ubuntu GNOME
12) Ubuntu MATE
13) Ubuntu Studio
14) Xubuntu''')
print(distrolist)
DISTRO = {'1':'Debian '+DEBVER,'2':'Fedora'}
Choose_Distro = input("Please select a distro to download: ")
try:
    print( DISTRO[Choose_Distro] )
except KeyError:
    print ('Distro #%s not found' % Choose_Distro )
