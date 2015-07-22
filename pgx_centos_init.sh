#!/bin/bash
#PGX CentOS installation Script.
#Author: PGX
#LAST UPDATE: 2015/07/22


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

