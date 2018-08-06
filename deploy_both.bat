@echo off
java -jar voodoo.jar pack sk LimboSurvival.lock.json
java -jar voodoo.jar pack server LimboSurvival.lock.json
cd .server
cd limbosurvival
java -jar server-installer.jar server
PAUSE