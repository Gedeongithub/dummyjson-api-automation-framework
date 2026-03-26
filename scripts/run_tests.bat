@echo off
echo Running API tests...

cd /d %~dp0\..

newman run collections/dummyjson_collection.json ^
-e environments/qa_environment.json ^
-d data/test_data.json ^
-r htmlextra ^
--reporter-htmlextra-export reports/report.html ^
--bail ^
--verbose

echo Tests completed!
