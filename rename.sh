#!/bin/bash
echo 'Please enter a name for the theme. Underscores only!'
read NAME
FILENAME=${NAME//_/-}
echo 'Please enter a display name for theme.'
read DISPLAYNAME
cd ../
mv subthemeplus $NAME
cd $NAME
mv "RENAME.info" $NAME".info"
sed "s/Omega Test Theme/$DISPLAYNAME/" <$NAME".info" >"placehold.info"
mv placehold.info $NAME".info"
cd sass
mv "RENAME-alpha-default.scss" $FILENAME"-alpha-default.scss"
mv "RENAME-alpha-default-narrow.scss" $FILENAME"-alpha-default-narrow.scss"
mv "RENAME-alpha-default-normal.scss" $FILENAME"-alpha-default-normal.scss"
mv "RENAME-alpha-default-wide.scss" $FILENAME"-alpha-default-wide.scss"
cd ..
drush en $NAME
drush vset theme_default $NAME
echo "Rename complete! Enjoy!"