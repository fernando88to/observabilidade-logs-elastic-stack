FROM nginx:latest

ENV TZ="America/Araguaina"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN rm -f /var/log/nginx/access.log && rm -f /var/log/nginx/error.log

RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.0-amd64.deb && \
    dpkg -i filebeat-7.13.0-amd64.deb


COPY html /usr/share/nginx/html
RUN chown -R nginx:nginx /usr/share/nginx/html

ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/default.conf

COPY filebeat.yml /etc/filebeat/filebeat.yml
COPY pipeline.yml /usr/share/filebeat/module/nginx/access/ingest/pipeline.yml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]