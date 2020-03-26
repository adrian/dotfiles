#!/bin/bash

SOURCE_DIR=$(dirname $0)
FILES=$(find $SOURCE_DIR -regex './\..*' -type f -not -path '*.git/*')
TARGET_PATH=$HOME

for SOURCE_FILE in $FILES; do
    TARGET_FILE=$TARGET_PATH/$SOURCE_FILE

    printf "\e[1;33m%s\e[0m " $SOURCE_FILE
    if [ -e $TARGET_FILE -a ! -h $TARGET_FILE ]; then
        printf "exists and is not a link (\e[1;31mnot removed\e[0m)\n"
    else
        mkdir -p $(dirname $TARGET_FILE)
        rm -f $TARGET_FILE
        # the version of readlink on OS X doesn't have a -e option so use python instead
        if [[ $OSTYPE == darwin* ]]; then
            ln -s $(python -c "import os, sys; print os.path.abspath(sys.argv[1])" $SOURCE_FILE) $TARGET_FILE
        else
            ln -s $(readlink -e $SOURCE_FILE) $TARGET_FILE
        fi
        printf -- "-> \e[1;32m$TARGET_FILE\e[0m done\n"
    fi
done
