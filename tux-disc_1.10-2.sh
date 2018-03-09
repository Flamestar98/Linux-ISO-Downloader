#!/bin/bash

# Establishes base directory of script
BASEDIR=$(dirname $0)

# Prints todays date (YYYYmmdd) when called by $DATE
DATE=$(date '+%Y%m%d')

# Establishes binary version number
BINARYVER=$(grep "" $BASEDIR/binaryver)

# Establishes patch version
PATCHVER=$(grep "" $BASEDIR/patchver)

# Establishes Debian version
DEBVER=$(grep "" $BASEDIR/debver)

# Establishes Linux Mint version
MINTVER=$(grep "" $BASEDIR/mintver)

# Establishes Kali Linux version
KALIVER=$(grep "" $BASEDIR/kaliver)

# Establishes Ubuntu 16.04 point release
SIXTEENPOINTFOUR=$(grep "" $BASEDIR/sixteenpointfour)

echo "
                        ##############################
                        ##                          ##
                        ##           Tux            ##
                        ##                          ##
                        ##           Disc           ##
                        ##                          ##
                        ##      Version $BINARYVER-$PATCHVER      ##
                        ##                          ##
                        ##############################
"

# Linux distrobution
echo 'Please select from the following'
select DISTRO in "Debian $DEBVER" "Fedora" "Kali Linux $KALIVER" "KDE Neon" "Kubuntu" "Linux Mint $MINTVER" "Lubuntu" "Qubes" "Ubuntu" "Ubuntu Budgie" "Ubuntu GNOME" "Ubuntu MATE" "Ubuntu Studio" "Xubuntu"
do
        case $DISTRO in
        "Debian $DEBVER"|"Fedora"|"Kali Linux $KALIVER"|"KDE Neon"|"Kubuntu"|"Linux Mint $MINTVER"|"Lubuntu"|"Qubes"|"Ubuntu"|"Ubuntu Budgie"|"Ubuntu GNOME"|"Ubuntu MATE"|"Ubuntu Studio"|"Xubuntu")
                break
                ;;
        *)
                echo "Please select a distrobution"
                ;;
        esac
done

# Debian
if [[ $DISTRO = "Debian $DEBVER" ]]; then
        # Install method
        echo "Now select an install method for $DISTRO"
        select RELEASE in "Net Install" "Full Install" "Live Install"
        do
                case $RELEASE in
                "Net Install"|"Full Install"|"Live Install")
                        break
                        ;;
                        *)
                        echo "Please select an install method"
                        ;;
                esac
        done

        # Net Install
        if [[ $RELEASE = "Net Install" ]]; then
                # Architecture
                echo "Now select an architecture for $DISTRO $RELEASE"
                select ARC in "32-bit" "64-bit"
                do
                        case $ARC in
                        "32-bit"|"64-bit")
                                break
                                ;;
                        *)
                                echo "Please select an architecture"
                                ;;
                        esac
                done

                if [[ $ARC = "32-bit" ]]; then
                        arc=$"i386"
                fi

                if [[ $ARC = "64-bit" ]]; then
                        arc=$"amd64"
                fi

                FINAL=$"$DISTRO $ARC $RELEASE"

                # Download
                OPTION=$"-P" URL=$" https://cdimage.debian.org/debian-cd/current/$arc/iso-cd/debian-$DEBVER-$arc-netinst.iso"
        fi

        # Full Install
        if [[ $RELEASE = "Full Install" ]]; then
                # Architecture
                echo "Now select an architecture for $DISTRO $RELEASE"
                select ARC in "32-bit" "64-bit"
                do
                        case $ARC in
                        "32-bit"|"64-bit")
                                break
                                ;;
                        *)
                                echo "Please select an architecture"
                                ;;
                        esac
                done

                if [[ $ARC = "32-bit" ]]; then
                        arc=$"i386"
                fi

                if [[ $ARC = "64-bit" ]]; then
                arc=$"amd64"
                fi

                FINAL=$"$DISTRO $ARC $RELEASE"

                # Download
                OPTION=$"-P"
                URL1=$" https://cdimage.debian.org/debian-cd/current/$arc/iso-dvd/debian-$DEBVER-$arc-DVD-1.iso"
                URL2=$" https://cdimage.debian.org/debian-cd/current/$arc/iso-dvd/debian-$DEBVER-$arc-DVD-2.iso"
                URL3=$" https://cdimage.debian.org/debian-cd/current/$arc/iso-dvd/debian-$DEBVER-$arc-DVD-3.iso"
        fi

        # Live Install
        if [[ $RELEASE = "Live Install" ]]; then
                # Architecture
                echo "Now select an architecture for $DISTRO $RELEASE"
                select ARC in "32-bit" "64-bit"
                do
                        case $ARC in
                        "32-bit"|"64-bit")
                                break
                                ;;
                        *)
                                echo "Please select an architecture"
                                ;;
                        esac
                done

                # Which desktop?
                echo "Which desktop would you like for $DISTRO $ARC $RELEASE?"
                select DEBDESK in Cinnamon GNOME KDE LXDE MATE XFCE
                do
                        case $DEBDESK in
                        Cinnamon|GNOME|KDE|LXDE|MATE|XFCE)
                                break
                                ;;
                        *)
                                echo "Please select a desktop"
                                ;;
                        esac
                done

                FINAL=$"$DISTRO $RELEASE $ARC $DEBDESK"

                debdesk="${DEBDESK,,}"

                if [[ $ARC = "32-bit" ]]; then
                        arc=$"i386"
                fi

                if [[ $ARC = "64-bit" ]]; then
                        arc=$"amd64"
                fi
                
                # Download
                        OPTION=$"-P" URL=$" https://cdimage.debian.org/debian-cd/current-live/$arc/iso-hybrid/debian-live-$DEBVER-$arc-$debdesk.iso"
        fi
fi

# Fedora
if [[ $DISTRO = "Fedora" ]]; then
        # Fedora version
        echo "Please select your version of $DISTRO for download"
        select FED in "Workstation 26" "Workstation 27"
        do
                case $FED in
                "Workstation 26"|"Workstation 27")
                        break
                        ;;
                *)
                        echo "Please select a Fedora version"
                        ;;
                esac
        done

        # Install method
        echo "Now select an install method for $DISTRO $FED"
        select RELEASE in "Net Install" "Live Install"
        do
                case $RELEASE in
                "Net Install"|"Live Install")
                        break
                        ;;
                *)
                        echo "Please select an install method"
                        ;;
                esac
        done

        # Net install 26
        if [[ $FED = "Workstation 26" ]] && [[ $RELEASE = "Net Install" ]]; then
                # Architecture
                echo "Now select an architecture for $DISTRO $FED $RELEASE"
                select ARC in "32-bit" "64-bit"
                do
                        case $ARC in
                        "32-bit"|"64-bit")
                                break
                                ;;
                        *)
                                echo "Please select an architecture"
                                ;;
                        esac
                done

                # i386
                if [[ $ARC = "32-bit" ]]; then
                        # Download
                        OPTION=$"-P" URL=$" https://download.fedoraproject.org/pub/fedora-secondary/releases/26/Workstation/i386/iso/Fedora-Workstation-netinst-i386-26-1.5.iso"
                fi

                # amd64
                if [[ $ARC = "64-bit" ]]; then
                # Download
                OPTION=$"-P" URL=$" https://download.fedoraproject.org/pub/fedora/linux/releases/26/Workstation/x86_64/iso/Fedora-Workstation-netinst-x86_64-26-1.5.iso"
                fi
        fi

        # Live Install 26
        if [[ $FED = "Workstation 26" ]] && [[ $RELEASE = "Live Install" ]]; then
                # Architecture
                echo "Now select an architecture for $DISTRO $FED $RELEASE"
                select ARC in "32-bit" "64-bit"
                do
                        case $ARC in
                        "32-bit"|"64-bit")
                                break
                                ;;
                        *)
                                echo "Please select an architecture"
                                ;;
                        esac
                done

                # i386
                if [[ $ARC = "32-bit" ]]; then
                        # Download
                        OPTION=$"-P" URL=$" https://download.fedoraproject.org/pub/fedora-secondary/releases/26/Workstation/i386/iso/Fedora-Workstation-Live-i386-26-1.5.iso"
                fi

                # amd64
                if [[ $ARC = "64-bit" ]]; then
                        # Download
                        OPTION=$"-P" URL=$" https://download.fedoraproject.org/pub/fedora/linux/releases/26/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-26-1.5.iso"
                fi
        fi

        # Net install 27
        if [[ $FED = "Workstation 27" ]] && [[ $RELEASE = "Net Install" ]]; then
                # Architecture
                echo "Now select an architecture for $DISTRO $FED $RELEASE"
                select ARC in "32-bit" "64-bit"
                do
                        case $ARC in
                        "32-bit"|"64-bit")
                                break
                                ;;
                        *)
                                echo "Please select an architecture"
                                ;;
                        esac
                done
    
                # i386
                if [[ $ARC = "32-bit" ]]; then
                        # Download
                        OPTION=$"-P" URL=$" https://download.fedoraproject.org/pub/fedora-secondary/releases/27/Workstation/i386/iso/Fedora-Workstation-netinst-i386-27-1.6.iso"
                fi
    
                # amd64
                if [[ $ARC = "64-bit" ]]; then
                        # Download
                        OPTION=$"-P" URL=$" https://download.fedoraproject.org/pub/fedora/linux/releases/27/Workstation/x86_64/iso/Fedora-Workstation-netinst-x86_64-27-1.6.iso"
                fi
        fi
    
        # Live Install 27
        if [[ $FED = "Workstation 27" ]] && [[ $RELEASE = "Live Install" ]]; then
                ARC=$"64-bit"
                # Download
                OPTION=$"-P" URL=$" https://download.fedoraproject.org/pub/fedora/linux/releases/27/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-27-1.6.iso"
        fi
        FINAL=$"$DISTRO $FED $ARC $RELEASE"
fi

# Kali Linux
if [[ $DISTRO = "Kali Linux $KALIVER" ]]; then
        echo "Now select a release for $DISTRO"
        select RELEASE in "Kali Linux" "Kali Linux KDE" "Kali Linux Light" "Kali Linux LXDE" "Kali Linux MATE" "Kali Linux Xfce"
        do
                case $RELEASE in
                "Kali Linux"|"Kali Linux KDE"|"Kali Linux Light"|"Kali Linux LXDE"|"Kali Linux MATE"|"Kali Linux Xfce")
                        break
                        ;;
                *)
                        echo "Please select a release"
                        ;;
                esac
        done

        if [[ $RELEASE = "Kali Linux" ]] || [[ $RELEASE = "Kali Linux Light" ]]; then
                echo "Now select an architecture for $RELEASE $KALIVER"
                select ARC in "32-bit" "64-bit"
                do
                        case $ARC in
                        "32-bit"|"64-bit")
                                break
                                ;;
                        *)
                                ;;
                        esac
                done
        fi

        if [[ ! $ARC = "32-bit" ]] && [[ ! $ARC = "64-bit" ]]; then
                ARC=$"64-bit"
        fi

        if [[ $ARC = "32-bit" ]]; then
                arc=$"i386"
        fi

        if [[ $ARC = "64-bit" ]]; then
                arc=$"amd64"
        fi

        HYPHEN="${RELEASE// /-}"

        distro="${HYPHEN,,}"

        OPTION=$"-P"

        URL=$" http://cdimage.kali.org/kali-$KALIVER/$distro-$KALIVER-$arc.iso"

        FINAL=$"$RELEASE $KALIVER $ARC"
fi

# KDE Neon
if [[ $DISTRO = "KDE Neon" ]]; then
        # Release
        echo "Now select a release for $DISTRO"
        select RELEASE in "User Edition" "User LTS Edition" "Developer Edition Git-Unstable" "Developer Edition Git-Stable"
        do
                case $RELEASE in
                "User Edition"|"User LTS Edition"|"Developer Edition Git-Unstable"|"Developer Edition Git-Stable")
                        break
                        ;;
                *)
                        echo "Please select a release"
                        ;;
                esac
        done

        # User Edition
        if [[ $RELEASE = "User Edition" ]]; then
                # Download
                OPTION=$"-O" URL=$"/neon-useredition-current-amd64.iso https://files.kde.org/neon/images/neon-useredition/current/neon-useredition-current.iso"
        fi
        
        # User LTS Edition
        if [[ $RELEASE = "User LTS Edition" ]]; then
                # Download
                OPTION=$"-O" URL=$"/neon-userltsedition-current-amd64.iso https://files.kde.org/neon/images/neon-userltsedition/current/neon-userltsedition-current.iso"
        fi

        # Developer Edition Git-Unstable
        if [[ $RELEASE = "Developer Edition Git-Unstable" ]]; then
                # Download
                OPTION=$"-O" URL=$"/neon-devedition-gitunstable-current-amd64.iso https://files.kde.org/neon/images/neon-devedition-gitunstable/current/neon-devedition-gitunstable-current.iso"
        fi

        # Developer Edition Git-Stable
        if [[ $RELEASE = "Developer Edition Git-Stable" ]]; then
                # Download
                OPTION=$"-O" URL=$"/neon-devedition-gitstable-current-amd64.iso https://files.kde.org/neon/images/neon-devedition-gitstable/current/neon-devedition-gitstable-current.iso"
        fi

        FINAL=$"$DISTRO $RELEASE 64-bit"
fi

# Linux Mint
if [[ $DISTRO = "Linux Mint $MINTVER" ]]; then
        echo "Which desktop would you like?"
        select MINTDESK in Cinnamon KDE MATE Xfce
        do
                case $MINTDESK in
                Cinnamon|KDE|MATE|Xfce)
                        break
                        ;;
                *)
                        echo "Please select a desktop"
                        ;;
                esac
        done

        echo "What architecture will you be running?"
        select ARC in 32-bit 64-bit
        do
                case $ARC in
                32-bit|64-bit)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done

        arc="${ARC//-/}"

        mintdesk="${MINTDESK,,}"

        FINAL=$"$DISTRO $MINTDESK $ARC"

        OPTION=$"-P" URL=$" http://mirrors.evowise.com/linuxmint/stable/$MINTVER/linuxmint-$MINTVER-$mintdesk-$arc.iso"
fi

# Qubes
if [[ $DISTRO = "Qubes" ]]; then
        # Release
        echo "Now select a release for $DISTRO"
        select RELEASE in "3.2" "4.0-rc5"
        do
                case $RELEASE in
                "3.2"|"4.0-rc5")
                break
                        ;;
                *)
                        echo "Please select a release"
                        ;;
                esac
        done

        # Qubes 3.2
        if [[ $RELEASE = "3.2" ]]; then
                # Message
                FINAL=$"$DISTRO $RELEASE 64-bit"
                # Download
                OPTION=$"-P" URL=$" https://mirrors.kernel.org/qubes/iso/Qubes-R3.2-x86_64.iso"
        fi

        # Qubes 4.0-rc5
        if [[ $RELEASE = "4.0-rc5" ]]; then
                # Message
                FINAL=$"$DISTRO $RELEASE 64-bit"
                # Download
                OPTION=$"-P" URL=$" https://mirrors.kernel.org/qubes/iso/Qubes-R4.0-rc5-x86_64.iso"
        fi
fi

# Ubuntu
if [[ "$DISTRO" = "Kubuntu" ]] || [[ "$DISTRO" = "Lubuntu" ]] || [[ "$DISTRO" = "Ubuntu" ]] || [[ "$DISTRO" = "Ubuntu Budgie" ]] || [[ $DISTRO = "Ubuntu GNOME" ]] || [[ "$DISTRO" = "Ubuntu MATE" ]] || [[ "$DISTRO" = "Ubuntu Studio" ]] || [[ "$DISTRO" = "Xubuntu" ]]; then
        if [[ $DISTRO = "Ubuntu Studio" ]]; then
                HYPHEN="${DISTRO// /}"
                DESKDVD=$"dvd"
        else
                HYPHEN="${DISTRO// /-}"
                DESKDVD=$"desktop"
        fi

        distro="${HYPHEN,,}"

        # This section needs to be reintroduced to the rest of the Ubuntu flavors come beta 2
        #if [[ "$DISTRO" = "Ubuntu" ]]; then
        #        echo 'Please select a release'
        #        select RELEASE in "$SIXTEENPOINTFOUR" "17.10.1" "18.04 Daily"
        #        do
        #                case $RELEASE in
        #                "$SIXTEENPOINTFOUR"|"17.10.1"|"18.04 Daily")
        #                        break
        #                        ;;
        #                *)
        #                        echo 'Please select a release'
        #                        ;;
        #                esac
        #        done
        #fi
        # End section to reintrodice

        if [[ $DISTRO = "Ubuntu Budgie" ]]; then
                echo 'Please select a release'
                select RELEASE in "17.10.1" "18.04 Daily" "18.04 Beta 1"
                do
                        case $RELEASE in
                        "17.10.1"|"18.04 Daily"|"18.04 Beta 1")
                                break
                                ;;
                *)
                                echo 'Please select a release'
                                ;;
                        esac
                done
        fi

        if [[ $DISTRO = "Ubuntu GNOME" ]]; then
                echo 'Please select a release'
                select RELEASE in "$SIXTEENPOINTFOUR"
                do
                        case $RELEASE in
                        "$SIXTEENPOINTFOUR")
                                break
                                ;;
                        *)
                                echo 'Please select a release'
                                ;;
                        esac
                done
        fi

        if [[ $DISTRO = "Ubuntu Studio" ]]; then
                echo 'Please select a release'
                select RELEASE in "$SIXTEENPOINTFOUR" "17.10.1"
                do
                        case $RELEASE in
                        "$SIXTEENPOINTFOUR"|"17.10.1")
                                break
                                ;;
                        *)
                                echo 'Please select a release'
                                ;;
                        esac
                done
        fi

        if [[ "$DISTRO" = "Kubuntu" ]] || [[ "$DISTRO" = "Lubuntu" ]] || [[ "$DISTRO" = "Ubuntu" ]]|| [[ "$DISTRO" = "Ubuntu MATE" ]] || [[ "$DISTRO" = "Xubuntu" ]]; then
                echo 'Please select a release'
                select RELEASE in "$SIXTEENPOINTFOUR" "17.10.1" "18.04 Daily" # "18.04 Beta 1"
                do
                        case $RELEASE in
                        "$SIXTEENPOINTFOUR"|"17.10.1"|"18.04 Daily") #|"18.04 Beta 1")
                                break
                                ;;
                        *)
                                echo 'Please select a release'
                                ;;
                        esac
                done
        fi

        if ( [[ $DISTRO = "Ubuntu" ]] && [[ $RELEASE = "17.10.1" ]] ) || ( [[ $DISTRO = "Ubuntu" ]] && [[ $RELEASE = "18.04 Daily" ]] ); then
                ARC=$"64-bit"
        else
                echo 'Please select an architecture'
                select ARC in "32-bit" "64-bit"
                do
                        case $ARC in
                        "32-bit"|"64-bit")
                                break
                                ;;
                        *)
                                echo 'Please select an architecture'
                                ;;
                        esac
                done
        fi

        if [[ $ARC = "32-bit" ]]; then
                arc=$"i386"
        fi

        if [[ $ARC = "64-bit" ]]; then
                arc=$"amd64"
        fi

        FINAL=$"$DISTRO $RELEASE $ARC"

        if [[ $DISTRO = "Ubuntu" ]]; then
                if [[ $RELEASE = "18.04 Daily" ]]; then
                        OPTION=$"-O" URL=$"/$distro-bionic-$DESKDVD-$DATE-$arc.iso http://cdimage.ubuntu.com/$distro/daily-live/current/bionic-$DESKDVD-$arc.iso"
                else
                        OPTION=$"-P" URL=$" http://releases.ubuntu.com/$RELEASE/$distro-$RELEASE-$DESKDVD-$arc.iso"
                fi
        else
                if [[ $RELEASE = "18.04 Daily" ]]; then
                        OPTION=$"-O" URL=$"/$distro-bionic-$DESKDVD-$DATE-$arc.iso http://cdimage.ubuntu.com/$distro/daily-live/current/bionic-$DESKDVD-$arc.iso"
                fi

                #if [[ $RELEASE = "18.04 Beta 1" ]]; then
                #        OPTION=$"-O" URL=$"/$distro-bionic-$DESKDVD-beta1-$arc.iso http://cdimage.ubuntu.com/$distro/18.04/beta-1/bionic-$DESKDVD-$arc.iso"
                #fi

                if [[ ! $RELEASE = "18.04 Daily" ]]; then # && [[ ! $RELEASE = "18.04 Beta 1" ]]; then
                        OPTION=$"-P" URL=$" http://cdimage.ubuntu.com/$distro/releases/$RELEASE/release/$distro-$RELEASE-$DESKDVD-$arc.iso"
                fi
        fi
fi

read -p "Is this what you wanted to download? $FINAL (Y/n) " YN
        case "$YN" in
        y|Y ) YN=$"yes";;
        n|N ) YN=$"no";;
        *) YN=$"invalid" && echo "invalid";;
        esac

if [[ $YN = "yes" ]]; then
        read -p "Where in your home directory would you like to download $FINAL? (d for default) " DIRECT
                case "$DIRECT" in
                d|D ) DIRECT=$"ISO";;
                *);;
                esac

        echo "Now downloading $FINAL to $HOME/$DIRECT..."

        if [ ! -d "$HOME/$DIRECT" ]; then
                mkdir $HOME/$DIRECT
        fi

        if [[ $DISTRO = "Debian $DEBVER" ]] && [[ $RELEASE = "Full Install" ]]; then
                wget $OPTION $HOME/$DIRECT$URL1
                wget $OPTION $HOME/$DIRECT$URL2
                wget $OPTION $HOME/$DIRECT$URL3
        else
                wget $OPTION $HOME/$DIRECT$URL
        fi

fi

if [[ $YN = "no" ]] || [[ $YN = "invalid" ]]; then
        bash $0
fi

read -p "Would you like to download another ISO? (Y/n) " REPEAT
        case "$REPEAT" in
        y|Y ) REPEAT=$"yes";;
        n|N ) REPEAT=$"no";;
        *) REPEAT=$"invalid" && echo "invalid";;
        esac

# Repeat
if [[ $REPEAT = "yes" ]]; then
        # Message
        echo "Here we go again"
        # Relaunch script
        bash $0
fi

# End
if [[ $REPEAT = "no" ]] || [[ $REPEAT = "invalid" ]]; then
        # Message
        echo "Goodbye"
fi
