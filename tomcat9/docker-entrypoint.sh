#!/bin/bash

#Start filebeat
service filebeat start
service filebeat setup
#Start tomcat
/usr/local/tomcat/bin/catalina.sh run