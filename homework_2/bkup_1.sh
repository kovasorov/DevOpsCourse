#!/bin/bash
#
# скрипт должен раз в день генерировать непустые файлы вида 200119.log, 210119.log и т.д.
#
set -x

Wrk_Dir=$HOME/Dropbox/Projects/devops/homework_2/logs

base64 /dev/urandom | head -c 100000 > $Wrk_Dir/$(date +%d%m%y).log