#!/bin/sh
fileName=`basename "$1" | sed 's/ /_/g'`
git add .
git commit -m "Upload picture $fileName"
git push origin master
echo "https://github.com/khotyn/Freyja/raw/master/$fileName"
