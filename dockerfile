FROM dockage/alpine:3.11
MAINTAINER Blake Anderson <blake@expressiveanalytics.com>

ENV DOCKAGE_WEBROOT_DIR=/var/www \
    DOCKAGE_DATA_DIR=/data \
    DOCKAGE_LOG_DIR=/var/log

ADD ./root /

RUN apk update \
    && apk --no-cache add runit nginx php7 php7-curl php7-fpm \
    && runit-enable-service nginx \
    && runit-enable-service php-fpm \
    && chown nginx:nginx ${DOCKAGE_WEBROOT_DIR} \
    && rm -rf /var/cache/apk/*

VOLUME ["$DOCKAGE_DATA_DIR", "$DOCKAGE_LOG_DIR"]
WORKDIR ${DOCKAGE_WEBROOT_DIR}

ENTRYPOINT ["/sbin/entrypoint"]
CMD ["app:start"]
