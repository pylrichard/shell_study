#!/bin/sh

function is_centos {
    #test返回值为0表示真，非0为假
    if test -L /etc/redhat-release
    then
        return 0
    else
        return 1
    fi
    #默认0作为函数/程序是否执行成功的标志
}

function is_ubuntu {
    if test -f /etc/lsb-release
    then
        return 0
    else
        return 1
    fi
}

#sub.sh中可以调用is_centos、is_ubuntu
source ./sub.sh
