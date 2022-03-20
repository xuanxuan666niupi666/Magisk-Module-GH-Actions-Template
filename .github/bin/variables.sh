#!/usr/bin/env bash
# Export all variables from module.prop and CI config and export them with set-output

set -euo pipefail
# Export all config values from $1
export_all() {
    FILE="${1}"
    awk -F "=" '{
        print "::set-output name=" $1 "::"$2
    }' "${FILE}"
}

export_all "module.prop"
export_all ".github/config.prop"