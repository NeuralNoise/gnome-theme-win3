gnome-theme-win3
================

GNOME Theme that looks like Windows 3.x

The theme is based on the vanilla HighContrast theme in Fedora 19.

In order for the GTK-2 theme to work properly, gtk2-engines (which provides the needed hcengine) shall be installed.

Install
=======

Copy to /usr/share/theme; then select the theme Win3 with gnome-tweak-tool.

Note: needs to be in /usr/share/theme in order for the mutter/metacity
theme to work. Installing the theme in ~/.themes would not work.

To add the mnemonics underlines:

  dconf write /org/gnome/desktop/interface/automatic-mnemonics false

To add the 'minimize(shade)' & maximize buttons

  dconf write /org/gnome/shell/overrides/button-layout '"menu:shade,maximize,close"'

To remove the round corner in Gnome Shell, install the extension from
mbokil:

https://extensions.gnome.org/extension/448/remove-rounded-corners/


Contributions
=============

Definitely need improvements. Cleaning up the .css files is highly
welcomed. The theme files are really really messy and ugly.
