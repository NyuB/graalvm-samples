@echo off
set skipnative=false
if "%1"==skipnative set skipnative=true
echo [Compiling classes]
javac -d target/classes src/Graal.java
echo [Archiving JAR]
jar --create --file target/graal.jar --main-class Graal -C target/classes .
if %skipnative%==false (
    echo [Compiling native executable]
    native-image -cp target/classes -o target/graal Graal
)