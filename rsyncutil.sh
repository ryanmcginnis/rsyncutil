#!/bin/sh

clear
rsyncutil() {
echo "Type or drag and drop source directory, then Return."
read src
clear
echo "Type or drag and drop destination directory, then Return."
read des
clear
echo "Copying ..."
echo
echo
sleep 1
sudo rsync -arv -h --progress $src $des
sleep 5 # so user can see results
echo
echo
echo "Done!"
echo "Run again?"
read answer
if [[ $answer ~= ^([yY][eE][sS]|[yY])$ ]]; then
	rsyncutil()
else:
	exit 1
fi
}

rsyncutil()
