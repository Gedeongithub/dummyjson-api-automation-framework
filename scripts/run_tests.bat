@echo off
echo Running API tests...

REM Go to repo root
cd /d %WORKSPACE%

REM Show current directory
echo Current directory:
cd
dir

REM Create reports folder if it doesn't exist
if not exist reports mkdir reports

REM Run Newman
newman run "collections/DummyJSON Automation Framework.postman_collection.json" ^
-e "environments/QA Environment.postman_environment.json" ^
-d "data/data.json" ^
-r htmlextra ^
--reporter-htmlextra-export "reports/report.html" ^
--verbose

echo Done!
