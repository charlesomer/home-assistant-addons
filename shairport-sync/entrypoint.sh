#!/bin/sh

set -e

# Collect extra args from Home Assistant config (if set)
EXTRA_ARGS=""
if [ -n "$SUPERVISOR_OPTION_extra_args" ]; then
    EXTRA_ARGS="$SUPERVISOR_OPTION_extra_args"
fi

# If no arguments are passed, use the default CMD from the base image
if [ "$#" -eq 0 ]; then
    exec /init "$EXTRA_ARGS"
else
    exec "$@" "$EXTRA_ARGS"
fi
