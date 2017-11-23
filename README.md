Tux Disc
========

Downloads Linux ISO of choice based on user input.

#### All i386/amd64 Ubuntu LTS releases are currently at 16.04.3
#### All Debian 9 releases are currently at 9.2.1

[Changelog][1]

[License][2]

[1]: https://github.com/Flamestar98/tux-disc/blob/master/CHANGELOG.md
[2]: https://github.com/Flamestar98/tux-disc/blob/master/LICENSE

Currently includes
------------------

#### Debian 9
* Net installer (i386/amd64)
* Full installer (i386/amd64)
* Live installer (i386/amd64)

#### Fedora
* **Fedora Workstation 26**
* Net installer (i386/amd64)
* Live installer (i386/amd64)

* **Fedora Workstation 27**
* Net Installer (i386/amd64)
* Live Installer (amd64)

#### KDE Neon
* User Edition (amd64)
* User LTS Edition (amd64)
* Developer Edition Git-Unstable (amd64)
* Developer Edition Git-Stable (amd64)

#### Kubuntu
* 16.04 LTS (i386/amd64)
* 17.04 (i386/amd64)
* 17.10 (i386/amd64)
* 18.04 Daily (i386/amd64)

#### Lubuntu
* 16.04 LTS (i386/amd64)
* 17.04 (i386/amd64)
* 17.10 (i386/amd64)
* 18.04 Daily (i386/amd64)

#### Qubes
* Qubes 3.2 (amd64)
* Qubes 4.0-rc2 (amd64)

#### Ubuntu
* 16.04 LTS (i386/amd64)
* 17.04 (i386/amd64)
* 17.10 (amd64)
* 18.04 Daily (amd64)

#### Ubuntu Budgie
* 17.04 (i386/amd64)
* 17.10 (i386/amd64)
* 18.04 Daily (i386/amd64)

#### Ubuntu GNOME
* 16.04 LTS (i386/amd64)
* 17.04 (i386/amd64)

#### Ubuntu MATE
* 16.04 LTS (i386/amd64/powerpc/armhf)
* 17.04 (i386/amd64)
* 17.10 (i386/amd64)
* 18.04 Daily (i386/amd64)

#### Ubuntu Studio
* 16.04 LTS (i386/amd64)
* 17.04 (i386/amd64)
* 17.10 (i386/amd64)

#### Xubuntu
* 16.04 LTS (i386/amd64)
* 17.04 (i386/amd64)
* 17.10 (i386/amd64)
* 18.04 Daily (i386/amd64)

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
* Find and open "Tux Disc" in the application menu of your desktop (the desktop file is saved under ~/.local/share/applications)

#### CLI
* run "dpkg -i FILEPATH/tux-disc_YYYY-mm-dd-v?.?.deb" (where "FILEPATH" is the full path (you can use "~" in the filepath if it's somewhere in your home directory) to the .deb file, and "YYYY-mm-dd-v?.?" is the version number of Tux Disc)
* Once install is complete, simply run "tux-disc" from any terminal

### Source
* Download the source tarball from the releases page or clone the Git repository

#### GUI
* Right click "tux-disc_YYYY-mm-dd-v?.?.sh"
* Select "Properties"
* Select "Permissions"
* Check the "Allow executing file as program" box
* Double click on the file and select "Run In Terminal"

#### CLI
* Type "bash" and then the full path to the file
* (i.e. "bash /home/user/Tux-Disc/tux-disc_2017-11-12-v1.0-v1.0.sh")
* (i.e. "bash ~/Tux-Disc/tux-disc_2017-11-12-v1.0-v1.0.sh")

or
* cd into the directory of the script
* ./tux-disc_YYYY-mm-dd-v?.?.sh

Compile from source
-------------------
To compile from source,
* Download the source tarball or clone the Git repo
* Run "config"
* Run "make" to compile the binary or "make-install" to compile and install the source

To remove the source,
* Run "make-uninstall" to uninstall the compiled source

Planned features
----------------

In no particular order,
* Graphical user interface (buttons everywhere!)
* RPM packages (the more binaries the better)
* Windows batch script (spreading freedom around all operating systems)
* Windows graphical binary (gotta make it easy on them somehow)
* Streamlining of the script (kinda big at the moment)
* Making script more modular (if that makes any sense)
