Tux Disc
========

Downloads Linux ISO of choice based on user input.

#### All 32-bit/64-bit Ubuntu LTS releases are currently at 16.04.3
#### All Debian 9 releases are currently at 9.3.0
#### All Kali Linux releases are currently at 2018.1

[Changelog][1]

[License][2]

[1]: https://github.com/Flamestar98/tux-disc/blob/master/CHANGELOG.md
[2]: https://github.com/Flamestar98/tux-disc/blob/master/LICENSE

Currently includes
------------------

#### Debian 9
* Net installer (32-bit/64-bit)
* Full installer (32-bit/64-bit)
* Live installer (32-bit/64-bit)

#### Fedora
* **Fedora Workstation 26**
* Net installer (32-bit/64-bit)
* Live installer (32-bit/64-bit)

* **Fedora Workstation 27**
* Net Installer (32-bit/64-bit)
* Live Installer (64-bit)

#### Kali Linux
* Kali Linux (32-bit/64-bit)
* Kali Linux KDE (64-bit)
* Kali Linux Light (32-bit/64-bit)
* Kali Linux LXDE (64-bit)
* Kali Linux MATE (64-bit)
* Kali Linux Xfce (64-bit)

#### KDE Neon
* User Edition (64-bit)
* User LTS Edition (64-bit)
* Developer Edition Git-Unstable (64-bit)
* Developer Edition Git-Stable (64-bit)

#### Kubuntu
* 16.04 LTS (32-bit/64-bit)
* 17.10 (32-bit/64-bit)
* 18.04 Daily (32-bit/64-bit)

#### Linux Mint 18.3
* Cinnamon desktop (32-bit/64-bit)
* KDE desktop (32-bit/64-bit)
* MATE desktop (32-bit/64-bit)
* Xfce desktop (32-bit/64-bit)

#### Lubuntu
* 16.04 LTS (32-bit/64-bit)
* 17.10 (32-bit/64-bit)
* 18.04 Daily (32-bit/64-bit)

#### Qubes
* Qubes 3.2 (64-bit)
* Qubes 4.0-rc4 (64-bit)

#### Ubuntu
* 16.04 LTS (32-bit/64-bit)
* 17.10 (64-bit)
* 18.04 Daily (64-bit)

#### Ubuntu Budgie
* 17.10 (32-bit/64-bit)
* 18.04 Daily (32-bit/64-bit)

#### Ubuntu GNOME
* 16.04 LTS (32-bit/64-bit)

#### Ubuntu MATE
* 16.04 LTS (32-bit/64-bit)
* 17.10 (32-bit/64-bit)
* 18.04 Daily (32-bit/64-bit)

#### Ubuntu Studio
* 16.04 LTS (32-bit/64-bit)
* 17.10 (32-bit/64-bit)

#### Xubuntu
* 16.04 LTS (32-bit/64-bit)
* 17.10 (32-bit/64-bit)
* 18.04 Daily (32-bit/64-bit)

PPA
---
To install Tux Disc and receive updates,

* Run "sudo add-apt-repository ppa:flamestar/tux-disc"
* Then run "sudo apt-get update && sudo apt install tux-disc"

Download
--------
Both source tarballs and binaries can be downloaded from the [releases][3] page of this repo, or you can use Git to clone the most recent version of the repository

[3]: https://github.com/Flamestar98/tux-disc/releases

Importaint information
----------------------

This script relies on the URL of each file remaining unchanged.

In the event that any of the downloads become broken, I will attempt to fix them as soon as I notice them.

Otherwise, feel free to file an issue stating which download(s) are broken, and i will attempt to fix them as soon as possible.

Short Disclaimer
----------------

I am in no way associated with any of the projects that this script downloads ISO images of.

Full credit to all of the developers that make these awesome OSes.

Without them, this script wouldn't be here.

Operation
---------

To use this script,

### Binary
* Download the binary .deb file of the latest release

#### GUI
* Double-click the .deb file and click install
* Find and open "Tux Disc" in the application menu of your desktop under "Accessories" (the desktop file is saved under ~/.local/share/applications)

#### CLI
* run "dpkg -i FILEPATH/tux-disc_?.?-?.deb" (where "FILEPATH" is the full path (you can use "~" in the filepath if it's somewhere in your home directory) to the .deb file, and "?.?-?" is the version number of Tux Disc)
* Once install is complete, simply run "tux-disc" from any terminal

### Source
* Download the source tarball from the releases page or clone the Git repository

#### GUI
* Right click "tux-disc_?.?-?.sh"
* Select "Properties"
* Select "Permissions"
* Check the "Allow executing file as program" box
* Double click on the file and select "Run In Terminal"

#### CLI
* Type "bash" and then the full path to the file
* (i.e. "bash /home/user/Tux-Disc/tux-disc_1.8-1.sh")
* (i.e. "bash ~/Tux-Disc/tux-disc_1.8-1.sh")

or
* cd into the directory of the script
* ./tux-disc_?.?-?.sh

Compile from source
-------------------
To compile from source,
* Download the source tarball or clone the Git repo
* Run "configure"
* Run "make" to compile the source and then "make-install" to install the source

To remove the source,
* Run "make-uninstall" to uninstall the compiled source

Planned features
----------------

In no particular order,
* Graphical user interface (buttons everywhere!)
* Flatpak packaging (for easier cross-distro distribution)
* Complete recoding into Python (Might make the GUI easier, and should make it easier to port to other OSes)
* Windows batch script (spreading freedom around all operating systems)
* Windows graphical binary (gotta make it easy on them somehow)
