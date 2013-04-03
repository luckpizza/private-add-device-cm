#!/bin/bash
if [ $# -le 1 ] ||  [ ! -d $1 ] ||  [ ! -d $2 ]  ; then
        echo "Please provide the system folder dump of the running device and the compiled system folder "
        echo "Example: [device_dump_path/system] [cm10/out/target/DEVICE/system] "
        exit -1
fi


diff <(cd $1 && find | sort) <(cd $2 && find | sort) > proprietary-files.txt
sed -i '/^[0-9]/d' proprietary-files.txt
sed -i '/^>/d' proprietary-files.txt
sed -i 's/< .\///' proprietary-files.txt

