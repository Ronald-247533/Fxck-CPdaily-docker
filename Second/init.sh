#! /bin/sh

echo "1 19 * * * /bin/sh /usr/fxckToday/start.sh" > /etc/crontabs/root
crond
/bin/sh
