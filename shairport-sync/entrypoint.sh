#!/bin/sh
set -eu

set --

# Loop through all SUPERVISOR_OPTION_* variables
env | while IFS='=' read -r name value; do
    case "$name" in
        SUPERVISOR_OPTION_*)
            key=$(printf "%s" "$name" | sed 's/^SUPERVISOR_OPTION_//')

            # Boolean handling
            case "$value" in
                true|1|yes)
                    set -- "$@" "--$key"
                    ;;
                false|0|no|'')
                    ;;
                *)
                    set -- "$@" "--$key" "$value"
                    ;;
            esac
            ;;
    esac
done

exec /run.sh "$@"