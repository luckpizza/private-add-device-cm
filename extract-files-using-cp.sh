#!/bin/sh
if [ $# -le 0 ] ||  [ ! -d $1 ] ; then
	echo "Please provide a valid directory to copy the files from"
	exit -1
fi

VENDOR=SEDMANUFACTURER
DEVICE=SEDNAME

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-files.txt | grep -v ^# | cut -f1 -d '#' | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    cp  $1/system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
