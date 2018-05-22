#!/bin/sh

#以函数作为if条件，返回值可以自定义
#返回值为0，表示真
if is_centos
then
    echo "centos"
fi

if is_ubuntu
then
    echo "ubuntu"
fi
