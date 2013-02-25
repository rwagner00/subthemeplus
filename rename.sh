#!/bin/bash
echo 'Please enter a name for the theme.'
read NAME
mv "RENAME.info" $NAME".info"
cd sass
mv "RENAME-alpha-default.scss" $NAME"-alpha-default.scss"
mv "RENAME-alpha-default-narrow.scss" $NAME"-alpha-default-narrow.scss"
mv "RENAME-alpha-default-normal.scss" $NAME"-alpha-default-normal.scss"
mv "RENAME-alpha-default-wide.scss" $NAME"-alpha-default-wide.scss"
cd ..
vim $NAME".info"
echo "Rename complete! Enjoy!"