#!/bin/bash
if [ $# -le 1 ] ||  [ ! -d $1 ] ||  [ ! -d $2 ]  ; then
        echo "Please provide the system folder dump of the running device and the compiled system folder "
        echo "Example: [device_dump_path/system] [cm10/out/target/DEVICE/system] "
        exit -1
fi

rm  proprietary-files.txt
echo "##lib files" >> proprietary-files.txt
echo "">> proprietary-files.txt

diff <(cd $1 && find lib/ | sort) <(cd $2 && find lib/ | sort) >> proprietary-files.txt

echo "">> proprietary-files.txt
echo "##vendor files" >> proprietary-files.txt
echo "">> proprietary-files.txt

diff <(cd $1 && find vendor/ | sort) <(cd $2 && find vendor/ | sort) >> proprietary-files.txt

echo "">> proprietary-files.txt
echo "##firmware configuration files" >> proprietary-files.txt
echo "">> proprietary-files.txt

diff <(cd $1 && find etc/firmware/ | sort) <(cd $2 && find etc/firmware/ | sort) >> proprietary-files.txt

echo "">> proprietary-files.txt
echo "##binary files" >> proprietary-files.txt
echo "">> proprietary-files.txt

diff <(cd $1 && find bin/ | sort) <(cd $2 && find bin/ | sort) >> proprietary-files.txt
sed -i '/^[0-9]/d' proprietary-files.txt
sed -i '/^>/d' proprietary-files.txt
sed -i '/---/d' proprietary-files.txt
sed -i 's/< //' proprietary-files.txt

