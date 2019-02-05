#!/bin/bash
#
# war-файл в каталог Tomcat, рестарт
#
# запуск - sudo deploy.sh

Deploy_dir=$HOME/Projects/devops/homework_03/deploy

# копируем war-файл, рестарт Tomcat
cp $Deploy_dir/*.war /var/lib/tomcat8/webapps/
service tomcat8 restart
