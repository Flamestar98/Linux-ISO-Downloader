#!/bin/bash

# This build script must be run as root, otherwise it will not work correctly.
if [ $USER = "root" ]; then
	cd "$( dirname "${BASH_SOURCE[0]}" )" || exit

	if [ -d /usr/lib/tux-disc ]; then
		echo 'Removing old version...'
		rm -r /usr/lib/tux-disc && echo 'Old version removed!' || echo 'Old version not removed :('
	fi

	mkdir /usr/lib/tux-disc

	cp -r ./ /usr/lib/tux-disc

	if [ -e /usr/bin/tux-disc ]; then
		echo 'Removing old link...'
		rm /usr/bin/tux-disc && echo 'Old link removed!' || echo 'Old link not removed :('
	fi

	echo 'Linking script into /usr/bin...'
	ln -s /usr/lib/tux-disc/tux-disc_2.0-1.sh /usr/bin/tux-disc && chmod +x /usr/bin/tux-disc && echo 'Linking complete!' || echo 'Linking failed :('

	if [ -e /usr/share/applications/tux-disc.desktop ]; then
		echo 'Removing old desktop file...'
		rm /usr/share/applications/tux-disc.desktop && echo 'Old desktop file removed!' || echo 'Old desktop file not removed :('
	fi

	echo 'Linking desktop file...'
	ln -s /usr/lib/tux-disc/tux-disc.desktop /usr/share/applications/tux-disc.desktop && echo 'Linking complete!' || echo 'Linking failed :('
else
	echo 'This build script must be run as root. Please either login as root or use sudo'
fi