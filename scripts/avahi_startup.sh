#!/bin/sh

<<<<<<< refs/remotes/origin/master
if [ -f /var/run/dbus/pid ];
then
  rm -f /var/run/dbus/pid
fi

=======
echo 'Preparing...'
rm /var/run/dbus/pid
>>>>>>> fix
dbus-daemon --system

echo 'Restarting...'
/etc/init.d/avahi-daemon stop
sleep 5
/etc/init.d/avahi-daemon start

exit 0
