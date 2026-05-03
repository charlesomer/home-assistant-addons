#!/bin/sh

set -e

STARTUP_FILE="/run.sh"
if [ -n "$SUPERVISOR_OPTION_startup_file" ]; then
    STARTUP_FILE="$SUPERVISOR_OPTION_startup_file"
fi

EXTRA_ARGS="/run.sh"
if [ -n "$SUPERVISOR_OPTION_extra_args" ]; then
    EXTRA_ARGS="$SUPERVISOR_OPTION_extra_args"
fi

exec ${STARTUP_FILE} "${EXTRA_ARGS}"