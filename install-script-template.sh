#!/bin/bash
# Краткое описание скрипта
#_______________________________________________________________________
# Убедимся что находимся под рутом
if [ "$(id -u)" != "0" ]; then
   echo "Скрипт установки работает только под пользователем 'root' dude." 1>&2
   exit 1
fi
#_______________________________________________________________________
# Установка зависимостей:
# Здесь нужно указывать все зависимости, независимо от того установлены ли они в системе или нет
# Не указываются только те зависимости которые могут повредить систему, например пакеты более ранних версий
#_______________________________________________________________________
# Добавление репозиториев и установка ключей если это необходимо
#_______________________________________________________________________
# Обновление списка пакетов
#_______________________________________________________________________
# Установка программы
#_______________________________________________________________________
# Конфигурирование после установки
#_______________________________________________________________________
# Настройка прав доступа
#_______________________________________________________________________
# Настройка сетевого экрана
#_______________________________________________________________________
