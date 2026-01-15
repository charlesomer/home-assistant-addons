#!/usr/bin/with-contenv bashio

bashio::log.info "Writing config file from Home Assistant option textarea"
bashio::config 'config_file_content' > "/etc/shairport-sync.conf"
