#!/bin/bash
fileName=`basename "$1" | sed 's/ /_/g'`
newFile="/home/lukezhang/github/Freyja/$fileName"
echo "newFile"
mv "$1" "$newFile"
cd "/home/lukezhang/github/Freyja/"
git add .
git commit -m "upload img"
git push origin master
echo "https://github.com/lukezhg/Freyja/raw/master/$fileName"
