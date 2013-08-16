# Deckard

A simple template for Android development using Robolectric, Maven and IntelliJ.

## Setup

To get an Android project setup:

1. Install the Android SDK. On Mac OS X just run:

        > brew install android-sdk

2. Set ANDROID_HOME to '/usr/local/Cellar/android-sdk/<version>'.

3. Run the Android SDK GUI and install API 16 and any other APIs you might need. You can start the GUI like so:

        > android


4. Check this repo out.

5. In the project directory you should be able to run the tests:

        > mvn test
        
6. Import the project into IntelliJ by selecting 'Import Project' in IntelliJ and selecting the project's `pom.xml`. When prompted to pick an SDK you just need to select the Android SDK home and your JDK.

7. Build an app. Win.