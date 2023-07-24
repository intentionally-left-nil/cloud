#! /bin/sh
# Run the command as www-data, then pipe the output to the docker container stdout
su -c "wp cron event run --due-now --path=/var/www/html" www-data 1>/proc/1/fd/1 2>/proc/1/fd/2
