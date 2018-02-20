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
    GITCLONE=$"https://github.com/Flamestar98/Tux-Disc.git"
  fi

  if [[ $PROTO = "SSH" ]]; then
    GITCLONE=$"git@github.com:Flamestar98/Tux-Disc.git"
  fi

    echo ''
    echo 'Which branch would you like to download?'
    select BRANCH in 'master' 'development' 'development-python' 'all'
    do
      case $BRANCH in
        'master'|'development'|'development-python'|'all')
        break
        ;;
        *)
        echo ''
        echo 'Please select a branch for download'
        ;;
      esac
    done

      cd $HOME
      # Message
      echo ""
      echo "Downloading most recent version of Tux Disc from Github..."
      echo ""
      # both
      if [[ $BRANCH = "all" ]]; then
          # Remove current Tux Disc and clone Git
          sudo rm -r $HOME/Tux-Disc && git clone -b master --single-branch $GITCLONE $HOME/Tux-Disc/master && git clone -b development --single-branch $GITCLONE $HOME/Tux-Disc/development && git clone -b development-python --single-branch $GITCLONE $HOME/Tux-Disc/development-python
          echo ""
      else
      if [ -d "Tux-Disc/$BRANCH" ]; then
        # Remove current Tux Disc and clone Git
        sudo rm -r $HOME/Tux-Disc/$BRANCH &&\
      fi
      git clone -b $BRANCH --single-branch $GITCLONE $HOME/Tux-Disc/$BRANCH
    fi
# End
if [[ $REPLACE = "No" ]]; then
# Message
    echo ""
    echo "Goodbye"
    echo ""
fi
