#!/bin/bash

# Establishes base directory of script
BASEDIR=$(dirname $0)

# Prints todays date (YYYYmmdd) when called by $DATE
DATE=$(date '+%Y%m%d')

# Linux distrobution
echo 'Please select from the following'
select DISTRO in "Debian 9" "Fedora 26" "KDE Neon" Kubuntu Lubuntu Qubes Ubuntu "Ubuntu Budgie" "Ubuntu GNOME" "Ubuntu MATE" "Ubuntu Studio" Xubuntu
do
        case $DISTRO in 
        "Debian 9"|"Fedora 26"|"KDE Neon"|Kubuntu|Lubuntu|Qubes|Ubuntu|"Ubuntu Budgie"|"Ubuntu GNOME"|"Ubuntu MATE"|"Ubuntu Studio"|Xubuntu)   
                break
                ;;
        *)
                echo "Please select a distrobution" 
                ;;
        esac
done

# Debian
if [[ $DISTRO = "Debian 9" ]]; then
# Install method
    echo 'Now select an install method'
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
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $ARC $RELEASE ISO..."
# Download
            wget -P ~/ISO https://cdimage.debian.org/debian-cd/current/i386/iso-cd/debian-9.2.1-i386-netinst.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $ARC $RELEASE ISO..."
# Download
            wget -P ~/ISO https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-9.2.1-amd64-netinst.iso
        fi
    fi
# Full Install
    if [[ $RELEASE = "Full Install" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $ARC $RELEASE ISO images..."
# Download
            wget -P ~/ISO https://cdimage.debian.org/debian-cd/current/i386/iso-dvd/debian-9.2.1-i386-DVD-1.iso
            wget -P ~/ISO https://cdimage.debian.org/debian-cd/current/i386/iso-dvd/debian-9.2.1-i386-DVD-2.iso
            wget -P ~/ISO https://cdimage.debian.org/debian-cd/current/i386/iso-dvd/debian-9.2.1-i386-DVD-3.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $ARC $RELEASE ISO images..."
# Download
            wget -P ~/ISO https://cdimage.debian.org/debian-cd/current/amd64/iso-dvd/debian-9.2.1-amd64-DVD-1.iso
            wget -P ~/ISO https://cdimage.debian.org/debian-cd/current/amd64/iso-dvd/debian-9.2.1-amd64-DVD-2.iso
            wget -P ~/ISO https://cdimage.debian.org/debian-cd/current/amd64/iso-dvd/debian-9.2.1-amd64-DVD-3.iso
        fi
    fi
# Live Install
    if [[ $RELEASE = "Live Install" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Which desktop?
            echo 'Which desktop would you like?'
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
# Cinnamon
            if [[ $DEBDESK = "Cinnamon" ]]; then
# Message
                echo "Now downloading $DISTRO $DEBDESK $ARC $RELEASE ISO..."
# Download
                wget -P ~/ISO https://cdimage.debian.org/debian-cd/current-live/i386/iso-hybrid/debian-live-9.2.0-i386-cinnamon.iso
            fi
# GNOME
            if [[ $DEBDESK = "GNOME" ]]; then
# Message
                echo "Now downloading $DISTRO $DEBDESK $ARC $RELEASE ISO..."
# Download
                wget -P ~/ISO https://cdimage.debian.org/debian-cd/current-live/i386/iso-hybrid/debian-live-9.2.0-i386-gnome.iso
            fi
# KDE
            if [[ $DEBDESK = "KDE" ]]; then
# Message
                echo "Now downloading $DISTRO $DEBDESK $ARC $RELEASE ISO..."
# Download
                wget -P ~/ISO https://cdimage.debian.org/debian-cd/current-live/i386/iso-hybrid/debian-live-9.2.0-i386-kde.iso
            fi
# LXDE
            if [[ $DEBDESK = "LXDE" ]]; then
# Message
                echo "Now downloading $DISTRO $DEBDESK $ARC $RELEASE ISO..."
# Download
                wget -P ~/ISO https://cdimage.debian.org/debian-cd/current-live/i386/iso-hybrid/debian-live-9.2.0-i386-lxde.iso
            fi
# MATE
            if [[ $DEBDESK = "MATE" ]]; then
# Message
                echo "Now downloading $DISTRO $DEBDESK $ARC $RELEASE ISO..."
# Download
                wget -P ~/ISO https://cdimage.debian.org/debian-cd/current-live/i386/iso-hybrid/debian-live-9.2.0-i386-mate.iso
            fi
# XFCE
            if [[ $DEBDESK = "XFCE" ]]; then
# Message
                echo "Now downloading $DISTRO $DEBDESK $ARC $RELEASE ISO..."
# Download
                wget -P ~/ISO https://cdimage.debian.org/debian-cd/current-live/i386/iso-hybrid/debian-live-9.2.0-i386-xfce.iso
            fi
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Which desktop?
            echo 'Which desktop would you like?'
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
# Cinnamon
            if [[ $DEBDESK = "Cinnamon" ]]; then
# Message
                echo "Now downloading $DISTRO $DEBDESK $ARC $RELEASE ISO..."
# Download
                wget -P ~/ISO https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-9.2.0-amd64-cinnamon.iso
            fi
# GNOME
            if [[ $DEBDESK = "GNOME" ]]; then
# Message
                echo "Now downloading $DISTRO $DEBDESK $ARC $RELEASE ISO..."
# Download
                wget -P ~/ISO https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-9.2.0-amd64-gnome.iso
            fi
# KDE
            if [[ $DEBDESK = "KDE" ]]; then
# Message
                echo "Now downloading $DISTRO $DEBDESK $ARC $RELEASE ISO..."
# Download
                wget -P ~/ISO https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-9.2.0-amd64-kde.iso
            fi
# LXDE
            if [[ $DEBDESK = "LXDE" ]]; then
# Message
                echo "Now downloading $DISTRO $DEBDESK $ARC $RELEASE ISO..."
# Download
                wget -P ~/ISO https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-9.2.0-amd64-lxde.iso
            fi
# MATE
            if [[ $DEBDESK = "MATE" ]]; then
# Message
                echo "Now downloading $DISTRO $DEBDESK $ARC $RELEASE ISO..."
# Download
                wget -P ~/ISO https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-9.2.0-amd64-mate.iso
            fi
# XFCE
            if [[ $DEBDESK = "XFCE" ]]; then
# Message
                echo "Now downloading $DISTRO $DEBDESK $ARC $RELEASE ISO..."
# Download
                wget -P ~/ISO https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-9.2.0-amd64-xfce.iso
            fi
        fi
    fi
fi
# Fedora
if [[ $DISTRO = "Fedora 26" ]]; then
# Install method
    echo 'Now select an install method'
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
# Net install
    if [[ $RELEASE = "Net Install" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $ARC $RELEASE ISO..."
# Download
            wget -P ~/ISO https://download.fedoraproject.org/pub/fedora-secondary/releases/26/Workstation/i386/iso/Fedora-Workstation-netinst-i386-26-1.5.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $ARC $RELEASE ISO..."
# Download
            wget -P ~/ISO https://download.fedoraproject.org/pub/fedora/linux/releases/26/Workstation/x86_64/iso/Fedora-Workstation-netinst-x86_64-26-1.5.iso
        fi
    fi
# Live Install
    if [[ $RELEASE = "Live Install" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $ARC $RELEASE ISO..."
# Download
            wget -P ~/ISO https://download.fedoraproject.org/pub/fedora-secondary/releases/26/Workstation/i386/iso/Fedora-Workstation-Live-i386-26-1.5.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $ARC $RELEASE ISO..."
# Download
            wget -P ~/ISO https://download.fedoraproject.org/pub/fedora/linux/releases/26/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-26-1.5.iso
        fi
    fi
fi
# KDE Neon
if [[ $DISTRO = "KDE Neon" ]]; then
# Release
    echo 'Now select a release'
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
# Message
            echo "Now downloading current $DISTRO $RELEASE ISO..."
# Download
            wget -O ~/ISO/neon-useredition-current-amd64.iso https://files.kde.org/neon/images/neon-useredition/current/neon-useredition-current.iso
    fi
# User LTS Edition
    if [[ $RELEASE = "User LTS Edition" ]]; then
# Message
            echo "Now downloading current $DISTRO $RELEASE ISO..."
# Download
            wget -O ~/ISO/neon-userltsedition-current-amd64.iso https://files.kde.org/neon/images/neon-userltsedition/current/neon-userltsedition-current.iso
    fi
# Developer Edition Git-Unstable
    if [[ $RELEASE = "Developer Edition Git-Unstable" ]]; then
# Message
            echo "Now downloading current $DISTRO $RELEASE ISO..."
# Download
            wget -O ~/ISO/neon-devedition-gitunstable-current-amd64.iso https://files.kde.org/neon/images/neon-devedition-gitunstable/current/neon-devedition-gitunstable-current.iso
    fi
# Developer Edition Git-Stable
    if [[ $RELEASE = "Developer Edition Git-Stable" ]]; then
# Message
            echo "Now Downloading current $DISTRO $RELEASE ISO..."
# Download
            wget -O ~/ISO/neon-devedition-gitstable-current-amd64.iso https://files.kde.org/neon/images/neon-devedition-gitstable/current/neon-devedition-gitstable-current.iso
    fi
fi
# Kubuntu
if [[ $DISTRO = "Kubuntu" ]]; then
# Release
    echo 'Now select a release'
    select RELEASE in "16.04 LTS" "17.04" "17.10"
    do
            case $RELEASE in
            "16.04 LTS"|"17.04"|"17.10")
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "16.04 LTS" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/kubuntu/releases/16.04.3/release/kubuntu-16.04.3-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/kubuntu/releases/16.04.3/release/kubuntu-16.04.3-desktop-amd64.iso
        fi
    fi
# 17.04
    if [[ $RELEASE = "17.04" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/kubuntu/releases/17.04/release/kubuntu-17.04-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/kubuntu/releases/17.04/release/kubuntu-17.04-desktop-amd64.iso
        fi
    fi
# 17.10
    if [[ $RELEASE = "17.10" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/kubuntu/releases/17.10/release/kubuntu-17.10-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/kubuntu/releases/17.10/release/kubuntu-17.10-desktop-amd64.iso
        fi
    fi
fi
# Lubuntu
if [[ $DISTRO = "Lubuntu" ]]; then
# Release
    echo 'Now select a release'
    select RELEASE in "16.04 LTS" "17.04" "17.10"
    do
            case $RELEASE in
            "16.04 LTS"|"17.04"|"17.10")
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "16.04 LTS" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/lubuntu/releases/16.04.3/release/lubuntu-16.04.3-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/lubuntu/releases/16.04.3/release/lubuntu-16.04.3-desktop-amd64.iso
        fi
    fi
# 17.04
    if [[ $RELEASE = "17.04" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/lubuntu/releases/17.04/release/lubuntu-17.04-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/lubuntu/releases/17.04/release/lubuntu-17.04-desktop-amd64.iso
        fi
    fi
# 17.10
    if [[ $RELEASE = "17.10" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/lubuntu/releases/17.10/release/lubuntu-17.10-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/lubuntu/releases/17.10/release/lubuntu-17.10-desktop-amd64.iso
        fi
    fi
fi
# Qubes
if [[ $DISTRO = "Qubes" ]]; then
# Release
    echo 'Now select a release'
    select RELEASE in "3.2" "4.0-rc2"
    do
            case $RELEASE in
            "3.2"|"4.0-rc2")
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
            echo "Now downloading $DISTRO $RELEASE ISO..."
# Download
            wget -P ~/ISO https://mirrors.kernel.org/qubes/iso/Qubes-R3.2-x86_64.iso
    fi
# Qubes 4.0-rc2
    if [[ $RELEASE = "4.0-rc2" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE ISO..."
# Download
            wget -P ~/ISO https://mirrors.kernel.org/qubes/iso/Qubes-R4.0-rc2-x86_64.iso
    fi
fi
# Ubuntu
if [[ $DISTRO = "Ubuntu" ]]; then
# Release
    echo 'Now select a release'
    select RELEASE in "16.04 LTS" "17.04" "17.10" "18.04 Daily"
    do
            case $RELEASE in
            "16.04 LTS"|"17.04"|"17.10"|"18.04 Daily")
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "16.04 LTS" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://releases.ubuntu.com/16.04.3/ubuntu-16.04.3-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://releases.ubuntu.com/16.04.3/ubuntu-16.04.3-desktop-amd64.iso
        fi
    fi
# 17.04
    if [[ $RELEASE = "17.04" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://releases.ubuntu.com/17.04/ubuntu-17.04-desktop-i386.iso
        fi
#amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://releases.ubuntu.com/17.04/ubuntu-17.04-desktop-amd64.iso
        fi
    fi
# 17.10
    if [[ $RELEASE = "17.10" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE ISO..."
# Download
            wget -P ~/ISO http://releases.ubuntu.com/17.10/ubuntu-17.10-desktop-amd64.iso
    fi
# 18.04 Daily
    if [[ $RELEASE = "18.04 Daily" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE ISO..."
# Download
            wget -O ~/ISO/ubuntu-bionic-desktop-$DATE-amd64.iso http://cdimage.ubuntu.com/daily-live/current/bionic-desktop-amd64.iso
    fi
fi
# Ubuntu Budgie
if [[ $DISTRO = "Ubuntu Budgie" ]]; then
# Release
    echo 'Now select a release'
    select RELEASE in "17.04" "17.10"
    do
            case $RELEASE in
            "17.04"|"17.10")
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "18.04 LTS" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
               esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO URL
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO URL
        fi
    fi
# 17.04
    if [[ $RELEASE = "17.04" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-budgie/releases/17.04/release/ubuntu-budgie-17.04-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-budgie/releases/17.04/release/ubuntu-budgie-17.04-desktop-amd64.iso
        fi
    fi
# 17.10
    if [[ $RELEASE = "17.10" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-budgie/releases/17.10/release/ubuntu-budgie-17.10-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-budgie/releases/17.10/release/ubuntu-budgie-17.10-desktop-amd64.iso
        fi
    fi
fi
# Ubuntu GNOME
if [[ $DISTRO = "Ubuntu GNOME" ]]; then
# Release
    echo 'Now select a release'
    select RELEASE in "16.04 LTS" "17.04"
    do
            case $RELEASE in
            "16.04 LTS"|"17.04")
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "16.04 LTS" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-gnome/releases/16.04.3/release/ubuntu-gnome-16.04.3-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-gnome/releases/16.04.3/release/ubuntu-gnome-16.04.3-desktop-amd64.iso
        fi
    fi
# 17.04
    if [[ $RELEASE = "17.04" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-gnome/releases/17.04/release/ubuntu-gnome-17.04-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-gnome/releases/17.04/release/ubuntu-gnome-17.04-desktop-amd64.iso
        fi
    fi
fi
# Ubuntu MATE
if [[ $DISTRO = "Ubuntu MATE" ]]; then
# Release
    echo 'Now select a release'
    select RELEASE in "16.04 LTS" "17.04" "17.10"
    do
            case $RELEASE in
            "16.04 LTS"|"17.04"|"17.10")
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "16.04 LTS" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64 PowerPC ARMv7
        do
                case $ARC in
                i386|amd64|powerpc|armhf)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-mate/releases/16.04.3/release/ubuntu-mate-16.04.3-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-mate/releases/16.04.3/release/ubuntu-mate-16.04.3-desktop-amd64.iso
        fi
# PowerPC
        if [[ $ARC = "powerpc" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-mate/releases/16.04.2/release/ubuntu-mate-16.04.1-desktop-powerpc.iso
        fi
# ARMv7
        if [[ $ARC = "armhf" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC img.xz..."
# Download
            wget -P ~/ISO https://ubuntu-mate.org/raspberry-pi/ubuntu-mate-16.04.2-desktop-armhf-raspberry-pi.img.xz
        fi
    fi
# 17.04
    if [[ $RELEASE = "17.04" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-mate/releases/17.04/release/ubuntu-mate-17.04-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-mate/releases/17.04/release/ubuntu-mate-17.04-desktop-amd64.iso
        fi
    fi
# 17.10
    if [[ $RELEASE = "17.10" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-mate/releases/17.10/release/ubuntu-mate-17.10-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-mate/releases/17.10/release/ubuntu-mate-17.10-desktop-amd64.iso
        fi
    fi
fi
# Ubuntu Studio
if [[ $DISTRO = "Ubuntu Studio" ]]; then
# Release
    echo 'Now select a release'
    select RELEASE in "16.04 LTS" "17.04" "17.10"
    do
            case $RELEASE in
            "16.04 LTS"|"17.04"|"17.10")
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "16.04 LTS" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntustudio/releases/16.04.3/release/ubuntustudio-16.04.3-dvd-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntustudio/releases/16.04.3/release/ubuntustudio-16.04.3-dvd-amd64.iso
        fi
    fi
# 17.04
    if [[ $RELEASE = "17.04" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntustudio/releases/17.04/release/ubuntustudio-17.04-dvd-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntustudio/releases/17.04/release/ubuntustudio-17.04-dvd-amd64.iso
        fi
    fi
# 17.10
    if [[ $RELEASE = "17.10" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntustudio/releases/17.10/release/ubuntustudio-17.10-dvd-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntustudio/releases/17.10/release/ubuntustudio-17.10-dvd-amd64.iso
        fi
    fi
fi
# Xubuntu
if [[ $DISTRO = "Xubuntu" ]]; then
# Release
    echo 'Now select a release'
    select RELEASE in "16.04 LTS" "17.04" "17.10"
    do
            case $RELEASE in
            "16.04 LTS"|"17.04"|"17.10")
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "16.04 LTS" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/xubuntu/releases/16.04.3/release/xubuntu-16.04.3-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/xubuntu/releases/16.04.3/release/xubuntu-16.04.3-desktop-amd64.iso
        fi
    fi
# 17.04
    if [[ $RELEASE = "17.04" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/xubuntu/releases/17.04/release/xubuntu-17.04-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/xubuntu/releases/17.04/release/xubuntu-17.04-desktop-amd64.iso
        fi
    fi
# 17.10
    if [[ $RELEASE = "17.10" ]]; then
# Architecture
        echo 'Now select an architecture'
        select ARC in i386 amd64
        do
                case $ARC in
                i386|amd64)
                        break
                        ;;
                *)
                        echo "Please select an architecture"
                        ;;
                esac
        done
# i386
        if [[ $ARC = "i386" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/xubuntu/releases/17.10/release/xubuntu-17.10-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/xubuntu/releases/17.10/release/xubuntu-17.10-desktop-amd64.iso
        fi
    fi
fi

# Message
echo 'Would you like to download another ISO?'
# Repeat?
select REPEAT in Yes No
do
        case $REPEAT in 
        Yes|No)   
                break
                ;;
        *)
                echo "Please select yes or no" 
                ;;
        esac
done

# Repeat
if [[ $REPEAT = "Yes" ]]; then
# Message
    echo "Here we go again"
# Change directory
    cd $BASEDIR
# Relaunch script
    bash linux-iso-downloader_2017-11-08-v1.0.sh
fi
# End
if [[ $REPEAT = "No" ]]; then
# Message
    echo "Goodbye"
fi
