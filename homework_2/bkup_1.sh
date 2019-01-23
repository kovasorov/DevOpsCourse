#!/bin/bash
#
# скрипт должен раз в день генерировать непустые файлы вида 200119.log, 210119.log и т.д.
#
# этот скрипт добавляем в cron:
#                               crontab -e
#                                   30 23 * * * bkup_1.sh

Wrk_Dir=$HOME/Projects/devops/homework_2/logs

base64 /dev/urandom | head -c 100K > $Wrk_Dir/$(date +%d%m%y).log