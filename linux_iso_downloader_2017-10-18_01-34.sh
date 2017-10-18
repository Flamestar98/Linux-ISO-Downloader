#!/bin/bash

BASEDIR=$(dirname $0)

DATE=$(date '+%Y%m%d')

echo 'Please select from the following'
select DISTRO in "Debian 9" "KDE Neon" Kubuntu Lubuntu Ubuntu "Ubuntu Budgie" "Ubuntu GNOME" "Ubuntu MATE" Xubuntu
do
        case $DISTRO in 
        "Debian 9"|"KDE Neon"|Kubuntu|Lubuntu|Ubuntu|"Ubuntu Budgie"|"Ubuntu GNOME"|"Ubuntu MATE"|Xubuntu)   
                break
                ;;
        *)
                echo "Please select a distrobution" 
                ;;
        esac
done

# Debian
if [[ $DISTRO = "Debian 9" ]]; then
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
# Which one?
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
# Which one?
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
# KDE Neon
if [[ $DISTRO = "KDE Neon" ]]; then
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
# amd64
#        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading current $DISTRO $RELEASE ISO..."
# Download
            wget -O ~/ISO/neon-useredition-current-amd64.iso https://files.kde.org/neon/images/neon-useredition/current/neon-useredition-current.iso
#        fi
    fi
# User LTS Edition
    if [[ $RELEASE = "User LTS Edition" ]]; then
# amd64
#        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading current $DISTRO $RELEASE ISO..."
# Download
            wget -O ~/ISO/neon-userltsedition-current-amd64.iso https://files.kde.org/neon/images/neon-userltsedition/current/neon-userltsedition-current.iso
#        fi
    fi
# Developer Edition Git-Unstable
    if [[ $RELEASE = "Developer Edition Git-Unstable" ]]; then
# amd64
#        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading current $DISTRO $RELEASE ISO..."
# Download
            wget -O ~/ISO/neon-devedition-gitunstable-current-amd64.iso https://files.kde.org/neon/images/neon-devedition-gitunstable/current/neon-devedition-gitunstable-current.iso
#        fi
    fi
# Developer Edition Git-Stable
    if [[ $RELEASE = "Developer Edition Git-Stable" ]]; then
# amd64
#        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now Downloading current $DISTRO $RELEASE ISO..."
# Download
            wget -O ~/ISO/neon-devedition-gitstable-current-amd64.iso-amd64.iso https://files.kde.org/neon/images/neon-devedition-gitstable/current/neon-devedition-gitstable-current.iso
#        fi
    fi
fi
# Kubuntu
if [[ $DISTRO = "Kubuntu" ]]; then
    echo 'Now select a release'
    select RELEASE in "Long-Term Support" Stable "Daily testing"
    do
            case $RELEASE in
            "Long-Term Support"|Stable|"Daily testing")
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "Long-Term Support" ]]; then
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
# Stable
    if [[ $RELEASE = "Stable" ]]; then
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
# Daily testing
    if [[ $RELEASE = "Daily testing" ]]; then
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
            wget -O ~/ISO/kubuntu-artful-desktop-$DATE-i386.iso http://cdimage.ubuntu.com/kubuntu/daily-live/current/artful-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -O ~/ISO/kubuntu-artful-desktop-$DATE-amd64.iso http://cdimage.ubuntu.com/kubuntu/daily-live/current/artful-desktop-amd64.iso
        fi
    fi
fi
# Lubuntu
if [[ $DISTRO = "Lubuntu" ]]; then
    echo 'Now select a release'
    select RELEASE in "Long-Term Support" Stable "Daily testing"
    do
            case $RELEASE in
            "Long-Term Support"|Stable|"Daily testing")
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "Long-Term Support" ]]; then
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
# Stable
    if [[ $RELEASE = "Stable" ]]; then
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
# Daily testing
    if [[ $RELEASE = "Daily testing" ]]; then
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
            wget -O ~/ISO/lubuntu-artful-desktop-$DATE-i386.iso http://cdimage.ubuntu.com/lubuntu/daily-live/current/artful-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -O ~/ISO/lubuntu-artful-desktop-$DATE-amd64.iso http://cdimage.ubuntu.com/lubuntu/daily-live/current/artful-desktop-amd64.iso
        fi
    fi
fi
# Ubuntu
if [[ $DISTRO = "Ubuntu" ]]; then
    echo 'Now select a release'
    select RELEASE in "Long-Term Support" Stable "Daily testing"
    do
            case $RELEASE in
            "Long-Term Support"|Stable|"Daily testing")
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "Long-Term Support" ]]; then
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
# Stable
    if [[ $RELEASE = "Stable" ]]; then
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
# Daily testing
    if [[ $RELEASE = "Daily testing" ]]; then
# amd64
#        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE ISO..."
# Download
            wget -O ~/ISO/ubuntu-artful-desktop-$DATE-amd64.iso http://cdimage.ubuntu.com/ubuntu/daily-live/current/artful-desktop-amd64.iso
#        fi
    fi
fi
# Ubuntu Budgie
if [[ $DISTRO = "Ubuntu Budgie" ]]; then
    echo 'Now select a release'
    select RELEASE in Stable "Daily testing"
    do
            case $RELEASE in
            Stable|"Daily testing")
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "Long-Term Support" ]]; then
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
# Stable
    if [[ $RELEASE = "Stable" ]]; then
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
# Daily testing
    if [[ $RELEASE = "Daily testing" ]]; then
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
            wget -O ~/ISO/ubuntu-budgie-artful-desktop-$DATE-i386.iso http://cdimage.ubuntu.com/ubuntu-budgie/daily-live/current/artful-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -O ~/ISO/ubuntu-budgie-artful-desktop-$DATE-amd64.iso http://cdimage.ubuntu.com/ubuntu-budgie/daily-live/current/artful-desktop-amd64.iso
        fi
    fi
fi
# Ubuntu GNOME
if [[ $DISTRO = "Ubuntu GNOME" ]]; then
    echo 'Now select a release'
    select RELEASE in "Long-Term Support" Stable
    do
            case $RELEASE in
            "Long-Term Support"|Stable)
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "Long-Term Support" ]]; then
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
# Stable
    if [[ $RELEASE = "Stable" ]]; then
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
    echo 'Now select a release'
    select RELEASE in "Long-Term Support" Stable "Daily testing"
    do
            case $RELEASE in
            "Long-Term Support"|Stable|"Daily testing")
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "Long-Term Support" ]]; then
echo 'Now select an architecture'
    select ARC in i386 amd64 PowerPC ARMv7
    do
            case $ARC in
            i386|amd64|PowerPC|ARMv7)
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
        if [[ $ARC = "PowerPC" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -P ~/ISO http://cdimage.ubuntu.com/ubuntu-mate/releases/16.04.2/release/ubuntu-mate-16.04.1-desktop-powerpc.iso
        fi
# ARMv7
        if [[ $ARC = "ARMv7" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC img.xz..."
# Download
            wget -P ~/ISO https://ubuntu-mate.org/raspberry-pi/ubuntu-mate-16.04.2-desktop-armhf-raspberry-pi.img.xz
        fi
    fi
# Stable
    if [[ $RELEASE = "Stable" ]]; then
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
# Daily testing
    if [[ $RELEASE = "Daily testing" ]]; then
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
            wget -O ~/ISO/ubuntu-mate-artful-desktop-$DATE-i386.iso http://cdimage.ubuntu.com/ubuntu-mate/daily-live/current/artful-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -O ~/ISO/ubuntu-mate-artful-desktop-$DATE-amd64.iso http://cdimage.ubuntu.com/ubuntu-mate/daily-live/current/artful-desktop-amd64.iso
        fi
    fi
fi
# Xubuntu
if [[ $DISTRO = "Xubuntu" ]]; then
    echo 'Now select a release'
    select RELEASE in "Long-Term Support" Stable "Daily testing"
    do
            case $RELEASE in
            "Long-Term Support"|Stable|"Daily testing")
                    break
                    ;;
            *)
                    echo "Please select a release"
                    ;;
            esac
    done
# LTS
    if [[ $RELEASE = "Long-Term Support" ]]; then
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
# Stable
    if [[ $RELEASE = "Stable" ]]; then
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
# Daily testing
    if [[ $RELEASE = "Daily testing" ]]; then
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
            wget -O ~/ISO/xubuntu-artful-desktop-$DATE-i386.iso http://cdimage.ubuntu.com/xubuntu/daily-live/current/artful-desktop-i386.iso
        fi
# amd64
        if [[ $ARC = "amd64" ]]; then
# Message
            echo "Now downloading $DISTRO $RELEASE $ARC ISO..."
# Download
            wget -O ~/ISO/xubuntu-artful-desktop-$DATE-amd64.iso http://cdimage.ubuntu.com/xubuntu/daily-live/current/artful-desktop-amd64.iso
        fi
    fi
fi

echo 'Would you like download another ISO?'
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

if [[ $REPEAT = "Yes" ]]; then
    echo "Here we go again"
    cd $BASEDIR
    bash Linux\ ISO\ Downloader.sh
fi
if [[ $REPEAT = "No" ]]; then
    echo Goodbye
fi
