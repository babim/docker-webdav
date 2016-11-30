FROM babim/alpinebase

RUN apk add --no-cache lighttpd lighttpd-mod_webdav lighttpd-mod_auth apache2-utils

VOLUME [ "/config", "/share" ]

ADD ./entrypoint.sh /entrypoint.sh

EXPOSE 80

RUN chmod u+x  /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
