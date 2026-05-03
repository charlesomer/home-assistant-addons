#!/bin/sh

set -e

EXTRA_ARGS="${EXTRA_ARGS} ${SUPERVISOR_OPTION_extra_args}"

exec shairport-sync --configfile=/addon_config/shairport-sync.conf $EXTRA_ARGS
