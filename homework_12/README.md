# Домашнее задание - 12

## Практика работы с Kubernetes в облачной среде

Настроить деплой приложения из Jenkins в Kubernetes. Рекомендую использовать соответствующие модули Jenkins, либо написать pipeline. Также попробуйте Nexus или Artifactory.

## Запись занятия

[Занятие 12](https://meet76231018.adobeconnect.com/pbxltw4dblu1/)

## Команды, вводимые на занятии

```Shell
docker run -d --restart=unless-stopped -p 80:80 -p 443:443 rancher/rancher:latest

docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run rancher/rancher-agent:v2.1.6 --server https://192.168.1.105 --token zz5jhd47hxdkxd6ngspsv574rvts6xkpj6rbmdk6j4gt9txgvxttv8 --ca-checksum 5ad5737b42b3ad5a312515f3bfee65dcbf03b1b1601ce5246f2be733737ebb14 --etcd --controlplane --worker
```
