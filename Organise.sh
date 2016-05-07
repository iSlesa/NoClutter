#!/bin/bash
{
#target directories
PICTURES=$HOME/Downloads/NoClutter/Images/
DEB=$HOME/Downloads/NoClutter/Deb_files/
ZIP=$HOME/Downloads/NoClutter/Archives/
VDOS=$HOME/Downloads/NoClutter/Videos/
MUSIC=$HOME/Downloads/NoClutter/Music/
MISC=$HOME/Downloads/NoClutter/Misc/

#Downloads folder
DOWNLOADS=$HOME/Downloads/

#Create if not already available
if [ ! -d "$PICTURES" ] ; then mkdir "$PICTURES" ; fi
if [ ! -d "$DEB" ] ; then mkdir "$DEB" ; fi
if [ ! -d "$ZIP" ] ; then mkdir "$ZIP" ; fi
if [ ! -d "$VDOS" ] ; then mkdir "$VDOS" ; fi
if [ ! -d "$MUSIC" ] ; then mkdir "$MUSIC" ; fi
if [ ! -d "$MISC" ] ; then mkdir "$MISC" ; fi

cd $HOME

#moves files
mv $DOWNLOADS*.jpg $DOWNLOADS*.png $DOWNLOADS*.jpeg $DOWNLOADS*.JPG $DOWNLOADS*.PNG $DOWNLOADS*.gif $DOWNLOADS*.GIF "$PICTURES"
#mv $DOWNLOADS*.{jpg,png,jpeg,JPG,PNG,gif,GIF} "$PICTURES"
mv $DOWNLOADS*.zip $DOWNLOADS*.7z $DOWNLOADS*.tar.gz "$ZIP"
mv $DOWNLOADS*.deb "$DEB"
mv $DOWNLOADS*.mp4 $DOWNLOADS*.mov $DOWNLOADS*.avi $DOWNLOADS*.wmv "$VDOS"
mv $DOWNLOADS*.mp3 $DOWNLOADS*.wav "$MUSIC"
mv $DOWNLOADS*.* "$MISC"
} >/dev/null 2>&1
