#!/bin/bash
user=jack
read -p '请输入要创建的用户名：' user
read -p '请输入密码：' pswd
useradd $user &> /dev/null
echo $user 创建成功
echo $pswd | passwd --stdin $user &> /dev/null
echo $user 密码设置成功
