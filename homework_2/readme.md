# Домашнее задание - 2

Необходимо написать 2 скрипта на Bash:

1-ый скрипт должен раз в день генерировать непустые файлы вида 200119.log, 210119.log и т.д.

2-ой скрипт, на второй машине должен забирать эти файлы с первой машины, сжимать их и складывать на вторую машину. Срок хранения таких файлов - 1 неделя.

```bash
uname -a
cat /etc/issue
cat /etc/os-release

date
uptime

who
w

cat /proc/cpuinfo
lsblk
dmesg | grep virt
cat /proc/cpuinfo

free -m

ip a

pwd

ll
type la
ls -la
ls -lah
ls -lat
ls -laS
ls -laSh
df -h

sudo apt install ncdu
ncdu

mkdir test1
mkdir test{2..5}
mkdir test{1..5}/test{1..5}

sudo apt install mc
mc

mkdir -m a=rwx test6
ls -al
for i in {1..6}; do echo $i >> 1.txt; done
cat 1.txt
cat 1.txt | xargs -L 1 mkdir
ls -al
touch demo1.txt
ls -al
touch {1..10}.log
ls -al
base64 /dev/urandom | head -c 10000 > file.txt
ls -al
updatedb
locate demo1.txt
sudo updatedb
locate demo1.txt
tar -cvzf file.tar.gz file.txt
ls -al
tar -tf file.tar.gz
ls -i
df -hTi
nano 1.txt
nano 3.txt
nano 4.txt
diff 3.txt 4.txt
echo 'hello world' >> 4.txt
diff 3.txt 4.txt
ps -a
ps -aux
htop
sudo apt install htop
htop
pstree
top
htop
kill -l
ip a
ifconfig -a
cat /etc/network/interfaces.d/
source /etc/network/interfaces.d/*
ls /etc/network/interfaces.d/
ls /etc/network/
netstat -tupln
cat /etc/services
cat /etc/protocols
netstat -tupln
sudo netstat -tupln
sudo apt install nmap
exit
nginx
exit
ls -al
cd /
ls -a
cd ~


sudo apt install iotop
iotop
sudo iotop
ls /var/log


nmap -sT 192.168.1.101
lsof -i -U
ls -al
scp nett.txt 192.168.1.101```
