FROM debezium/kafka:1.9

RUN microdnf install lighthttpd

RUN /bin/sh -c apk add

COPY etc/lighttpd/* /etc/lighttpd/

COPY start.sh /usr/local/bin/

EXPOSE 80

VOLUME [/var/www/localhost/htdocs]

VOLUME [/etc/lighttpd]

CMD ["start.sh"]