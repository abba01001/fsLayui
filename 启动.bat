@echo off
chcp 65001 >nul
REM 进入批处理文件所在目录
cd /d "%~dp0"

REM 判断是否已经安装node_modules
if exist node_modules (
    echo 依赖已存在，跳过安装。
) else (
    echo 正在安装依赖...
    npm install --registry=https://registry.npm.taobao.org
)

REM 启动服务
echo 启动服务中...
npm start

pause
