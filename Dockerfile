FROM debezium/kafka:1.9

RUN microdnf install -y lighthttpd && microdnf clean all -y

RUN /bin/sh -c apk add

COPY etc/lighttpd/* /etc/lighttpd/

RUN /bin/sh ls -lrt

RUN /bin/sh ls -lrt /etc/lighttpd/ 

COPY start.sh /usr/local/bin/

EXPOSE 80

VOLUME [/var/www/localhost/htdocs]

VOLUME [/etc/lighttpd]

CMD ["start.sh"]