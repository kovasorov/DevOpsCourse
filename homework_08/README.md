# Домашнее задание - 8

## Подготовка тестового окружения с помощью Ansible

Выполнить сборку и деплой приложения из [ДЗ-3](https://github.com/kovasorov/DevOpsCourse/tree/master/homework_03) с помощью Ansible.

### Команда для запуска плейбука

```Shell
ansible-playbook --ask-become-pass maven-tomcat.yaml
```

## Дополнительное задание

Структурировать текст в Yaml.

```Text
В фирме «Мечта» было у них 6 отделов. Назывались они просто: 1-ый отдел, 2-ой отдел и т. д.
В первом отделе, помимо остальных сотрудников работало 4 Оли, 3 Дмитрия и 2 Ивана.
Оли, в основном, во всей «Мечте» были бухгалтерами. Была, правда одна Оля юрист из 3-го отдела.
Во 2-ом отделе работало сразу 4 Романа, и все были юристами. А также 2 водителя Максима.
Про 3-ий отдел сказать что-то сложно, но помню одного Ивана и одного Николая — строители.
4-ый и 5-ый отдел были совмещены и работало там 5 Юль. Всем им было немного за 30, и все они работали с бумагами.
В 6-ом отделе сидел Игорь Викторович, и был он директором по безопасности. Было ему далеко за 50.
Кстати самым высокооплачиваемым отделом был 1-ый. На втором месте 5-ый, а затем все остальные.
Хотя, самым молодым был 2-ой отдел, всем — до 30. А самым старым — 5-ый, все мужчины были там уже пенсионного возраста.
```

## Запись занятия

[Занятие 8](https://meet76231018.adobeconnect.com/p39it4b7wpfl/)

## Команды, вводимые на занятии

```Shell
sudo nano /etc/ansible/hosts
ansible all -m ping
ansible all -m shell -a "uname -a"
ansible web -m shell -a "uname -a"
ansible db -m shell -a "uname -a"

cd les08/
nano hello.txt
ansible all -m copy -a "src=hello.txt dest=/tmp"
ansible all -m shell -a "ls /tmp"
ansible all -m file -a "path=/tmp/hello.txt state=absent"
ansible all -m apt -a "name=nginx state=latest"
ansible all -m apt -a "name=nginx state=absent"
ansible all -m apt -a "name=nginx state=latest" -v
ansible all -m apt -a "name=nginx state=latest" -vv

nano site.yaml
yamllint site.yaml
nano index.html
ansible-playbook site.yaml
```

### site.yaml

```Yaml
- name: Install nginx
  hosts: web
  become: yes
  tasks:
  - name: Ensure nginx package is present
    apt:
      name: nginx
      state: present
  - name: Copy index.html
    copy:
      src: index.html
      dest: /var/www/html
  - name: Ensure nginx service is started
    service:
      name: nginx
      state: started
- name: Install db
  hosts: db
  become: yes
  tasks:
  - name: Ensure postgresql is present
    apt:
      name: postgresql
      state: present
  - name: Ensure postgresql is started
    service:
      name: postgresql
      state: started
```
