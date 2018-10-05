#!/bin/sh

[ -z "$1" ] && echo "Need to specify version" && exit 1

docker build -t "concourse-gradle-uploadarchives:$1" .
docker tag "concourse-gradle-uploadarchives:$1" "overminddl1/concourse-gradle-uploadarchives:$1"
docker push overminddl1/concourse-gradle-uploadarchives:$1

