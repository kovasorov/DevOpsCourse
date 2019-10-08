# Домашнее задание - 6

## Упаковка приложения в Docker

Сделать сборку Java-приложения из [ДЗ-3](https://github.com/kovasorov/DevOpsCourse/tree/master/homework_03) в Docker контейнере.

### Дополнительное задание

Необходимо разделить контейнеры на "сборочный" и "продакшн". \
В сборочный контейнер, параметром, при запуске должна передаваться ссылка на Git-репозиторий с исходным кодом. \
В этом контейнере происходит сборка программы и результат сборки передается в "продакшн" контейнер.

## Запись занятия

[Занятие 6](https://meet76231018.adobeconnect.com/p6vnuo3f6y38/)

## Команды, вводимые на занятии

```Bash
docker --version
docker info

docker --help
docker push --help
docker restart --help

docker run -it ubuntu /bin/bash
docker ps
docker ps -a
docker images
docker start f307
docker ps -a
docker inspect f307
docker logs f307
docker stop f307
docker ps
docker rm f307
docker ps -a

docker images
docker rmi 20

ifconfig
docker network ls
docker network inspect 42

mkdir Doc
cd Doc
nano Dockerfile
nano index.html
cat Dockerfile

docker build .
docker build -t web1 .
docker images
docker run -d -p 80:80 61f3edccc2cf
docker ps
```

```Docker
FROM ubuntu:xenial
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80
RUN rm -rf /var/www/html/*
ADD index.html /var/www/html/
CMD ["nginx", "-g", "daemon off;"]
```
