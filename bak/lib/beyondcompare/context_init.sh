#!/bin/sh
# Initializes context menu
#

BC_LIB=/home/lishirong/lib/beyondcompare

if [ "$KDE_FULL_SESSION" = "true" ]; then
	mkdir -p $HOME/.beyondcompare

	if [ "$KDE_SESSION_VERSION" = "4" ]; then
		if [ -d "$HOME/.kde4" ]; then
			KDEBASE=$HOME/.kde4
		else
			KDEBASE=$HOME/.kde
		fi

		if [ -d "$KDEBASE/share/kde4/services" ]; then
			mkdir -p $KDEBASE/share/kde4/services/ServiceMenus
		fi
	else
		if [ -d "$HOME/.kde/share/apps/konqueror" ]; then
			mkdir -p $HOME/.kde/share/apps/konqueror/servicemenus
		fi
	fi

	$BC_LIB/kde_context_menu
fi

if [ -d "$HOME/.gnome2/nautilus-scripts" ]; then
	cp $BC_LIB/nautilus_compare.sh $HOME/.gnome2/nautilus-scripts/compare
	cp $BC_LIB/nautilus_compare_to_selected.sh \
		$HOME/.gnome2/nautilus-scripts/compare_to_selected
	cp $BC_LIB/nautilus_select_for_compare.sh \
		$HOME/.gnome2/nautilus-scripts/select_for_compare
	chmod a+x $HOME/.gnome2/nautilus-scripts/compare
	chmod a+x $HOME/.gnome2/nautilus-scripts/compare_to_selected
	chmod a+x $HOME/.gnome2/nautilus-scripts/select_for_compare
fi
