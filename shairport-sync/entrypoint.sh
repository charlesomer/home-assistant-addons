#!/bin/sh
set -e

if [ -n "$SUPERVISOR_OPTION_extra_args" ]; then
    # shellcheck disable=SC2086
    set -- /run.sh $SUPERVISOR_OPTION_extra_args
else
    set -- /run.sh
fi

exec "$@"