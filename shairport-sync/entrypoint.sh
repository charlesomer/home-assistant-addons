#!/bin/sh
set -eu

OPTIONS_FILE="/data/options.json"

CONFIGFILE="$(jq -r '.configfile // empty' "$OPTIONS_FILE")"
HELP="$(jq -r '.help // false' "$OPTIONS_FILE")"

set --

[ -n "$CONFIGFILE" ] && set -- "$@" --configfile "$CONFIGFILE"
[ "$HELP" = "true" ] && set -- "$@" -h

exec /run.sh "$@"