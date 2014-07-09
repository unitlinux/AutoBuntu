#!/bin/bash
# Gorodok11
# Часть кода заимствована с других открытых проектов которые указаны ниже
# AutoSnort: https://github.com/da667/Autosnort
# Triptych Security - Tony Robinson/da_667
# twitter: @da_667
# email: deusexmachina667@gmail.com

# Убедимся что находимся под рутом
if [ "$(id -u)" != "0" ]; then
   echo "Скрипт установки работает только из под пользователя'root' dude." 1>&2
   exit 1
fi

#Объявление функции
#Быстрый и простой способ повторно использовать функцию apt-get.
install_packages()
{
 echo "Устанавливаем пакеты: ${@}"
 apt-get update && apt-get install -y ${@}
 if [ $? -eq 0 ]; then
  echo "Пакеты успешно установлены."
 else
  echo "Пакеты не удалось установить!"
  exit 1
 fi
}
