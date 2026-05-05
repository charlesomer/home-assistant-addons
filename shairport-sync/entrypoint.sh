#!/bin/sh
set -eu

echo "---- Environment (filtered) ----" >&2
env | sort | grep -E 'SUPERVISOR|HOMEASSISTANT|HOSTNAME' || true
echo "" >&2

# Check config file existence
if [ -n "${SUPERVISOR_OPTION_configfile:-}" ]; then
    if [ -f "$SUPERVISOR_OPTION_configfile" ]; then
        echo "Config file exists: $SUPERVISOR_OPTION_configfile" >&2
    else
        echo "WARNING: Config file NOT found: $SUPERVISOR_OPTION_configfile" >&2
    fi
fi

echo "" >&2
echo "---- Audio Devices ----" >&2
ls -l /dev/snd 2>/dev/null || echo "No /dev/snd available" >&2
echo "" >&2

echo "---- Building argument list ----" >&2

set --

if [ -n "${SUPERVISOR_OPTION_configfile:-}" ]; then
    echo "Adding --configfile $SUPERVISOR_OPTION_configfile" >&2
    set -- "$@" --configfile "$SUPERVISOR_OPTION_configfile"
fi

if [ "${SUPERVISOR_OPTION_help:-}" = "true" ]; then
    echo "Adding -h flag" >&2
    set -- "$@" -h
fi

echo "" >&2
echo "Final argument vector:" >&2
i=0
for arg in "$@"; do
    echo "  [$i] = '$arg'" >&2
    i=$((i + 1))
done
echo "" >&2

echo "---- Executing /run.sh ----" >&2
exec /run.sh "$@"