#!/usr/bin/env bash
[[ -n "$DIRNAME" ]] || exit 1
[[ -n "$ENVFILE" ]] || ENVFILE="$DIRNAME/.env"
source "$ENVFILE" || exit 1
