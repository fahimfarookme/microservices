#!/bin/bash


echo 'Enter new value: '
read value

echo "message=$value" > "xml-refresh-scope.properties"
git add *
git commit -m "Updated"
git push origin master
curl -X POST http://localhost:7777/refresh
