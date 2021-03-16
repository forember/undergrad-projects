#!/bin/bash
set -x
set -e
cd "$(dirname "$0")"
find Boats -name '*.class' -exec rm {} +
find Boats -name '*conflicted copy*' -exec rm {} +
tar cvzf boats.tar.gz Boats/src
cd Boats/src
javac $(find . -name '*.java')
jar cvfm ../../boats.jar \
    <(echo 'Main-Class: sv.navybattle.pkg1.Main') \
    Images sv
cd ..
find . -name '*.class' -exec rm {} +
git reset --hard
git clean -d -x -f
