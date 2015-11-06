#!/bin/sh

# Defaults
PREFIX=/home/lishirong
BC_BIN=/home/lishirong/bin
BC_LIB=/home/lishirong/lib/beyondcompare

# remove context menus and configuration files
for i in /home/* /root; do
	if [ -d "$i/.gnome2/nautilus-scripts" ]; then
		rm -f "$i/.gnome2/nautilus-scripts/compare"
		rm -f "$i/.gnome2/nautilus-scripts/compare_to_selected"
		rm -f "$i/.gnome2/nautilus-scripts/select_for_compare"
	fi
	if [ -d "$i/.kde4/share/kde4/services/ServiceMenus" ]; then
		rm -f "$i/.kde4/share/kde4/services/ServiceMenus/beyondcompare.desktop"
		rm -f "$i/.kde4/share/kde4/services/ServiceMenus/beyondcompare_compare.desktop"
		rm -f "$i/.kde4/share/kde4/services/ServiceMenus/beyondcompare_more.desktop"
		rm -f "$i/.kde4/share/kde4/services/ServiceMenus/beyondcompare_select.desktop"
	fi
	if [ -d "$i/.kde/share/kde4/services/ServiceMenus" ]; then
		rm -f "$i/.kde/share/kde4/services/ServiceMenus/beyondcompare.desktop"
		rm -f "$i/.kde/share/kde4/services/ServiceMenus/beyondcompare_compare.desktop"
		rm -f "$i/.kde/share/kde4/services/ServiceMenus/beyondcompare_more.desktop"
		rm -f "$i/.kde/share/kde4/services/ServiceMenus/beyondcompare_select.desktop"
	fi
	if [ -d "$i/.kde/share/apps/konqueror/servicemenus" ]; then
		rm -f "$i/.kde/share/apps/konqueror/servicemenus/beyondcompare.desktop"
		rm -f "$i/.kde/share/apps/konqueror/servicemenus/beyondcompare_compare.desktop"
		rm -f "$i/.kde/share/apps/konqueror/servicemenus/beyondcompare_more.desktop"
		rm -f "$i/.kde/share/apps/konqueror/servicemenus/beyondcompare_select.desktop"
	fi
done

rm -f $BC_BIN/bcompare
rm -rf $BC_LIB
rm -f /usr/share/applications/bcompare.desktop
rm -f /usr/share/pixmaps/bcompare.png
rm -f /usr/share/pixmaps/bcomparefull32.png
rm -f /usr/share/pixmaps/bcomparehalf32.png
