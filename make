#!/bin/bash

# Establishes base directory of script
BASEDIR=$(dirname $0)

# Establishes binary version number
BINARYVER=$(grep "" $BASEDIR/binaryver)

# Establishes patch version
PATCHVER=$(grep "" $BASEDIR/patchver)

if [ $USER = "root" ]; then
  # Remove source folder
  if [ -d "./tux-disc_$BINARYVER-$PATCHVER" ]; then
    rm -r ./tux-disc_$BINARYVER-$PATCHVER
  fi
  # Directories
  bash ./create-directories.sh && \

  # Desktop
  bash ./create-desktop.sh && \

  # Control
  bash ./create-control.sh && \

  # Postinst
  #bash ./create-postinst.sh && \

  # Prerm
  #bash ./create-prerm.sh && \

  # Command
  bash ./create-command.sh && \

  # Move and copy files
  bash ./copy-files.sh

# If not run as root
else
    echo "Please run this build script as root or with sudo"
fi
