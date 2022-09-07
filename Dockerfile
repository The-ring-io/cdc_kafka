FROM debezium/kafka:1.9

RUN microdnf install lighthttpd

RUN /bin/sh -c apk add

COPY etc/lighttpd/* /etc/lighttpd/

COPY start.sh /usr/local/bin/

EXPOSE map[80/tcp:{}]

VOLUME [/var/www/localhost/htdocs]

VOLUME [/etc/lighttpd]

CMD ["start.sh"]