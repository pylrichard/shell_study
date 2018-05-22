#先把标准输出重定向到文件，再把标准错误重定向到标准输出
ls >ls.log 2>&1
#>/dev/null等同于1>/dev/null，使用>/dev/null将标准输出重定向到/dev/null，即不显示标准输出的内容
ls >/dev/null
