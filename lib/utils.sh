#!/usr/bin/env bash

JQ_URL="https://github.com/stedolan/jq/releases/download/jq-1.6/jq-osx-amd64"

echoerr() {
  >&2 echo -e "\033[0;31m$1\033[0m"
}

utils_path() {
    echo "$(dirname "$(dirname "$0")")/utils"
}

jq_path() {
    echo "$(utils_path)/jq"
}

download_jq_if_needed() {
    local JQ_PATH
    JQ_PATH="$(jq_path)"

    if [ ! -f "$JQ_PATH" ]; then
        mkdir -p "$(utils_path)"
        curl "$JQ_URL" -L -o "$JQ_PATH" 2>/dev/null
        chmod u+x "$JQ_PATH"
    fi
}
