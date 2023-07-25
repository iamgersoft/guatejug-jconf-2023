#/bin/bash
GJ_FOLDER=/home/gersoft/Documents/Projects/guatejug/guatejug-jconf-2023/Artes/charlas
for GJ_FILE in ${GJ_FOLDER}/*
do
    printf "${GJ_FILE}\n"
    GJ_OLD_FILE=${GJ_FILE/.png/-old.png}
    printf "\t${GJ_OLD_FILE}\n"
    mv ${GJ_FILE} ${GJ_OLD_FILE} 
    # convert ${GJ_OLD_FILE} sponsors.png -geometry 1200x143+0+487 -composite ${GJ_FILE}
    # sponsors.png -geometry 1200x143+0+487 -resize 1200x
    # 1. cut
    # convert ${GJ_OLD_FILE} -crop x487+0+0 ${GJ_FILE}
    # 2. append
    convert -append ${GJ_OLD_FILE} sponsors.png ${GJ_FILE}
done
