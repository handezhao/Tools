:: support Unicode(UTF-8)
chcp 65001
@echo off
:: 批量处理文件，通过关键字匹配文件，找到之后移动到指定目录下

echo start 
set /p "sourceFoler=请输入源文件路径"
set /p "targetFolder=请输入目标文件夹路径"
set /p "keyWords=请输入关键字，多个用空格隔开"

if not exist %targetFolder% mkdir %targetFolder%
set /a count=0
for /f "delims=" %%i in ('dir /a-d /s /b %sourceFoler%\*%keyWords%*') do (
    :: echo find %%i
    set /a count+=1
    move "%%i" "%targetFolder%"
)
echo move count is %count%

echo file move successfully!
