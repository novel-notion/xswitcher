#!/bin/bash


if ! [ $(id -u) = 0 ];
then
	echo "Please run as root"
	exit 1
fi

#make the script executable
chmod 755 xswitcher

#move the xorg.conf generator script to correct place
mv ./xswitcher /etc/init.d/
echo "Moving xswitcher to 'etc/init.d'"


#Create the sym link to the start up script
ln -s /etc/init.d/xswitcher /etc/rc2.d/S01xswitcher 

echo "Creating neccessary sym link to startup script"


echo "Done!"


exit 0



