#!/usr/bin/env bash
DIRNAME="$(dirname "$0")"
[[ -z "$ENVFILE" ]] || ENVFILE="$DIRNAME/.env"
source "$ENVFILE" || exit 1
