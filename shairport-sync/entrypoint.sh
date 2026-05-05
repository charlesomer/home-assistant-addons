#!/bin/sh
set -eu

OPTIONS_FILE="/data/options.json"

CONFIGFILE="$(jq -r '.configfile // empty' "$OPTIONS_FILE")"
HELP="$(jq -r '.help // false' "$OPTIONS_FILE")"

set --

# help is exclusive and overrides everything
if [ "$HELP" = "true" ]; then
    set -- -h
else
    [ -n "$CONFIGFILE" ] && set -- --configfile "$CONFIGFILE"
fi

exec /run.sh "$@"