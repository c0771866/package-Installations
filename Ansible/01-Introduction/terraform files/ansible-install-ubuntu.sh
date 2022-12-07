#! /bin/bash
sudo hostnamectl set-hostname ansible
sudo adduser ansible
echo "ansible:ansible" | chpasswd
echo "ansible ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible
sudo su - ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt install ansible -y
sudo mkdir /etc/ansible
sudo chown -R ansible:ansible /etc/ansible/
# Install pip 
pip3 install ansible --user
pip3 install boto3 botocore --user
pip3 install --upgrade requests --user
# Create ansible HD
vi /etc/ansible/ansible.cfg 
# paste config file from official Ansible Github repo
#uncheck host_key_checking = false
