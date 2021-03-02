#!/bin/bash
cd ~/Desktop/
if test -f /main; then
    exit
    cd ~/Downloads/
    find . -iname '*txt' | wc -l
    mv *txt main/dokuman
    mv *.doc *.docx *.odf *.ppt *.xlsl main/dokuman
    mv *.pdf main/pdf
    find . -iname '*webp' | wc -l
    mv *.webp *.jpg *.png *JPG *.JPEG *.svg main/photos
else
    mkdir -p main/{dokuman,photos,pdf}
    cd ~/Downloads/
    find . -iname '*txt' | wc -l
    mv *txt ../Desktop/main/dokuman
    mv *webp *jpg *png *JPG ../Desktop/main/photos
    mv *pdf  ../Desktop/main/pdf
fi
