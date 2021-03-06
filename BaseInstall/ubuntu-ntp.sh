#!/bin/bash
# NTP сервер

. ./functions.sh

# Убедимся что находимся под рутом
if [ "$(id -u)" != "0" ]; then
   echo "Скрипт установки работает только под пользователем 'root'." 1>&2
   exit 1
fi

run_command "Установка NTP сервера:" apt-get -y install ntp
