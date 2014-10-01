#!/bin/bash

/sbin/start-stop-daemon --stop -v --pidfile /var/run/drupalfr_bot.pid
/sbin/start-stop-daemon --start -v --exec /usr/bin/php5 -p /var/run/drupalfr_bot.pid --background --make-pidfile --chuid nobody:nogroup -- /srv/master/drupalfr_bot/www/sites/all/modules/bot/bot_start.php --root /srv/master/drupalfr_bot/www --url http://bot.drupalfr.org
