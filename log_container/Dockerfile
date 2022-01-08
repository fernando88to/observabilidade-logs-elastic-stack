FROM docker.elastic.co/beats/filebeat:7.9.1
ENV TZ="America/Araguaina"
COPY filebeat.docker.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml
RUN chmod go-w /usr/share/filebeat/filebeat.yml


#https://github.com/jeroenhendricksen/elastic-docker-filebeat-logging