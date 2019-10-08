# Домашнее задание - 3

## Деплой выборочного Java-приложения

Необходимо автоматизировать процесс сборки и деплоя java-приложения, с помощью bash-скриптов.

Первая машина будет сборочной, на которой будет установлен maven, 2-ая машина будет боевой, на которой будет установлен Tomcat.

Сборка приложения производится на первой машине, затем war-файл передается на 2-ую.

Скриптов должно быть не больше 2-х.

Исходный код, можно использовать с [занятия](https://github.com/boxfuse/boxfuse-sample-java-war-hello).

## Запись занятия

[Занятие 3](https://meet76231018.adobeconnect.com/prp15w00uakz/)

## Команды, вводимые на занятии

```Bash
apt-cache policy tomcat*
apt install tomcat8
sudo apt install tomcat8
sudo apt install git
git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
cd boxfuse-sample-java-war-hello/
ls -a

sudo apt install maven

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt install oracle-java8-installer 
ls /usr/lib/jvm/java-8-oracle/
cd /usr/lib/jvm/java-8-oracle/
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
echo $JAVA_HOME

cd ~
ls
cd boxfuse-sample-java-war-hello/
mvn package
ls -alh
cd target/
ls -a
cp hello-1.0.war /var/lib/tomcat8/webapps/
sudo cp hello-1.0.war /var/lib/tomcat8/webapps/
sudo service tomcat8 restart
ls /var/lib/tomcat8/webapps/
ls /var/lib/tomcat8/webapps/hello-1.0
netstat -tupln
ls -alh
ls /var/lib/tomcat8/webapps/hello-1.0
cat /var/lib/tomcat8/webapps/hello-1.0
cat /var/lib/tomcat8/webapps/hello-1.0/index.jsp
```
