#! /bin/bash

set -e 

echo "Updating system.properties file"
/usr/local/bin/confd -onetime -backend env

exec "$@"
