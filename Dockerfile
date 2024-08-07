# Pull base image.
FROM jlesage/baseimage-gui:alpine-3.20-v4

# Install Firefox.
RUN add-pkg firefox
# Install fonts.
RUN add-pkg font-noto-cjk
ENV LANG=en_US.UTF-8
VOLUME /root/Downloads
# Copy the start script.
COPY startapp.sh /startapp.sh

# Set the name of the application.
RUN set-cont-env APP_NAME "Firefox"
