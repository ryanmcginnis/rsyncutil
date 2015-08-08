echo "Type or drag-and-drop source, then Return."
read src
echo "Type or drag-and-drop destination, then Return.
read des
sudo rsync -arv $src $des
echo "Done."
exit 1
