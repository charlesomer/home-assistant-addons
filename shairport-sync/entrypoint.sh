#!/bin/sh

set -e

EXTRA_ARGS="${EXTRA_ARGS} ${SUPERVISOR_OPTION_extra_args}"

exec /run.sh $EXTRA_ARGS
