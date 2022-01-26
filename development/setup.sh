bench init --skip-redis-config-generation --frappe-branch $FRAPPE_VERSION $BENCH_FOLDER

cd ./$BENCH_FOLDER

bench set-mariadb-host mariadb-server
bench set-redis-cache-host redis-cache:6379
bench set-redis-queue-host redis-queue:6379
bench set-redis-socketio-host redis-socketio:6379

bench new-site "$SITE_NAME.localhost" \
--mariadb-root-password $MYSQL_ROOT_PASSWORD \
--admin-password $FRAPPE_ADMIN_PASSWORD \
--no-mariadb-socket

bench --site "$SITE_NAME.localhost" set-config developer_mode 1
bench --site "$SITE_NAME.localhost" clear-cache

bench get-app --branch $ERPNEXT_VERSION erpnext https://github.com/frappe/erpnext.git
bench --site "$SITE_NAME.localhost" install-app erpnext
