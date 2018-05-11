#!/usr/bin/env bash

echo "当前 git 提交作者信息:"
#git config --global -l
git config user.name
git config user.email

echo "是否要修改?(y/n)"
read modify

if [[ $modify == "y" || $modify == "yes" || $modify == "Y" || $modify == "YES" ]]; then
    echo -e "请选择修改为哪一个作者信息:\n(1)handezhao/handezhao@baidu.com\n(2)handezhao/dezhaohan@gmail.com\n(3)自定义"
    read selectInfo
    if [[ $selectInfo == "1" ]]; then
        git config --global user.email "handezhao@baidu.com"
        git config --global user.name "handezhao"
    elif [[ $selectInfo == "2" ]]; then
        git config --global user.email "dezhaohan@gmail.com"
        git config --global user.name "handezhao"
    elif [[ $selectInfo == "3" ]]; then
        echo "请输入user.email:"
        read newEmail
        echo "请输入user.name:"
        read newName
        echo -e "您即将修改为如下信息:\nuser.email:${newEmail}\nuser.name:${newName}\n是否确认?(y/n)"
        read confirm
        if [[ $confirm == "y" || $confirm == "yes" || $confirm == "Y" || $confirm == "YES" ]]; then
            git config --global user.email ${newEmail}
            git config --global user.name ${newName}
        elif [[ $confirm == "n" || $confirm == "no" || $confirm == "N" || $confirm == "NO" ]]; then
            echo "尚未改变您的 git 提交作者信息"
        fi
    fi
    echo "已为您修改为以下作者信息:"
    git config --global -l
elif [[ $modify == "n" || $modify == "no" || $modify == "N" || $modify == "NO" ]]; then
    echo "尚未改变您的 git 提交作者信息"
fi
