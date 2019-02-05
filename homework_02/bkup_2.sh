#!/bin/bash
#
# скрипт, на второй машине должен забирать эти файлы с первой машины, сжимать их и складывать на вторую машину
# срок хранения таких файлов - 1 неделя
#
#

# откуда
Source_Dir=oleg@192.168.1.3:/home/Projects/devops/homework_2/logs/
# куда
Bkup_Dir=$HOME/Projects/devops/homework_2/bkup

# синхронизация
rsync -avzu $Source_Dir $Bkup_Dir

cd $Bkup_Dir

# пакуем всё, кроме архивов
find ./ ! -name "*gz" -print0 | xargs -0 -n 1 -t gzip

# удаляем файлы старше 7 дней
find ./ -type f -mtime +7 -print0 | xargs -0 rm -f