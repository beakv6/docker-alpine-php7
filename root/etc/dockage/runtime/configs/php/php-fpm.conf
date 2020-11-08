include = /etc/php7/php-fpm.d/*.conf
[global]
error_log = /var/log/php-fpm.log


[www]
user = {{PHP_FPM_USER}}
group = {{PHP_FPM_GROUP}}
listen = 127.0.0.1:9000
listen.owner = {{PHP_FPM_UNIX_SOCKET_OWNER}}
listen.group = {{PHP_FPM_UNIX_SOCKET_GROUP}}
listen.mode = {{PHP_FPM_UNIX_SOCKET_MODE}}

pm = {{PHP_FPM_PROCESS_MANAGER}}
pm.max_children = {{PHP_FPM_PROCESS_MANAGER_MAX_CHILDREN}}
pm.start_servers = {{PHP_FPM_PROCESS_MANAGER_START_SERVERS}}
pm.min_spare_servers = {{PHP_FPM_PROCESS_MANAGER_MIN_SPARE_SERVERS}}
pm.max_spare_servers = {{PHP_FPM_PROCESS_MANAGER_MAX_SPARE_SERVERS}}
