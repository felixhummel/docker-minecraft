#!/bin/sh

# get the UID of the volume at /home/minecraft
test -d /home/minecraft || (echo "please add volume for /home/minecraft" && exit 1)
uid=$(stat -c "%u" /home/minecraft)

adduser -u $uid minecraft

cd /home/minecraft
cmd="java -Xmx1024M -Xms1024M -jar /srv/minecraft_server.jar nogui"
su -c "$cmd" minecraft

