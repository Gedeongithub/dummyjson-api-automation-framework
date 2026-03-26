@echo off
echo Running API tests...

cd /d %~dp0\..

echo Current directory:
cd
dir

echo Creating reports folder...
if not exist reports mkdir reports

echo Running Newman...

newman run collections/dummyjson_collection.json ^
-e environments/qa_environment.json ^
-d data/test_data.json ^
-r htmlextra ^
--reporter-htmlextra-export reports/report.html ^
--verbose

echo Done!
