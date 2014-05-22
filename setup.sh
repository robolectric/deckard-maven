#!/bin/sh

git clone https://github.com/mosabua/maven-android-sdk-deployer.git
( cd maven-android-sdk-deployer ; mvn install -P 4.3 )

jarLocation="$ANDROID_HOME/extras/android/m2repository/com/android/support/support-v4/19.0.1/support-v4-19.0.1.jar"
if [ ! -f "$jarLocation" ]; then
  jarLocation="$ANDROID_HOME/extras/android/support/v4/android-support-v4.jar"
  if [ ! -f "$jarLocation" ]; then
    echo "support-v4 artifact not found!";
    exit 1;
  fi
fi

echo "Installing com.android.support:support-v4 from $jarLocation"
mvn -q install:install-file -DgroupId=com.android.support -DartifactId=support-v4 \
  -Dversion=19.0.1 -Dpackaging=jar -Dfile="$jarLocation"

echo "Done!"
