# Домашнее задание - 9

## Практика работы с Ansible

Выполнить сборку и деплой приложения из [ДЗ-3](https://github.com/kovasorov/DevOpsCourse/tree/master/homework_03) с помощью ролей Ansible.

### Команда для запуска плейбука

```Shell
ansible-playbook --ask-become-pass 
```

## Файлы с занятия

[Занятие 9](https://github.com/kovasorov/DevOpsCourse/tree/master/homework_09/les_09)

## Команды, вводимые на занятии

```Shell
mkdir les_09
cd les_09/
nano nginx.yaml
yamllint nginx.yaml
ansible-playbook nginx.yaml

nano test1.yaml
ansible all -m ping
ansible all -m setup

nano test2.yaml
ansible --version

nano test3.yaml
nano index.html
mv index.html index.j2
nano test3.yaml
yamllint test3.yaml
ansible-playbook test3.yaml --ask-become-pass
curl 192.168.1.106

mkdir roles
cd roles/
ansible-galaxy init common
tree
cd common/defaults/
cd ../tasks/
nano main.yml
cd ..

ansible-galaxy init webserver
cd webserver/
cd defaults/
nano main.yml
cd ../files/
nano index.html
cd ../handlers/
nano main.yml
cd ../tasks/
nano main.yml
cd ..

ansible-galaxy init security
cd security/
cd files/
nano banner
cd ..
cd handlers/
nano main.yml
cd ../tasks/
nano main.yml
cd ..

nano roles.yaml
ansible-playbook roles.yaml --ask-become-pass
```
