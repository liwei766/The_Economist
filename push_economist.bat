@echo off
cd /d "E:\The Economist"

:: 获取昨天日期（格式：YYYY.MM.DD）
for /f %%i in ('powershell -Command "(Get-Date).AddDays(-1).ToString('yyyy.MM.dd')"') do set date=%%i

:: Git 操作
git add .
git commit -m "update_%date%"
git push origin main
