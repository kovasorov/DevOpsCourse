#!/bin/bash
#
# скрипт, на второй машине должен забирать эти файлы с первой машины, сжимать их и складывать на вторую машину
# срок хранения таких файлов - 1 неделя
#
set -x

Source_Dir=$HOME/Dropbox/Projects/devops/homework_2/logs
Bkup_Dir=$HOME/Dropbox/Projects/devops/homework_2/bkup

rsync -avz 