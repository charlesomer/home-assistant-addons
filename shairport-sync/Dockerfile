ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache jq alsa-utils pulseaudio-utils

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]