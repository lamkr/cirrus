FROM cirrusci/flutter:latest

EXPOSE 1:30000

RUN touch ~/.android/repositories.cfg

RUN sdkmanager --list

RUN yes | sdkmanager \
    #"platforms;android-28" \
    #"platform-tools;28.0.2" \
    #"build-tools;28.0.3" \
    #"extras;google;m2repository" \
    #"extras;android;m2repository" \
    "system-images;android-22;google_apis;armeabi-v7a"

RUN yes | sdkmanager --licenses
