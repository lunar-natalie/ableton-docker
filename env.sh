#!/usr/bin/env bash
[[ -d "$SRCDIR" ]] || exit 1
[[ -n "$ENVFILE" ]] || ENVFILE="$SRCDIR/.env"
source "$ENVFILE" || exit 1
NOENV=1
