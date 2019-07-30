#!/usr/bin/env bash

JQ_URL="https://github.com/stedolan/jq/releases/download/jq-1.6/jq-osx-amd64"

echoerr() {
  >&2 echo -e "\033[0;31m$1\033[0m"
}

jq_path() {
    echo "$(dirname "$(dirname "$0")")/utils/jq"
}

download_jq_if_needed() {
    if [ ! -f "$(jq_path)" ]; then
        curl $JQ_URL -L -o "$(jq_path)"
        chmod +x "$(jq_path)"
    fi
}
