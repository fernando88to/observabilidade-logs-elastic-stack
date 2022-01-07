FROM docker.elastic.co/elasticsearch/elasticsearch:7.11.2

ENV TZ="America/Araguaina"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone