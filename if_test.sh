#!/bin/sh

#if的三种条件表达式
#if cmd 等价于 cmd + if $?
#if [ expr ]
#if test expr

#快捷if
#[ -f /etc/shells ] && echo "/etc/shells"

#0为真
#if条件不支持整数变量，需要if [ i –ne 0 ]
#支持字符串变量判断非0，if [ str ]

#true($?返回0)和false($?返回1)是shell内置命令，不是布尔值

#条件表达式引用变量num要带$
#if test $num -eq 0 等价于 if [ $num –eq 0 ]

#=判断等于时，两边必须加空格，否则失效
#=赋值时，两边不能有空格
#shell没有==
