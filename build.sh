#!/bin/bash

# This build script must be run as root, otherwise it will not work correctly.
if [ $USER = "root" ]; then
	cd "$( dirname "${BASH_SOURCE[0]}" )" || exit

	echo '== Installing Tux Disc =='
	echo ''

	if [ -d /usr/lib/tux-disc ]; then
		echo '==> Removing old library folder'
		rm -r /usr/lib/tux-disc && echo '  -> Old library folder removed!' || echo '  -> Old library folder not removed :('
	fi

	echo '==> Making library directory'
	mkdir /usr/lib/tux-disc && echo '  -> Directory created!' || echo '  -> Directory not created :('

	echo '==> Copying source folder into /usr/lib/tux-disc'
	cp -r ./ /usr/lib/tux-disc && echo '  -> Source folder copied!' || echo '  -> Source folder not copied :('

	if [ -e /usr/bin/tux-disc ]; then
		echo '==> Removing old link'
		rm /usr/bin/tux-disc && echo '  -> Old link removed!' || echo '  -> Old link not removed :('
	fi

	echo '==> Linking script into /usr/bin'
	ln -s /usr/lib/tux-disc/tux-disc_2.0-1.sh /usr/bin/tux-disc && chmod +x /usr/bin/tux-disc && echo '  -> Linking complete!' || echo '  -> Linking failed :('

	if [ -e /usr/share/applications/tux-disc.desktop ]; then
		echo '==> Removing old desktop file'
		rm /usr/share/applications/tux-disc.desktop && echo '  -> Old desktop file removed!' || echo '  -> Old desktop file not removed :('
	fi

	echo '==> Linking desktop file'
	ln -s /usr/lib/tux-disc/tux-disc.desktop /usr/share/applications/tux-disc.desktop && echo '  -> Linking complete!' || echo '  -> Linking failed :('

	if [ ! -e /usr/bin/bootiso ]; then
		echo '==> Installing bootiso'
		cd /usr/bin && curl -L https://git.io/bootiso -O && chmod +x ./bootiso && echo '  -> bootiso installed!' || echo '  -> Failed to install bootiso :('
	fi

	echo ''
	echo '== Install complete! =='
else
	echo 'This build script must be run as root. Please either login as root or use sudo'
fi