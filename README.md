Tux Disc
========

<center><img src="https://github.com/Flamestar98/Tux-Disc/raw/master/tux-disc.png"
alt="Tux Disc" width="292" height="300" /></center>

[![GitHub release](https://img.shields.io/github/release/Flamestar98/Tux-Disc.svg)](https://github.com/Flamestar98/Tux-Disc/releases/latest)
![GitHub release date](https://img.shields.io/github/release-date/Flamestar98/Tux-Disc.svg)
[![GitHub license](https://img.shields.io/github/license/Flamestar98/Tux-Disc.svg)](https://github.com/Flamestar98/Tux-Disc/blob/master/LICENSE)
[![GitHub last commit](https://img.shields.io/github/last-commit/Flamestar98/Tux-Disc.svg)](https://github.com/Flamestar98/Tux-Disc/commits)
![GitHub top language](https://img.shields.io/github/languages/top/Flamestar98/Tux-Disc.svg)

A nice little utility for downloading ISO images

[[Changelog][1]]
[[Distro List][3]]

PPA
---
To install Tux Disc and receive updates,

* Run `sudo add-apt-repository ppa:flamestar/tux-disc`
* Then run `sudo apt-get update && sudo apt install tux-disc`

Download
--------
Both source tarballs and binaries can be downloaded from the [release][2] page, or you can use Git to clone the most recent version of the repository

Importaint information
----------------------

This script relies on the URL of each file remaining unchanged.

In the event that any of the downloads become broken, I will attempt to fix them as soon as I notice them.

Otherwise, feel free to file an issue stating which download(s) are broken, and i will attempt to fix them as soon as possible.

Operation
---------

To use this script,

### Binary
* Download the binary .deb file of the latest release

#### GUI
* Double-click the .deb file and click install
* Find and open `Tux Disc` in the application menu of your desktop under `Accessories` (the desktop file is saved under `~/.local/share/applications`)

#### CLI
* run `dpkg -i FILEPATH/tux-disc_?.?-?.deb` (where `FILEPATH` is the full path (you can use `~` in the filepath if it's somewhere in your home directory) to the .deb file, and `?.?-?` is the version number of Tux Disc)
* Once install is complete, simply run `tux-disc` from any terminal

### Source
* Download the source tarball from the releases page or clone the Git repository

#### GUI
* Right click `tux-disc_?.?-?.sh`
* Select `Properties`
* Select `Permissions`
* Check the `Allow executing file as program` box
* Double click on the file and select `Run In Terminal`

#### CLI
* Type `bash` and then the full path to the file
  * i.e. `bash /home/user/Tux-Disc/tux-disc_1.8-1.sh`
  * i.e. `bash ~/Tux-Disc/tux-disc_1.8-1.sh`

* Or
  * `cd` into the directory of the script
  * `./tux-disc_?.?-?.sh`

Compile from source
-------------------
To compile from source,

* Download the source tarball or clone the Git repo
* Run `configure`
* Run `make` to compile the source and then `make-install` to install the source

To remove the source,

* Run `make-uninstall` to uninstall the compiled source

Planned features
----------------

In no particular order,

* Graphical user interface (buttons everywhere!)
* Flatpak packaging (for easier cross-distro distribution)
* Complete recoding into Python (Might make the GUI easier, and should make it easier to port to other OSes)
* Windows batch script (spreading freedom around all operating systems)
* Windows graphical binary (gotta make it easy on them somehow)

[1]: https://github.com/Flamestar98/tux-disc/blob/master/CHANGELOG.md
[2]: https://github.com/Flamestar98/tux-disc/releases
[3]: https://github.com/Flamestar98/tux-disc/blob/master/distro-list.md
