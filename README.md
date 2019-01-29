Tux Disc
========

<center><img src="https://github.com/easthighNerd/Tux-Disc/raw/version-2/tux-disc.png"
alt="Tux Disc" width="292" height="300" /></center>

---

[![](https://img.shields.io/badge/Mastodon-gray.svg?&style=for-the-badge&logo=mastodon)](https://niu.moe/@easthighNerd)
![](https://img.shields.io/badge/Matrix-@easthighnerd:ubports.chat-hotpink.svg?&style=for-the-badge&logo=matrix)

---

[![GitHub release](https://img.shields.io/github/release/easthighNerd/Tux-Disc.svg?&style=for-the-badge)](https://github.com/easthighNerd/Tux-Disc/releases/latest)
[![GitHub release date](https://img.shields.io/github/release-date/easthighNerd/Tux-Disc.svg?&style=for-the-badge)](https://github.com/easthighNerd/Tux-Disc/tree/version-2)
[![GitHub license](https://img.shields.io/github/license/easthighNerd/Tux-Disc.svg?&style=for-the-badge)](https://github.com/easthighNerd/Tux-Disc/blob/master/LICENSE)
[![GitHub last commit](https://img.shields.io/github/last-commit/easthighNerd/Tux-Disc/version-2.svg?&style=for-the-badge)](https://github.com/easthighNerd/Tux-Disc/commits/version-2)
[![GitHub top language](https://img.shields.io/github/languages/top/easthighNerd/Tux-Disc.svg?&style=for-the-badge&logo=linux)](https://github.com/easthighNerd/Tux-Disc/tree/version-2)

---

[![](https://img.shields.io/badge/Changelog-blue.svg?&style=for-the-badge)](https://github.com/easthighNerd/tux-disc/blob/version-2/CHANGELOG.md)[![](https://img.shields.io/badge/Distro%20List-brightgreen.svg?&style=for-the-badge)](https://github.com/easthighNerd/tux-disc/blob/version-2/distro-list.md)

---

Tux Disc is a command line utility for downloading ISO images for Ubuntu and it's flavors, as well as KDE neon.

Tux Disc provides a simple, easy to use interface, that makes it a breeze to download Ubuntu ISO images.

This is pretty much a little project of mine born from my wanting to choose which Ubuntu flavor's 17.10 daily testing ISO I wanted to download, and just kinda ended up becoming this whole thing for downloading a bunch of Linux distributions install images.

Screenshots
===========
<center><img src="https://github.com/easthighNerd/Tux-Disc/raw/version-2/screenshots/main-menu.png"
alt="Main Menu" /></center>
<center><img src="https://github.com/easthighNerd/Tux-Disc/raw/version-2/screenshots/downloading.png"
alt="Downloading" /></center>

Get Tux Disc
============
You can get Tux Disc either using the Tux Disc PPA, downloading straight from the [releases][2] page, or by compiling the source code

PPA
---
To get Tux Disc using the PPA, open a terminal window and run
```
$ sudo add-apt-repository ppa:flamestar/tux-disc
$ sudo apt-get update && sudo apt install tux-disc
```

Download
--------
To download the deb installer for Tux Disc,
* head on over to the [releases][2] page,
* download the .deb installer for the latest version
* double click the .deb installer
* click `Install Package`
* enter your password

Source
------
To compile and install Tux Disc from source,
* Download the source code, by either
  * going to the [releases][2] page
    * download the source code either as .zip or .tar.gz
    * extract the contents of the archive
  * using `git` to clone the repository
  * click on `Clone or Download` and click on `Download ZIP`
    * extract the contents of the archive
* Open a terminal window and `cd` into the folder for Tux Disc
* Run
  ```
  $ sudo bash ./configure`
  $ sudo bash ./make`
  $ sudo bash ./make-install
  ```


Once any of the methods have been completed, Tux Disc can now be run either from your desktop's application launcher, or by running
```
$ tux-disc
```

Planned Features
================

In no particular order, these are some features/milestones that I have planned for future development

* Graphical user interface (buttons everywhere!)
* Flatpak packaging (for easier cross-distro distribution)
* Complete recoding into Python (Might make the GUI easier, and should make it easier to port to other OSes)
* Windows batch script (spreading freedom around all operating systems)
* Windows graphical binary (gotta make it easy on them somehow)

---

This app depends on [bootiso][4], and installs it during the build process.

[1]: https://github.com/easthighNerd/tux-disc/blob/master/CHANGELOG.md
[2]: https://github.com/easthighNerd/tux-disc/releases
[3]: https://github.com/easthighNerd/tux-disc/blob/master/distro-list.md
[4]:https://github.com/jsamr/bootiso