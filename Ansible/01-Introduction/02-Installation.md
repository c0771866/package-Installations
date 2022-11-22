## **Ansible Installation**

- Ansible is designed to run on Unix/Linux systems, therefore windows systems aren’t
supported for the control node.
- Ansible is python based and therefore the control node and the managed nodes need to
have python2 or python3 installed on them.

- Ansible can be installed in three ways:
  . Using yum or apt
  . Using pip
  . Using compile file
https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

## **Installing Ansible on Ubuntu**
#
  $ sudo adduser ansible \
  $ echo "ansible ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible \
  $ sudo su - ansible \
  $ sudo apt update
  $ sudo apt install software-properties-common
  $ sudo add-apt-repository --yes --update ppa:ansible/ansible
  $ sudo apt install ansible -y
  $ sudo chown ansible -R /etc/ansible/

## **Ansible installation on REDHAT EC2**
#
  $sudo useradd ansible \
  $sudo hostname ansible \
  $echo "ansible ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible \
  $sudo su - ansible # Enable PassowrdLogin and assign password to ansible user \
  $ sudo yum install python3 -y \
  $ sudo alternatives --set python /usr/bin/python3 \
  $ sudo yum -y install python3-pip -y \
  $ pip3 install ansible --user
