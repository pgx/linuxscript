#!/bin/bash
#PGX CentOS installation Script.
#Author: PGX
#LAST UPDATE: 2015/07/08


yum install vim epel-release -y
yum update -y

echo -e "set encoding=utf-8
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ruler
set backspace=2
set ic
set ai
set nu
set ru
set hlsearch
set incsearch
set smartindent
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]
set t_Co=256
colorscheme torte" >> /etc/vimrc

sed -i 's/.*UseDNS yes/UseDNS no/' /etc/ssh/sshd_config
sed -i 's/.*PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sed -i 's/SELINUX=.*/SELINUX=disabled/' /etc/selinux/config

touch ~/.ssh/authorized_keys
echo -e "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCsyqD3MY5h7DDkVNu8QOnpwV97RYAIrtSfMeVTSUc9gLkQ1YedEITpQqN4+Pmn8MwiwakuUieU79ri+81FW/7ddjIW0w6v9SMkze4HNGuvVLWo6B4NYXhlmfOrR6/gAioF3SsKjvBmElvbm+3hGpLLmjZk3HA1gkLAizjfzI3CshLvhKHIwXnRsipN8XN/Q8WKuh4HopQVZkCGNQNUdH8HhXId1ovgjK9039mBoO2+I2RodAfW4HxLTqQNN0l3XX6+57DogpBfRB71BWjQtTYxlaKm/BUUZwqR0ZbiL1lGiC/UIGVmZvAa7W+pqbDS7uKnP9DObTKGiWhEjYohwteUqUloNN88GBxDDYRudjGWXUiLIWcIGheGTaXjuIc00OvtIt+Al3L1Vs/25EOSSF6V15wRH53TNKPUKsABSyLrSNwczaGfblsXPCXpxn/fa+1so359eK2f4CwaHEAVnZYIcSlk14zjKHLCifKDHpFFOjjEVD4DXHnYMJ+652K0mCZ9F/Xo8GhMKFenjjYl/kgHkZiU/cONrrRTv6veMjoWdjtJJHwaJHO3zq2eAj+M4Ppk7LqI4DKLVV3JiRz09+RCQOEsmyZBgXGb2srfte+Nc8AGX1NElLXPHNdmbtz525ElWFz/aPqC551H5ODy6oDX6FId5qmomRVtSKfSylVWpw== tzongyeu@gmail.com" >> ~/.ssh/authorized_keys
touch /home/ted/.ssh/authorized_keys
echo -e "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCsyqD3MY5h7DDkVNu8QOnpwV97RYAIrtSfMeVTSUc9gLkQ1YedEITpQqN4+Pmn8MwiwakuUieU79ri+81FW/7ddjIW0w6v9SMkze4HNGuvVLWo6B4NYXhlmfOrR6/gAioF3SsKjvBmElvbm+3hGpLLmjZk3HA1gkLAizjfzI3CshLvhKHIwXnRsipN8XN/Q8WKuh4HopQVZkCGNQNUdH8HhXId1ovgjK9039mBoO2+I2RodAfW4HxLTqQNN0l3XX6+57DogpBfRB71BWjQtTYxlaKm/BUUZwqR0ZbiL1lGiC/UIGVmZvAa7W+pqbDS7uKnP9DObTKGiWhEjYohwteUqUloNN88GBxDDYRudjGWXUiLIWcIGheGTaXjuIc00OvtIt+Al3L1Vs/25EOSSF6V15wRH53TNKPUKsABSyLrSNwczaGfblsXPCXpxn/fa+1so359eK2f4CwaHEAVnZYIcSlk14zjKHLCifKDHpFFOjjEVD4DXHnYMJ+652K0mCZ9F/Xo8GhMKFenjjYl/kgHkZiU/cONrrRTv6veMjoWdjtJJHwaJHO3zq2eAj+M4Ppk7LqI4DKLVV3JiRz09+RCQOEsmyZBgXGb2srfte+Nc8AGX1NElLXPHNdmbtz525ElWFz/aPqC551H5ODy6oDX6FId5qmomRVtSKfSylVWpw== tzongyeu@gmail.com" >> /home/ted/.ssh/authorized_keys
chown ted.ted /home/ted/.ssh/authorized_keys
