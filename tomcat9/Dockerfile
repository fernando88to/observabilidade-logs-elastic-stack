FROM tomcat:9-jdk11-adoptopenjdk-hotspot
COPY app-0.1.war $CATALINA_HOME/webapps/ROOT.war


#https://www.elastic.co/guide/en/beats/filebeat/current/filebeat-installation-configuration.html#installation

RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.16.2-amd64.deb && \
    dpkg -i filebeat-7.16.2-amd64.deb


COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN sh /entrypoint.sh


