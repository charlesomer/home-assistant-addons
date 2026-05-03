#!/bin/sh
set -e

set -- /run.sh $SUPERVISOR_OPTION_extra_args
exec "$@"