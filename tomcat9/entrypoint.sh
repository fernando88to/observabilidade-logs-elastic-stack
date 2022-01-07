#!/bin/bash

filebeat modules enable tomcat
filebeat setup
service filebeat start
