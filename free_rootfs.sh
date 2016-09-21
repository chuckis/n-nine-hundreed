#!/bin/sh
# Nokia N900 Maemo 5 Script to free up space on rootfs
# ignoring errors when creating dirs that may already exist

# Moving ?? icons to /home/opt
mkdir -p /home/opt/usr/share/icons 2> /dev/null
cp -r /usr/share/icons/* /home/opt/usr/share/icons
rm -r /usr/share/icons
ln -s /home/opt/usr/share/icons /usr/share/icons

# Moving video on start-up to /home/opt
mkdir -p /home/opt/usr/share/hildon-welcome 2> /dev/null
cp -r /usr/share/hildon-welcome/* /home/opt/usr/share/hildon-welcome
rm -r /usr/share/hildon-welcome
ln -s /home/opt/usr/share/hildon-welcome /usr/share/hildon-welcome

# ??
mkdir -p /home/opt/usr/share/pixmaps 2> /dev/null
cp -r /usr/share/pixmaps/* /home/opt/usr/share/pixmaps
rm -r /usr/share/pixmaps
ln -s /home/opt/usr/share/pixmaps /usr/share/pixmaps

# Moving 'apt cache' to /home/opt - Valid until Bug 5746 is fixed.
mkdir -p /home/opt/var/cache/apt 2> /dev/null
cp -r /var/cache/apt/* /home/opt/var/cache/apt
rm -r /var/cache/apt
ln -s /home/opt/var/cache/apt /var/cache/apt

# Moving locales Source
mv /usr/share/locale /opt
ln -s /opt/locale /usr/share/locale

#sudo gainroot
mv /usr/share/nokia-maps /home/opt/
ln -s /home/opt/nokia-maps /usr/share/nokia-maps

mv /usr/share/tutorial-applet /home/opt
ln -s /home/opt/tutorial-applet /usr/share/tutorial-applet
