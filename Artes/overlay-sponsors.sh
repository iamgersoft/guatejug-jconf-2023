#/bin/bash
GJ_FOLDER=/path/to/local/repo/guatejug-jconf-2023/Artes/charlas
for GJ_FILE in ${GJ_FOLDER}/*
do
    printf "${GJ_FILE}\n"
    GJ_OLD_FILE=${GJ_FILE/.png/-old.png}
    printf "\t${GJ_OLD_FILE}\n"
    mv ${GJ_FILE} ${GJ_OLD_FILE} 
    convert ${GJ_OLD_FILE} sponsors.png -geometry 1200x143+0+487 -composite ${GJ_FILE}
done
