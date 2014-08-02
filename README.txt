To build: setup the Android NDK and run

ndk-build

To run:

adb push libs/armeabi-v7a/asmtest /data/local/tmp/

(that sends the compiled executable to the phone)

adb shell

(that gets you a command shell on the phone)

chmod 755 /data/local/tmp/asmtest

(that allows the file to run)

/data/local/tmp/asmtest

(should print out: The result is 102)
