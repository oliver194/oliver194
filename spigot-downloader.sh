#!/bin/bash

##############################################################################
# THIS INSTALLS JAVA AUTOMATICALLY IF IT IS NOT DETECTED.
# DO NOT USE IF YOU DO NOT WANT JAVA 17 TO BE INSTALLED.
# IF YOU DO NOT HAVE JAVA 17 INSTALLED, SPIGOT 1.18.2 WILL NOT WORK
## This script downloads the latest version of BuildTools directly from
## SpigotMC and will download the latest version of the server software
## (1.18.2) This script may not work in the near future as the java version
## required may change. 1.18.2 is the latest STABLE version as of 13 May 2022
#
# Tested on Ubuntu 20.04.4
# This script is not affiliated or in any way endorsed by SpigotMC.
##############################################################################


if java -version 2>&1 >/dev/null | grep 'java version "17\|openjdk version "17' ; then
        echo "Java 17 was detected"
else
        sudo apt install -y curl openjdk-17-jdk
fi

api="https://hub.spigotmc.org/jenkins/job"
name="BuildTools"
jar="BuildTools.jar"

latest_download_url="$api"/"$name"/lastSuccessfulBuild/artifact/target/"$jar"
echo Latest Download URL: $latest_build_url

curl "$latest_download_url" > $jar

java -jar BuildTools.jar

## REMOVED EULA AGREEMENT
