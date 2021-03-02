#!/bin/bash
cd ~/Desktop/
if test -f /main; then
    exit
    cd ~/Downloads/
    find . -iname '*txt' | wc -l
    mv *txt ../Desktop/main/dokuman
    find . -iname '*webp' | wc -l
    mv *webp ../Desktop/main/photos
    mv *jpg  ../Desktop/main/photos 
    mv *png  ../Desktop/main/photos 
    mv *JPG  ../Desktop/main/photos 
    mv *pdf  ../Desktop/main/pdf
else
    mkdir main
    cd main
    mkdir dokuman
    mkdir photos
    mkdir pdf
    cd ~/Downloads/
    find . -iname '*txt' | wc -l
    mv *txt ../Desktop/main/dokuman
    mv *webp ../Desktop/main/photos
    mv *jpg  ../Desktop/main/photos 
    mv *png  ../Desktop/main/photos 
    mv *JPG  ../Desktop/main/photos 
    mv *pdf  ../Desktop/main/pdf
fi
