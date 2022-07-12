#!/bin/zsh

CHROMEDRIVER=`which chromedriver`

echo "Purging old Chromedriver at path: $CHROMEDRIVER"
rm $CHROMEDRIVER
brew reinstall --cask chromedriver 

echo "Modifying chromedriver at: $CHROMEDRIVER"
perl -pi -e 's/cdc_/dog_/g' $CHROMEDRIVER 
echo "Fixing signatures"
codesign --remove-signature $CHROMEDRIVER 
codesign --force --deep -s - $CHROMEDRIVER
echo "Activity completed"
