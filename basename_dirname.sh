#!/bin/sh

#basename是获得文件名，dirname是获得文件所在的相对路径
#`倒引号包含的是需要执行的命令
#"双引号包含的出现$表示取变量名，`倒引号表示执行的命令，\表示转义
#‘单引号包含的是字符串
#cd `dirname $0`在命令行下执行返回当前路径.，写在脚本文件里才有用，返回脚本文件所在目录，根据相对位置来定位，提高可移植性
#${PWD}是当前命令行所在的绝对路径，如在/home/pylrichard/Workspace下执行sh script/dirname_and_basename.sh，输出
#dirname_and_basename.sh
#script
#/home/pylrichard/Workspace/script
SCRIPT_DIR=`dirname $0`
SCRIPT_FILE_NAME=`basename $0`
cd ${SCRIPT_DIR}
echo ${SCRIPT_FILE_NAME}
echo ${SCRIPT_DIR}
echo ${PWD}
