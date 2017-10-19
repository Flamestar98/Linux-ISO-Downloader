#!/bin/bash

# Message
echo "Checking for Git install..."
# Check for Git
if which git >/dev/null; then
# Message
    echo "Git installed"
# Git not installed
else
# Message
    echo "Git is required to run this script. Would you like to install Git now?"
# Install Git?
    select GIT in Yes No
    do
            case $GIT in 
            Yes|No)   
                    break
                    ;;
            *)
                    echo "Please select yes or no" 
                    ;;
            esac
    done
# Install Git
    if [[ $GIT = "Yes" ]]; then
# Message
        echo "Installing Git..."
# Update APT and install Git
        sudo apt update && sudo apt install git
    fi
# Don't install Git
    if [[ $GIT = "No" ]]; then
# Message
        echo "Goodbye"
    fi
fi

# Replace?
echo 'Would you like to replace your current version of Linux ISO Downloader with the most recent version on Github?'
select REPLACE in Yes No
do
        case $REPLACE in 
        Yes|No)   
                break
                ;;
        *)
                echo "Please select yes or no" 
                ;;
        esac
done

# Replace
if [[ $REPLACE = "Yes" ]]; then
# Message
    echo "Deleting your current version of Linux ISO Downloader and downloading most recent version from Github..."
# Remove current LID and clone Git
    sudo rm -r Linux-ISO-Downloader && git clone https://github.com/Flamestar98/Linux-ISO-Downloader.git
fi
# End
if [[ $REPLACE = "No" ]]; then
# Message
    echo "Goodbye"
fi
