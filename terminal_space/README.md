Inside of the php container, run:

```sh
su www-data
wp core download
rm -rf
wp config create --dbname=wordpress --dbusen=root --dbpass="$MARIADB_ROOT_PASSWORD" --dbhost=db
wp core install --url=https://example.com --title="MY TITLE" --admin_user=my_user --admin_password=my_password --admin_email=admin@example.com
wp plugin install --activate meow-gallery meow-lightbox updraftplus
rm -rf wp-content/themes/twenty*
```
