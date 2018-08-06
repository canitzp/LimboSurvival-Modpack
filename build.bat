@echo off
cd src
if exist mods (
	@RD /S /Q mods
)
cd ..
if exist LimboSurvival.json (
	del LimboSurvival.json
)
if exist LimboSurvival.lock.json (
	del LimboSurvival.lock.json
)
java -jar voodoo.jar import yaml LimboSurvival.yaml .
java -jar voodoo.jar build LimboSurvival.pack.hjson -o LimboSurvival.lock.json --updateAll
PAUSE