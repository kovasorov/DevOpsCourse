# 1 pc

```Bash
   54  sudo apt install postgresql
   55  su postgres
   56  su 
   57  su postgres
   58  psql
   59  psql -u postgres
   60  su
   61  passw
   62  su
   63  sudo -u postgres psql postgres.
   64  sudo -u postgres psql
   65  mkdir 1
   66  cd 1
   67  git clone https://github.com/pthom/northwind_psql.git
   68  sudo -u postgres psql
   69  sudo -u postgres psql -d test1 -f /northwind.sql
   70  sudo -u postgres psql
   71  sudo -u postgres psql -d test1 -f /northwind.sql
   72  sudo -u postgres psql
   73  sudo -u postgres psql -d test1 -f /northwind.sql
   74  sudo -u postgres psql -d "test1" -f /northwind.sql
   75  sudo -u postgres psql
   76  sudo -u postgres psql -d "test1" -f /northwind.sql
   77  sudo -u postgres psql -d "test1" -f ~/1/northwind_psql/northwind.sql
   78  sudo -u postgres pg_dump test1 > /tmp/db.sql
   79  ls /tmp/
   80  sudo -u postgres psql
   81  ls /etc/postgresql/9.5/main/
   82  ls -al /etc/postgresql/9.5/main/
   83  nano /etc/postgresql/9.5/main/pg_hba.conf 
   84  sudo nano /etc/postgresql/9.5/main/pg_hba.conf 
   85  sudo nano /etc/postgresql/9.5/main/postgresql.conf 
   86  sudo nano /etc/postgresql/9.5/main/pg_hba.conf 
   87  sudo service postgresql restart
   88  netstat -tupln
   89  sudo -u postgres psql
   90  sudo nano /etc/postgresql/9.5/main/pg_hba.conf 
   91  sudo nano /etc/postgresql/9.5/main/postgresql.conf 
   92  scp electro4ever@10.166.0.3:/tmp /etc/postgresql/9.5/main/postgresql.conf 
   93  sudo nano /etc/postgresql/9.5/main/postgresql.conf 
   94  htop
   95  sudo -u postgres psql
   96  exit
   97  netstat -tupln
```

# 2 pc

```Bash
    2  sudo apt full-upgrade 
    3  su postgres
    4  sudo apt install postgresql
    5  su postgres
    6  su
    7  sudo apt install postgresql
    8  nano /etc/postgresql/9.5/main/pg_hba.conf
    9  sudo nano /etc/postgresql/9.5/main/pg_hba.conf
   10  sudo nano /etc/postgresql/9.5/main/postgresql.conf 
   11  sudo service postgresql restart
   12  netstat -tupln
   13  sudo nano /etc/postgresql/9.5/main/pg_hba.conf 
   14  htop
   15  sudo apt install htop
   16  htop
   17  ls /var/lib/postgresql/9.5/main/
   18  sudo ls /var/lib/postgresql/9.5/main/
   19  sudo ls /var/lib/postgresql/9.5/main/pg_xlog
   20  sudo rm -rf /var/lib/postgresql/9.5/main/
   21  sudo mkdir /var/lib/postgresql/9.5/main/
   22  chown postgres:postgres /var/lib/postgresql/9.5/main/
   23  sudo chown postgres:postgres /var/lib/postgresql/9.5/main/
   24  ls -al /var/lib/postgresql/9.5/main/
   25  ls -al /var/lib/postgresql/9.5/
   26  sudo cd  /var/lib/postgresql/9.5/
   27  sudo cd /var/lib/postgresql/9.5/
   28  cd 
   29  cd /
   30  cd /var/lib/postgresql/9.5/main
   31  cd ..
   32  pg_basebackup -P -R -X stream -c fast -h 10.164.0.3 -U postgres -D ./main
   33  sudo pg_basebackup -P -R -X stream -c fast -h 10.164.0.3 -U postgres -D ./main
   34  pg_basebackup -P -R -X stream -c fast -h 10.164.0.3 -U postgres -D ./main
   35  cat /var/log/postgresql/postgresql-9.5-main.log 
   36  ls -a
   37  ls -a main/
   38  pg_basebackup -P -R -X stream -c fast -h 10.164.0.3 -U postgres -D ./main
   39  chown -R postgres:postgres main/
   40  sudo chown -R postgres:postgres main/
   41  netstat -tupln
   42  sudo nano /etc/postgresql/9.5/main/postgresql.conf 
   43  sudo -u postgres pgsql
   44  sudo -u postgres psql
   45  sudo service postgresql restart
   46  sudo -u postgres psql
   47  sudo service postgresql restart
   48  netstat -tupln
   49  sudo service postgresql restart
   50  sudo nano /etc/postgresql/9.5/main/postgresql.conf 
   51  nano /var/log/postgresql/postgresql-9.5-main.log 
   52  sudo rm /etc/postgresql/9.5/main/postgresql.conf 
   53  sudo nano /etc/postgresql/9.5/main/postgresql.conf 
   54  sudo service postgresql restart
   55  netstat -tupln
   56  reboot
   57  sudo reboot
   58  netstat -tupln
   59  sudo service postgresql restart
   60  sudo service postgresql start
   61  netstat -tupln
   62  nano /var/log/postgresql/postgresql-9.5-main.log 
   63  htop
   64  sudo apt install postgreesql
   65  sudo apt install postgresql
   66  exit
   67  netstat -tupln
   68  sudo apt remove postgresql
   69  sudo apt autoremove 
   70  sudo apt install postgresql
   71  ls /var/lib/postgresql/9.5/main/
   72  su -u postgresql psql
   73  sudo -u postgresql psql
   74  htop
   75  sudo reboot
   76  history
```
