#!/usr/bin/env bash
../build.sh -l java

pushd ../thirdparty/build/arrow/java/plasma
mvn clean install -Dmaven.test.skip
popd
mvn clean install -Dmaven.test.skip
mvn test