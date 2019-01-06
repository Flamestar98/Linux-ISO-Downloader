#!/bin/bash

# This build script must be run as root, otherwise it will not work correctly.
if [ $USER = "root" ]; then
	cd "$( dirname "${BASH_SOURCE[0]}" )" || exit

	if [ -d /usr/lib/tux-disc ]; then
		rm -r /usr/lib/tux-disc
	fi

	mkdir /usr/lib/tux-disc

	cp -r ./ /usr/lib/tux-disc

	ln -s /usr/lib/tux-disc/tux-disc_2.0-1.sh /usr/bin/tux-disc && chmod +x /usr/bin/tux-disc
else
	echo 'This build script must be run as root. Please either login as root or use sudo'
fi