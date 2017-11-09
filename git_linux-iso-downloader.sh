# Message
echo ""
echo "Checking for Git install..."
# Check for Git
if which git >/dev/null; then
# Message
    echo ""
    echo "Git installed"
# Git not installed
else
# Message
    echo ""
    echo "Git is required to run this script. Would you like to install Git now?"
    echo ""
# Install Git?
    select GIT in Yes No
    do
            case $GIT in 
            Yes|No)   
                    break
                    ;;
            *)
                    echo ""
                    echo "Please select yes or no" 
                    ;;
            esac
    done
# Install Git
    if [[ $GIT = "Yes" ]]; then
# Message
        echo ""
        echo "Installing Git..."
        echo ""
# Update APT and install Git
        sudo apt update && sudo apt install git
    fi
# Don't install Git
    if [[ $GIT = "No" ]]; then
# Message
        echo ""
        echo "Goodbye"
        echo ""
        exit
    fi
fi

# Replace?
echo ""
echo 'Would you like to download the most recent version of Linux ISO Downloader from Github?'
echo ""
select REPLACE in Yes No
do
        case $REPLACE in 
        Yes|No)   
                break
                ;;
        *)
                echo ""
                echo "Please select yes or no"
                ;;
        esac
done

# Replace
if [[ $REPLACE = "Yes" ]]; then
# Install HTTPS or SSH?
echo ""
echo 'Would you like to use HTTPS or SSH?'
echo ""
    select PROTO in HTTPS SSH
    do
            case $PROTO in 
            HTTPS|SSH)   
                    break
                    ;;
            *)
                    echo ""
                    echo "Please select either HTTPS or SSH" 
                    ;;
            esac
    done
# HTTPS
  if [[ $PROTO = "HTTPS" ]]; then
    cd ~
    if [ -d "Linux-ISO-Downloader" ]; then
        # Message
        echo ""
        echo "Deleting your current version of Linux ISO Downloader and downloading most recent version from Github..."
        echo ""
        # Remove current L-I-D and clone Git
        sudo rm -r Linux-ISO-Downloader && git clone https://github.com/Flamestar98/Linux-ISO-Downloader.git
        echo ""
    else
        # Message
        echo ""
        echo "Downloading most recent version of Linux ISO Downloader from Github..."
        echo ""
    # Clone Git
        git clone https://github.com/Flamestar98/Linux-ISO-Downloader.git
        echo ""
    fi
  fi
# SSH
  if [[ $PROTO = "SSH" ]]; then
    cd ~
    if [ -d "Linux-ISO-Downloader" ]; then
        # Message
        echo ""
        echo "Deleting your current version of Linux ISO Downloader and downloading most recent version from Github..."
        echo ""
        # Remove current L-I-D and clone Git over SSH
        sudo rm -r Linux-ISO-Downloader && git clone git@github.com:Flamestar98/Linux-ISO-Downloader.git
        echo ""
    else
        # Message
        echo ""
        echo "Downloading most recent version of Linux ISO Downloader from Github..."
        echo ""
    # Clone Git over SSH
        git clone git@github.com:Flamestar98/Linux-ISO-Downloader.git
        echo ""
    fi
  fi
fi
# End
if [[ $REPLACE = "No" ]]; then
# Message
    echo ""
    echo "Goodbye"
    echo ""
fi
