FROM ghcr.io/intentionally-left-nil/wordpress-php:main
# Remove the existing crontab (running as root)
RUN crontab -l | grep -v 'wp-cron' | crontab -
COPY job.sh /etc/periodic/15min/wordpress.sh
RUN chmod +x /etc/periodic/15min/wordpress.sh
ENTRYPOINT ["/usr/sbin/crond", "-f", "-L", "/dev/stdout"]
