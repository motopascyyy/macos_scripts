# sleep 0.5
isSafariRunning=`ps aux | grep "/Applications/Safari.app/Contents/MacOS/Safari" | grep -v grep | grep \`whoami\`| wc -l`

if [ "${isSafariRunning}" == "       0" ]; then
	echo "Clearing"
	java -jar /Applications/safari_cleaner-1.1-SNAPSHOT.jar
	echo "Cleared History"
else
	echo "Safari running so didn't do anything"
fi
