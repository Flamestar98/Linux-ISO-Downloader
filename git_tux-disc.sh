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
echo 'Would you like to download the most recent version of Tux Disc from Github?'
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
    echo ''
    echo 'Which branch would you like to download?'
    select BRANCH in master development both
    do
      case $BRANCH in
        master|development|both)
        break
        ;;
        *)
        echo ''
        echo 'Please select a branch for download'
        ;;
      esac
    done
    # master
    if [[ $BRANCH = "master" ]]; then
      cd ~
      if [ -d "Tux-Disc/master" ]; then
        # Message
        echo ""
        echo "Deleting your current version of Tux Disc $BRANCH branch and downloading most recent version from Github..."
        echo ""
        # Remove current Tux Disc and clone Git
        sudo rm -r ~/Tux-Disc/master && git clone -b master --single-branch https://github.com/Flamestar98/Tux-Disc.git ~/Tux-Disc/master
        echo ""
    else
        # Message
        echo ""
        echo "Downloading most recent version of Tux Disc $BRANCH branch from Github..."
        echo ""
    # Clone Git
        git clone -b master --single-branch https://github.com/Flamestar98/Tux-Disc.git ~/Tux-Disc/master
        echo ""
      fi
    fi
    # development
    if [[ $BRANCH = "development" ]]; then
      cd ~
      if [ -d "Tux-Disc/development" ]; then
        # Message
        echo ""
        echo "Deleting your current version of Tux Disc $BRANCH branch and downloading most recent version from Github..."
        echo ""
        # Remove current Tux Disc and clone Git
        sudo rm -r ~/Tux-Disc/master && git clone -b development --single-branch https://github.com/Flamestar98/Tux-Disc.git ~/Tux-Disc/development
        echo ""
    else
        # Message
        echo ""
        echo "Downloading most recent version of Tux Disc $BRANCH branch from Github..."
        echo ""
    # Clone Git
        git clone -b development --single-branch https://github.com/Flamestar98/Tux-Disc.git ~/Tux-Disc/development
        echo ""
      fi
    fi
    # both
    if [[ $BRANCH = "both" ]]; then
      cd ~
      if [ -d "Tux-Disc" ]; then
        # Message
        echo ""
        echo "Deleting your current version of Tux Disc and downloading most recent version from Github..."
        echo ""
        # Remove current Tux Disc and clone Git
        sudo rm -r ~/Tux-Disc && git clone -b master --single-branch https://github.com/Flamestar98/Tux-Disc.git ~/Tux-Disc/master && git clone -b development --single-branch https://github.com/Flamestar98/Tux-Disc.git ~/Tux-Disc/development
        echo ""
    else
        # Message
        echo ""
        echo "Downloading most recent version of Tux Disc from Github..."
        echo ""
    # Clone Git
        git clone -b master --single-branch https://github.com/Flamestar98/Tux-Disc.git ~/Tux-Disc/master && git clone -b development --single-branch https://github.com/Flamestar98/Tux-Disc.git ~/Tux-Disc/development
        echo ""
      fi
    fi
  fi
# SSH
  if [[ $PROTO = "SSH" ]]; then
    cd ~
    echo ''
    echo 'Which branch would you like to download?'
    select BRANCH in master development both
    do
      case $BRANCH in
        master|development|both)
        break
        ;;
        *)
        echo ''
        echo 'Please select a branch for download'
        ;;
      esac
    done
    # master
    if [[ $BRANCH = "master" ]]; then
      cd ~
      if [ -d "Tux-Disc/master" ]; then
        # Message
        echo ""
        echo "Deleting your current version of Tux Disc $BRANCH branch and downloading most recent version from Github..."
        echo ""
        # Remove current Tux Disc and clone Git
        sudo rm -r ~/Tux-Disc/master && git clone -b master --single-branch git@github.com:Flamestar98/Tux-Disc.git ~/Tux-Disc/master
        echo ""
    else
        # Message
        echo ""
        echo "Downloading most recent version of Tux Disc $BRANCH branch from Github..."
        echo ""
    # Clone Git
        git clone -b master --single-branch git@github.com:Flamestar98/Tux-Disc.git ~/Tux-Disc/master
        echo ""
      fi
    fi
    # development
    if [[ $BRANCH = "development" ]]; then
      cd ~
      if [ -d "Tux-Disc/development" ]; then
        # Message
        echo ""
        echo "Deleting your current version of Tux Disc $BRANCH branch and downloading most recent version from Github..."
        echo ""
        # Remove current Tux Disc and clone Git
        sudo rm -r ~/Tux-Disc/master && git clone -b development --single-branch git@github.com:Flamestar98/Tux-Disc.git ~/Tux-Disc/development
        echo ""
    else
        # Message
        echo ""
        echo "Downloading most recent version of Tux Disc $BRANCH branch from Github..."
        echo ""
    # Clone Git
        git clone -b development --single-branch git@github.com:Flamestar98/Tux-Disc.git ~/Tux-Disc/development
        echo ""
      fi
    fi
    # both
    if [[ $BRANCH = "both" ]]; then
      cd ~
      if [ -d "Tux-Disc" ]; then
        # Message
        echo ""
        echo "Deleting your current version of Tux Disc and downloading most recent version from Github..."
        echo ""
        # Remove current Tux Disc and clone Git
        sudo rm -r ~/Tux-Disc && git clone -b master --single-branch git@github.com:Flamestar98/Tux-Disc.git ~/Tux-Disc/master && git clone -b development --single-branch git@github.com:Flamestar98/Tux-Disc.git ~/Tux-Disc/development
        echo ""
    else
        # Message
        echo ""
        echo "Downloading most recent version of Tux Disc from Github..."
        echo ""
    # Clone Git
        git clone -b master --single-branch git@github.com:Flamestar98/Tux-Disc.git ~/Tux-Disc/master && git clone -b development --single-branch git@github.com:Flamestar98/Tux-Disc.git ~/Tux-Disc/development
        echo ""
      fi
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
