#!/bin/bash
set -x
set -e
cd "$(dirname "$0")/old-2012-highschool-chat"
find -name '*.class' -exec rm {} +
javac ./nighttimedriver/chat/testing/HTMLChatUITest.java \
    $(find . -name '*.java' ! -path './nighttimedriver/chat/testing/*')
jar cvfm ../htmlchat.jar \
    <(echo 'Main-Class: nighttimedriver.chat.testing.HTMLChatUITest') \
    nighttimedriver
find -name '*.class' -exec rm {} +
