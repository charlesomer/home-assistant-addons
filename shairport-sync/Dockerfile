ARG BUILD_FROM
ARG BUILD_VERSION
ARG BUILD_ARCH

FROM $BUILD_FROM

LABEL \
  io.hass.version=$BUILD_VERSION \
  io.hass.type="addon" \
  io.hass.arch=$BUILD_ARCH

CMD [ "--configfile=/addon_config/shairport-sync.conf" ]