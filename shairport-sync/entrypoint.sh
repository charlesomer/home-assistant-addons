#!/bin/sh

set -e

# Default startup file
STARTUP_FILE="/run.sh"

# Use extra_args from Home Assistant config (config.yaml provides default)
# shellcheck disable=SC2086
set -- "$STARTUP_FILE" $SUPERVISOR_OPTION_extra_args

exec "$@"