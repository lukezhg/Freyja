#!/bin/bash
fileName=`basename "$1" | sed 's/ /_/g'`
newFile="/home/lukezhang/github/Freyja/$fileName"
echo $1
echo $fileName
mv "$1" "$newFile"
cd "/home/lukezhang/github/Freyja/"
git add $fileName
git commit -m "Upload picture $fileName"
git push -u origin master
echo "https://github.com/lukezhg/Freyja/raw/master/$fileName"
