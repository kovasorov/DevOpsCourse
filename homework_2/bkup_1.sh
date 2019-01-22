#!/bin/bash
#
# скрипт должен раз в день генерировать непустые файлы вида 200119.log, 210119.log и т.д.
#
#
# crontab -e
# 30 23 * * * rsync -av –delete -e 'ssh -p 2222' /home/captain/dir1_for_test captain@148.251.233.175:/your_dir_2/
set -x

Wrk_Dir=$HOME/Dropbox/Projects/devops/homework_2/logs

base64 /dev/urandom | head -c 100K > $Wrk_Dir/$(date +%d%m%y).log