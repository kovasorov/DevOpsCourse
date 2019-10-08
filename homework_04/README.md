# Домашнее задание - 4

## Деплой и разбор тестовой БД Postgresql

Доделать дома репликацию Master-Slave, если не получилось на занятии. После этого добавить еще один Slave в эту систему.

## Запись занятия

[Занятие 4](https://meet76231018.adobeconnect.com/pii9spyx3rga/)

## Команды, вводимые на занятии

### node_1 - настройка Master

```Bash
sudo apt update
sudo apt install postgresql-9.5
netstat -tupln
sudo -u postgres psql

mkdir repo
cd repo
git clone https://github.com/pthom/northwind_psql.git
sudo -u postgres psql -d "test1" -f ~/repo/northwind_psql/northwind.sql
sudo -u postgres pg_dump test1 > /tmp/db.sql

sudo nano /etc/postgresql/9.5/main/postgresql.conf
sudo nano /etc/postgresql/9.5/main/pg_hba.conf
sudo service postgresql restart
netstat -tupln
sudo service postgresql restart

netstat -tupln
cat /var/log/postgresql/postgresql-9.5-main.log
```

### node_2 - настройка Slave

```Bash
sudo apt update
sudo apt install postgresql-9.5
netstat -tupln
sudo -u postgres psql

sudo nano /etc/postgresql/9.5/main/postgresql.conf
sudo nano /etc/postgresql/9.5/main/pg_hba.conf
sudo service postgresql restart
netstat -tupln

sudo ls /var/lib/postgresql/9.5/main/
cd /var/lib/postgresql/9.5/
sudo rm -rf main/
sudo -u postgres mkdir main
sudo chown -R postgres:postgres main/
sudo chmod 0700 main/
sudo -u postgres pg_basebackup -P -R -X stream -c fast -h ip_master -U postgres -D ./main
sudo service postgresql restart

netstat -tupln
cat /var/log/postgresql/postgresql-9.5-main.log
```

### изменения в конфигурационных файлах

#### /etc/postgresql/9.5/main/postgresql.conf - одинаково для Master и Slave

```
# CONNECTIONS AND AUTHENTICATION
listen_addresses = '*'

# WRITE AHEAD LOG
wal_level = hot_standby
wal_log_hints = on

# REPLICATION
max_wal_senders = 5
wal_keep_segments = 64
hot_standby = on
```

#### /etc/postgresql/9.5/main/pg_hba.conf - для Master

```
host    all             all             ip_slave_#/32           md5
host    replication     postgres        ip_slave_#/32           md5
```

#### /etc/postgresql/9.5/main/pg_hba.conf - для Slave

```
host    all             all             ip_master/32           md5
host    replication     postgres        ip_master/32           md5
```
