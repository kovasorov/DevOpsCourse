# Домашнее задание - 5

## Создание собственного репозитория на GitLab, работа с репозиторием

## Запись занятия

[Занятие 5](https://meet76231018.adobeconnect.com/pgzcvujk2owx/)

## Команды, вводимые на занятии

### Запуск GitLab в Docker

[Документация](https://docs.gitlab.com/omnibus/docker/)

``` Shell
sudo docker run --detach \
    --hostname gitlab.example.com \
    --publish 443:443 --publish 80:80 --publish 22:22 \
    --name gitlab \
    --restart always \
    --volume /srv/gitlab/config:/etc/gitlab \
    --volume /srv/gitlab/logs:/var/log/gitlab \
    --volume /srv/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest
```