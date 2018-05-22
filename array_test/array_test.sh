#!/bin/bash

array=(1 2 3 "java" "java vm" 6)
#数组第1个元素
echo $array
#数组第4个元素的长度
echo ${#array[3]}
#数组长度
echo ${#array[@]}
echo ${#array[*]}
#数组所有元素
echo ${array[@]}
echo ${array[*]}
#数组第2个元素
echo ${array[1]}
#修改，下标不存在则添加元素
array[6]=7
echo ${array[@]}

#删除元素
#unset array[2]
#echo ${array[@]}

#删除数组所有元素
#unset array
#echo ${array[@]}

#分片，通过${数组名[@或*]:起始位置:长度}对原数组进行切片，返回字符串，用空格分隔，加上()，得到切片数组
echo ${array[@]:0:3}
split_array=(${array[@]:1:4})
echo ${#split_array[@]}
echo ${split_array[@]}

#替换，${数组名[@或*]/查找字符/替换字符}不会修改原数组的元素
echo ${array[@]/3/100}
#使用模式进行替换
echo ${array[@]/java*/}

#连接2个数组
array=(${array[@]} ${array[@]:1:4})
echo ${array[@]}

#读取文件内容到数组
file_content=($(cat test.txt))
for item in ${file_content[@]}:
do
    echo $item
done
