@echo off
set mode=%1
if %mode%=="" set mode=jar
echo [mode=%mode%]
if %mode%==class java -cp target/classes Graal
if %mode%==jar java -jar target/graal.jar
if %mode%==native target\graal 