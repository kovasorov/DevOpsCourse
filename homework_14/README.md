# Домашнее задание - 14

## Практика работы с Google Cloud

На занятии мы посмотрели на Amazon code build, и настроили компиляцию проекта. Ваша задача доделать pipeline (с помощью AWS Codepipeline) для того, чтобы полученные при сборке артефакты деплоились на стэйдж-сервера в Амазоне. Также ДЗ по terraform: написать конфигурацию (и выложить на github) для запуска 2-х интстансов EC2: один с nginx, другой с postgresql. Разумеется с настроенной сетью. В качестве provisioner пригодится "local-exec".

## Запись занятия

[Занятие 14](https://meet76231018.adobeconnect.com/pisu6z1hjl3k/)

## Файлы с занятия

[](https://github.com/kovasorov/DevOpsCourse/tree/master/homework_14/les_14)

## Команды, вводимые на занятии

```Shell
cd /tmp/puzzle15/target
aws s3 mb s3://test5.test.ru
aws s3 mb s3://testqwerty5.test.ru
aws s3 ls
aws s3 cp Puzzle15-1.0-SNAPSHOT.war s3://testqwerty5.test.ru

wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
unzip terraform_0.11.11_linux_amd64.zip
sudo cp terraform /bin
terraform --version
cd les_14
mkdir prj && cd prj/
nano config.tf
terraform init
ll .terraform/plugins/linux_amd64/
terraform plan -out config.tfplan
nano config.tfplan
terraform apply
terraform show
mkdir aws && cd aws
nano aws.tf
terraform show
```