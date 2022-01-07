#FROM tomcat:9-jdk11-adoptopenjdk-hotspot
FROM tomcat:9.0.56-jdk11-temurin-focal

ENV TZ="America/Araguaina"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.0-amd64.deb && \
    dpkg -i filebeat-7.13.0-amd64.deb

COPY filebeat.yml /etc/filebeat/filebeat.yml
COPY catalina.sh /usr/local/tomcat/bin/catalina.sh



COPY app-0.1.war $CATALINA_HOME/webapps/ROOT.war


COPY docker-entrypoint.sh /usr/local/bin


CMD "/usr/local/bin/docker-entrypoint.sh"


#COPY entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh
#RUN sh /entrypoint.sh


#https://arshpunia.medium.com/using-filebeat-to-ship-tomcat-logs-to-elasticsearch-7e4325373c7a
#https://www.elastic.co/guide/en/beats/filebeat/current/filebeat-installation-configuration.html#installation
