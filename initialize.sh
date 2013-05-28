#!/bin/sh

if [ $# -le 3 ] ; then
	echo "Please provide a valid directory to copy the files from"
	exit -1
fi


cd $(dirname "$0")

find . -type f -not -wholename "*.git*" -exec sed -i "s/SEDNAME/$1/g" {} \;
find . -type f -not -wholename "*.git*" -exec sed -i "s/SEDPRETTYNAME/$2/g" {} \;
find . -type f -not -wholename "*.git*" -exec sed -i "s/SEDBRANDING/$3/g" {} \;
find . -type f -not -wholename "*.git*" -exec sed -i "s/SEDMANUFACTURER/$4/g" {} \;


mv full_SEDNAME.mk "full_$1.mk"

echo "Initialization done for device $2 by $3 manufactured by $4"
