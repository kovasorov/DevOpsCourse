# Домашнее задание - 7

## Практика создания Docker-контейнеров

Сделать дополнительное [ДЗ-6](https://github.com/kovasorov/DevOpsCourse/tree/master/homework_06) с помощью docker-compose.

### Сборка и запуск

```Shell
docker-compose build --build-arg REPO=GitHub_Url
docker-compose up -d
```

## Команды, вводимые на занятии

```Shell
mkdir compose
cd compose/
nano Dockerfile
docker build -t testpy .
docker run -p 5000:5000 testpy

apt install yamllint
mkdir yaml
cd yaml
nano test1.yaml
yamllint test1.yaml

curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose
mkdir file
cd file
nano docker-compose.yaml
yamllint docker-compose.yaml
docker-compose up -d
docker ps
docker-compose logs
docker-compose stop
docker-compose rm
docker images
```