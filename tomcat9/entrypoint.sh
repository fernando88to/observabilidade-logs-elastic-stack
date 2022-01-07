#!/bin/bash

filebeat modules enable apache
filebeat setup
service filebeat start
