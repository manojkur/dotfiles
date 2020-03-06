#!/bin/bash
echo -e "Setting up Xinit"

if [ "$(whoami)" == "root" ]
then
    echo -e "Do not run this script as root"
    exit 1
fi

userdir="$HOME"

echo -e "--> Moving all existing files to *.old"
mv $userdir/.xinitrc $userdir/.xinitrc.old > /dev/null 2>&1
mv $userdir/.start_dwm.sh $userdir/.start_dwm.sh.old > /dev/null 2>&1

echo -e "--> Linking files to repository"
ln -s $PWD/.xinitrc $userdir/.xinitrc
ln -s $PWD/.start_dwm.sh $userdir/.start_dwm.sh

if [ "$1" == "-d" ]
then
    echo -e "--> Deleting old files"
    rm -f $userdir/.xinitrc.old
    rm -f $userdir/.start_dwm.sh.old
fi

echo -e "--> Done"