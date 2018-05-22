#!/bin/sh

#统计当前文件夹下文件的个数
#grep "^-"过滤ls -l的输出结果，保留文件(-)，目录就是d
ls -l | grep "^-" | wc -l

#统计当前文件夹下目录的个数
ls -l | grep "^d" | wc -l

#统计当前文件夹下文件的个数，包括子文件夹里的 
ls -lR | grep "^-" | wc -l

#统计当前目录下sh文件个数
find . -name "*.sh" | wc -l

#统计当前目录下每个sh文件的行数以及总行数
find . -name "*.sh" | xargs wc -l
