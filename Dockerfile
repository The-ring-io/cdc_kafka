FROM debezium/kafka:1.9

USER root

RUN microdnf update -y && microdnf install -y netcat && microdnf clean all

EXPOSE 8080

COPY start_nc.sh /kafka/

RUN chmod +x /kafka/start_nc.sh

#ENTRYPOINT ["/docker-entrypoint.sh"]
CMD /kafka/start_nc.sh && /docker-entrypoint.sh start