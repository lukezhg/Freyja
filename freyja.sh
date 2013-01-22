#!/bin/sh
fileName=`basename "$1" | sed 's/ /_/g'`
cd "g:/github/Freyja/"
git add $fileName
git commit -m "Upload picture $fileName"
git push -u origin master
echo "https://github.com/lukezhg/Freyja/raw/master/$fileName"
