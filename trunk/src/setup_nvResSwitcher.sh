#!/bin/bash

#SCRIPT_DIR=`pwd`/`dirname $0`

# got this from http://forums.macosxhints.com/archive/index.php/t-73839.html
FULL_SCRIPT_PATH="$(cd "${0%/*}" 2>/dev/null; echo "$PWD"/"${0##*/}")"
SCRIPT_DIR=`dirname $FULL_SCRIPT_PATH`

SWITCH_SHORTCUT_BINDING="${SCRIPT_DIR}/switchToNext.sh"
SWITCH_SHORTCUT="<Control><Shift>s"
MOBILE_SHORTCUT_BINDING="${SCRIPT_DIR}/switchToMobile.sh"
MOBILE_SHORTCUT="<Control><Shift>m"
DOCKED_SHORTCUT_BINDING="${SCRIPT_DIR}/switchToDocked.sh"
DOCKED_SHORTCUT="<Control><Shift>d"
VGA_SHORTCUT_BINDING="${SCRIPT_DIR}/switchToVGA.sh"
VGA_SHORTCUT="<Control><Shift>v"
BEAMER_SHORTCUT_BINDING="${SCRIPT_DIR}/switchToBeamer.sh"
BEAMER_SHORTCUT="<Control><Shift>b"


echo "NV Monitor Profile Switcher"
echo "---------------------------"

# install shortcut
echo "Setting GNOME shortcut for '$SWITCH_SHORTCUT_BINDING' to '$SWITCH_SHORTCUT'..."
gconftool-2 -t string -s /desktop/gnome/keybindings/custom0/action "$SWITCH_SHORTCUT_BINDING"
gconftool-2 -t string -s /desktop/gnome/keybindings/custom0/binding "$SWITCH_SHORTCUT"
gconftool-2 -t string -s /desktop/gnome/keybindings/custom0/name "SwitchMonitorProfiles"

echo "Setting GNOME shortcut for '$MOBILE_SHORTCUT_BINDING' to '$MOBILE_SHORTCUT'..."
gconftool-2 -t string -s /desktop/gnome/keybindings/custom101/action "$MOBILE_SHORTCUT_BINDING"
gconftool-2 -t string -s /desktop/gnome/keybindings/custom101/binding "$MOBILE_SHORTCUT"
gconftool-2 -t string -s /desktop/gnome/keybindings/custom101/name "SwitchToMobileMonitorProfile"

echo "Setting GNOME shortcut for '$DOCKED_SHORTCUT_BINDING' to '$DOCKED_SHORTCUT'..."
gconftool-2 -t string -s /desktop/gnome/keybindings/custom102/action "$DOCKED_SHORTCUT_BINDING"
gconftool-2 -t string -s /desktop/gnome/keybindings/custom102/binding "$DOCKED_SHORTCUT"
gconftool-2 -t string -s /desktop/gnome/keybindings/custom102/name "SwitchToDockedMonitorProfile"

echo "Setting GNOME shortcut for '$VGA_SHORTCUT_BINDING' to '$VGA_SHORTCUT'..."
gconftool-2 -t string -s /desktop/gnome/keybindings/custom103/action "$VGA_SHORTCUT_BINDING"
gconftool-2 -t string -s /desktop/gnome/keybindings/custom103/binding "$VGA_SHORTCUT"
gconftool-2 -t string -s /desktop/gnome/keybindings/custom103/name "SwitchToVGAMonitorProfile"

echo "Setting GNOME shortcut for '$BEAMER_SHORTCUT_BINDING' to '$BEAMER_SHORTCUT'..."
gconftool-2 -t string -s /desktop/gnome/keybindings/custom104/action "$BEAMER_SHORTCUT_BINDING"
gconftool-2 -t string -s /desktop/gnome/keybindings/custom104/binding "$BEAMER_SHORTCUT"
gconftool-2 -t string -s /desktop/gnome/keybindings/custom104/name "SwitchToBeamerMonitorProfile"

echo "Done"
