#!/bin/bash
#
# cборка приложения с помощью maven и копирование war-файла на хост с Tomcat
#

Build_Dir=$HOME/Projects/devops/homework_03/build
Deploy_Dir=oleg@192.168.1.3:/home/Projects/devops/homework_03/deploy
Repo_name=boxfuse-sample-java-war-hello

# переходим в каталог сборки и клонируем репозиторий
cd $Build_Dir 
git clone https://github.com/boxfuse/$Repo_name

# переходим в каталог репозитория, запускаем сборку
cd $Repo_name
mvn package

# переходим в каталог результата сборки, копируем war-файл на хост с Tomcat
cd target
scp *.war $Deploy_Dir
