#!/bin/bash

rm ips.csv
wget https://github.com/vonoki/iocs/blob/main/ips.csv

mv ips.csv /etc/graylog/

if [ "$(id -u)" -ne 0 ]; then
  echo -e "\e[31m[!]\e[0m This script must be run with root privileges"
  exit 1
fi