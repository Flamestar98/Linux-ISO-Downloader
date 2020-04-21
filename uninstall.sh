#!/bin/bash

# This uninstall script must be run as root, otherwise it will not work
# correctly.
if [ $USER = "root" ]; then
	cd "$( dirname "${BASH_SOURCE[0]}" )" || exit

	echo '== Uninstalling Tux Disc =='
	echo ''

	if [ -e /usr/bin/tux-disc ]; then
		echo '==> Removing /usr/bin link'
		rm /usr/bin/tux-disc && echo '  -> Link removed!' || echo '  -> Link not removed :('
	fi

	if [ -e /usr/share/applications/tux-disc.desktop ]; then
		echo '==> Removing desktop file'
		rm /usr/share/applications/tux-disc.desktop && echo '  -> Desktop file removed!' || echo '  -> Desktop file not removed :('
	fi

	if [ -d /usr/lib/tux-disc ]; then
		echo '==> Removing /usr/lib/tux-disc'
		rm -r /usr/lib/tux-disc && echo '  -> Folder removed!' || echo '  -> Folder not removed :('

		echo ''
		echo '== Uninstall complete! =='
	fi
else
	echo 'This build script must be run as root. Please either login as root or use sudo'
fi