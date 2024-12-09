#!/usr/bin/env bash

command -v java 1>/dev/null 2>/dev/null
if [[ $? -eq 0 ]]
then
    javaversion=$(java -version 2>&1 | awk -F '"' '/version/{print $2}')
else
    javaversion=NotFound
fi
cat << EOF
{
  "Java_version" : ${javaversion}
}
EOF