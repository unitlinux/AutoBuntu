#!/bin/bash
# Установка окружения рабочего стола LXDE

# Убедимся что находимся под рутом
if [ "$(id -u)" != "0" ]; then
   echo "Скрипт установки работает только под пользователем 'root'." 1>&2
   exit 1
fi

. ./functions.sh

# http://www.freerdp.com/
