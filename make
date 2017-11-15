#!/bin/bash

if [ $USER = "root" ]; then
# Directories
    bash ./create-directories.sh && \

# Desktop
    bash ./create-desktop.sh && \

# Control
    bash ./create-control.sh && \

# Postinst
    bash ./create-postinst.sh && \

# Prerm
    bash ./create-prerm.sh && \

# Command
    bash ./create-command.sh && \

# Move and copy files
    bash ./copy-files.sh && \

# Binary build
    bash ./create-binary.sh

# If not run as root
else
    echo "Please run this build script as root or with sudo"
fi
