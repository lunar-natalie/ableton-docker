#!/usr/bin/env bash
DIRNAME="$(dirname "$0")"
[[ -z "$ENVFILE" ]] || ENVFILE="$DIRNAME/.env"
set -a
source "$ENVFILE" || exit 1
