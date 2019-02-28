# Домашнее задание - 13

## Деплой распределенного приложения в AWS EC2

Доделать развёртывание в AWS.

## Запись занятия

[Занятие 13](https://meet76231018.adobeconnect.com/p1d6798tdhjx/)

## Команды, вводимые на занятии

```Shell
sudo apt install awscli
aws configure
ll ~/.aws
cat ~/.aws/config

aws ec2 describe-instances
aws s3 mb s3://mybacketqwerty.test.com

nano test1.txt
aws s3 ls
aws s3 cp test1.txt s3://mybacketqwerty.test.com

aws ec2 create-security-group --group-name EC2SecurityGroup --description "Security Group for EC2 instances to allow port 22"
aws ec2 authorize-security-group-ingress --group-name EC2SecurityGroup --protocol tcp --port 22 --cidr 0.0.0.0/0
aws ec2 describe-security-groups --group-names EC2SecurityGroup
aws ec2 create-key-pair --key-name my-key --query 'KeyMaterial' --output text > ~/.ssh/my-key.pem

ll .ssh
chmod 400 ~/.ssh/my-key.pem

aws ec2 run-instances --image-id ami-34c14f4a  --key-name my-key --security-groups EC2SecurityGroup --instance-type t2.micro --block-device-mappings DeviceName=/dev/sdh,Ebs={VolumeSize=15} --count 2

sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get install ansible
ansible --version

sudo apt install python-pip
pip install boto
pip install --upgrade pip

mkdir Playbook
cd Playbook
nano amazon.yaml
nano var.yaml

ansible-playbook amazon.yaml
```