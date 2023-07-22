Inside of the php container, run:

```sh
wp core download
wp config create --dbname=wordpress --dbpass="$MARIADB_ROOT_PASSWORD" --dbhost=db
wp core install --url=https://example.com --title="MY TITLE" --admin_user=my_user --admin_password=my_password --admin_email=admin@example.com
wp plugin install --activate meow-gallery meow-lightbox updraftplus
```
