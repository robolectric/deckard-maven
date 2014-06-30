#!/bin/sh

set -e

echo "y" | android update sdk --no-ui --filter platform-tools,tools
echo "y" | android update sdk --no-ui --filter build-tools-20.0.0
echo "y" | android update sdk --no-ui --filter android-18
echo "y" | android update sdk --no-ui --filter addon-google_apis-google-18,extra-android-support

git clone --depth 1 https://github.com/mosabua/maven-android-sdk-deployer.git
cd maven-android-sdk-deployer
mvn install -P 4.3
cd -
rm -rf maven-android-sdk-deployer

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
