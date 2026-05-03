#!/bin/sh

set -e

STARTUP_FILE="/run.sh"
if [ -n "$SUPERVISOR_OPTION_startup_file" ]; then
    STARTUP_FILE="$SUPERVISOR_OPTION_startup_file"
fi

# Split extra_args into positional parameters if set
if [ -n "$SUPERVISOR_OPTION_extra_args" ]; then
    # shellcheck disable=SC2086
    set -- "$STARTUP_FILE" $SUPERVISOR_OPTION_extra_args
else
    set -- "$STARTUP_FILE"
fi

exec "$@"