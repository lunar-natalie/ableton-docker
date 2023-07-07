#!/usr/bin/env bash
DIRNAME="$(dirname "$0")"
[[ -n "$ENVFILE" ]] || ENVFILE="$DIRNAME/.env"
set -a
source "$ENVFILE" || exit 1
